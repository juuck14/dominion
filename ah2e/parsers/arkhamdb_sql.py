"""generalpf/arkhamdb: load the SQL scripts into an in-memory SQLite DB and read it back.

Only ``CREATE TABLE`` / ``INSERT INTO`` / ``PRAGMA foreign_keys`` statements are accepted;
anything else aborts the parse (the scripts are data, but we still refuse to run arbitrary SQL).
"""
import re
import sqlite3

from .common import norm_set, read_text

SID = "arkhamdb_sql"
SCRIPTS = ["scripts/0_ddl.sql", "scripts/1_base.sql", "scripts/2_dunwich-horror.sql",
           "scripts/3_black-goat-of-the-woods.sql", "scripts/4_innsmouth-horror.sql",
           "scripts/5_lurker-at-the-threshold.sql", "scripts/6_kingsport-horror.sql",
           "scripts/7_curse-of-the-dark-pharaoh.sql", "scripts/8_king-in-yellow.sql",
           "scripts/9_miskatonic-horror.sql"]
_ALLOWED = re.compile(r"^\s*(CREATE TABLE|INSERT INTO|PRAGMA foreign_keys\s*=\s*1)\b", re.I)


def _statements(sql):
    buf = ""
    for line in sql.splitlines(keepends=True):
        buf += line
        if sqlite3.complete_statement(buf):
            if buf.strip():
                yield buf.strip()
            buf = ""
    if buf.strip():
        raise ValueError("incomplete trailing SQL statement: %r" % buf[:80])


def parse(ctx):
    db = sqlite3.connect(":memory:")
    stmt_counts = {}
    line_of = {}  # (table, rowid) -> script:statement-index for provenance
    for script in SCRIPTS:
        sql = read_text(SID, script)
        for n, st in enumerate(_statements(sql), 1):
            if not _ALLOWED.match(st):
                raise ValueError("refusing non-data SQL in %s: %r" % (script, st[:80]))
            cur = db.execute(st)
            m = re.match(r'\s*INSERT INTO "?(\w+)"?', st, re.I)
            if m:
                line_of[(m.group(1), cur.lastrowid)] = "%s#stmt%d" % (script, n)
            stmt_counts[script] = n
    db.row_factory = sqlite3.Row
    q = lambda s, *a: [dict(r) for r in db.execute(s, a)]
    exp = {r["_id"]: r["title"] for r in q("select * from expansion")}
    setid = lambda eid: norm_set(exp.get(eid)) if eid is not None else None
    hoods = {r["_id"]: r for r in q("select n.*, b.title board, b.expansionid bexp from neighbourhood n join board b on b._id=n.boardid")}
    locs = {r["_id"]: r for r in q("select * from location")}
    worlds = {r["_id"]: r for r in q("select * from otherworld")}
    colors = lambda r: [c for c in ("red", "green", "blue", "yellow") if r[c]]

    rec = {"sets": [{"src_id": k, "title": v, "set": norm_set(v), "src_ref": line_of.get(("expansion", k))} for k, v in exp.items()],
           "neighborhoods": [], "locations": [], "other_worlds": [], "arkham_cards": [], "gate_cards": []}
    for h in hoods.values():
        rec["neighborhoods"].append({"src_id": h["_id"], "name": h["title"], "board": h["board"],
                                     "set": setid(h["bexp"]), "src_ref": line_of.get(("neighbourhood", h["_id"]))})
    for l in locs.values():
        h = hoods.get(l["neighbourhoodid"])
        rec["locations"].append({"src_id": l["_id"], "name": l["title"], "sort_name": l["sort_title"],
                                 "neighborhood": h["title"] if h else None, "board": h["board"] if h else None,
                                 "set": setid(h["bexp"]) if h else None, "src_ref": line_of.get(("location", l["_id"]))})
    for w in worlds.values():
        rec["other_worlds"].append({"src_id": w["_id"], "name": w["title"], "colors": colors(w),
                                    "set": setid(w["expansionid"]), "src_ref": line_of.get(("otherworld", w["_id"]))})
    for c in q("select * from neighbourhoodcard order by _id"):
        encs = q("select rowid AS rid, * from locationencounter where cardid=? order by rid", c["_id"])
        rec["arkham_cards"].append({
            "src_id": c["_id"], "neighborhood": hoods[c["neighbourhoodid"]]["title"],
            "set": setid(c["expansionid"]), "requires_set": setid(c["requiresexpansionid"]),
            "src_ref": line_of.get(("neighbourhoodcard", c["_id"])),
            "encounters": [{"location": locs[e["locationid"]]["title"], "text_html": e["description"],
                            "src_ref": line_of.get(("locationencounter", e["rid"]))} for e in encs],
        })
    for c in q("select * from otherworldcard order by _id"):
        encs = q("select rowid AS rid, * from otherworldencounter where otherworldcardid=? order by rid", c["_id"])
        rec["gate_cards"].append({
            "src_id": c["_id"], "colors": colors(c), "set": setid(c["expansionid"]),
            "requires_sets": [s for s in (setid(c["requiresexpansionid1"]), setid(c["requiresexpansionid2"])) if s],
            "src_ref": line_of.get(("otherworldcard", c["_id"])),
            "encounters": [{"world": worlds[e["otherworldid"]]["title"], "text_html": e["description"],
                            "src_ref": line_of.get(("otherworldencounter", e["rid"]))} for e in encs],
        })
    stats = {"statements": stmt_counts}
    for t in ("expansion", "neighbourhood", "location", "neighbourhoodcard", "locationencounter",
              "otherworld", "otherworldcard", "otherworldencounter", "cultencountercard",
              "exhibitencountercard", "reckoningcard"):
        stats["rows_" + t] = db.execute("select count(*) from %s" % t).fetchone()[0]
    stats["base_rows"] = {
        "location": db.execute("select count(*) from location l join neighbourhood n on n._id=l.neighbourhoodid join board b on b._id=n.boardid where b.expansionid=1").fetchone()[0],
        "neighbourhoodcard": db.execute("select count(*) from neighbourhoodcard where expansionid=1").fetchone()[0],
        "locationencounter": db.execute("select count(*) from locationencounter e join neighbourhoodcard c on c._id=e.cardid where c.expansionid=1").fetchone()[0],
        "otherworldcard": db.execute("select count(*) from otherworldcard where expansionid=1").fetchone()[0],
        "otherworldencounter": db.execute("select count(*) from otherworldencounter e join otherworldcard c on c._id=e.otherworldcardid where c.expansionid=1").fetchone()[0],
    }
    return {"records": rec, "warnings": [], "stats": stats}
