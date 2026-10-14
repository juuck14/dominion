"""Oakraven79/arkham-horror-2e-helper: src/fixtures/gameDataSnapshot.generated.ts (TS literal, parsed, not executed)."""
from ..jsparse import parse_literal_after
from .common import norm_set, read_text

SID = "helper_snapshot"
FILE = "src/fixtures/gameDataSnapshot.generated.ts"


def parse(ctx):
    text = read_text(SID, FILE)
    snap = parse_literal_after(text, "generatedGameDataSnapshot: GameDataSnapshot = ")
    col = snap["collections"]
    ref = lambda coll, i: "%s#collections.%s[%d]" % (FILE, coll, i)
    hood_name = {h["key"]: h["name"] for h in col["neighborhoods"]}
    loc_name = {l["key"]: l["name"] for l in col["locations"]}
    world_name = {w["key"]: w["name"] for w in col["otherWorlds"]}
    warnings = []

    def S(x):
        s = norm_set(x.get("sourceSet"))
        if s and s.startswith("unknown:"):
            warnings.append("unknown set %r" % x.get("sourceSet"))
        return s

    rec = {"sets": [], "neighborhoods": [], "locations": [], "other_worlds": [], "arkham_cards": [],
           "gate_cards": [], "mythos_cards": [], "ancient_ones": []}
    for i, b in enumerate(col["boxedSets"]):
        rec["sets"].append({"key": b["key"], "name": b["name"], "abbreviation": b.get("abbreviation"),
                            "set": norm_set(b["key"]), "src_ref": ref("boxedSets", i)})
    for i, h in enumerate(col["neighborhoods"]):
        rec["neighborhoods"].append({"key": h["key"], "name": h["name"], "board": h.get("board"),
                                     "colour_name": h.get("colourName"), "colour_hex": h.get("colourHex"),
                                     "set": S(h), "src_ref": ref("neighborhoods", i)})
    for i, l in enumerate(col["locations"]):
        rec["locations"].append({
            "key": l["key"], "name": l["name"], "card_display_text": l.get("cardDisplayText"),
            "neighborhood": hood_name.get(l.get("neighborhood"), l.get("neighborhood")), "board": l.get("board"),
            "stability": l.get("stability"), "aquatic": l.get("aquatic"), "encounter_types": l.get("encounterTypes"),
            "special_encounter": l.get("specialEncounter"),
            "home_investigators": [h.get("name") for h in l.get("homeInvestigators", [])],
            "encounter_back_order": l.get("encounterBackOrder"), "description": l.get("description"),
            "set": S(l), "src_ref": ref("locations", i)})
    for i, w in enumerate(col["otherWorlds"]):
        rec["other_worlds"].append({"key": w["key"], "name": w["name"], "colors": w.get("preferredColours"),
                                    "aliases": [a.get("name") if isinstance(a, dict) else a for a in w.get("aliases", [])],
                                    "set": S(w), "src_ref": ref("otherWorlds", i)})
    for i, c in enumerate(col["arkhamEncounterCards"]):
        rec["arkham_cards"].append({
            "card_code": c["cardCode"], "neighborhood": hood_name.get(c["neighborhood"], c["neighborhood"]),
            "set": S(c), "required_sets": [norm_set(s) for s in c.get("requiredSets", [])],
            "encounters": [{"location": loc_name.get(e["location"], e["location"]), "location_key": e["location"],
                            "text_md": e["text"], "src_ref": ref("arkhamEncounterCards", i) + ".encounters[%d]" % j}
                           for j, e in enumerate(c["encounters"])],
            "src_ref": ref("arkhamEncounterCards", i)})
    for i, c in enumerate(col["otherWorldEncounterCards"]):
        rec["gate_cards"].append({
            "card_code": c["cardCode"], "copy_count": c.get("copyCount"), "colors": [c.get("colour")],
            "set": S(c), "encounters": [{
                "world": "Other" if e.get("isOther") else world_name.get(e.get("destination"), e.get("destination")),
                "world_key": e.get("destination"), "text_md": e["text"],
                "src_ref": ref("otherWorldEncounterCards", i) + ".encounters[%d]" % j}
                for j, e in enumerate(c["encounters"])],
            "src_ref": ref("otherWorldEncounterCards", i)})
    for i, m in enumerate(col["mythosCards"]):
        gi = m.get("gateInstruction") or {}
        rec["mythos_cards"].append({
            "title": m["title"], "card_code": m["cardCode"], "copy_count": m.get("copyCount"),
            "card_type": m.get("cardType"), "text_md": m.get("effectText"), "desc_md": m.get("desc"),
            "clue_location": m.get("clueText"), "gate_mode": gi.get("mode"),
            "gate_locations": [loc_name.get(k, k) for k in gi.get("locations", [])], "gate_burst": gi.get("burst"),
            "reshuffle_deck": m.get("reshuffleDeck"), "ongoing_effect": m.get("ongoingEffect"),
            "pass_condition": m.get("passCondition"), "fail_condition": m.get("failCondition"),
            "flavor_text": m.get("flavorText"), "white": m.get("monsterMoveWhite"), "black": m.get("monsterMoveBlack"),
            "rules_notes": m.get("rulesNotes"), "set": S(m), "src_ref": ref("mythosCards", i)})
    for i, a in enumerate(col["ancientOnes"]):
        for j, sh in enumerate(a.get("sheets", [])):
            cr = sh.get("combatRating") or {}
            rec["ancient_ones"].append({
                "key": a["key"], "name": a["name"], "sheet_key": sh.get("key"), "sheet_label": sh.get("label"),
                "doom_track": sh.get("doomTrack"), "combat_rating_display": cr.get("display"),
                "combat_rating_type": cr.get("type"), "combat_rating_modifier": cr.get("modifier"),
                "defenses": sh.get("defenses"), "defense_text": sh.get("defenseText"),
                "worshippers": sh.get("worshippers"), "power_name": sh.get("powerName"), "power": sh.get("power"),
                "start_of_battle": sh.get("startOfBattle"), "attack": sh.get("attack"),
                "rules_notes": a.get("rulesNotes"), "lore": a.get("lore"),
                "other": {k: v for k, v in sh.items() if k not in (
                    "key", "label", "isDefault", "doomTrack", "combatRating", "defenses", "defenseText", "worshippers",
                    "powerName", "power", "startOfBattle", "attack", "sheetImage")},
                "set": S(a), "src_ref": ref("ancientOnes", i) + ".sheets[%d]" % j})
    stats = {k: len(v) for k, v in col.items()}
    stats["generatedAt"] = snap.get("generatedAt")
    return {"records": rec, "warnings": sorted(set(warnings)), "stats": stats}
