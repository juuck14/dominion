"""Official FFG documents (PDF copies from the helper repository).

* extracts the component list from the core rulebook (page 2) -> ``components``
* versions selected pages as plain-text excerpts in ``sources/raw/official_docs/excerpts/``
* verifies every quote in ``manual/errata_base.json`` and ``manual/rulebook_reference.json``
  against the extracted text, so the hand-made tables stay anchored to the official wording.
"""
import re

from .. import config
from ..util import read_json

SID = "official_docs"
EXCERPT_PAGES = {"core_rulebook": [2, 12, 21, 23, 24], "complete_faq": list(range(1, 15))}

# component hierarchy as printed (sub-items are indented in the PDF); sums are verified below
GROUPS = {
    "Investigator Status Tokens": ["Money Tokens", "Sanity Tokens", "Stamina Tokens", "Clue Tokens", "Skill Sliders"],
    "Investigator Cards": ["Common Items", "Unique Items", "Spells", "Skills", "Allies", "Special Cards"],
    "Special Cards": ["Retainers", "Silver Twilight Lodge Memberships", "Bank Loans", "Blessing/Curse Cards", "Deputy Cards"],
    "Ancient One Cards": ["Location Cards", "Mythos Cards", "Gate Cards"],
}


def load_pages(doc_id):
    """Full text from the local cache, else the versioned excerpts (subset of pages)."""
    cached = read_json(config.CACHE_DIR / "text" / (doc_id + ".pages.json"))
    if cached:
        return {i + 1: p for i, p in enumerate(cached["pages"])}, "cache:" + cached["tool"]
    d = config.RAW_DIR / SID / "excerpts"
    pages = {}
    for p in sorted(d.glob(doc_id + "_p*.txt")):
        pages[int(p.stem.split("_p")[-1])] = p.read_text(encoding="utf-8")
    return pages, "excerpts"


def _norm(s):
    s = s.replace("’", "'").replace("‘", "'").replace("“", '"').replace("”", '"')
    s = s.replace("–", "-").replace("—", "-").replace("…", "...").replace(" ", " ")
    return re.sub(r"\s+", " ", s).strip()


def quote_in(quote, text):
    q = _norm(quote)
    t = _norm(text)
    if q in t:
        return True
    t2 = _norm(re.sub(r"(\w)-\s*\n\s*(\w)", r"\1\2", text))  # undo end-of-line hyphenation
    return q in t2


def parse_components(page_text):
    m = re.search(r"following game components:(.*?)Before you play", page_text, re.S)
    if not m:
        return None, ["component list markers not found on rulebook page 2"]
    rows, warnings = [], []
    for line in m.group(1).splitlines():
        mm = re.match(r"^\s*(\d+)\s+(.+?)\s*$", line)
        if not mm:
            if line.strip():
                warnings.append("unparsed component line: %r" % line)
            continue
        name = mm.group(2)
        detail = None
        dm = re.match(r"(.*?)\s*\((.*)\)$", name)
        if dm:
            name, detail = dm.group(1), dm.group(2)
        rows.append({"name": name, "quantity": int(mm.group(1)), "detail": detail, "quote": line.strip()})
    by = {r["name"]: r for r in rows}
    for parent, kids in GROUPS.items():
        if parent in by:
            for k in kids:
                if k in by:
                    by[k]["parent"] = parent
            s = sum(by[k]["quantity"] for k in kids if k in by)
            by[parent]["children_sum"] = s
            by[parent]["children_sum_ok"] = (s == by[parent]["quantity"])
            if s != by[parent]["quantity"]:
                warnings.append("component sum mismatch for %s: %d != %d" % (parent, s, by[parent]["quantity"]))
    return rows, warnings


def parse(ctx):
    warnings = []
    docs = {}
    for doc_id in ("core_rulebook", "complete_faq", "eog_rules_summary"):
        pages, how = load_pages(doc_id)
        docs[doc_id] = {"pages": pages, "how": how}
        if how.startswith("cache") and doc_id in EXCERPT_PAGES:
            out = config.RAW_DIR / SID / "excerpts"
            out.mkdir(parents=True, exist_ok=True)
            for n in EXCERPT_PAGES[doc_id]:
                (out / ("%s_p%02d.txt" % (doc_id, n))).write_text(pages[n], encoding="utf-8")
    rb = docs["core_rulebook"]["pages"]
    faq = docs["complete_faq"]["pages"]
    rec = {"documents": [], "components": [], "quote_checks": [], "faq_meta": {}, "rulebook_meta": {}}
    manifest = read_json(config.MANIFEST, {}).get("sources", {}).get(SID, {}).get("documents", {})
    for doc_id, d in docs.items():
        info = dict(manifest.get(doc_id, {}))
        info.update({"doc_id": doc_id, "text_from": d["how"], "pages_available": sorted(d["pages"])})
        rec["documents"].append(info)
    if 1 in faq:
        m = re.search(r"Arkham Horror FAQ (v[\d.]+)\s+([A-Z][a-z]+ \d+, \d{4})", faq[1])
        if m:
            rec["faq_meta"] = {"version": m.group(1), "date": m.group(2), "quote": m.group(0)}
    if 23 in rb:
        m = re.search(r"©\s*([\d, ]+)\s*Fantasy Flight Publishing", rb[23])
        if m:
            rec["rulebook_meta"] = {"copyright_years": m.group(1).strip(), "quote": m.group(0),
                                    "note": "'2005, 2006' = revised-printing rulebook (FAQ: revised printing Fall 2006)"}
    if 2 in rb:
        comps, w = parse_components(rb[2])
        warnings += w
        for c in comps or []:
            c["doc_id"] = "core_rulebook"
            c["page"] = 2
        rec["components"] = comps or []
    else:
        warnings.append("rulebook page 2 not available - component counts missing")
    # verify manual quotes
    pages_of = {"core_rulebook": rb, "complete_faq": faq}
    err = read_json(config.MANUAL_DIR / "errata_base.json", {})
    for r in err.get("records", []):
        ok = quote_in(r["quote"], pages_of[err["doc_id"]].get(r["page"], ""))
        rec["quote_checks"].append({"file": "manual/errata_base.json", "id": r["id"], "page": r["page"], "ok": ok})
    ref = read_json(config.MANUAL_DIR / "rulebook_reference.json", {})
    for tname, t in ref.get("tables", {}).items():
        for key in ("quote", "note_quote", "special_areas_quote"):
            if key in t:
                ok = quote_in(t[key], rb.get(t["page"], ""))
                rec["quote_checks"].append({"file": "manual/rulebook_reference.json", "id": "%s.%s" % (tname, key), "page": t["page"], "ok": ok})
        for row in t.get("rows", []):
            if "quote" in row:
                ok = quote_in(row["quote"], rb.get(t["page"], ""))
                rec["quote_checks"].append({"file": "manual/rulebook_reference.json", "id": "%s.%s" % (tname, row["id"]), "page": t["page"], "ok": ok})
    bad = [q for q in rec["quote_checks"] if not q["ok"]]
    for q in bad:
        warnings.append("quote NOT found in official text: %s %s (p.%s)" % (q["file"], q["id"], q["page"]))
    stats = {"components": len(rec["components"]), "quote_checks": len(rec["quote_checks"]), "quote_failures": len(bad)}
    return {"records": rec, "warnings": warnings, "stats": stats}
