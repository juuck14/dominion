"""Fandom wiki (MediaWiki) pages saved by ``fetch`` -> template parameters per page.

The wiki was not reachable from the build environment (HTTP 403 from the egress proxy), so
this parser has only been exercised on synthetic wikitext.  It is deliberately generic:
every top-level template on a page is returned with its raw parameters; ``integrate`` maps a
small set of parameter names (monster statistics) and flags everything it maps as
``single_source`` until another source confirms it.
"""
import re

from .. import config
from ..util import read_json


def _split_top(s, sep="|"):
    out, depth, buf, i = [], 0, "", 0
    while i < len(s):
        two = s[i:i + 2]
        if two in ("{{", "[["):
            depth += 1
            buf += two
            i += 2
            continue
        if two in ("}}", "]]"):
            depth -= 1
            buf += two
            i += 2
            continue
        if s[i] == sep and depth == 0:
            out.append(buf)
            buf = ""
        else:
            buf += s[i]
        i += 1
    out.append(buf)
    return out


def templates(wikitext):
    """Yield (name, {param: value}) for each top-level {{...}} template."""
    i, n = 0, len(wikitext or "")
    while i < n:
        j = wikitext.find("{{", i)
        if j < 0:
            return
        depth, k = 0, j
        while k < n:
            if wikitext.startswith("{{", k):
                depth += 1
                k += 2
            elif wikitext.startswith("}}", k):
                depth -= 1
                k += 2
                if depth == 0:
                    break
            else:
                k += 1
        body = wikitext[j + 2:k - 2]
        parts = _split_top(body)
        name = parts[0].strip()
        params, pos = {}, 1
        for p in parts[1:]:
            if "=" in p and not p.lstrip().startswith("{{"):
                key, val = p.split("=", 1)
                params[key.strip()] = val.strip()
            else:
                params[str(pos)] = p.strip()
                pos += 1
        yield name, params
        i = k


def plain(v):
    if v is None:
        return None
    v = re.sub(r"\[\[(?:[^|\]]*\|)?([^\]]*)\]\]", r"\1", v)
    v = re.sub(r"'{2,}", "", v)
    v = re.sub(r"<[^>]+>", "", v)
    return v.strip()


def parse(ctx):
    d = config.RAW_DIR / "fandom_wiki" / "pages"
    pages = []
    for p in sorted(d.glob("*.json")) if d.exists() else []:
        pg = read_json(p)
        tpls = [{"name": n, "params": prm} for n, prm in templates(pg.get("wikitext") or "")]
        pages.append({"title": pg["title"], "url": pg.get("url"), "revid": pg.get("revid"),
                      "retrieved_at": pg.get("retrieved_at"), "categories": pg.get("categories", []),
                      "templates": tpls, "src_ref": "pages/%s" % p.name})
    warnings = [] if pages else ["no fandom pages cached (wiki blocked or not fetched yet)"]
    return {"records": {"pages": pages}, "warnings": warnings, "stats": {"pages": len(pages)}}
