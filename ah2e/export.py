"""Stage 5 - export the integrated JSON to SQLite (``data/ah2e_base.sqlite``) and a lean game JSON.

The SQLite file holds the same data as ``data/ah2e_base.json``: game tables are normalised,
provenance (field status, conflicts, missing, source ids) is kept in side tables, and the
complete per-record JSON (including provenance) is also stored in ``records.json`` so nothing
is lost.  ``data/ah2e_base.game.json`` is the same data without provenance, for bundling.
"""
import json
import sqlite3

from . import SCHEMA_VERSION, config
from .util import write_json

DDL = """
PRAGMA foreign_keys = ON;
CREATE TABLE meta (key TEXT PRIMARY KEY, value TEXT);
CREATE TABLE sets (id TEXT PRIMARY KEY, name TEXT NOT NULL, year INTEGER, kind TEXT);
CREATE TABLE sources (id TEXT PRIMARY KEY, title TEXT, type TEXT, repository TEXT, commit_sha TEXT, license TEXT,
                      status TEXT, independence_group TEXT, retrieved_at TEXT, error TEXT, note TEXT);
CREATE TABLE documents (doc_id TEXT PRIMARY KEY, title TEXT, official INTEGER, official_url TEXT, source_path TEXT,
                        sha256 TEXT, pages INTEGER, text_from TEXT, note TEXT);
CREATE TABLE components (id TEXT PRIMARY KEY, name TEXT NOT NULL, quantity INTEGER NOT NULL, detail TEXT,
                         parent_id TEXT REFERENCES components(id), doc_id TEXT REFERENCES documents(doc_id), page INTEGER, quote TEXT);
CREATE TABLE reference_tables (name TEXT PRIMARY KEY, doc_id TEXT, page INTEGER, quote_verified INTEGER, json TEXT NOT NULL);
CREATE TABLE records (id TEXT PRIMARY KEY, kind TEXT NOT NULL, json TEXT NOT NULL);
CREATE TABLE neighborhoods (id TEXT PRIMARY KEY, set_id TEXT NOT NULL REFERENCES sets(id), name TEXT NOT NULL,
                            card_back_color TEXT, card_back_color_hex TEXT, street_area_id TEXT);
CREATE TABLE areas (id TEXT PRIMARY KEY, set_id TEXT NOT NULL REFERENCES sets(id), kind TEXT NOT NULL, name TEXT NOT NULL,
                    neighborhood_id TEXT REFERENCES neighborhoods(id));
CREATE TABLE locations (id TEXT PRIMARY KEY, set_id TEXT NOT NULL REFERENCES sets(id), name TEXT NOT NULL,
                        neighborhood_id TEXT NOT NULL REFERENCES neighborhoods(id), kind TEXT NOT NULL, stability TEXT,
                        special_ability_name TEXT, special_ability_text TEXT);
CREATE TABLE location_icons (location_id TEXT NOT NULL REFERENCES locations(id), icon TEXT NOT NULL, PRIMARY KEY (location_id, icon));
CREATE TABLE board_connections (from_id TEXT NOT NULL, to_id TEXT NOT NULL, kind TEXT, PRIMARY KEY (from_id, to_id));
CREATE TABLE other_worlds (id TEXT PRIMARY KEY, set_id TEXT NOT NULL REFERENCES sets(id), name TEXT NOT NULL, areas INTEGER);
CREATE TABLE other_world_colors (other_world_id TEXT NOT NULL REFERENCES other_worlds(id), color TEXT NOT NULL,
                                 PRIMARY KEY (other_world_id, color));
CREATE TABLE cards (id TEXT PRIMARY KEY, set_id TEXT NOT NULL REFERENCES sets(id), card_type TEXT NOT NULL, deck TEXT NOT NULL,
                    name TEXT, copies INTEGER, text TEXT, price INTEGER, hands INTEGER, item_type TEXT,
                    casting_modifier TEXT, sanity_cost INTEGER, bonus_text TEXT, acquired_text TEXT,
                    neighborhood_id TEXT REFERENCES neighborhoods(id), color TEXT, is_deck_reshuffle INTEGER,
                    mythos_type TEXT, environment_subtype TEXT, flavor_text TEXT, ongoing_effect TEXT, pass_condition TEXT,
                    fail_condition TEXT, gate_burst INTEGER, clue_location_id TEXT REFERENCES locations(id), places_clue INTEGER,
                    double_faced INTEGER);
CREATE TABLE card_faces (card_id TEXT NOT NULL REFERENCES cards(id), face TEXT NOT NULL, text TEXT, PRIMARY KEY (card_id, face));
CREATE TABLE mythos_gate_locations (card_id TEXT NOT NULL REFERENCES cards(id), location_id TEXT NOT NULL REFERENCES locations(id),
                                    PRIMARY KEY (card_id, location_id));
CREATE TABLE mythos_movement (card_id TEXT NOT NULL REFERENCES cards(id), color TEXT NOT NULL, symbol TEXT NOT NULL,
                              PRIMARY KEY (card_id, color, symbol));
CREATE TABLE mythos_areas (card_id TEXT NOT NULL REFERENCES cards(id), role TEXT NOT NULL, area_id TEXT NOT NULL,
                           PRIMARY KEY (card_id, role, area_id));
CREATE TABLE encounters (id TEXT PRIMARY KEY, card_id TEXT NOT NULL REFERENCES cards(id), seq INTEGER NOT NULL,
                         location_id TEXT REFERENCES locations(id), other_world_id TEXT REFERENCES other_worlds(id),
                         applies_to TEXT NOT NULL, text TEXT, text_html TEXT);
CREATE TABLE skill_checks (entity_id TEXT NOT NULL, idx INTEGER NOT NULL, skill TEXT, modifier INTEGER, difficulty INTEGER, quote TEXT,
                           PRIMARY KEY (entity_id, idx));
CREATE TABLE investigators (id TEXT PRIMARY KEY, set_id TEXT NOT NULL REFERENCES sets(id), name TEXT NOT NULL, occupation TEXT,
                            sanity INTEGER, stamina INTEGER, home_location_id TEXT REFERENCES locations(id), focus INTEGER,
                            money INTEGER, clue_tokens INTEGER, blessing INTEGER, fixed_possessions_text TEXT,
                            random_possessions_text TEXT, ability_name TEXT, ability_phase TEXT, ability_text TEXT);
CREATE TABLE investigator_fixed_cards (investigator_id TEXT NOT NULL REFERENCES investigators(id), deck TEXT NOT NULL,
                                       name TEXT NOT NULL, card_id TEXT REFERENCES cards(id));
CREATE TABLE investigator_special_cards (investigator_id TEXT NOT NULL REFERENCES investigators(id), name TEXT NOT NULL);
CREATE TABLE investigator_random (investigator_id TEXT NOT NULL REFERENCES investigators(id), deck TEXT NOT NULL, count INTEGER,
                                  PRIMARY KEY (investigator_id, deck));
CREATE TABLE investigator_sliders (investigator_id TEXT NOT NULL REFERENCES investigators(id), pair_index INTEGER NOT NULL,
                                   upper_skill TEXT NOT NULL, lower_skill TEXT NOT NULL, position INTEGER NOT NULL,
                                   upper_value INTEGER, lower_value INTEGER,
                                   PRIMARY KEY (investigator_id, pair_index, position));
CREATE TABLE ancient_ones (id TEXT PRIMARY KEY, set_id TEXT NOT NULL REFERENCES sets(id), name TEXT NOT NULL, combat_rating TEXT,
                           combat_rating_value INTEGER, doom_track INTEGER, defenses_text TEXT, defenses_special INTEGER,
                           worshippers_text TEXT, worshipper_monster TEXT, power_name TEXT, power_text TEXT,
                           start_of_battle_text TEXT, attack_text TEXT);
CREATE TABLE ancient_one_defenses (ancient_one_id TEXT NOT NULL REFERENCES ancient_ones(id), defense TEXT NOT NULL,
                                   PRIMARY KEY (ancient_one_id, defense));
CREATE TABLE ancient_one_variants (id TEXT PRIMARY KEY, base_id TEXT NOT NULL REFERENCES ancient_ones(id), set_id TEXT NOT NULL REFERENCES sets(id),
                                   label TEXT, doom_track INTEGER, combat_rating TEXT, defenses_text TEXT, worshippers_text TEXT,
                                   power_name TEXT, power_text TEXT, start_of_battle_text TEXT, attack_text TEXT, note TEXT);
CREATE TABLE monsters (id TEXT PRIMARY KEY, set_id TEXT NOT NULL REFERENCES sets(id), name TEXT NOT NULL, count INTEGER,
                       awareness INTEGER, movement_type TEXT, dimension_symbol TEXT, horror_rating INTEGER, horror_damage INTEGER,
                       toughness INTEGER, combat_rating INTEGER, combat_damage INTEGER, border_color TEXT, rules_text TEXT,
                       flavor_text TEXT, warning TEXT);
CREATE TABLE monster_abilities (monster_id TEXT NOT NULL REFERENCES monsters(id), ability TEXT NOT NULL, PRIMARY KEY (monster_id, ability));
CREATE TABLE errata (id TEXT PRIMARY KEY, doc_id TEXT REFERENCES documents(doc_id), page INTEGER, quote TEXT, quote_verified INTEGER,
                     target_kind TEXT, target_name TEXT, field TEXT, original_value TEXT, corrected_value TEXT, incorporated TEXT);
CREATE TABLE entity_errata (entity_id TEXT NOT NULL, errata_id TEXT NOT NULL REFERENCES errata(id), PRIMARY KEY (entity_id, errata_id));
CREATE TABLE aliases (entity_id TEXT NOT NULL, alias TEXT NOT NULL, PRIMARY KEY (entity_id, alias));
CREATE TABLE source_ids (entity_id TEXT NOT NULL, source_id TEXT NOT NULL, ref TEXT, PRIMARY KEY (entity_id, source_id, ref));
CREATE TABLE field_status (entity_id TEXT NOT NULL, field TEXT NOT NULL, status TEXT, detail_json TEXT, PRIMARY KEY (entity_id, field));
CREATE TABLE conflicts (idx INTEGER PRIMARY KEY, entity_id TEXT, field TEXT, status TEXT, chosen_json TEXT, reason TEXT, alternatives_json TEXT);
CREATE TABLE missing (idx INTEGER PRIMARY KEY, entity_id TEXT, field TEXT, reason TEXT);
CREATE TABLE images (idx INTEGER PRIMARY KEY, entity_id TEXT, role TEXT, source_id TEXT, path TEXT, url TEXT, sha256 TEXT, commit_sha TEXT, used_for TEXT);
CREATE TABLE translations (entity_id TEXT NOT NULL, field TEXT NOT NULL, lang TEXT NOT NULL, text TEXT NOT NULL,
                           status TEXT DEFAULT 'draft', translator TEXT, updated_at TEXT, PRIMARY KEY (entity_id, field, lang));
CREATE INDEX idx_cards_type ON cards(card_type);
CREATE INDEX idx_enc_card ON encounters(card_id);
CREATE INDEX idx_enc_loc ON encounters(location_id);
CREATE INDEX idx_enc_world ON encounters(other_world_id);
CREATE INDEX idx_fs_status ON field_status(status);
"""

J = lambda v: None if v is None else json.dumps(v, ensure_ascii=False)
B = lambda v: None if v is None else int(bool(v))


def _int(v):
    return v if isinstance(v, int) and not isinstance(v, bool) else None


def build(d, path):
    if path.exists():
        path.unlink()
    db = sqlite3.connect(str(path))
    db.executescript(DDL)
    ins = lambda t, row: db.execute("INSERT INTO %s (%s) VALUES (%s)" % (t, ",".join(row), ",".join("?" * len(row))), list(row.values()))
    for k, v in d["meta"].items():
        ins("meta", {"key": k, "value": v if isinstance(v, str) else J(v)})
    ins("meta", {"key": "sqlite_schema_version", "value": SCHEMA_VERSION})
    for s in d["sets"]:
        ins("sets", {"id": s["id"], "name": s["name"], "year": s["year"], "kind": s["kind"]})
    for s in d["sources"]:
        ins("sources", {k: s.get(k) for k in ("id", "title", "type", "repository", "commit_sha", "license", "status",
                                               "independence_group", "retrieved_at", "error", "note")})
    for doc in d["documents"]:
        ins("documents", {"doc_id": doc["doc_id"], "title": doc.get("title"), "official": B(doc.get("official")),
                          "official_url": doc.get("official_url"), "source_path": doc.get("source_path"), "sha256": doc.get("sha256"),
                          "pages": doc.get("pages"), "text_from": doc.get("text_from"), "note": doc.get("official_url_note")})
    for c in sorted(d["components"], key=lambda c: c["parent_id"] is not None):
        ins("components", {"id": c["id"], "name": c["name"], "quantity": c["quantity"], "detail": c["detail"],
                           "parent_id": c["parent_id"], "doc_id": c["source"]["doc_id"], "page": c["source"]["page"], "quote": c["source"]["quote"]})
    for e in d["errata"]:
        ins("errata", {"id": e["id"], "doc_id": e["doc_id"], "page": e["page"], "quote": e["quote"], "quote_verified": B(e.get("quote_verified")),
                       "target_kind": e["target"]["kind"], "target_name": e["target"].get("name") or e["target"].get("location"),
                       "field": e["target"]["field"], "original_value": J(e.get("original_value")),
                       "corrected_value": J(e.get("corrected_value")), "incorporated": e.get("incorporated")})
    for name, t in d["reference"].items():
        ins("reference_tables", {"name": name, "doc_id": t.get("doc_id"), "page": t.get("page"),
                                 "quote_verified": B(t.get("quote_verified")), "json": J(t)})
    for kind in ("neighborhoods", "areas", "locations", "other_worlds", "investigators", "ancient_ones", "ancient_one_variants",
                 "monsters", "cards", "encounters"):
        for r in d[kind]:
            ins("records", {"id": r["id"], "kind": kind, "json": J(r)})
            for f, st in (r.get("field_status") or {}).items():
                ins("field_status", {"entity_id": r["id"], "field": f, "status": (st.get("status") or "info") if isinstance(st, dict) else "info", "detail_json": J(st)})
            for a in r.get("aliases", []) or []:
                db.execute("INSERT OR IGNORE INTO aliases VALUES (?,?)", (r["id"], a))
            for sid, ref in (r.get("source_ids") or {}).items():
                for x in (ref if isinstance(ref, list) else [ref]):
                    if x is not None:
                        db.execute("INSERT OR IGNORE INTO source_ids VALUES (?,?,?)", (r["id"], sid, str(x)))
    for n in d["neighborhoods"]:
        ins("neighborhoods", {k: n[k] for k in ("id", "set_id", "name", "card_back_color", "card_back_color_hex", "street_area_id")})
    for a in d["areas"]:
        ins("areas", {k: a[k] for k in ("id", "set_id", "kind", "name", "neighborhood_id")})
    for l in d["locations"]:
        ins("locations", {k: l[k] for k in ("id", "set_id", "name", "neighborhood_id", "kind", "stability", "special_ability_name", "special_ability_text")})
        for i in l["encounter_icons"] or []:
            ins("location_icons", {"location_id": l["id"], "icon": i})
    for c in d["board_connections"]:
        ins("board_connections", {"from_id": c["from_id"], "to_id": c["to_id"], "kind": c.get("kind")})
    for w in d["other_worlds"]:
        ins("other_worlds", {"id": w["id"], "set_id": w["set_id"], "name": w["name"], "areas": w.get("areas")})
        for col in w["encounter_colors"] or []:
            ins("other_world_colors", {"other_world_id": w["id"], "color": col})
    for c in d["cards"]:
        cm = c.get("casting_modifier")
        ins("cards", {
            "id": c["id"], "set_id": c["set_id"], "card_type": c["card_type"], "deck": c["deck"], "name": c.get("name"),
            "copies": c.get("copies"), "text": c.get("text"), "price": _int(c.get("price")), "hands": _int(c.get("hands")),
            "item_type": c.get("item_type"), "casting_modifier": None if cm is None else str(cm), "sanity_cost": _int(c.get("sanity_cost")),
            "bonus_text": c.get("bonus_text"), "acquired_text": c.get("acquired_text"), "neighborhood_id": c.get("neighborhood_id"),
            "color": c.get("color"), "is_deck_reshuffle": B(c.get("is_deck_reshuffle")), "mythos_type": c.get("mythos_type"),
            "environment_subtype": c.get("environment_subtype"), "flavor_text": c.get("flavor_text"),
            "ongoing_effect": c.get("ongoing_effect"), "pass_condition": c.get("pass_condition"), "fail_condition": c.get("fail_condition"),
            "gate_burst": B(c.get("gate_burst")), "clue_location_id": c.get("clue_location_id"), "places_clue": B(c.get("places_clue")),
            "double_faced": B(c.get("double_faced"))})
        for f in c.get("faces") or []:
            ins("card_faces", {"card_id": c["id"], "face": f["face"], "text": f["text"]})
        for g in c.get("gate_location_ids") or []:
            ins("mythos_gate_locations", {"card_id": c["id"], "location_id": g})
        for col, syms in (c.get("monster_movement") or {}).items():
            for s in syms or []:
                ins("mythos_movement", {"card_id": c["id"], "color": col, "symbol": s})
        for role, f in (("activity", "activity_area_ids"), ("closes", "closes_area_ids")):
            for a in c.get(f) or []:
                ins("mythos_areas", {"card_id": c["id"], "role": role, "area_id": a})
        for i, ch in enumerate(c.get("checks") or []):
            ins("skill_checks", dict({"entity_id": c["id"], "idx": i}, **{k: ch[k] for k in ("skill", "modifier", "difficulty", "quote")}))
        for e in c.get("errata_ids") or []:
            ins("entity_errata", {"entity_id": c["id"], "errata_id": e})
    for e in d["encounters"]:
        ins("encounters", {k: e[k] for k in ("id", "card_id", "seq", "location_id", "other_world_id", "applies_to", "text", "text_html")})
        for i, ch in enumerate(e.get("checks") or []):
            ins("skill_checks", dict({"entity_id": e["id"], "idx": i}, **{k: ch[k] for k in ("skill", "modifier", "difficulty", "quote")}))
        for x in e.get("errata_ids") or []:
            ins("entity_errata", {"entity_id": e["id"], "errata_id": x})
    for i in d["investigators"]:
        fp = i["fixed_possessions"]
        ins("investigators", {"id": i["id"], "set_id": i["set_id"], "name": i["name"], "occupation": i["occupation"],
                              "sanity": i["sanity"], "stamina": i["stamina"], "home_location_id": i["home_location_id"],
                              "focus": i["focus"], "money": fp["money"], "clue_tokens": fp["clue_tokens"], "blessing": B(fp["blessing"]),
                              "fixed_possessions_text": fp.get("text"), "random_possessions_text": i["random_possessions"].get("text"),
                              "ability_name": i["ability"]["name"], "ability_phase": i["ability"]["phase"], "ability_text": i["ability"]["text"]})
        for c in fp["cards"]:
            ins("investigator_fixed_cards", {"investigator_id": i["id"], "deck": c["deck"], "name": c["name"], "card_id": c["card_id"]})
        for s in fp["special_cards"]:
            ins("investigator_special_cards", {"investigator_id": i["id"], "name": s})
        for deck in ("common_item", "unique_item", "spell", "skill"):
            ins("investigator_random", {"investigator_id": i["id"], "deck": deck, "count": i["random_possessions"].get(deck)})
        for pi, s in enumerate(i["sliders"]):
            for pos, (u, l) in enumerate(s["positions"] or []):
                ins("investigator_sliders", {"investigator_id": i["id"], "pair_index": pi, "upper_skill": s["pair"][0],
                                             "lower_skill": s["pair"][1], "position": pos, "upper_value": u, "lower_value": l})
        for e in i.get("errata_ids") or []:
            ins("entity_errata", {"entity_id": i["id"], "errata_id": e})
    for a in d["ancient_ones"]:
        ins("ancient_ones", {k: (B(a[k]) if k == "defenses_special" else a[k]) for k in (
            "id", "set_id", "name", "combat_rating", "combat_rating_value", "doom_track", "defenses_text", "defenses_special",
            "worshippers_text", "worshipper_monster", "power_name", "power_text", "start_of_battle_text", "attack_text")})
        for x in a["defenses"]:
            ins("ancient_one_defenses", {"ancient_one_id": a["id"], "defense": x})
    for a in d["ancient_one_variants"]:
        ins("ancient_one_variants", {k: a.get(k) for k in ("id", "base_id", "set_id", "label", "doom_track", "combat_rating", "defenses_text",
                                                           "worshippers_text", "power_name", "power_text", "start_of_battle_text", "attack_text", "note")})
    for m in d["monsters"]:
        ins("monsters", {k: m.get(k) for k in ("id", "set_id", "name", "count", "awareness", "movement_type", "dimension_symbol",
                                               "horror_rating", "horror_damage", "toughness", "combat_rating", "combat_damage",
                                               "border_color", "rules_text", "flavor_text", "warning")})
        for x in m.get("abilities") or []:
            ins("monster_abilities", {"monster_id": m["id"], "ability": x})
    for n, c in enumerate(d["conflicts"]):
        ins("conflicts", {"idx": n, "entity_id": c.get("entity_id"), "field": c.get("field"), "status": c.get("status"),
                          "chosen_json": J(c.get("chosen")), "reason": c.get("reason"), "alternatives_json": J(c.get("alternatives"))})
    for n, m in enumerate(d["missing"]):
        ins("missing", {"idx": n, "entity_id": m["entity_id"], "field": m["field"], "reason": m["reason"]})
    for n, im in enumerate(d["images"]):
        ins("images", {"idx": n, **{k: im.get(k) for k in ("entity_id", "role", "source_id", "path", "url", "sha256", "commit_sha", "used_for")}})
    db.commit()
    fk = db.execute("PRAGMA foreign_key_check").fetchall()
    ic = db.execute("PRAGMA integrity_check").fetchone()[0]
    counts = {t: db.execute("SELECT count(*) FROM %s" % t).fetchone()[0] for (t,) in
              db.execute("SELECT name FROM sqlite_master WHERE type='table' ORDER BY name")}
    db.execute("VACUUM")
    db.close()
    return {"foreign_key_violations": fk, "integrity_check": ic, "table_counts": counts}


def lean(d):
    """Game-facing copy without provenance fields."""
    drop = {"field_status", "source_ids"}

    def strip(x):
        if isinstance(x, dict):
            return {k: strip(v) for k, v in x.items() if k not in drop}
        if isinstance(x, list):
            return [strip(v) for v in x]
        return x
    keep = ["meta", "sets", "components", "reference", "neighborhoods", "areas", "locations", "board_connections", "other_worlds",
            "investigators", "ancient_ones", "monsters", "cards", "encounters", "errata", "translations"]
    out = {k: strip(d[k]) for k in keep}
    out["meta"] = dict({k: v for k, v in out["meta"].items() if k != "web_search_recheck"},
                       note="Provenance-free copy of ah2e_base.json; see ah2e_base.json / .sqlite for field status, conflicts and sources.")
    return out


def run(log=print):
    d = json.loads((config.DATA_DIR / "ah2e_base.json").read_text(encoding="utf-8"))
    res = build(d, config.DATA_DIR / "ah2e_base.sqlite")
    write_json(config.DATA_DIR / "ah2e_base.game.json", lean(d))
    # cross-check: every JSON record is in SQLite with identical content
    db = sqlite3.connect(str(config.DATA_DIR / "ah2e_base.sqlite"))
    mism = []
    for kind in ("neighborhoods", "areas", "locations", "other_worlds", "investigators", "ancient_ones", "monsters", "cards", "encounters"):
        n = db.execute("SELECT count(*) FROM %s" % kind).fetchone()[0]
        if n != len(d[kind]):
            mism.append([kind, n, len(d[kind])])
        for r in d[kind]:
            row = db.execute("SELECT json FROM records WHERE id=?", (r["id"],)).fetchone()
            if not row or json.loads(row[0]) != r:
                mism.append([kind, r["id"], "records.json differs"])
    db.close()
    res["json_sqlite_mismatches"] = mism
    write_json(config.REPORT_DIR / "sqlite_export.json", res)
    log("  sqlite: integrity=%s fk_violations=%d mismatches=%d tables=%d" % (res["integrity_check"], len(res["foreign_key_violations"]),
                                                                              len(mism), len(res["table_counts"])))
    return res
