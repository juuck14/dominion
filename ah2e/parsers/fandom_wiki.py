"""Fandom wiki (MediaWiki) pages saved by ``fetch`` -> templates, tables and labelled fields per page.

Generic extraction only; ``integrate`` decides which pieces it uses:

* ``templates`` - every top-level ``{{...}}`` template with its raw parameters
  (``MonsterInfoBox`` on monster pages, ``Investigator`` on investigator pages);
* ``tables``    - every ``{| ... |}`` wikitable as header + rows of raw cells
  (list pages such as ``Spell``, ``Common Item``, ``Unique Item``);
* ``fields``    - bold-label lines such as ``'''Hands''': 1`` (individual card pages).
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


def _cell(c):
    """'align=center | $5' -> '$5' (HTML attributes before a single top-level '|')."""
    parts = _split_top(c)
    if len(parts) > 1 and "=" in parts[0] and "[[" not in parts[0] and "{{" not in parts[0]:
        c = "|".join(parts[1:])
    return c.strip()


def tables(wikitext):
    """Yield {'header': [...], 'rows': [[raw cell, ...], ...]} for each top-level wikitable."""
    lines = (wikitext or "").splitlines()
    i = 0
    while i < len(lines):
        if not lines[i].lstrip().startswith("{|"):
            i += 1
            continue
        header, rows, row = [], [], None
        i += 1
        while i < len(lines) and not lines[i].lstrip().startswith("|}"):
            ln = lines[i].strip()
            if ln.startswith("|-"):
                if row:
                    rows.append(row)
                row = []
            elif ln.startswith("|+"):
                pass
            elif ln.startswith("!"):
                header += [_cell(x) for x in ln[1:].split("!!")]
            elif ln.startswith("|"):
                if row is None:
                    row = []
                row += [_cell(x) for x in ln[1:].split("||")]
            elif row:
                row[-1] += "\n" + ln   # continuation line of a multi-line cell
            i += 1
        if row:
            rows.append(row)
        yield {"header": header, "rows": rows}
        i += 1


FIELD_RE = re.compile(r"^'''\[{0,2}([^'\]|]+?)\]{0,2}'''\s*:?\s*(.*)$")


def fields(wikitext):
    """Bold-label lines: "'''Casting Modifier''': +0" -> {'Casting Modifier': '+0'} (first occurrence wins)."""
    out = {}
    for ln in (wikitext or "").splitlines():
        m = FIELD_RE.match(ln.strip())
        if m:
            val = m.group(2).lstrip(":").strip()
            if val:
                out.setdefault(m.group(1).strip().rstrip(":"), val)
    return out


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
        wt = pg.get("wikitext") or ""
        tpls = [{"name": n, "params": prm} for n, prm in templates(wt)]
        pages.append({"title": pg["title"], "url": pg.get("url"), "revid": pg.get("revid"),
                      "retrieved_at": pg.get("retrieved_at"), "categories": pg.get("categories", []),
                      "templates": tpls, "tables": list(tables(wt)), "fields": fields(wt),
                      "src_ref": "%s (revid %s)" % (pg["title"], pg.get("revid"))})
    warnings = [] if pages else ["no fandom pages cached (wiki blocked or not fetched yet)"]
    stats = {"pages": len(pages),
             "monster_infoboxes": sum(1 for pg in pages for t in pg["templates"] if t["name"] == "MonsterInfoBox"),
             "investigator_templates": sum(1 for pg in pages for t in pg["templates"] if t["name"] == "Investigator"),
             "tables": sum(len(pg["tables"]) for pg in pages)}
    return {"records": {"pages": pages}, "warnings": warnings, "stats": stats}
