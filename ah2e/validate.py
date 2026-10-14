"""Stage 4 - validate ``data/ah2e_base.json`` and write ``reports/validation.json``.

Checks are grouped by what they prove:

* ``integrity``    - file loads, unique ids, every reference resolves, base/expansion separation
* ``structure``    - multi-encounter cards and decks match the raw source rows exactly
* ``counts``       - record counts and printed quantities vs. the official component list
* ``completeness`` - required values that are null (missing / unresolved conflict)
* ``spot_checks``  - representative records compared directly with the raw source files

Result levels: ``pass`` / ``fail`` (integrity or structure broken) / ``incomplete`` (data known
to be missing; not an integrity error) / ``warn``.
"""
import json
import re

from . import config
from .util import norm_name, norm_text, read_json, strip_html, write_json

REQUIRED = {
    "investigators": ["name", "occupation", "sanity", "stamina", "home_location_id", "focus", "ability.text", "sliders"],
    "ancient_ones": ["name", "combat_rating", "doom_track", "worshippers_text", "power_text", "attack_text"],
    "locations": ["name", "neighborhood_id"],
    "monsters": ["name", "count", "awareness", "movement_type", "dimension_symbol", "horror_rating", "horror_damage",
                 "toughness", "combat_rating", "combat_damage"],
    "cards.common_item": ["name", "copies", "price", "text"],
    "cards.unique_item": ["name", "copies", "price", "text"],
    "cards.spell": ["name", "copies", "casting_modifier", "sanity_cost", "text"],
    "cards.skill": ["name", "copies", "text"],
    "cards.ally": ["name", "copies", "text", "bonus_text"],
    "cards.special": ["name", "copies"],
    "cards.location": ["neighborhood_id", "encounter_ids"],
    "cards.gate": ["encounter_ids"],
    "cards.mythos": ["name", "mythos_type", "text"],
    "encounters": ["card_id", "text"],
    "other_worlds": ["name", "encounter_colors"],
}


def _get(rec, path):
    v = rec
    for p in path.split("."):
        v = v.get(p) if isinstance(v, dict) else None
    return v


class V:
    def __init__(self):
        self.checks = []

    def add(self, group, name, ok, detail=None, level=None, **extra):
        lvl = level or ("pass" if ok else "fail")
        self.checks.append(dict({"group": group, "check": name, "result": lvl, "detail": detail}, **extra))
        return ok


def run(log=print):
    v = V()
    path = config.DATA_DIR / "ah2e_base.json"
    try:
        d = json.loads(path.read_text(encoding="utf-8"))
        v.add("integrity", "json_loads", True, str(path.relative_to(config.ROOT)))
    except Exception as e:  # noqa
        v.add("integrity", "json_loads", False, str(e))
        return _finish(v, log)
    lists = {k: x for k, x in d.items() if isinstance(x, list) and x and isinstance(x[0], dict) and "id" in x[0]}
    # ---------------------------------------------------------------- ids
    seen, dups = {}, []
    for k, rows in lists.items():
        for r in rows:
            if r["id"] in seen:
                dups.append([r["id"], seen[r["id"]], k])
            seen[r["id"]] = k
    v.add("integrity", "unique_ids", not dups, {"ids": len(seen), "duplicates": dups})
    ids = set(seen)
    idsof = lambda k: {r["id"] for r in d.get(k, [])}
    locs, hoods, areas, worlds = idsof("locations"), idsof("neighborhoods"), idsof("areas"), idsof("other_worlds")
    cards, encs = idsof("cards"), idsof("encounters")
    broken = []

    def ref(owner, field, target, allowed, nullable=True):
        if target is None:
            if not nullable:
                broken.append([owner, field, None])
            return
        if target not in allowed:
            broken.append([owner, field, target])
    for r in d["locations"]:
        ref(r["id"], "neighborhood_id", r["neighborhood_id"], hoods, False)
        for i in r.get("home_of_investigator_ids", []):
            ref(r["id"], "home_of_investigator_ids", i, idsof("investigators"))
    for r in d["neighborhoods"]:
        ref(r["id"], "street_area_id", r["street_area_id"], areas, False)
    for r in d["areas"]:
        ref(r["id"], "neighborhood_id", r["neighborhood_id"], hoods)
    for r in d["investigators"]:
        ref(r["id"], "home_location_id", r["home_location_id"], locs, False)
        for c in r["fixed_possessions"]["cards"]:
            ref(r["id"], "fixed_possessions.cards", c["card_id"], cards, False)
    for r in d["encounters"]:
        ref(r["id"], "card_id", r["card_id"], cards, False)
        ref(r["id"], "location_id", r["location_id"], locs)
        ref(r["id"], "other_world_id", r["other_world_id"], worlds)
        if r["applies_to"] == "location" and not r["location_id"]:
            broken.append([r["id"], "location_id", None])
        if r["applies_to"] == "other_world" and not r["other_world_id"]:
            broken.append([r["id"], "other_world_id", None])
    for c in d["cards"]:
        for e in c.get("encounter_ids", []):
            ref(c["id"], "encounter_ids", e, encs, False)
        if c["card_type"] == "location":
            ref(c["id"], "neighborhood_id", c["neighborhood_id"], hoods, False)
        if c["card_type"] == "mythos":
            for g in c.get("gate_location_ids") or []:
                ref(c["id"], "gate_location_ids", g, locs)
            ref(c["id"], "clue_location_id", c.get("clue_location_id"), locs)
            for f in ("activity_area_ids", "closes_area_ids"):
                for a in c.get(f) or []:
                    ref(c["id"], f, a, locs | areas)
    for im in d["images"]:
        ref("image:" + im["path"], "entity_id", im.get("entity_id"), ids, False)
    for e in d["errata"]:
        t = e["target"]
        if t["kind"] == "investigator":
            ok = any(norm_name(i["name"]) == norm_name(t["name"]) and e["id"] in i["errata_ids"] for i in d["investigators"])
        elif t["kind"] == "card":
            ok = any(norm_name(c["name"] or "") == norm_name(t["name"]) and e["id"] in c.get("errata_ids", []) for c in d["cards"])
        else:
            ok = any(e["id"] in x.get("errata_ids", []) for x in d["encounters"])
        if not ok:
            broken.append([e["id"], "target", t])
    v.add("integrity", "references_resolve", not broken, {"broken": broken})
    v.add("integrity", "unresolved_name_references", not d["unresolved_references"],
          {"unresolved": d["unresolved_references"],
           "note": "names in source records that could not be mapped to an id (kept as '?name' in the conflict record)"},
          level="pass" if not d["unresolved_references"] else "warn")
    # ---------------------------------------------------------------- set separation
    leak = [(k, r["id"], r.get("set_id")) for k, rows in lists.items() if k not in ("sets", "ancient_one_variants")
            for r in rows if "set_id" in r and r["set_id"] != "base"]
    v.add("integrity", "only_base_set_in_canonical_lists", not leak, {"non_base": leak})
    exp_names = set()
    for sid, kinds in (("helper_snapshot", ("mythos_cards", "locations", "other_worlds", "ancient_ones")),
                       ("arkhamdb_sql", ("locations", "other_worlds")), ("helper_wiki_scrape", ("mythos_cards", "locations", "ancient_ones"))):
        p = read_json(config.PARSED_DIR / (sid + ".json"), {}) or {}
        for k in kinds:
            for r in p.get("records", {}).get(k, []):
                if r.get("set") not in ("base", None):
                    exp_names.add(norm_name(r.get("name") or r.get("title") or ""))
    base_names = {}
    for k in ("locations", "other_worlds", "ancient_ones", "investigators"):
        for r in d[k]:
            base_names[norm_name(r["name"])] = r["id"]
    for c in d["cards"]:
        if c.get("name"):
            base_names.setdefault(norm_name(c["name"]), c["id"])
    overlap = sorted(n for n in base_names if n in exp_names)
    v.add("integrity", "no_expansion_only_names_in_base", True,
          {"names_also_used_by_expansion_records": [base_names[n] for n in overlap],
           "note": "a shared name is legitimate (e.g. expansion re-uses a base location); base records come only from base-tagged source rows"},
          level="pass")
    excluded = {x["id"] for x in d.get("sources", [])} & {"arkhamdb_com", "kamalisk_arkhamdb_json_data"}
    v.add("integrity", "no_lcg_sources", not excluded, {"lcg_sources_used": sorted(excluded)})
    # ---------------------------------------------------------------- structure vs raw arkhamdb rows
    adb = read_json(config.PARSED_DIR / "arkhamdb_sql.json")["records"]
    enc_by_id = {e["id"]: e for e in d["encounters"]}
    loc_name = {l["id"]: l for l in d["locations"]}
    bad = []
    for kind, raw_cards, prefix, target in (("location", adb["arkham_cards"], "card.location.adb%03d", "location_id"),
                                           ("gate", adb["gate_cards"], "card.gate.adb%03d", "other_world_id")):
        for rc in raw_cards:
            if rc["set"] != "base":
                continue
            cid = prefix % rc["src_id"]
            card = next((c for c in d["cards"] if c["id"] == cid), None)
            if not card:
                bad.append([cid, "missing card"])
                continue
            if len(card["encounter_ids"]) != len(rc["encounters"]):
                bad.append([cid, "encounter count %d != raw %d" % (len(card["encounter_ids"]), len(rc["encounters"]))])
                continue
            for eid, re_ in zip(card["encounter_ids"], rc["encounters"]):
                e = enc_by_id[eid]
                raw_html = re_["text_html"]
                for er in d["errata"]:
                    if er["id"] in e.get("errata_ids", []):   # apply the documented FAQ substitution to the raw row
                        raw_html = raw_html.replace(er["original_value"], er["corrected_value"])
                if e["text_html"] != raw_html:
                    bad.append([eid, "text_html differs from raw row"])
                if kind == "location":
                    ln = loc_name.get(e["location_id"], {})
                    if norm_name(re_["location"]) not in {norm_name(x) for x in [ln.get("name")] + ln.get("aliases", [])}:
                        bad.append([eid, "location %s != raw %s" % (e["location_id"], re_["location"])])
    v.add("structure", "encounter_cards_match_arkhamdb_rows", not bad, {"problems": bad[:50], "problem_count": len(bad)})
    per_hood = {}
    for c in d["cards"]:
        if c["card_type"] == "location":
            per_hood.setdefault(c["neighborhood_id"], []).append(c)
    hood_bad = {h: len(cs) for h, cs in per_hood.items() if len(cs) != 7}
    v.add("structure", "seven_location_cards_per_neighborhood", not hood_bad and len(per_hood) == 9,
          {"cards_per_neighborhood": {h: len(cs) for h, cs in per_hood.items()}})
    enc_loc_bad = []
    for h, cs in per_hood.items():
        hl = {l["id"] for l in d["locations"] if l["neighborhood_id"] == h}
        for c in cs:
            el = [enc_by_id[e]["location_id"] for e in c["encounter_ids"]]
            if sorted(el) != sorted(hl) or len(el) != 3:
                enc_loc_bad.append([c["id"], el])
    v.add("structure", "location_card_has_one_encounter_per_neighborhood_location", not enc_loc_bad, {"problems": enc_loc_bad})
    gate_shape = {}
    for c in d["cards"]:
        if c["card_type"] == "gate":
            key = "reshuffle" if c["is_deck_reshuffle"] else "normal:%d" % len(c["encounter_ids"])
            gate_shape[key] = gate_shape.get(key, 0) + 1
    v.add("structure", "gate_card_shapes", gate_shape == {"normal:3": 48, "reshuffle": 1}, {"shapes": gate_shape})
    gate_other = []
    for c in d["cards"]:
        if c["card_type"] == "gate" and not c["is_deck_reshuffle"]:
            kinds = [enc_by_id[e]["applies_to"] for e in c["encounter_ids"]]
            if kinds[-1] != "other_worlds_of_card_color" or kinds.count("other_world") != 2:
                gate_other.append([c["id"], kinds])
            for e in c["encounter_ids"][:2]:
                ow = next((w for w in d["other_worlds"] if w["id"] == enc_by_id[e]["other_world_id"]), None)
                if ow and ow.get("encounter_colors") and c["color"] not in ow["encounter_colors"]:
                    gate_other.append([e, "card colour %s not among %s colours %s" % (c["color"], ow["id"], ow["encounter_colors"])])
    v.add("structure", "gate_cards_two_worlds_plus_other_and_colour_consistent", not gate_other, {"problems": gate_other})
    slider_bad = []
    for i in d["investigators"]:
        for s in i["sliders"]:
            pos = s["positions"]
            if not pos or len(pos) != 4 or any(pos[k + 1][0] - pos[k][0] != 1 or pos[k][1] - pos[k + 1][1] != 1 for k in range(3)):
                slider_bad.append([i["id"], s["pair"], pos])
    v.add("structure", "slider_positions_step_by_one", not slider_bad, {"problems": slider_bad})
    # ---------------------------------------------------------------- counts vs official components
    comp = {c["name"]: c["quantity"] for c in d["components"]}
    def copies(t):
        return sum(c["copies"] or 0 for c in d["cards"] if c["card_type"] == t)
    def recs_(t):
        return sum(1 for c in d["cards"] if c["card_type"] == t)
    rows = [
        ("Location Cards", "location", recs_("location"), copies("location")),
        ("Gate Cards", "gate", recs_("gate"), copies("gate")),
        ("Mythos Cards", "mythos", recs_("mythos"), copies("mythos")),
        ("Common Items", "common_item", recs_("common_item"), copies("common_item")),
        ("Unique Items", "unique_item", recs_("unique_item"), copies("unique_item")),
        ("Spells", "spell", recs_("spell"), copies("spell")),
        ("Skills", "skill", recs_("skill"), copies("skill")),
        ("Allies", "ally", recs_("ally"), copies("ally")),
        ("Special Cards", "special", recs_("special"), copies("special")),
        ("Investigator Sheets", "investigators", len(d["investigators"]), len(d["investigators"])),
        ("Ancient One Sheets", "ancient_ones", len(d["ancient_ones"]), len(d["ancient_ones"])),
        ("Monster Markers", "monsters", len(d["monsters"]), sum(m.get("count") or 0 for m in d["monsters"])),
        ("Gate Markers", "gate_markers", 0, 0),
    ]
    table = []
    for comp_name, kind, nrec, nprint in rows:
        exp = comp.get(comp_name)
        ok = exp is not None and nprint == exp
        lvl = "pass" if ok else ("incomplete" if nprint < (exp or 0) else "fail")
        null_copies = [c["id"] for c in d["cards"] if c["card_type"] == kind and c.get("copies") is None]
        table.append({"component": comp_name, "kind": kind, "official_quantity": exp, "records": nrec,
                      "printed_quantity_in_data": nprint, "records_with_unknown_copies": null_copies, "result": lvl})
        v.add("counts", "count:" + comp_name, ok, {"official": exp, "records": nrec, "printed_in_data": nprint,
                                                    "unknown_copies": null_copies}, level=lvl)
    inv_total = sum(r["printed_quantity_in_data"] for r in table if r["kind"] in ("common_item", "unique_item", "spell", "skill", "ally", "special"))
    v.add("counts", "count:Investigator Cards (total)", inv_total == comp.get("Investigator Cards"),
          {"official": comp.get("Investigator Cards"), "printed_in_data": inv_total})
    aoc = sum(r["printed_quantity_in_data"] for r in table if r["kind"] in ("location", "gate", "mythos"))
    v.add("counts", "count:Ancient One Cards (total)", aoc == comp.get("Ancient One Cards"),
          {"official": comp.get("Ancient One Cards"), "printed_in_data": aoc})
    n_enc = {"location": 0, "gate": 0}
    for e in d["encounters"]:
        n_enc["location" if e["id"].startswith("enc.location") else "gate"] += 1
    raw_base = read_json(config.PARSED_DIR / "arkhamdb_sql.json")["stats"]["base_rows"]
    v.add("counts", "encounter_texts_vs_arkhamdb_rows",
          n_enc["location"] == raw_base["locationencounter"] and n_enc["gate"] == raw_base["otherworldencounter"],
          {"location_encounters": [n_enc["location"], raw_base["locationencounter"]],
           "gate_encounters": [n_enc["gate"], raw_base["otherworldencounter"]],
           "arkhamdb_base_rows": raw_base})
    v.add("counts", "neighborhoods_9_locations_27", len(d["neighborhoods"]) == 9 and len(d["locations"]) == 27,
          {"neighborhoods": len(d["neighborhoods"]), "locations": len(d["locations"]),
           "board_locations": sum(1 for l in d["locations"] if l["kind"] == "board_location"),
           "encounter_only": [l["id"] for l in d["locations"] if l["kind"] != "board_location"]})
    v.add("counts", "other_worlds_8", len(d["other_worlds"]) == 8, {"other_worlds": len(d["other_worlds"])})
    v.add("counts", "board_connections", bool(d["board_connections"]), {"rows": len(d["board_connections"])},
          level="pass" if d["board_connections"] else "incomplete")
    # ---------------------------------------------------------------- completeness
    nulls = []
    for key, fields in REQUIRED.items():
        if key.startswith("cards."):
            rows_ = [c for c in d["cards"] if c["card_type"] == key.split(".")[1]]
        else:
            rows_ = d[key]
        for r in rows_:
            for f in fields:
                val = _get(r, f)
                if val is None or val == [] or (f == "sliders" and any(s["positions"] is None for s in val)):
                    st = (r.get("field_status") or {}).get(f, {})
                    nulls.append({"entity_id": r["id"], "field": f, "status": st.get("status", "missing"),
                                  "reason": st.get("reason")})
    by_kind = {}
    for n in nulls:
        k = n["entity_id"].split(".")[0] + ("." + n["entity_id"].split(".")[1] if n["entity_id"].startswith("card.") else "")
        by_kind[k] = by_kind.get(k, 0) + 1
    v.add("completeness", "required_fields_present", not nulls, {"null_required_values": nulls, "by_kind": by_kind},
          level="pass" if not nulls else "incomplete")
    stat = {}
    for k, rows_ in lists.items():
        for r in rows_:
            for f, st in (r.get("field_status") or {}).items():
                if isinstance(st, dict) and "status" in st:
                    stat[st["status"]] = stat.get(st["status"], 0) + 1
    v.add("completeness", "field_status_distribution", True, stat, level="pass")
    qc = read_json(config.PARSED_DIR / "official_docs.json")["records"]["quote_checks"]
    v.add("integrity", "manual_quotes_found_in_official_pdfs", all(q["ok"] for q in qc),
          {"checked": len(qc), "failed": [q for q in qc if not q["ok"]]})
    # ---------------------------------------------------------------- spot checks against raw files
    _spot_checks(v, d)
    return _finish(v, log)


def _raw(source_id, path, enc="utf-8"):
    p = config.RAW_DIR / source_id / path
    return p.read_text(encoding=enc) if p.exists() else None


def _spot_checks(v, d):
    cards = {c["id"]: c for c in d["cards"]}
    encs = {e["id"]: e for e in d["encounters"]}
    sql = _raw("arkhamdb_sql", "scripts/1_base.sql") or ""
    unq = lambda s: s.replace("'", "''")
    # 1 location card (multi-encounter) vs raw SQL statements
    c = cards.get("card.location.adb046")
    ok = bool(c) and all(unq(encs[e]["text_html"]) in sql for e in c["encounter_ids"]) and \
        "VALUES(46,7,1)" in sql
    v.add("spot_checks", "location_card_adb046_vs_raw_sql", ok,
          {"raw": "sources/raw/arkhamdb_sql/scripts/1_base.sql", "encounters": c and [encs[e]["location_id"] for e in c["encounter_ids"]]})
    # 2 gate reshuffle card
    c = cards.get("card.gate.adb052")
    ok = bool(c) and c["is_deck_reshuffle"] and "VALUES(52,1,1,1,1,1)" in sql and unq(encs[c["encounter_ids"][0]]["text_html"]) in sql
    v.add("spot_checks", "gate_card_adb052_reshuffle_vs_raw_sql", ok, {"name": c and c["name"]})
    # 3 mythos vs raw helper TS + raw ellebaum JSON
    ts = _raw("helper_snapshot", "src/fixtures/gameDataSnapshot.generated.ts") or ""
    m = cards.get("card.mythos.all_quiet_in_arkham")
    eb = json.loads(_raw("ellebaum_json", "mythos.json") or "[]")
    ebr = next((x for x in eb if x.get("title") == "All Quiet in Arkham!"), {})
    ok = bool(m) and m["text"] in ts and "title: 'All Quiet in Arkham!'" in ts and \
        m["gate_location_ids"] == ["loc.woods"] and m["clue_location_id"] == "loc.historical_society" and \
        ebr.get("gate") == "Woods" and ebr.get("clue") == "Historical Society" and \
        m["monster_movement"] == {"white": ["hexagon"], "black": ["slash", "star", "triangle"]}
    v.add("spot_checks", "mythos_all_quiet_vs_raw_helper_ts_and_ellebaum", ok,
          {"gate": m and m["gate_location_ids"], "clue": m and m["clue_location_id"], "movement": m and m["monster_movement"]})
    # 4 investigator vs raw Kuerv0 JSON + manual transcription
    kv = json.loads(_raw("kuerv0_json", "src/data/base-game.json") or "{}")
    raw_i = next((x for x in kv.get("investigatorSheets", []) if x["name"] == "Joe Diamond"), {})
    man = next((x for x in read_json(config.MANUAL_DIR / "investigator_sheets.json")["records"] if x["name"] == "Joe Diamond"), {})
    i = next((x for x in d["investigators"] if x["id"] == "inv.joe_diamond"), None)
    ok = bool(i) and i["sanity"] == raw_i.get("sanity") and i["stamina"] == raw_i.get("stamina") and \
        i["focus"] == man.get("focus") == raw_i.get("focus") and i["fixed_possessions"]["money"] == 8 and \
        [p[0] for p in i["sliders"][0]["positions"]] == man["sliders"]["speed"] and i["home_location_id"] == "loc.police_station"
    v.add("spot_checks", "investigator_joe_diamond_vs_raw_kuerv0_and_sheet_transcription", ok,
          {"sanity": i and i["sanity"], "stamina": i and i["stamina"], "focus": i and i["focus"], "image": man.get("image")})
    # 5 Ancient One vs manual transcription + raw helper TS
    a = next((x for x in d["ancient_ones"] if x["id"] == "ao.yig"), None)
    ok = bool(a) and a["doom_track"] == 10 and a["combat_rating"] == "-3" and "doomTrack: 10" in ts and "Yig's Anger" in ts
    v.add("spot_checks", "ancient_one_yig_vs_sheet_transcription_and_raw_ts", ok,
          {"doom_track": a and a["doom_track"], "note": "jesseflorig_json has an empty doomTrack for Yig (recorded as null)"})
    # 6 common item with errata vs raw Kuerv0 per-type file + FAQ
    ci = json.loads(_raw("kuerv0_json", "src/data/base-game/investigator-cards/common-items.json") or "{}")
    lr = next((x for x in ci.get("Common Items", []) if x["name"] == "lantern"), {})
    lb = next((x for x in kv.get("investigatorCards", {}).get("common", []) if x["name"] == "Lantern"), {})
    c = cards.get("card.common.lantern")
    recorded = {s_["value"] for s_ in (c or {}).get("field_status", {}).get("price", {}).get("sources", [])}
    ok = bool(c) and c["price"] == 3 and lb.get("price") == 3 and lr.get("price") in recorded and \
        c["copies"] == 2 == lr.get("count") and "errata.card.lantern.price" in c["errata_ids"]
    v.add("spot_checks", "common_item_lantern_vs_raw_kuerv0_and_faq_errata", ok,
          {"price": c and c["price"], "raw_base_game_json": lb.get("price"), "raw_per_type_file": lr.get("price"),
           "all_source_values_recorded": sorted(recorded), "note": "FAQ: 'Lantern (Common Item) should cost $3'"})
    # 7 component counts vs PDF text (cache or versioned excerpt)
    pg = (read_json(config.CACHE_DIR / "text" / "core_rulebook.pages.json") or {}).get("pages")
    txt = pg[1] if pg else _raw("official_docs", "excerpts/core_rulebook_p02.txt") or ""
    ok = all(q in txt for q in ("44 Common Items", "39 Unique Items", "40 Spells", "20 Skills", "11 Allies", "35 Special Cards",
                                "63 Location Cards", "67 Mythos Cards", "49 Gate Cards", "60 Monster Markers"))
    v.add("spot_checks", "component_counts_vs_rulebook_text", ok, {"page": 2})
    # 8 location vs raw wiki scrape
    ws = json.loads(_raw("helper_wiki_scrape", "wireframes/Source data/locations.json") or "[]")
    wr = next((x for x in ws if x["name"] == "Arkham Asylum"), {})
    l = next((x for x in d["locations"] if x["id"] == "loc.arkham_asylum"), None)
    ok = bool(l) and l["stability"] == wr.get("stability", "").lower() and norm_text(l["special_ability_text"]) == norm_text(wr["details"]["special_encounter"])
    v.add("spot_checks", "location_arkham_asylum_vs_raw_wiki_scrape", ok, {"stability": l and l["stability"]})
    # 9 encounter text with skill-check extraction
    e = encs.get("enc.location.adb046.1")
    ok = bool(e) and e["checks"] and e["checks"][0]["skill"] == "lore" and e["checks"][0]["modifier"] == -2 and \
        strip_html(e["text_html"]) == e["text"]
    v.add("spot_checks", "encounter_check_extraction_adb046_1", ok, {"checks": e and e["checks"]})


def _finish(v, log):
    summary = {"pass": 0, "fail": 0, "incomplete": 0, "warn": 0}
    for c in v.checks:
        summary[c["result"]] += 1
    summary["errors"] = summary["fail"]
    res = {"summary": summary, "checks": v.checks}
    write_json(config.REPORT_DIR / "validation.json", res)
    for c in v.checks:
        log("  [%-10s] %-12s %s" % (c["result"], c["group"], c["check"]))
    log("  summary: %s" % summary)
    return res
