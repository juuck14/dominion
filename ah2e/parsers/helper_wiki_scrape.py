"""Oakraven79 helper 'wireframes/Source data/*.json' - a scrape of the 2e fandom wiki (second-hand copy of source A)."""
import json

from .common import norm_set, read_text

SID = "helper_wiki_scrape"
D = "wireframes/Source data/"


def _set_of(label):
    # The scrape uses "" for most base mythos cards; the page 'edition' field is used instead.
    if label in ("", None):
        return None
    if label == "Promotional offer":
        return "promo"
    return norm_set(label)


def parse(ctx):
    warnings = []
    rec = {"ancient_ones": [], "locations": [], "location_encounters": [], "mythos_cards": []}
    aos = json.loads(read_text(SID, D + "ancient_ones.json"))
    for i, a in enumerate(aos):
        det = a.get("details") or {}
        for j, sh in enumerate(det.get("sheets") or []):
            other = sh.get("other_fields") or {}
            rec["ancient_ones"].append({
                "name": a["name"], "url": a.get("url"), "set": _set_of(a.get("expansion")),
                "sheet_label": sh.get("name"), "combat_rating": sh.get("combat_rating"),
                "defenses": sh.get("defenses"), "worshippers": sh.get("worshippers"),
                "power_name": sh.get("power_name"), "power": sh.get("power"), "attack": sh.get("attack"),
                "start_of_battle": other.get("start of battle"), "doom_track": sh.get("doom_track"),
                "other_fields": {k: v for k, v in other.items() if k != "start of battle"},
                "clarification": det.get("clarification"), "errata": det.get("errata"),
                "images": det.get("images"),
                "src_ref": "%sancient_ones.json#[%d].details.sheets[%d]" % (D, i, j)})
    locs = json.loads(read_text(SID, D + "locations.json"))
    for i, l in enumerate(locs):
        det = l.get("details") or {}
        if not det:
            warnings.append("location %r has no details" % l["name"])
        rec["locations"].append({
            "name": l["name"], "url": l.get("url"), "neighborhood": l.get("neighborhood"),
            "stability": l.get("stability"), "encounter_types": l.get("encounter_types"),
            "set": _set_of(l.get("expansion")), "city": det.get("city"), "aquatic": det.get("aquatic"),
            "home_investigators": det.get("home_investigators"), "special_encounter": det.get("special_encounter"),
            "src_ref": "%slocations.json#[%d]" % (D, i)})
        for j, e in enumerate(det.get("encounters") or []):
            rec["location_encounters"].append({
                "location": l["name"], "text": e.get("text"), "skill_check": e.get("skill_check"),
                "sets": [_set_of(x) for x in (e.get("expansions") or [])], "set_labels": e.get("expansions") or [],
                "src_ref": "%slocations.json#[%d].details.encounters[%d]" % (D, i, j)})
    mys = json.loads(read_text(SID, D + "mythos_cards.json"))
    for i, m in enumerate(mys):
        det = m.get("details") or {}
        edition = det.get("edition")
        s = _set_of(m.get("expansion"))
        if s is None:
            # expansion field blank: fall back to the wiki 'description' sentence ("first appeared in ...")
            desc = det.get("description") or ""
            s = "base" if "first appeared in the Arkham Horror board game" in desc else _set_of(edition)
        rec["mythos_cards"].append({
            "title": m["name"], "url": m.get("url"), "set": s, "edition_field": edition,
            "card_type": m.get("card_type"), "mythos_type": det.get("mythos_type"),
            "environment_type": det.get("environment_type"), "special_type": m.get("special_type"),
            "text": det.get("mythos_ability"), "ongoing_effect": det.get("ongoing_effect"),
            "pass_condition": det.get("pass_condition"), "fail_condition": det.get("fail_condition"),
            "flavor_text": det.get("flavor_text"), "clue_location": det.get("clue_locations"),
            "gate_locations": det.get("gate_locations"), "gate_burst": det.get("gate_burst"),
            "doom_tokens": det.get("doom_tokens"), "monster_movement": det.get("monster_movement"),
            "sections": det.get("sections"), "image": det.get("image"),
            "src_ref": "%smythos_cards.json#[%d]" % (D, i)})
    stats = {"ancient_ones": len(aos), "locations": len(locs), "mythos_cards": len(mys)}
    return {"records": rec, "warnings": warnings, "stats": stats}
