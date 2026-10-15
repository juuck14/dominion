"""Stage 1 - acquire raw sources.

* GitHub sources: each declared file is downloaded from raw.githubusercontent.com at the
  pinned commit SHA into ``.cache/github/<owner>/<repo>/<sha>/<path>`` (skipped when already
  cached) and, for small data files, copied to ``sources/raw/<source_id>/<path>``.
* PDFs are converted to per-page text (``pdftotext`` if present, else ``pypdf``) into
  ``.cache/text/<doc_id>.pages.json``; selected pages are versioned as excerpts by the
  official_docs parser.
* The fandom wiki is crawled through the MediaWiki API when reachable; when the host is
  blocked the attempt and the error are recorded in the manifest (no workaround is tried).

Everything is summarised in ``sources/manifest.json``.
"""
import hashlib
import json
import re
import shutil
import subprocess
import urllib.parse
from pathlib import Path

from . import config
from .util import FetchBlocked, http_get, now_iso, read_json, sha256_file, write_json


def _cache_path(src, path):
    return config.CACHE_DIR / "github" / src["owner"] / src["repo"] / src["sha"] / path


def fetch_github(src, offline=False, log=print):
    files = []
    prev = {f["path"]: f for f in (read_json(config.MANIFEST, {}).get("sources", {}).get(src["id"], {}).get("files", []))}
    for spec in src["files"]:
        path = spec["path"]
        url = config.GITHUB_RAW.format(owner=src["owner"], repo=src["repo"], sha=src["sha"],
                                       path=urllib.parse.quote(path))
        cp = _cache_path(src, path)
        meta_p = cp.with_name(cp.name + ".meta.json")
        committed = config.RAW_DIR / src["id"] / path
        entry = {"path": path, "url": url, "kind": spec["kind"], "committed": spec["commit"]}
        status = "cached"
        if not cp.exists():
            if offline and prev.get(path, {}).get("sha256"):
                # keep what an earlier online run recorded for this (uncommitted) binary
                entry.update({k: prev[path][k] for k in ("sha256", "bytes", "retrieved_at", "cache_path") if k in prev[path]})
                status = "recorded_not_cached"
            elif offline:
                status = "missing_offline"
            else:
                try:
                    data = http_get(url)
                    cp.parent.mkdir(parents=True, exist_ok=True)
                    cp.write_bytes(data)
                    write_json(meta_p, {"url": url, "retrieved_at": now_iso()})
                    status = "downloaded"
                except FetchBlocked as e:
                    status = "error"
                    entry["error"] = str(e)
        if cp.exists():
            meta = read_json(meta_p, {})
            entry["retrieved_at"] = meta.get("retrieved_at") or prev.get(path, {}).get("retrieved_at")
            entry["sha256"] = sha256_file(cp)
            entry["bytes"] = cp.stat().st_size
            if spec["commit"]:
                committed.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(cp, committed)
                entry["raw_copy"] = str(committed.relative_to(config.ROOT))
            else:
                entry["cache_path"] = str(cp.relative_to(config.ROOT))
        elif committed.exists():
            # offline re-run without cache: the versioned copy is the source of truth
            status = "from_committed_copy"
            entry["sha256"] = sha256_file(committed)
            entry["bytes"] = committed.stat().st_size
            entry["raw_copy"] = str(committed.relative_to(config.ROOT))
            entry["retrieved_at"] = prev.get(path, {}).get("retrieved_at")
        entry["status"] = status
        files.append(entry)
        log("  [%s] %s/%s" % (status, src["id"], path))
    return {
        "id": src["id"], "type": "github", "title": src["title"],
        "repository": "https://github.com/%s/%s" % (src["owner"], src["repo"]),
        "commit_sha": src["sha"], "license": src["license"], "edition_check": src.get("edition_check"),
        "note": src.get("note"), "files": files,
        "status": "ok" if all(f["status"] in ("cached", "downloaded", "from_committed_copy", "recorded_not_cached") for f in files) else "partial",
    }


def pdf_to_pages(pdf_path):
    """Return list of page texts. Prefers poppler's pdftotext (reading order), falls back to pypdf."""
    if shutil.which("pdftotext"):
        out = subprocess.run(["pdftotext", "-enc", "UTF-8", str(pdf_path), "-"], capture_output=True, check=True).stdout
        pages = out.decode("utf-8", "replace").split("\f")
        if pages and not pages[-1].strip():
            pages = pages[:-1]
        return pages, "pdftotext"
    try:
        import pypdf  # optional
    except ImportError:
        return None, "no-pdf-extractor"
    r = pypdf.PdfReader(str(pdf_path))
    return [p.extract_text() or "" for p in r.pages], "pypdf"


def extract_pdfs(src, log=print):
    docs = {}
    for path, d in src["documents"].items():
        cp = _cache_path(src, path)
        out = config.CACHE_DIR / "text" / (d["doc_id"] + ".pages.json")
        info = dict(d, source_path=path)
        prev_doc = (read_json(config.MANIFEST, {}) or {}).get("sources", {}).get(src["id"], {}).get("documents", {}).get(d["doc_id"], {})
        for k in ("sha256", "pages", "extractor"):
            if k in prev_doc:
                info[k] = prev_doc[k]
        if cp.exists():
            info["sha256"] = sha256_file(cp)
            if not out.exists():
                pages, tool = pdf_to_pages(cp)
                if pages is not None:
                    write_json(out, {"doc_id": d["doc_id"], "tool": tool, "pages": pages})
            if out.exists():
                info["text_cache"] = str(out.relative_to(config.ROOT))
                info["pages"] = len(read_json(out)["pages"])
                info["extractor"] = read_json(out)["tool"]
        docs[d["doc_id"]] = info
        log("  [pdf] %s -> %s" % (path, info.get("text_cache", "not extracted")))
    return docs


# ---------------------------------------------------------------- fandom (MediaWiki API)
def _api(src, params):
    q = dict(params, format="json", formatversion="2")
    url = src["api"] + "?" + urllib.parse.urlencode(q)
    return json.loads(http_get(url, accept="application/json").decode("utf-8")), url


def fetch_fandom(src, offline=False, log=print, max_pages=3000):
    out_dir = config.RAW_DIR / src["id"] / "pages"
    rec = {"id": src["id"], "type": "mediawiki", "title": src["title"], "api": src["api"],
           "license": src["license"], "edition_check": src["edition_check"], "attempted_at": now_iso()}
    if offline:
        rec["status"] = "skipped_offline"
        rec["pages"] = _page_index(src, out_dir)
        rec["pages_cached"] = len(rec["pages"])
        return rec
    try:
        info, url = _api(src, {"action": "query", "meta": "siteinfo"})
        rec["siteinfo"] = {k: info.get("query", {}).get("general", {}).get(k) for k in ("sitename", "base", "generator")}
    except FetchBlocked as e:
        rec["status"] = "blocked"
        rec["error"] = str(e)
        rec["pages"] = _page_index(src, out_dir)
        rec["pages_cached"] = len(rec["pages"])
        log("  [blocked] fandom wiki: %s" % e)
        return rec
    titles = set(t.replace("_", " ") for t in src["seed_pages"])
    listings = [("categorymembers", "cm", {"cmtitle": "Category:" + c, "cmtype": "page"}, "Category:" + c) for c in src["categories"]]
    listings += [("embeddedin", "ei", {"eititle": t, "einamespace": "0"}, t) for t in src.get("embedded_in", [])]
    rec["listings"] = {}
    for lst, pre, params, label in listings:
        cont, found = {}, []
        while True:
            try:
                res, _ = _api(src, dict({"action": "query", "list": lst, pre + "limit": "500"}, **params, **cont))
            except FetchBlocked as e:
                log("  [error] %s: %s" % (label, e))
                break
            found += [m["title"] for m in res.get("query", {}).get(lst, [])]
            if "continue" not in res:
                break
            cont = {k: v for k, v in res["continue"].items()}
        rec["listings"][label] = len(found)
        titles.update(found)
    titles = sorted(titles)[:max_pages]
    saved = _fetch_pages(src, out_dir, titles, log)
    # second pass: card pages linked from base-game rows of the list tables (many card pages are
    # not in any category, e.g. 'Dynamite'); rows with an expansion icon are skipped
    from .parsers.fandom_wiki import tables
    linked = set()
    for lp in src.get("list_pages", []):
        f = out_dir / (_safe(lp) + ".json")
        for tb in tables((read_json(f) or {}).get("wikitext") if f.exists() else ""):
            hdr = [h.strip().lower() for h in tb["header"]]
            if "expansion" not in hdr:
                continue
            for row in tb["rows"]:
                if len(row) == len(hdr) and not row[hdr.index("expansion")].strip():
                    m = re.search(r"\[\[([^|\]]+)", row[0])
                    if m:
                        linked.add(m.group(1).strip())
    rec["listings"]["base rows of list pages"] = len(linked)
    linked -= set(titles)
    saved += _fetch_pages(src, out_dir, sorted(linked), log)
    titles = sorted(set(titles) | linked)
    rec["status"] = "ok"
    rec["pages_listed"] = len(titles)
    rec["pages_saved_this_run"] = saved
    rec["pages"] = _page_index(src, out_dir)
    rec["pages_cached"] = len(rec["pages"])
    return rec


def _fetch_pages(src, out_dir, titles, log):
    """Save the current revision of each title (50 per API request); already-saved pages are skipped."""
    saved = 0
    for i in range(0, len(titles), 50):
        batch = titles[i:i + 50]
        todo = [t for t in batch if not (out_dir / (_safe(t) + ".json")).exists()]
        if not todo:
            continue
        try:
            res, url = _api(src, {"action": "query", "prop": "revisions|categories", "rvprop": "content|ids|timestamp",
                                  "rvslots": "main", "cllimit": "max", "titles": "|".join(todo)})
        except FetchBlocked as e:
            log("  [error] batch %d: %s" % (i, e))
            continue
        for p in res.get("query", {}).get("pages", []):
            if p.get("missing"):
                log("  [missing page] %s" % p.get("title"))
                continue
            rev = (p.get("revisions") or [{}])[0]
            write_json(out_dir / (_safe(p["title"]) + ".json"), {
                "title": p["title"], "pageid": p.get("pageid"),
                "url": src["page_base"] + urllib.parse.quote(p["title"].replace(" ", "_")),
                "revid": rev.get("revid"), "rev_timestamp": rev.get("timestamp"), "retrieved_at": now_iso(),
                "categories": [c["title"] for c in p.get("categories", [])],
                "wikitext": rev.get("slots", {}).get("main", {}).get("content"),
            })
            saved += 1
    return saved


def _page_index(src, out_dir):
    """Per-page provenance: title, revision id/timestamp and SHA-256 of the saved wikitext."""
    rows = []
    for p in sorted(out_dir.glob("*.json")) if out_dir.exists() else []:
        pg = read_json(p)
        rows.append({"title": pg["title"], "file": str(p.relative_to(config.ROOT)), "revid": pg.get("revid"),
                     "rev_timestamp": pg.get("rev_timestamp"), "retrieved_at": pg.get("retrieved_at"),
                     "wikitext_sha256": hashlib.sha256((pg.get("wikitext") or "").encode("utf-8")).hexdigest()})
    return rows


def _safe(title):
    s = "".join(c if c.isalnum() or c in "-_." else "_" for c in title)
    return "_" + s if s.startswith(".") else s   # no hidden files ('.18 Derringer')


def run(offline=False, log=print):
    manifest = read_json(config.MANIFEST, {}) or {}
    sources = {}
    for src in config.SOURCES:
        log("source %s" % src["id"])
        if src["type"] == "github":
            rec = fetch_github(src, offline=offline, log=log)
            if "documents" in src:
                rec["documents"] = extract_pdfs(src, log=log)
        elif src["type"] == "mediawiki":
            rec = fetch_fandom(src, offline=offline, log=log)
            old = manifest.get("sources", {}).get(src["id"], {})
            if old.get("attempt_history"):
                rec["attempt_history"] = old["attempt_history"][-9:]
            if rec.get("status") == "skipped_offline":   # keep what the last online crawl recorded
                for k in ("siteinfo", "listings", "pages_listed", "last_online_status"):
                    if k in old:
                        rec[k] = old[k]
            else:
                rec["last_online_status"] = rec.get("status")
            rec.setdefault("attempt_history", []).append({"at": rec["attempted_at"], "status": rec["status"], "error": rec.get("error")})
        else:
            continue
        sources[src["id"]] = rec
    manifest = {
        "generated_at": now_iso(),
        "network_note": config.BLOCKED_HOSTS_NOTE,
        "sources": sources,
        "excluded_sources": config.EXCLUDED_SOURCES,
    }
    write_json(config.MANIFEST, manifest)
    return manifest
