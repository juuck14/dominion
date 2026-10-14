"""ellebaum/AHTools: mythos.json (67) and otherWorldEncounters.json (49)."""
import json

from .common import read_text

SID = "ellebaum_json"


def parse(ctx):
    warnings = []
    rec = {"mythos_cards": [], "gate_cards": []}
    for i, m in enumerate(json.loads(read_text(SID, "mythos.json"))):
        if "text:" in m and "text" not in m:
            warnings.append("mythos.json[%d] %r: key 'text:' (typo) used for card text" % (i, m.get("title")))
        mv = m.get("movement") or {}
        rec["mythos_cards"].append({
            "title": m.get("title"), "type": m.get("type"), "text": m.get("text", m.get("text:")),
            "clue_location": m.get("clue"), "gate_location": m.get("gate"), "activity_at": m.get("activity at"),
            "close": m.get("close"), "white": mv.get("white"), "black": mv.get("black"), "set": "base",
            "src_ref": "mythos.json#[%d]" % i})
    for i, g in enumerate(json.loads(read_text(SID, "otherWorldEncounters.json"))):
        encs = [{"world": k, "text": v} for k, v in g.items() if k != "color"]
        rec["gate_cards"].append({"colors": [g.get("color")], "encounters": encs, "set": "base",
                                  "src_ref": "otherWorldEncounters.json#[%d]" % i})
    return {"records": rec, "warnings": warnings, "stats": {k: len(v) for k, v in rec.items()}}
