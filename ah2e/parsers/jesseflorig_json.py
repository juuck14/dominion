"""jesseflorig/arkham-horror-json: partially filled JSON (several files are empty arrays or templates)."""
from ..jsparse import loads_lenient_json
from .common import norm_set, read_text

SID = "jesseflorig_json"
_SET = {"AKH": "base", "DWH": "dunwich_horror", "DUH": "dunwich_horror", "KPH": "kingsport_horror",
        "CDP": "curse_of_the_dark_pharaoh", "PROMO": "promo"}


def _load(name, warnings):
    path = "data/" + name
    text = read_text(SID, path)
    val, warns = loads_lenient_json(text)
    import json
    try:
        json.loads(text)
    except ValueError as e:
        warnings.append("%s: not valid strict JSON (%s); read with lenient parser" % (path, e))
    for w in warns:
        warnings.append("%s: %s" % (path, w))
    return val, path


def S(x):
    return _SET.get(x) or norm_set(x)


def parse(ctx):
    warnings = []
    rec = {"allies": [], "ancient_ones": [], "mythos_cards": [], "arkham_cards": [], "locations": []}
    empty = []
    for name in ("investigators.json", "skills.json", "special.json", "spells.json", "unique-items.json",
                 "other-world.json", "epic-battles.json"):
        v, p = _load(name, warnings)
        k = list(v)[0]
        if not v[k]:
            empty.append(p)
    v, p = _load("common-items.json", warnings)
    if all(not x.get("name") for x in v["commonItems"]):
        empty.append(p + " (template only)")
    a, p = _load("allies.json", warnings)
    for i, x in enumerate(a["allies"]):
        rec["allies"].append({"name": x["name"], "bonuses": x.get("bonuses"), "text": x.get("cardText"),
                              "acquired": x.get("acquired"), "set": S(x.get("expansion")),
                              "src_ref": "%s#allies[%d]" % (p, i)})
    a, p = _load("ancient-ones.json", warnings)
    seen = {}
    for i, x in enumerate(a["ancientOnes"]):
        if x["name"] in seen:
            warnings.append("%s: duplicate Ancient One %r at [%d] (first at [%d])" % (p, x["name"], i, seen[x["name"]]))
            continue
        seen[x["name"]] = i
        pw = x.get("power") or {}
        rec["ancient_ones"].append({
            "name": x["name"], "combat_rating": (x.get("combatRating") or "").strip() or None,
            "defenses": x.get("defenses"), "worshippers": (x.get("worshippers") or "").strip() or None,
            "power_name": pw.get("title"), "power": pw.get("text"), "start_of_battle": x.get("startOfBattle"),
            "attack": (x.get("attack") or "").strip() or None, "doom_track": x.get("doomTrack"),
            "active_text": x.get("activeText"), "has_epic_battle_plots": bool(x.get("plots")),
            "set": S(x.get("expansion")), "src_ref": "%s#ancientOnes[%d]" % (p, i)})
    m, p = _load("mythos.json", warnings)
    for i, x in enumerate(m["mythos"]):
        mv = x.get("movement") or {}
        rec["mythos_cards"].append({
            "title": x["name"], "type": x.get("type"), "subtype": x.get("subtype"),
            "text_parts": x.get("text"), "clue_location": x.get("clue"), "gate_location": x.get("gate"),
            "gate_type": x.get("gateType"), "activity": x.get("activity"), "close": x.get("close"),
            "white": mv.get("white"), "black": mv.get("black"), "set": S(x.get("expansion")),
            "src_ref": "%s#mythos[%d]" % (p, i)})
    e, p = _load("arkhamEncounters.json", warnings)
    for i, x in enumerate(e["arkhamEncounters"]):
        encs = []
        for j, y in enumerate(x["locationEncounters"]):
            text = " ".join(y.get("text") or [])
            ch = y.get("chart")
            if ch:
                text += " " + ch.get("label", "") + ": " + " ".join(
                    "%s) %s" % (c.get("result"), c.get("text")) for c in ch.get("contents", []))
            encs.append({"location": y["name"], "text_md": text,
                         "src_ref": "%s#arkhamEncounters[%d].locationEncounters[%d]" % (p, i, j)})
        rec["arkham_cards"].append({"neighborhood": x["neighborhood"], "set": S(x.get("expansion")),
                                    "encounters": encs, "src_ref": "%s#arkhamEncounters[%d]" % (p, i)})
    l, p = _load("locations.json", warnings)
    for i, h in enumerate(l["locations"]):
        for j, x in enumerate(h["locations"]):
            rec["locations"].append({"name": x["name"], "neighborhood": h["name"], "city": h.get("city"),
                                     "type": x.get("type"), "stability": x.get("stability"),
                                     "features": x.get("features"), "ability": x.get("ability"), "set": "base",
                                     "src_ref": "%s#locations[%d].locations[%d]" % (p, i, j)})
    warnings += ["%s: empty - no data" % x for x in empty]
    stats = {k: len(v) for k, v in rec.items()}
    stats["empty_files"] = empty
    return {"records": rec, "warnings": warnings, "stats": stats}
