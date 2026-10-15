"""Stage 3 - merge the parsed sources into the normalised base-game data set.

Output: ``data/ah2e_base.json`` (see README for the schema).  Only records of the base set
are integrated; expansion records stay in ``sources/parsed`` with their set id.
"""
import re

from . import SCHEMA_VERSION, config
from .parsers.common import SETS
from .resolve import GROUP, Resolver, best_match, claim
from .util import norm_name, norm_text, now_iso, read_json, similarity, slug, strip_html, strip_markdown, write_json

BASE = "base"
SKILLS = ["speed", "sneak", "fight", "will", "lore", "luck"]
SLIDER_PAIRS = [("speed", "sneak"), ("fight", "will"), ("lore", "luck")]
SYMBOLS = ["circle", "crescent", "diamond", "hexagon", "plus", "slash", "square", "star", "triangle"]
SYMBOL_ALIASES = {"crescentmoon": "crescent", "moon": "crescent", "cresecent": "crescent", "cross": "plus",
                  "leftlean": "slash", "bar": "slash"}
DECKS = {"common": "common_item", "commonitem": "common_item", "unique": "unique_item", "uniqueitem": "unique_item",
         "spell": "spell", "spells": "spell", "skill": "skill", "skills": "skill", "ally": "ally", "allies": "ally",
         "special": "special"}
NEIGHBORHOOD_ALIASES = {"miskatonicu": "miskatonicuniversity"}
LOCATION_ALIASES = {"administration": "administrationbuilding", "silvertwilightlodgeinnersanctum": "innersanctum"}
WORLD_ALIASES = {"greathallofceleano": "celeano", "greathallofcelano": "celeano", "celano": "celeano",
                 "cityofthegreatrace": "greatrace", "plateauofleng": "leng", "dreamlands": "dreamlands",
                 "anotherdimension": "anotherdimension"}


def P(sid):
    return read_json(config.PARSED_DIR / (sid + ".json"))


def recs(sid, kind, base_only=True):
    d = P(sid)
    rows = (d or {}).get("records", {}).get(kind, []) or []
    return [r for r in rows if not base_only or r.get("set") in (BASE, None)]


def first(*vals):
    for v in vals:
        if v not in (None, "", []):
            return v
    return None


def text_of(c, *keys):
    for k in keys:
        v = c.get(k)
        if v:
            return v
    return None


def plain(s):
    """Source text (HTML or markdown) -> plain text for storage/comparison."""
    if s is None:
        return None
    if isinstance(s, list):
        s = " ".join(x for x in s if x)
    return strip_markdown(strip_html(s)).strip() or None


CHECK_RE = re.compile(r"(Speed|Sneak|Fight|Will|Lore|Luck|Combat|Horror|Evade|Spell)\s*\(\s*([+\-–]?\s*\d+)\s*\)\s*(?:\[(\d+)\])?\s*check", re.I)


def extract_checks(text):
    """Light, non-executable structure: the skill checks named in a text (skill, modifier, difficulty)."""
    out = []
    for m in CHECK_RE.finditer(text or ""):
        out.append({"skill": m.group(1).lower(), "modifier": int(m.group(2).replace("–", "-").replace(" ", "")),
                    "difficulty": int(m.group(3)) if m.group(3) else 1, "quote": m.group(0)})
    return out


# ============================================================================ indices
class Index:
    """name -> canonical id lookup with aliases and fuzzy fallback; records unresolved names."""

    def __init__(self, aliases=None, cutoff=0.85):
        self.keys = {}
        self.aliases = aliases or {}
        self.cutoff = cutoff
        self.unresolved = []

    def _k(self, name):
        k = norm_name((name or "").lstrip("*"))
        return self.aliases.get(k, k)

    def add(self, name, cid):
        raw = norm_name((name or "").lstrip("*"))
        self.keys[raw] = cid
        self.keys[self.aliases.get(raw, raw)] = cid

    def get(self, name, context=None):
        if not name:
            return None
        raw = norm_name(name.lstrip("*"))
        if raw in self.keys:
            return self.keys[raw]
        k = self._k(name)
        hit = best_match(k, self.keys, cutoff=self.cutoff) or best_match(raw, self.keys, cutoff=self.cutoff)
        if hit is None:
            self.unresolved.append({"name": name, "context": context})
            return None
        return self.keys[hit]


def norm_symbols(v):
    if v is None:
        return None
    if isinstance(v, str):
        v = [x for x in re.split(r"[{},\s]+", v) if x]
    out = []
    for s in v:
        k = re.sub(r"[^a-z]", "", s.lower())
        k = SYMBOL_ALIASES.get(k, k)
        out.append(k if k in SYMBOLS else "?" + s)
    return sorted(set(out))


# ============================================================================ main
def run(log=print):
    R = Resolver()
    manifest = read_json(config.MANIFEST, {})
    manual = P("manual")["records"]
    errata = {e["id"]: e for e in manual["errata_base"]["records"]}
    out = {"meta": {}, "sets": SETS, "sources": [], "documents": [], "components": [], "reference": {},
           "neighborhoods": [], "areas": [], "locations": [], "board_connections": [], "other_worlds": [],
           "investigators": [], "ancient_ones": [], "ancient_one_variants": [], "monsters": [], "cards": [],
           "encounters": [], "errata": [], "images": [], "conflicts": [], "missing": [], "unresolved_references": [],
           "translations": []}

    # ---------------------------------------------------------------- sources & docs
    for sid, s in manifest.get("sources", {}).items():
        rt = [f.get("retrieved_at") for f in s.get("files", []) if f.get("retrieved_at")]
        out["sources"].append({
            "id": sid, "title": s.get("title"), "type": s.get("type"), "repository": s.get("repository"),
            "commit_sha": s.get("commit_sha"), "license": s.get("license"), "status": s.get("status"),
            "independence_group": GROUP.get(sid, sid), "edition_check": s.get("edition_check"),
            "retrieved_at": max(rt) if rt else s.get("attempted_at"), "error": s.get("error"), "note": s.get("note")})
    out["sources"].append({"id": "card_image", "title": "Manual visual transcription of card/sheet scans (manual/*.json)",
                           "type": "manual", "independence_group": "card_image", "status": "ok",
                           "note": "Images are linked individually in each record's provenance and in 'images'."})
    out["sources"].append({"id": "web_search_fandom", "title": "Search-engine summaries of fandom wiki pages (manual/web_search_evidence.json)",
                           "type": "manual", "independence_group": "fandom_lineage", "status": "ok",
                           "note": "Tie-breaking evidence used while the wiki was blocked; not raw page content. Superseded by "
                                   "fandom_wiki wherever the fetched wiki gives the field - see meta.web_search_recheck."})
    od = P("official_docs")["records"]
    out["documents"] = od["documents"]
    out["meta"]["faq"] = od.get("faq_meta")
    out["meta"]["rulebook"] = od.get("rulebook_meta")
    for c in od["components"]:
        cid = "comp." + slug(c["name"])
        out["components"].append({"id": cid, "name": c["name"], "quantity": c["quantity"], "detail": c.get("detail"),
                                  "parent_id": "comp." + slug(c["parent"]) if c.get("parent") else None,
                                  "children_sum_ok": c.get("children_sum_ok"),
                                  "source": {"doc_id": c["doc_id"], "page": c["page"], "quote": c["quote"]}})
    ref = manual["rulebook_reference"]
    qc = {q["id"]: q["ok"] for q in od["quote_checks"] if q["file"] == "manual/rulebook_reference.json"}
    for tname, t in ref["tables"].items():
        out["reference"][tname] = dict(t, doc_id=ref["doc_id"],
                                       quote_verified=all(v for k, v in qc.items() if k.startswith(tname + ".")))
    out["reference"]["dimension_symbols"] = {
        "rows": [{"id": s} for s in SYMBOLS], "source_aliases": SYMBOL_ALIASES,
        "note": "Canonical names chosen for this data set; sources use the aliases listed (e.g. helper 'leftLean', ellebaum 'bar' = slash)."}

    # ---------------------------------------------------------------- neighborhoods & streets
    hood_ix = Index(NEIGHBORHOOD_ALIASES)
    adb_hoods = recs("arkhamdb_sql", "neighborhoods")
    hs_hoods = {norm_name(h["name"]): h for h in recs("helper_snapshot", "neighborhoods")}
    for h in adb_hoods:
        k = NEIGHBORHOOD_ALIASES.get(norm_name(h["name"]), norm_name(h["name"]))
        hs = hs_hoods.get(k) or hs_hoods.get(best_match(k, hs_hoods) or "")
        kv_name = None
        for c in recs("kuerv0_json", "arkham_cards"):
            if norm_name(c["neighborhood"]) in (k, norm_name(h["name"])):
                kv_name = c["neighborhood"]
        hid = "nbh." + slug(hs["name"] if hs else h["name"])
        name, st_name = R.value(hid, "name", [claim("helper_snapshot", hs and hs["name"], hs and hs["src_ref"]),
                                              claim("kuerv0_json", kv_name, "location-cards.json keys"),
                                              claim("arkhamdb_sql", h["name"], h["src_ref"])],
                                norm=lambda v: NEIGHBORHOOD_ALIASES.get(norm_name(v), norm_name(v)))
        if st_name.get("status") in ("confirmed", "single_source") and len({norm_name(x) for x in (h["name"], hs and hs["name"]) if x}) > 1:
            st_name["note"] = "spelling variants treated as aliases (see 'aliases'); display name from first source"
        if name is None:
            name = h["name"]
        aliases = sorted({x for x in (h["name"], hs and hs["name"], kv_name) if x and x != name})
        col, st_col = R.value(hid, "card_back_color", [claim("helper_snapshot", hs and hs.get("colour_name"), hs and hs["src_ref"])],
                              missing_reason="only the helper snapshot names the encounter-card colour")
        hexv, st_hex = R.value(hid, "card_back_color_hex", [claim("helper_snapshot", hs and hs.get("colour_hex"), hs and hs["src_ref"])], required=False)
        out["neighborhoods"].append({
            "id": hid, "set_id": BASE, "name": name, "aliases": aliases, "board": "Arkham",
            "card_back_color": col, "card_back_color_hex": hexv, "street_area_id": "street." + hid.split(".", 1)[1],
            "source_ids": {"arkhamdb_sql": h["src_id"], "helper_snapshot": hs and hs["key"]},
            "field_status": {"name": st_name, "card_back_color": st_col, "card_back_color_hex": st_hex},
        })
        hood_ix.add(h["name"], hid)
        hood_ix.add(name, hid)
    rb_struct = out["reference"].get("board_structure", {})
    for n in out["neighborhoods"]:
        out["areas"].append({"id": n["street_area_id"], "set_id": BASE, "kind": "street", "name": n["name"] + " Streets",
                             "neighborhood_id": n["id"],
                             "field_status": {"_record": {"status": "derived", "reason": "rulebook p.21: each of the 9 neighborhoods has a street area",
                                                          "quote": rb_struct.get("quote")}}})
    for sa in rb_struct.get("special_areas", []):
        out["areas"].append({"id": "area." + slug(sa), "set_id": BASE, "kind": "special", "name": sa, "neighborhood_id": None,
                             "field_status": {"_record": {"status": "confirmed", "sources": ["official_docs"],
                                                          "quote": rb_struct.get("special_areas_quote")}}})

    # ---------------------------------------------------------------- locations
    loc_ix = Index(LOCATION_ALIASES)
    adb_locs = recs("arkhamdb_sql", "locations")
    hs_locs = {norm_name(x["name"]): x for x in recs("helper_snapshot", "locations")}
    ws_locs = {norm_name(x["name"]): x for x in recs("helper_wiki_scrape", "locations")}
    jf_locs = {norm_name(x["name"]): x for x in recs("jesseflorig_json", "locations")}
    stab_map = {"stable": "stable", "unstable": "unstable", "highly unstable": "unstable"}
    icon_map = {"clue": "clue_tokens", "clues": "clue_tokens", "money": "money", "skill": "skills", "skills": "skills",
                "sanity": "sanity", "stamina": "stamina", "spell": "spells", "spells": "spells",
                "common item": "common_items", "unique item": "unique_items", "ally": "allies", "blessing": "blessing"}
    for l in adb_locs:
        k0 = norm_name(l["name"])
        k = LOCATION_ALIASES.get(norm_name(l["sort_name"]), LOCATION_ALIASES.get(k0, k0))
        hs = hs_locs.get(k) or hs_locs.get(best_match(k, hs_locs) or "")
        ws = ws_locs.get(k) or ws_locs.get(best_match(k, ws_locs) or "")
        jf = jf_locs.get(k)
        lid = "loc." + slug(l["sort_name"])
        name, st_name = R.value(lid, "name", [claim("helper_snapshot", hs and hs["name"], hs and hs["src_ref"]),
                                              claim("helper_wiki_scrape", ws and ws["name"], ws and ws["src_ref"]),
                                              claim("arkhamdb_sql", l["name"], l["src_ref"])],
                                norm=lambda v: LOCATION_ALIASES.get(norm_name(v), norm_name(v)))
        if len({norm_name(x) for x in (l["name"], hs and hs["name"]) if x}) > 1:
            st_name["note"] = "spelling variants treated as aliases (see 'aliases'); display name from first source"
        name = name or l["name"]
        is_inner = k == "innersanctum"
        stab_claims = []
        for sid, x in (("helper_snapshot", hs), ("helper_wiki_scrape", ws), ("jesseflorig_json", jf)):
            if x and x.get("stability") and x["stability"].lower() in stab_map:
                stab_claims.append(claim(sid, stab_map[x["stability"].lower()], x["src_ref"]))
        if is_inner:
            stability, st_stab = None, {"status": "derived", "reason": "Inner Sanctum is an encounter-only area reached through the Silver Twilight Lodge (Lodge Membership card text); helper snapshot stability 'n/a'"}
        else:
            stability, st_stab = R.value(lid, "stability", stab_claims)
        icons_claims = []
        for sid, x in (("helper_snapshot", hs), ("helper_wiki_scrape", ws)):
            if x and x.get("encounter_types") is not None:
                icons_claims.append(claim(sid, sorted({icon_map.get(i.lower(), "?" + i) for i in x["encounter_types"]}), x["src_ref"]))
        icons, st_icons = R.value(lid, "encounter_icons", icons_claims, norm="set", required=not is_inner)
        sp_claims = [claim("helper_snapshot", hs and hs.get("special_encounter"), hs and hs["src_ref"]),
                     claim("helper_wiki_scrape", ws and ws.get("special_encounter"), ws and ws["src_ref"])]
        sp, st_sp = R.text(lid, "special_ability_text", sp_claims, required=False,
                           missing_reason="no printed special ability recorded by any source (most locations have none)")
        hood_id = hood_ix.get(l["neighborhood"], lid)
        aliases = sorted({re.sub(r"\s+", " ", x).strip() for x in (l["name"], l["sort_name"], hs and hs["name"], ws and ws["name"],
                                                                hs and hs.get("card_display_text")) if x} - {name})
        out["locations"].append({
            "id": lid, "set_id": BASE, "name": name, "aliases": aliases, "neighborhood_id": hood_id,
            "kind": "encounter_only" if is_inner else "board_location", "stability": stability,
            "encounter_icons": icons, "special_ability_name": (sp.split(":", 1)[0] if sp and ":" in sp[:40] else None),
            "special_ability_text": sp, "home_of_investigator_ids": [],
            "source_ids": {"arkhamdb_sql": l["src_id"], "helper_snapshot": hs and hs["key"]},
            "field_status": {"name": st_name, "stability": st_stab, "encounter_icons": st_icons, "special_ability_text": st_sp},
        })
        loc_ix.add(l["name"], lid)
        loc_ix.add(l["sort_name"], lid)
        loc_ix.add(name, lid)
    out["board_connections"] = []
    out["missing"].append({"entity_id": "board", "field": "connections",
                           "reason": "No reachable source provides the adjacency graph: movement is along the yellow lines printed on the "
                                     "game board (core rulebook p.6). The fandom wiki was checked (2026-10-15): neighborhood pages list "
                                     "their locations but no street-to-street links, and no page tabulates the board's lines or "
                                     "monster-movement arrows. Table left empty."})
    for a in out["areas"]:
        if a["kind"] == "street":
            pass

    # ---------------------------------------------------------------- other worlds
    world_ix = Index(WORLD_ALIASES, cutoff=0.75)
    adb_worlds = [w for w in recs("arkhamdb_sql", "other_worlds") if w["name"] != "Other"]
    hs_worlds = {norm_name(w["name"]): w for w in recs("helper_snapshot", "other_worlds")}

    def wkey(n):
        k = norm_name(n)
        return WORLD_ALIASES.get(k, k)

    # colours derived from which gate-card colours carry an encounter for the world (per source)
    derived_cols = {}
    for sid in ("arkhamdb_sql", "kuerv0_json", "ellebaum_json", "helper_snapshot"):
        for g in recs(sid, "gate_cards"):
            if len(g.get("colors") or []) != 1 or g["colors"][0] not in ("red", "green", "blue", "yellow"):
                continue
            for e in g["encounters"]:
                if norm_name(e["world"]) in ("other",):
                    continue
                derived_cols.setdefault(sid, {}).setdefault(wkey(e["world"]), set()).add(g["colors"][0])
    for w in adb_worlds:
        k = wkey(w["name"])
        wid = "ow." + slug(re.sub(r"^The ", "", w["name"]))
        world_ix.add(w["name"], wid)
        hs = hs_worlds.get(norm_name(w["name"])) or next((x for kk, x in hs_worlds.items() if wkey(x["name"]) == k), None)
        if hs:
            world_ix.add(hs["name"], wid)
            for a in hs.get("aliases") or []:
                world_ix.add(a, wid)
        cl = [claim("arkhamdb_sql", sorted(w["colors"]), w["src_ref"]),
              claim("helper_snapshot", sorted(hs["colors"]) if hs and hs.get("colors") else None, hs and hs["src_ref"])]
        for sid, m in derived_cols.items():
            dk = best_match(k, m, cutoff=0.75)
            if dk:
                cl.append(claim(sid, sorted(m[dk]), "derived from colours of %s gate cards carrying a '%s' encounter" % (sid, w["name"])))
        cols, st_cols = R.value(wid, "encounter_colors", cl, norm="set")
        out["other_worlds"].append({
            "id": wid, "set_id": BASE, "name": w["name"], "aliases": sorted({x for x in [hs and hs["name"]] + (hs.get("aliases", []) if hs else []) if x and x != w["name"]}),
            "encounter_colors": cols, "areas": 2,
            "source_ids": {"arkhamdb_sql": w["src_id"], "helper_snapshot": hs and hs["key"]},
            "field_status": {"encounter_colors": st_cols,
                             "areas": {"status": "single_source", "sources": ["eog_rules_summary"],
                                       "reason": "rules: 'Each Other World space is divided into 2 areas' (EOG rules summary, unofficial); official rulebook movement section not excerpted"}},
        })
    out["missing"].append({"entity_id": "gate_markers", "field": "composition",
                           "reason": "16 gate markers (official count) but no source lists each marker's Other World and close/seal "
                                     "modifier. The fandom wiki 'Gate marker' page (checked 2026-10-15) only has an image gallery: its "
                                     "'Original Gate Markers' section mixes base and Dunwich Horror worlds (Another Time, Lost Carcosa, "
                                     "The Underworld, Unknown Kadath) and states no modifiers in text; the images are on a blocked host."})

    # places = locations + street areas (used by mythos activity / closing effects)
    place_ix = Index(dict(LOCATION_ALIASES, merchantdiststreets="merchantdistrictstreets",
                          miskatonicustreets="miskatonicuniversitystreets"))
    place_ix.keys.update(loc_ix.keys)
    for n in out["neighborhoods"]:
        for nm in [n["name"]] + n["aliases"]:
            place_ix.add(nm + " Streets", n["street_area_id"])
    # ---------------------------------------------------------------- encounter cards
    _build_location_cards(out, R, hood_ix, loc_ix, errata)
    _build_gate_cards(out, R, world_ix)
    _build_mythos(out, R, loc_ix, place_ix)
    # ---------------------------------------------------------------- people & cards
    _build_investigators(out, R, loc_ix, manual, errata)
    _build_ancient_ones(out, R, manual)
    _build_investigator_cards(out, R, errata)
    _build_monsters(out, R)
    _build_images(out, manual)

    # investigator fixed possessions -> card ids (cards are built after investigators)
    by_name = {(c["card_type"], norm_name(c["name"] or "")): c["id"] for c in out["cards"]}
    for inv in out["investigators"]:
        for fc in inv["fixed_possessions"]["cards"]:
            k = (fc["deck"], norm_name(fc["name"]))
            hit = by_name.get(k) or by_name.get((fc["deck"], best_match(k[1], {n for d_, n in by_name if d_ == fc["deck"]}, cutoff=0.85) or ""))
            if hit != fc["card_id"]:
                fc["name_on_sheet"] = fc["name"]
            fc["card_id"] = hit
            if hit is None:
                R.missing.append({"entity_id": inv["id"], "field": "fixed_possessions.cards", "reason": "card %r not found in %s deck" % (fc["name"], fc["deck"])})
    for e in errata.values():
        out["errata"].append({k: v for k, v in e.items()} | {"doc_id": "complete_faq",
                             "quote_verified": next((q["ok"] for q in od["quote_checks"] if q["id"] == e["id"]), None)})
    out["meta"]["web_search_recheck"] = _recheck_web_search()
    out["conflicts"] = R.conflicts
    out["missing"] += R.missing
    out["unresolved_references"] += [dict(u, index="location") for u in loc_ix.unresolved] + \
                                   [dict(u, index="other_world") for u in world_ix.unresolved] + \
                                   [dict(u, index="neighborhood") for u in hood_ix.unresolved]
    out["meta"].update({
        "schema_version": SCHEMA_VERSION, "generated_at": now_iso(),
        "game": "Arkham Horror (Second Edition), Fantasy Flight Games, 2005 (revised printing 2006)",
        "scope": "base game only; expansions identifiable via set ids but not integrated",
        "language": "en", "text_policy": "English source wording kept; *_html fields keep the source markup; translations go to 'translations'",
        "not_included": ["Arkham Horror LCG (card game)", "Arkham Horror 3rd edition"],
        "status_vocabulary": "see ah2e/resolve.py and README",
    })
    write_json(config.DATA_DIR / "ah2e_base.json", out)
    log("  wrote data/ah2e_base.json: " + ", ".join("%s=%d" % (k, len(v)) for k, v in out.items() if isinstance(v, list)))
    return out


# ============================================================================ search-summary re-check
def _recheck_web_search():
    """Compare each claim of manual/web_search_evidence.json (search-engine summaries used while the wiki
    was blocked) with the raw wiki wikitext fetched later. Integration no longer uses a summary claim
    when the wiki provides the same field; this table records whether the summary had been right."""
    from .wiki import Wiki, num as wnum
    W = Wiki()
    rows = []
    for r in read_json(config.MANUAL_DIR / "web_search_evidence.json")["records"]:
        for c in r["claims"]:
            wv, ref = None, None
            if c.get("kind"):
                got = (W.card_claims(c["kind"], norm_name(c["entity"]))[0]).get(c["field"]) or []
                if got:
                    wv, ref = got[0]["value"], got[0]["ref"]
            else:
                pg, prm = W.investigators.get(norm_name(c["entity"].replace('"', "")), (None, None))
                if prm and prm.get(c["field"].capitalize()) not in (None, ""):
                    wv, ref = wnum(prm.get(c["field"].capitalize())), pg["src_ref"] + " Investigator template"
            same = (norm_name(wv) == norm_name(c["value"])) if isinstance(c["value"], str) and isinstance(wv, str) else wv == c["value"]
            rows.append({"entity": c["entity"], "kind": c.get("kind", "investigator"), "field": c["field"],
                         "search_summary_value": c["value"], "search_url": r["url"], "wiki_value": wv, "wiki_ref": ref,
                         "result": "wiki_not_fetched" if not W.available else ("not_found_on_wiki" if ref is None else
                                                                              ("match" if same else "mismatch"))})
    summ = {}
    for x in rows:
        summ[x["result"]] = summ.get(x["result"], 0) + 1
    return {"checked_at": now_iso() if W.available else None, "summary": summ, "rows": rows,
            "note": "Summary claims are superseded by the fetched wiki wikitext wherever the wiki gives the field."}


# ============================================================================ location (Arkham encounter) cards
def _match_cards(anchor_cards, other_cards, key_fn, label):
    """Greedy best match of other-source cards to anchor cards by mean encounter-text similarity."""
    pairs = []
    for oi, oc in enumerate(other_cards):
        for ai, ac in enumerate(anchor_cards):
            if label(ac) != label(oc):
                continue
            sims = []
            amap = {key_fn(e): e for e in ac["encounters"]}
            for e in oc["encounters"]:
                ae = amap.get(key_fn(e))
                if ae:
                    sims.append(similarity(text_of(ae, "text_html", "text_md", "text"), text_of(e, "text_html", "text_md", "text")))
            if sims:
                pairs.append((sum(sims) / max(len(ac["encounters"]), len(oc["encounters"])), ai, oi))
    pairs.sort(reverse=True)
    used_a, used_o, match = set(), set(), {}
    for s, ai, oi in pairs:
        if ai in used_a or oi in used_o or s < 0.5:
            continue
        used_a.add(ai)
        used_o.add(oi)
        match[ai] = (oi, round(s, 3))
    unmatched = [oi for oi in range(len(other_cards)) if oi not in used_o]
    return match, unmatched


def _encounter_record(R, eid, card_id, seq, target, claims_txt, html):
    text, st = R.text(eid, "text", claims_txt)
    return {"id": eid, "card_id": card_id, "seq": seq, **target, "text": text, "text_html": html,
            "checks": extract_checks(text), "field_status": {"text": st}}


def _build_location_cards(out, R, hood_ix, loc_ix, errata):
    adb = recs("arkhamdb_sql", "arkham_cards")
    others = {sid: recs(sid, "arkham_cards") for sid in ("helper_snapshot", "kuerv0_json", "jesseflorig_json")}
    lk = lambda e: loc_ix.get(e["location"], "arkham_card encounter")
    hood_of = lambda c: hood_ix.get(c["neighborhood"], "arkham_card")
    matches = {}
    for sid, cards in others.items():
        m, unmatched = _match_cards(adb, cards, lk, hood_of)
        matches[sid] = m
        for oi in unmatched:
            R.conflicts.append({"entity_id": "card.location.*", "field": "card_match", "status": "unmatched_record",
                                "reason": "%s card could not be matched to an arkhamdb card" % sid,
                                "alternatives": [{"source": sid, "ref": cards[oi]["src_ref"]}]})
    ws_enc = recs("helper_wiki_scrape", "location_encounters", base_only=False)
    ws_by_loc = {}
    for e in ws_enc:
        if "base" in (e.get("sets") or []):
            ws_by_loc.setdefault(loc_ix.get(e["location"], "wiki encounter"), []).append(e)
    police_err = errata.get("errata.encounter.police_station.deputy_dingby")
    for ai, c in enumerate(adb):
        cid = "card.location.adb%03d" % c["src_id"]
        hood_id = hood_of(c)
        src_ids = {"arkhamdb_sql": c["src_id"]}
        match_info = {}
        for sid, m in matches.items():
            if ai in m:
                oc = others[sid][m[ai][0]]
                src_ids[sid] = oc.get("card_code") or oc["src_ref"]
                match_info[sid] = {"ref": oc["src_ref"], "card_similarity": m[ai][1]}
        card = {"id": cid, "set_id": BASE, "card_type": "location", "deck": "location:" + hood_id, "name": None,
                "neighborhood_id": hood_id, "copies": 1, "encounter_ids": [], "source_ids": src_ids,
                "field_status": {"_match": {"status": "confirmed" if len({GROUP[s] for s in match_info}) >= 1 else "single_source",
                                            "matched_sources": match_info},
                                 "copies": {"status": "derived", "reason": "each Arkham location card is a distinct card; 63 records = 63 printed cards (rulebook p.2)"}}}
        for seq, e in enumerate(c["encounters"], 1):
            loc_id = lk(e)
            eid = "enc.location.adb%03d.%d" % (c["src_id"], seq)
            cl = [claim("arkhamdb_sql", plain(e["text_html"]), e["src_ref"])]
            for sid, m in matches.items():
                if ai in m:
                    oc = others[sid][m[ai][0]]
                    oe = next((x for x in oc["encounters"] if lk(x) == loc_id), None)
                    if oe:
                        cl.append(claim(sid, plain(text_of(oe, "text_html", "text_md", "text")), oe.get("src_ref", oc["src_ref"])))
            best = None
            for we in ws_by_loc.get(loc_id, []):
                s = similarity(cl[0]["value"], we["text"])
                if best is None or s > best[0]:
                    best = (s, we)
            if best and best[0] >= 0.6:
                cl.append(claim("helper_wiki_scrape", best[1]["text"], best[1]["src_ref"]))
            rec = _encounter_record(R, eid, cid, seq, {"location_id": loc_id, "other_world_id": None, "applies_to": "location"},
                                    cl, e["text_html"])
            if police_err and loc_id == "loc.police_station" and police_err["target"]["match"] in (rec["text"] or ""):
                old = rec["text"]
                if police_err["original_value"] in old:
                    rec["text"] = old.replace(police_err["original_value"], police_err["corrected_value"])
                    rec["text_html"] = (rec["text_html"] or "").replace(police_err["original_value"], police_err["corrected_value"])
                rec["field_status"]["text"] = dict(rec["field_status"]["text"], status="errata_applied",
                                                   errata_id=police_err["id"], printed_text=old,
                                                   note="source text already reads '.38 Revolver'" if police_err["original_value"] not in old else
                                                   "'.45 Revolver' replaced by '.38 Revolver' per FAQ")
                rec["errata_ids"] = [police_err["id"]]
            out["encounters"].append(rec)
            card["encounter_ids"].append(eid)
        out["cards"].append(card)


# ============================================================================ gate (Other World encounter) cards
def _build_gate_cards(out, R, world_ix):
    adb = recs("arkhamdb_sql", "gate_cards")
    others = {sid: recs(sid, "gate_cards") for sid in ("helper_snapshot", "kuerv0_json", "ellebaum_json")}

    def wk(e):
        if norm_name(e["world"]) == "other":
            return "other"
        if norm_name(e["world"]) == norm_name("The Stars are Right"):
            return "other"   # the reshuffle card: arkhamdb files its single text under 'Other
        return world_ix.get(e["world"], "gate encounter")

    col = lambda c: tuple(c["colors"]) if len(c.get("colors") or []) == 1 and c["colors"][0] in ("red", "green", "blue", "yellow") else ("special",)
    matches = {}
    for sid, cards in others.items():
        m, unmatched = _match_cards(adb, cards, wk, col)
        matches[sid] = m
        for oi in unmatched:
            R.conflicts.append({"entity_id": "card.gate.*", "field": "card_match", "status": "unmatched_record",
                                "reason": "%s gate card could not be matched to an arkhamdb card" % sid,
                                "alternatives": [{"source": sid, "ref": cards[oi]["src_ref"]}]})
    for ai, c in enumerate(adb):
        cid = "card.gate.adb%03d" % c["src_id"]
        special = len(c["colors"]) != 1
        src_ids = {"arkhamdb_sql": c["src_id"]}
        match_info = {}
        color_claims = [claim("arkhamdb_sql", "special" if special else c["colors"][0], c["src_ref"])]
        for sid, m in matches.items():
            if ai in m:
                oc = others[sid][m[ai][0]]
                src_ids[sid] = oc.get("card_code") or oc["src_ref"]
                match_info[sid] = {"ref": oc["src_ref"], "card_similarity": m[ai][1]}
                ocol = (oc.get("colors") or [None])[0]
                color_claims.append(claim(sid, "special" if ocol in ("white", None) and special else ocol, oc["src_ref"]))
        coverage_note = None
        if special and not any(sid == "helper_snapshot" for sid in match_info):
            coverage_note = "helper snapshot has 48 gate cards; this reshuffle card is absent there"
        colour, st_col = R.value(cid, "color", color_claims)
        name = None
        if special:
            m = re.search(r"<b>(.*?)</b>", c["encounters"][0]["text_html"])
            name = m.group(1) if m else None
        card = {"id": cid, "set_id": BASE, "card_type": "gate", "deck": "gate", "name": name,
                "color": None if special else colour, "colors_printed": sorted(c["colors"]),
                "is_deck_reshuffle": special, "copies": 1, "encounter_ids": [], "source_ids": src_ids,
                "field_status": {"_match": {"status": "confirmed" if match_info else "single_source", "matched_sources": match_info,
                                            "note": coverage_note},
                                 "color": st_col if not special else {"status": "derived", "reason": "multi-colour special card (all four colour flags set in arkhamdb)"},
                                 "copies": {"status": "derived", "reason": "49 records = 49 printed gate cards (rulebook p.2)"}}}
        for seq, e in enumerate(c["encounters"], 1):
            w = wk(e)
            eid = "enc.gate.adb%03d.%d" % (c["src_id"], seq)
            base_txt = plain(e["text_html"])
            if special and name:
                base_txt = re.sub(r"^" + re.escape(name) + r"\s*", "", base_txt)
            cl = [claim("arkhamdb_sql", base_txt, e["src_ref"])]
            for sid, m in matches.items():
                if ai in m:
                    oc = others[sid][m[ai][0]]
                    oe = next((x for x in oc["encounters"] if wk(x) == w), None)
                    if oe:
                        cl.append(claim(sid, plain(text_of(oe, "text_html", "text_md", "text")), oe.get("src_ref", oc["src_ref"])))
            target = {"location_id": None, "other_world_id": None if w in ("other", "stars") else w,
                      "applies_to": "deck_rule" if special else ("other_worlds_of_card_color" if w == "other" else "other_world")}
            rec = _encounter_record(R, eid, cid, seq, target, cl, e["text_html"])
            out["encounters"].append(rec)
            card["encounter_ids"].append(eid)
        out["cards"].append(card)


# ============================================================================ mythos
def _mythos_type(raw):
    """-> (type, subtype) from the various source spellings."""
    if not raw:
        return None, None
    r = raw.strip().lower()
    m = re.match(r"environment\s*\((\w+)\)", r)
    if m:
        return "environment", m.group(1)
    if r in ("headline", "rumor", "environment"):
        return r, None
    if r in ("special", "unique", "shuffle", "reshuffle deck"):
        return "special", None
    return "?" + raw, None


def _build_mythos(out, R, loc_ix, place_ix):
    hs = recs("helper_snapshot", "mythos_cards")
    ws = recs("helper_wiki_scrape", "mythos_cards")
    kv = recs("kuerv0_json", "mythos_cards")
    eb = recs("ellebaum_json", "mythos_cards")
    jf = recs("jesseflorig_json", "mythos_cards")
    titles = {}
    order = [("helper_wiki_scrape", ws, "title"), ("helper_snapshot", hs, "title"), ("kuerv0_json", kv, "name"),
             ("ellebaum_json", eb, "title"), ("jesseflorig_json", jf, "title")]
    for r in kv:
        mclose = re.search(r"(?:<br\s*/?>\s*)*<(b|h2)>\s*Close:\s*</\1>", r.get("description") or "", re.I)
        if mclose:
            body, closes = r["description"][:mclose.start()], r["description"][mclose.end():]
            r["description"] = body
            r["close_from_text"] = [x.strip() for x in re.split(r"<br\s*/?>", closes) if x.strip()]
    mtext = lambda sid, r: plain(r.get("text") or r.get("text_md") or r.get("description") or r.get("text_parts"))
    for sid, rows, tk in order:
        for r in rows:
            k = norm_name(r[tk].rstrip(".…"))
            hit = best_match(k, titles, cutoff=0.86)
            if hit is None:
                titles[k] = {"title": r[tk], "rows": {}}
                hit = k
            titles[hit]["rows"].setdefault(sid, []).append(r)
    # base cards that a source files under an expansion: attach those rows too and record the set conflict
    set_conflicts = {}
    for sid in ("helper_snapshot", "helper_wiki_scrape"):
        other = [r for r in recs(sid, "mythos_cards", base_only=False) if r.get("set") not in ("base", None)]
        for k, t in titles.items():
            if sid in t["rows"]:
                continue
            hit = [r for r in other if norm_name(r["title"].rstrip(".…")) == k]
            if hit:
                t["rows"][sid] = [dict(hit[0], _set_label=hit[0]["set"])]
                set_conflicts.setdefault(k, []).append({"source": sid, "value": hit[0]["set"], "ref": hit[0]["src_ref"]})
    # a source listing the same title twice: keep the row whose text fits, re-home the other by text
    for k, t in list(titles.items()):
        for sid, rows in list(t["rows"].items()):
            if len(rows) < 2:
                continue
            ref_txt = next((mtext(s2, r2[0]) for s2, r2 in t["rows"].items() if s2 != sid and mtext(s2, r2[0])), None)
            rows.sort(key=lambda r: similarity(mtext(sid, r), ref_txt), reverse=True)
            for extra in rows[1:]:
                dsim = similarity(mtext(sid, extra), mtext(sid, rows[0]))
                if dsim >= 0.9:
                    R.conflicts.append({"entity_id": "card.mythos." + slug(t["title"].rstrip(".…")), "field": "card_match",
                                        "status": "duplicate_record",
                                        "reason": "%s lists this card twice (text similarity %.2f); second record ignored" % (sid, dsim),
                                        "alternatives": [{"source": sid, "ref": extra["src_ref"]}]})
                    continue
                best = None
                for k2, t2 in titles.items():
                    if sid in t2["rows"]:
                        continue
                    other = next((mtext(s2, r2[0]) for s2, r2 in t2["rows"].items() if mtext(s2, r2[0])), None)
                    sc = similarity(mtext(sid, extra), other)
                    if best is None or sc > best[0]:
                        best = (sc, k2)
                if best and best[0] >= 0.6:
                    titles[best[1]]["rows"][sid] = [extra]
                    R.conflicts.append({"entity_id": "card.mythos." + slug(titles[best[1]]["title"].rstrip(".…")), "field": "name",
                                        "status": "conflict_resolved", "chosen": titles[best[1]]["title"],
                                        "reason": "%s record titled %r has the text of this card (similarity %.2f); matched by text" % (sid, extra.get("title") or extra.get("name"), best[0]),
                                        "alternatives": [{"source": sid, "value": extra.get("title") or extra.get("name"), "ref": extra["src_ref"]}]})
                    extra["_rehomed_from_title"] = extra.get("title") or extra.get("name")
                else:
                    R.conflicts.append({"entity_id": "card.mythos.*", "field": "card_match", "status": "unmatched_record",
                                        "reason": "%s duplicate title %r could not be matched by text" % (sid, extra.get("title") or extra.get("name")),
                                        "alternatives": [{"source": sid, "ref": extra["src_ref"]}]})
            t["rows"][sid] = rows[:1]
    for k, t in sorted(titles.items()):
        rows = t["rows"]
        one = {sid: v[0] for sid, v in rows.items()}
        title_claims = [claim(sid, (r.get("title") or r.get("name")).replace("…", "...").strip(), r["src_ref"]) for sid, r in one.items()
                        if not r.get("_rehomed_from_title")]
        dup = {sid: len(v) for sid, v in rows.items() if len(v) > 1}
        mid = "card.mythos." + slug(t["title"].rstrip(".…"))
        title, st_title = R.value(mid, "name", title_claims, norm="name")
        if title is None:
            title = t["title"]
        h, w, kq, e, j = (one.get(s) for s in ("helper_snapshot", "helper_wiki_scrape", "kuerv0_json", "ellebaum_json", "jesseflorig_json"))
        type_claims = []
        if h:
            type_claims.append(claim("helper_snapshot", _mythos_type(h.get("card_type")), h["src_ref"]))
        if w:
            wt = w.get("mythos_type") or w.get("card_type") or ("special" if w.get("special_type") else None)
            if wt and wt.lower() == "environment" and w.get("environment_type"):
                wt = "Environment (%s)" % w["environment_type"]
            type_claims.append(claim("helper_wiki_scrape", _mythos_type(wt) if wt else None, w["src_ref"]))
        if kq:
            type_claims.append(claim("kuerv0_json", _mythos_type(kq.get("type")) if kq.get("type") else None, kq["src_ref"]))
        if e:
            type_claims.append(claim("ellebaum_json", _mythos_type(e.get("type")), e["src_ref"]))
        if j:
            jt = j.get("type")
            type_claims.append(claim("jesseflorig_json", (_mythos_type(jt)[0], j.get("subtype")) if jt else None, j["src_ref"]))
        type_claims = [dict(c, value=list(c["value"])) if c["value"] else c for c in type_claims]
        mtype, st_type = R.value(mid, "mythos_type", type_claims)
        # gate location(s)
        g_claims = []
        if h:
            g_claims.append(claim("helper_snapshot", sorted(filter(None, (loc_ix.get(x, mid) for x in h.get("gate_locations") or []))), h["src_ref"]))
        if w:
            g_claims.append(claim("helper_wiki_scrape", sorted(filter(None, (loc_ix.get(x, mid) for x in w.get("gate_locations") or []))), w["src_ref"]))
        if kq:
            g_claims.append(claim("kuerv0_json", sorted(filter(None, [loc_ix.get(kq.get("gate location"), mid)])) , kq["src_ref"]))
        if e:
            g_claims.append(claim("ellebaum_json", sorted(filter(None, [loc_ix.get(e.get("gate_location"), mid)])), e["src_ref"]))
        if j:
            g_claims.append(claim("jesseflorig_json", sorted(filter(None, [loc_ix.get(j.get("gate_location"), mid)])), j["src_ref"]))
        gates, st_gates = R.value(mid, "gate_location_ids", g_claims, norm="set")
        # clue location
        def clue(v):
            if v is None:
                return None
            if not str(v).strip() or norm_name(str(v)) in ("noclues", "none", "noclue", "0"):
                return "none"
            return loc_ix.get(v.lstrip("*").strip(), mid) or "?" + v
        c_claims = [claim("helper_snapshot", clue(h.get("clue_location")) if h else None, h and h["src_ref"]),
                    claim("helper_wiki_scrape", clue(w.get("clue_location")) if w else None, w and w["src_ref"]),
                    claim("kuerv0_json", clue(kq.get("clue appears at")) if kq else None, kq and kq["src_ref"]),
                    claim("ellebaum_json", clue(e.get("clue_location")) if e else None, e and e["src_ref"]),
                    claim("jesseflorig_json", clue(j.get("clue_location")) if j else None, j and j["src_ref"])]
        clue_loc, st_clue = R.value(mid, "clue_location_id", c_claims, required=False)
        # movement
        mv = {}
        for color in ("white", "black"):
            cl = []
            if h:
                cl.append(claim("helper_snapshot", norm_symbols(h.get(color)), h["src_ref"]))
            if w and w.get("monster_movement") is not None:
                cl.append(claim("helper_wiki_scrape", norm_symbols([s for s, c in w["monster_movement"].items() if c == color]), w["src_ref"]))
            for sid, r in (("kuerv0_json", kq), ("ellebaum_json", e), ("jesseflorig_json", j)):
                if r and r.get(color) not in (None, ""):
                    cl.append(claim(sid, norm_symbols(r.get(color)), r["src_ref"]))
            cl = [c for c in cl if c["value"] is not None]
            mv[color] = R.value(mid, "monster_movement_" + color, cl, norm="set",
                                required=bool(mtype and mtype[0] != "special"))
        # texts
        main_claims = [claim("helper_wiki_scrape", w and w.get("text"), w and w["src_ref"]),
                       claim("helper_snapshot", h and plain(h.get("text_md")), h and h["src_ref"]),
                       claim("kuerv0_json", kq and plain(kq.get("description")), kq and kq["src_ref"]),
                       claim("ellebaum_json", e and plain(e.get("text")), e and e["src_ref"]),
                       claim("jesseflorig_json", j and plain([x for x in (j.get("text_parts") or [])]), j and j["src_ref"])]
        is_rumor = bool(mtype and mtype[0] == "rumor")
        if is_rumor:
            # rumor wording is split differently by each source: compare the concatenated full text
            def full(*parts):
                return " ".join(p for p in parts if p) or None
            main_claims = [claim("helper_wiki_scrape", w and full(w.get("text"), w.get("ongoing_effect"), w.get("pass_condition"), w.get("fail_condition")), w and w["src_ref"]),
                           claim("helper_snapshot", h and full(plain(h.get("text_md")), h.get("ongoing_effect"), h.get("pass_condition"), h.get("fail_condition")), h and h["src_ref"])] + main_claims[2:]
        flavor = first(w and w.get("flavor_text"), h and h.get("flavor_text"))
        if flavor:
            fk = norm_text(flavor)
            for c in main_claims[1:]:
                v = c.get("value")
                if v and norm_text(v).startswith(fk):
                    # flavor text printed in the same box: strip it before comparing (kept separately in 'flavor_text')
                    m_ = re.match(r"^\W*" + r"\W+".join(re.escape(x) for x in fk.split()) + r"\W*", v, re.I)
                    if m_:
                        c["value"] = v[m_.end():].strip()
                        c["ref"] = (c.get("ref") or "") + " (leading flavor text stripped for comparison)"
        text, st_text = R.text(mid, "text", main_claims)
        rumor = {}
        if is_rumor:
            for f in ("ongoing_effect", "pass_condition", "fail_condition"):
                rumor[f], rumor["_st_" + f] = R.text(mid, f, [claim("helper_wiki_scrape", w and w.get(f), w and w["src_ref"]),
                                                              claim("helper_snapshot", h and h.get(f), h and h["src_ref"])])
        reshuffle = bool((h and h.get("reshuffle_deck")) or (w and "reshuffle" in (w.get("special_type") or "").lower())
                         or (j and j.get("type") == "shuffle"))
        burst_claims = [claim("helper_snapshot", h.get("gate_burst") if h else None, h and h["src_ref"]),
                        claim("helper_wiki_scrape", w.get("gate_burst") if w else None, w and w["src_ref"])]
        burst, st_burst = R.value(mid, "gate_burst", burst_claims, required=False)
        def places(v):
            if not v:
                return None
            v = v if isinstance(v, list) else [v]
            ids = [place_ix.get(x, mid) for x in v]
            return sorted(i if i else "?" + x for i, x in zip(ids, v))
        act_claims = [claim("ellebaum_json", places(e and e.get("activity_at")), e and e["src_ref"]),
                      claim("jesseflorig_json", places(j and j.get("activity")), j and j["src_ref"])]
        activity, st_act = R.value(mid, "activity_area_ids", act_claims, norm="set", required=False)
        close_claims = [claim("ellebaum_json", places(e and e.get("close")), e and e["src_ref"]),
                        claim("jesseflorig_json", places(j and j.get("close")), j and j["src_ref"]),
                        claim("kuerv0_json", places(kq and kq.get("close_from_text")), kq and kq["src_ref"])]
        close, st_close = R.value(mid, "closes_area_ids", close_claims, norm="set", required=False)
        present = sorted(rows)
        card = {
            "id": mid, "set_id": BASE, "card_type": "mythos", "deck": "mythos", "name": title,
            "mythos_type": mtype[0] if mtype else None, "environment_subtype": mtype[1] if mtype else None,
            "text": text, "flavor_text": flavor, "ongoing_effect": rumor.get("ongoing_effect"),
            "pass_condition": rumor.get("pass_condition"), "fail_condition": rumor.get("fail_condition"),
            "gate_location_ids": gates, "gate_burst": burst, "clue_location_id": None if clue_loc == "none" else clue_loc,
            "places_clue": None if clue_loc is None else clue_loc != "none",
            "monster_movement": {"white": mv["white"][0], "black": mv["black"][0]},
            "activity_area_ids": activity, "closes_area_ids": close, "is_deck_reshuffle": reshuffle,
            "rules_notes": [n for n in ((h or {}).get("rules_notes") or [])], "copies": 1,
            "checks": extract_checks(text),
            "source_ids": {sid: r.get("card_code") or r["src_ref"] for sid, r in one.items()},
            "field_status": {"name": st_title, "mythos_type": st_type, "gate_location_ids": st_gates, "clue_location_id": st_clue,
                             "monster_movement.white": mv["white"][1], "monster_movement.black": mv["black"][1],
                             "text": st_text, "gate_burst": st_burst, "activity_area_ids": st_act, "closes_area_ids": st_close,
                             "_coverage": {"present_in": present, "absent_from": sorted({"helper_snapshot", "helper_wiki_scrape", "kuerv0_json", "ellebaum_json", "jesseflorig_json"} - set(present))}},
        }
        for f in ("ongoing_effect", "pass_condition", "fail_condition"):
            if "_st_" + f in rumor:
                card["field_status"][f] = rumor["_st_" + f]
        if dup:
            card["field_status"]["_duplicates_in_source"] = dup
        if k in set_conflicts:
            base_srcs = sorted(sid for sid, r in one.items() if not r.get("_set_label"))
            alts = [{"value": "base", "sources": base_srcs, "groups": sorted({GROUP[x] for x in base_srcs})}] + \
                   [{"value": c["value"], "sources": [c["source"]], "groups": [GROUP[c["source"]]], "refs": [c["ref"]]} for c in set_conflicts[k]]
            reason = ("filed as base by %s (independent groups: %d); the official base count of 67 Mythos cards is only reached "
                      "with this card; %s file it under %s" % (", ".join(base_srcs), len({GROUP[x] for x in base_srcs}),
                                                               "/".join(c["source"] for c in set_conflicts[k]), set_conflicts[k][0]["value"]))
            card["field_status"]["set_id"] = {"status": "conflict_resolved", "reason": reason, "alternatives": alts}
            R.conflicts.append({"entity_id": mid, "field": "set_id", "status": "conflict_resolved", "chosen": "base",
                                "reason": reason, "alternatives": alts})
        if set(rows) == {"jesseflorig_json"} or (set(rows) <= {"jesseflorig_json"}):
            card["field_status"]["_warning"] = "only present in jesseflorig_json"
        out["cards"].append(card)


# ============================================================================ investigators
def _parse_possessions(text):
    """Printed possession text -> structure. Raises nothing; unknown parts are kept in 'unparsed'."""
    res = {"money": None, "clue_tokens": 0, "cards": [], "blessing": False, "special": [], "unparsed": []}
    if text is None:
        return None
    for part in re.split(r",\s*(?![^()]*\))", text):
        p = part.strip().rstrip("*")
        if not p:
            continue
        m = re.fullmatch(r"\$(\d+)", p)
        if m:
            res["money"] = int(m.group(1))
            continue
        m = re.fullmatch(r"(\d+) Clue Tokens?", p, re.I)
        if m:
            res["clue_tokens"] = int(m.group(1))
            continue
        if p.lower() == "blessing":
            res["blessing"] = True
            continue
        m = re.fullmatch(r"(\d+) (Common Items?|Unique Items?|Spells?|Skills?|Ally|Allies|Special)(?: \((.*)\))?", p, re.I)
        if m:
            deck = DECKS[norm_name(re.sub(r"s$", "", m.group(2), flags=re.I)).replace(" ", "")] if norm_name(m.group(2)) not in DECKS else DECKS[norm_name(m.group(2))]
            names = [x.strip() for x in m.group(3).split(",")] if m.group(3) else []
            if deck == "special":
                res["special"] += names
            else:
                res["cards"].append({"deck": deck, "count": int(m.group(1)), "names": names})
            continue
        res["unparsed"].append(p)
    return res


def _random_counts(text):
    out = {}
    for part in (text or "").split(","):
        m = re.fullmatch(r"\s*(\d+) (Common Items?|Unique Items?|Spells?|Skills?)\s*", part, re.I)
        if m:
            k = norm_name(m.group(2))
            k = DECKS.get(k) or DECKS.get(re.sub(r"s$", "", k))
            out[k] = out.get(k, 0) + int(m.group(1))
    return out


def _wiki_possessions(items):
    """Wiki bullet list ('*$1\\n*1 [[Clue token]]') -> the comma-joined printed form read by _parse_possessions."""
    from .wiki import plain as wplain
    parts = []
    for ln in (items or "").splitlines():
        t = wplain(ln.lstrip("*").strip())
        t = re.sub(r"^(\d+ Clue tokens?)\s*\(.*\)$", r"\1", t, flags=re.I)   # Kate: '(Do not place a Clue token ...)'
        if t:
            parts.append(t)
    return ", ".join(parts)


def _build_investigators(out, R, loc_ix, manual, errata):
    from .wiki import SRC as WSRC, Wiki, num as wnum, plain as wplain
    W = Wiki()
    sheets = {norm_name(r["name"].replace('"', "")): r for r in manual["investigator_sheets"]}
    kv = [r for r in recs("kuerv0_json", "investigators") if r.get("variant") == "base-game.json"]
    kv2 = {norm_name(r["name"]): r for r in recs("kuerv0_json", "investigators") if r.get("variant") == "investigators.json"}
    gl = {norm_name(r["name"]): r for r in recs("gorlith_android", "investigators") if r.get("set") == BASE}
    pv = {"ashcanpete": None, "joediamond": None}
    for r in recs("pavelius_cpp", "investigators", base_only=False):
        pv["ashcanpete" if r["id"] == "ashcan" else "joediamond"] = r
    ev = {}
    for rec_ in manual["web_search_evidence"]["records"]:
        for c in rec_["claims"]:
            ev.setdefault(norm_name(c["entity"].replace('"', "")), {}).setdefault(c["field"], []).append(
                {"value": c["value"], "url": rec_["url"]})
    names = sorted(set(sheets) | {norm_name(r["name"]) for r in kv})
    loc_home = {}
    for k in names:
        sh = sheets.get(k)
        kq = next((r for r in kv if norm_name(r["name"]) == k), None)
        k2 = kv2.get(k)
        g = gl.get(k)
        pvr = pv.get(k)
        wpg, wp = W.investigators.get(k, (None, None))
        wref = wpg and wpg["src_ref"] + " Investigator template"
        wfix = _parse_possessions(_wiki_possessions(wp.get("FixedPossessions"))) if wp else None
        # search-engine summaries are only used while the wiki page itself is unavailable
        evk = {} if wp else ev.get(k, {})
        img = "card_image"
        iid = "inv." + slug((sh or kq)["name"].replace('"', ""))
        fs = {}
        name, fs["name"] = R.value(iid, "name", [claim(img, sh and sh["name"], sh and sh["src_ref"]),
                                                 claim("kuerv0_json", kq and kq["name"], kq and kq["src_ref"]),
                                                 claim("gorlith_android", g and g["name"], g and g["src_ref"]),
                                                 claim(WSRC, wp and wp.get("Name"), wref)], norm="name")
        name = name or (sh or kq)["name"]
        occ, fs["occupation"] = R.value(iid, "occupation", [claim(img, sh and sh["occupation"], sh and sh["src_ref"]),
                                                             claim("kuerv0_json", kq and kq.get("occupation"), kq and kq["src_ref"]),
                                                             claim("gorlith_android", g and g["occupation"], g and g["src_ref"]),
                                                             claim(WSRC, wp and wp.get("Occupation"), wref)], norm="name")
        for stat in ("sanity", "stamina"):
            cl = [claim("kuerv0_json", kq and kq.get(stat), kq and kq["src_ref"]),
                  claim("kuerv0_json", k2 and k2.get("max" + stat.capitalize()), k2 and k2["src_ref"]),
                  claim("gorlith_android", g and g.get(stat), g and g["src_ref"]),
                  claim("pavelius_cpp", pvr and pvr.get(stat), pvr and pvr["src_ref"]),
                  claim(WSRC, wp and wnum(wp.get(stat.capitalize())), wref)]
            for e in evk.get(stat, []):
                cl.append(claim("web_search_fandom", e["value"], e["url"]))
            val, fs[stat] = R.value(iid, stat, cl)
            if stat == "sanity":
                sanity = val
            else:
                stamina = val
        home_claims = [claim(img, sh and loc_ix.get(sh["home"], iid), sh and sh["src_ref"]),
                       claim("kuerv0_json", kq and loc_ix.get(kq.get("home"), iid), kq and kq["src_ref"]),
                       claim("kuerv0_json", k2 and loc_ix.get(k2.get("home"), iid), k2 and k2["src_ref"])]
        if pvr:
            home_claims.append(claim("pavelius_cpp", loc_ix.get(re.sub(r"(?<!^)([A-Z])", r" \1", pvr["home_enum"]), iid), pvr["src_ref"]))
        if wp:
            home_claims.append(claim(WSRC, loc_ix.get(wplain(wp.get("Home")), iid), wref))
        home, fs["home_location_id"] = R.value(iid, "home_location_id", home_claims)
        focus_cl = [claim(img, sh and sh["focus"], sh and sh["src_ref"]), claim("kuerv0_json", kq and kq.get("focus"), kq and kq["src_ref"]),
                    claim("kuerv0_json", k2 and k2.get("focus"), k2 and k2["src_ref"]), claim("pavelius_cpp", pvr and pvr.get("focus"), pvr and pvr["src_ref"]),
                    claim(WSRC, wp and wnum(wp.get("Focus")), wref)]
        for e in evk.get("focus", []):
            focus_cl.append(claim("web_search_fandom", e["value"], e["url"]))
        focus, fs["focus"] = R.value(iid, "focus", focus_cl)
        # possessions -----------------------------------------------------
        fixed = _parse_possessions(sh["fixed_possessions_text"]) if sh else None
        kfix = (kq or {}).get("possessions", {}).get("fixed", {})
        kq_cards = sorted("%s:%s" % (DECKS.get(c["deck"], c["deck"]), norm_name(n)) for c in kfix.get("investigatorCards", []) for n in c.get("search", []))
        sh_cards = sorted("%s:%s" % (c["deck"], norm_name(n)) for c in (fixed or {}).get("cards", []) for n in c["names"])
        e_money = errata.get("errata.inv.bob_jenkins.money") if k == "bobjenkins" else None
        money, fs["fixed_possessions.money"] = R.value(iid, "fixed_possessions.money", [
            claim(img, fixed and fixed["money"], sh and sh["src_ref"]), claim("kuerv0_json", kfix.get("money") if kq else None, kq and kq["src_ref"]),
            claim("kuerv0_json", (k2 or {}).get("fixedPossessions", {}).get("money"), k2 and k2["src_ref"]),
            claim("pavelius_cpp", next((int(re.sub(r"\D", "", x)) for x in (pvr or {}).get("possessions_enum", []) if x.endswith("Money")), None), pvr and pvr["src_ref"]),
            claim(WSRC, wfix and wfix["money"], wref)],
            errata=e_money)
        clues, fs["fixed_possessions.clue_tokens"] = R.value(iid, "fixed_possessions.clue_tokens", [
            claim(img, fixed and fixed["clue_tokens"], sh and sh["src_ref"]), claim("kuerv0_json", kfix.get("clueToken") if kq else None, kq and kq["src_ref"]),
            claim("pavelius_cpp", next((int(re.sub(r"\D", "", x)) for x in (pvr or {}).get("possessions_enum", []) if x.endswith("Clue")), 0) if pvr else None, pvr and pvr["src_ref"]),
            claim(WSRC, wfix and wfix["clue_tokens"], wref)])
        named, fs["fixed_possessions.cards"] = R.value(iid, "fixed_possessions.cards", [
            claim(img, sh_cards if sh else None, sh and sh["src_ref"]), claim("kuerv0_json", kq_cards if kq else None, kq and kq["src_ref"]),
            claim(WSRC, sorted("%s:%s" % (c["deck"], norm_name(n)) for c in wfix["cards"] for n in c["names"]) if wfix else None, wref)], norm="set")
        special, fs["fixed_possessions.special"] = R.value(iid, "fixed_possessions.special", [
            claim(img, sorted(norm_name(x) for x in fixed["special"]) if fixed else None, sh and sh["src_ref"]),
            claim("kuerv0_json", sorted(norm_name(x) for x in kfix.get("specialCards", [])) if kq else None, kq and kq["src_ref"]),
            claim(WSRC, sorted(norm_name(x) for x in wfix["special"]) if wfix else None, wref)], norm="set")
        blessing, fs["fixed_possessions.blessing"] = R.value(iid, "fixed_possessions.blessing", [
            claim(img, fixed["blessing"] if fixed else None, sh and sh["src_ref"]),
            claim("kuerv0_json", bool(kfix.get("blessing")) if kq else None, kq and kq["src_ref"]),
            claim(WSRC, wfix["blessing"] if wfix else None, wref)])
        rnd_img = _random_counts(sh["random_possessions_text"]) if sh else {}
        rnd_wk = _random_counts(_wiki_possessions(wp.get("RandomPossessions"))) if wp else None
        rnd_kq = {DECKS[r["deck"]]: r["count"] for r in (kq or {}).get("possessions", {}).get("random", [])}
        rp2 = (k2 or {}).get("randomPossessions", {})
        rnd_k2 = {DECKS[norm_name(kk)]: v for kk, v in rp2.items() if norm_name(kk) in DECKS} if k2 else None
        random = {}
        for deck in ("common_item", "unique_item", "spell", "skill"):
            e_rand = errata.get("errata.inv.jenny_barnes.random_common_items") if (k == "jennybarnes" and deck == "common_item") else None
            cl = [claim(img, rnd_img.get(deck, 0) if sh else None, sh and sh["src_ref"]),
                  claim("kuerv0_json", rnd_kq.get(deck, 0) if kq else None, kq and kq["src_ref"])]
            if rnd_k2 is not None:
                cl.append(claim("kuerv0_json", rnd_k2.get(deck, 0), k2["src_ref"]))
            if rnd_wk is not None:
                cl.append(claim(WSRC, rnd_wk.get(deck, 0), wref))
            random[deck], fs["random_possessions." + deck] = R.value(iid, "random_possessions." + deck, cl, errata=e_rand)
        # named cards -> card ids
        fixed_cards = []
        for c in (fixed or {}).get("cards", []):
            for n in c["names"]:
                fixed_cards.append({"deck": c["deck"], "name": n, "card_id": "card.%s.%s" % (c["deck"].replace("_item", ""), slug(n))})
        # ability ---------------------------------------------------------
        ab = (kq or {}).get("ability", {})
        w_ab = re.match(r"\s*(.+?)\s+-\s+(.*)$", wplain(wp.get("Ability1")) or "", re.S) if wp else None
        ab_name, fs["ability_name"] = R.value(iid, "ability_name", [claim(img, sh and sh["ability_name"], sh and sh["src_ref"]),
                                                                    claim("kuerv0_json", ab.get("name"), kq and kq["src_ref"]),
                                                                    claim("kuerv0_json", (k2 or {}).get("Ability", {}).get("name"), k2 and k2["src_ref"]),
                                                                    claim(WSRC, w_ab and w_ab.group(1), wref)], norm="name")
        kq_ab_text = None
        if ab.get("description"):
            kq_ab_text = ((ab.get("phase") + ": ") if ab.get("phase") else "") + ab["description"]
        ab_text, fs["ability_text"] = R.text(iid, "ability_text", [claim(img, sh and sh["ability_text"], sh and sh["src_ref"]),
                                                                  claim("kuerv0_json", plain(kq_ab_text), kq and kq["src_ref"]),
                                                                  claim("kuerv0_json", plain((k2 or {}).get("Ability", {}).get("description")), k2 and k2["src_ref"]),
                                                                  claim(WSRC, w_ab and w_ab.group(2), wref)])
        phase = None
        mm = re.match(r"(Any Phase|Upkeep|Movement|Town Encounter|Other World Encounter|Arkham Encounter|Mythos)\s*:", ab_text or "")
        if mm:
            phase = mm.group(1)
        # sliders --------------------------------------------------------
        sliders = []
        for a, b in SLIDER_PAIRS:
            cl = [claim(img, [[x, y] for x, y in zip(sh["sliders"][a], sh["sliders"][b])] if sh else None, sh and sh["src_ref"])]
            if kq:
                key = {"speed": "spSn", "fight": "fiWi", "lore": "loLu"}[a]
                f0 = kq["slider"][key]
                cl.append(claim("kuerv0_json", [[f0[0] + i, f0[1] - i] for i in range(4)], kq["src_ref"] + " (first position; +1/-1 per step)"))
            if k2:
                key = {"speed": "speedSneak", "fight": "fightWill", "lore": "loreLuck"}[a]
                cl.append(claim("kuerv0_json", k2["points"][key], k2["src_ref"]))
            if pvr:
                f0 = pvr["slider_first"]
                cl.append(claim("pavelius_cpp", [[f0[a] + i, f0[b] - i] for i in range(4)], pvr["src_ref"] + " (first position; +1/-1 per step)"))
            if wp:
                cl.append(claim(WSRC, [[wnum(wp.get("%s%d" % (a.capitalize(), i))), wnum(wp.get("%s%d" % (b.capitalize(), i)))] for i in range(1, 5)], wref))
            pos, st = R.value(iid, "sliders.%s_%s" % (a, b), cl)
            sliders.append({"pair": [a, b], "positions": pos})
            fs["sliders.%s_%s" % (a, b)] = st
        loc_home.setdefault(home, []).append(iid)
        out["investigators"].append({
            "id": iid, "set_id": BASE, "name": name, "aliases": sorted({x for x in (sh and sh["name"], kq and kq["name"], g and g["name"], wp and wp.get("Name")) if x and x != name}),
            "occupation": occ, "sanity": sanity, "stamina": stamina, "home_location_id": home, "focus": focus,
            "fixed_possessions": {"money": money, "clue_tokens": clues, "cards": fixed_cards, "card_keys": named,
                                  "special_cards": [s for s in (fixed or {}).get("special", [])], "blessing": blessing,
                                  "text": sh and sh["fixed_possessions_text"]},
            "random_possessions": dict(random, text=sh and sh["random_possessions_text"]),
            "ability": {"name": ab_name, "phase": phase, "text": ab_text},
            "sliders": sliders,
            "errata_ids": [e for e in ("errata.inv.bob_jenkins.money",) if k == "bobjenkins"] +
                          [e for e in ("errata.inv.jenny_barnes.random_common_items",) if k == "jennybarnes"],
            "source_ids": {"card_image": sh and sh["image_ref"]["path"], "kuerv0_json": kq and kq["src_ref"],
                           "gorlith_android": g and g["src_ref"], WSRC: wpg and wpg["title"]},
            "field_status": fs,
        })
    for l in out["locations"]:
        l["home_of_investigator_ids"] = sorted(loc_home.get(l["id"], []))


# ============================================================================ ancient ones
DEFENSE_IDS = {"physical resistance": "physical_resistance", "magical resistance": "magical_resistance",
               "physical immunity": "physical_immunity", "magical immunity": "magical_immunity", "none": None}


def _build_ancient_ones(out, R, manual):
    img = {norm_name(r["name"]): r for r in manual["ancient_one_sheets"]}
    hs = [r for r in recs("helper_snapshot", "ancient_ones")]
    ws_all = recs("helper_wiki_scrape", "ancient_ones")
    jf = {norm_name(r["name"]): r for r in recs("jesseflorig_json", "ancient_ones")}
    for k, im in sorted(img.items()):
        aid = "ao." + slug(im["name"])
        h_rows = [r for r in hs if norm_name(r["name"]) == k]
        h = next((r for r in h_rows if (r.get("sheet_key") in ("standard", None))), h_rows[0] if h_rows else None)
        w_rows = [r for r in ws_all if norm_name(r["name"]) == k]
        w = next((r for r in w_rows if (r.get("sheet_label") or "").lower() in ("sheet info", "original sheet info")), None)
        j = jf.get(k)
        fs = {}
        def V(field, *cl, norm=None, required=True):
            v, s = R.value(aid, field, list(cl), norm=norm, required=required)
            fs[field] = s
            return v

        def T(field, *cl, required=True):
            v, s = R.text(aid, field, list(cl), required=required)
            fs[field] = s
            return v
        cr = lambda x: (x or "").replace(" ", "").replace("∞", "inf") or None
        rec = {
            "id": aid, "set_id": BASE, "name": im["name"],
            "combat_rating": V("combat_rating", claim("card_image", cr(im["combat_rating"]), im["src_ref"]),
                               claim("helper_snapshot", cr(h and h.get("combat_rating_display")), h and h["src_ref"]),
                               claim("helper_wiki_scrape", cr(w and w.get("combat_rating")), w and w["src_ref"]),
                               claim("jesseflorig_json", cr(j and j.get("combat_rating")), j and j["src_ref"])),
            "doom_track": V("doom_track", claim("card_image", im["doom_track"], im["src_ref"]),
                            claim("helper_snapshot", h and h.get("doom_track"), h and h["src_ref"]),
                            claim("helper_wiki_scrape", w and w.get("doom_track"), w and w["src_ref"]),
                            claim("jesseflorig_json", j and j.get("doom_track"), j and j["src_ref"])),
            "defenses_text": V("defenses_text", claim("card_image", im["defenses"], im["src_ref"]),
                               claim("helper_snapshot", h and h.get("defense_text"), h and h["src_ref"]),
                               claim("helper_wiki_scrape", w and w.get("defenses"), w and w["src_ref"]),
                               claim("jesseflorig_json", j and j.get("defenses"), j and j["src_ref"]), norm="name"),
            "worshippers_text": T("worshippers_text", claim("card_image", im["worshippers"], im["src_ref"]),
                                  claim("helper_wiki_scrape", w and w.get("worshippers"), w and w["src_ref"]),
                                  claim("helper_snapshot", h and h.get("worshippers"), h and h["src_ref"]),
                                  claim("jesseflorig_json", j and j.get("worshippers"), j and j["src_ref"])),
            "power_name": V("power_name", claim("card_image", im["power_name"], im["src_ref"]),
                            claim("helper_snapshot", h and h.get("power_name"), h and h["src_ref"]),
                            claim("helper_wiki_scrape", w and w.get("power_name"), w and w["src_ref"]),
                            claim("jesseflorig_json", j and j.get("power_name"), j and j["src_ref"]), norm="name"),
            "power_text": T("power_text", claim("card_image", im["power"], im["src_ref"]),
                            claim("helper_wiki_scrape", w and w.get("power"), w and w["src_ref"]),
                            claim("helper_snapshot", h and h.get("power"), h and h["src_ref"]),
                            claim("jesseflorig_json", j and plain(j.get("power")), j and j["src_ref"])),
            "start_of_battle_text": T("start_of_battle_text", claim("card_image", im["start_of_battle"], im["src_ref"]),
                                      claim("helper_wiki_scrape", w and w.get("start_of_battle"), w and w["src_ref"]),
                                      claim("helper_snapshot", h and h.get("start_of_battle"), h and h["src_ref"]),
                                      claim("jesseflorig_json", j and plain(j.get("start_of_battle")), j and j["src_ref"]), required=False),
            "attack_text": T("attack_text", claim("card_image", im["attack"], im["src_ref"]),
                             claim("helper_wiki_scrape", w and w.get("attack"), w and w["src_ref"]),
                             claim("helper_snapshot", h and h.get("attack"), h and h["src_ref"]),
                             claim("jesseflorig_json", j and plain(j.get("attack")), j and j["src_ref"])),
        }
        if im["start_of_battle"] is None:
            fs["start_of_battle_text"] = {"status": "confirmed" if not (w and w.get("start_of_battle")) else fs["start_of_battle_text"]["status"],
                                          "reason": "no 'Start of Battle' box printed on the sheet image"}
            rec["start_of_battle_text"] = None
        d = (rec["defenses_text"] or "").lower()
        rec["defenses"] = [DEFENSE_IDS[d]] if d in DEFENSE_IDS and DEFENSE_IDS[d] else []
        rec["defenses_special"] = d.startswith("special")
        m = re.search(r"\b(Cultists|Maniacs|Dark Young)\b", rec["worshippers_text"] or "")
        rec["worshipper_monster"] = {"Cultists": "Cultist", "Maniacs": "Maniac", "Dark Young": "Dark Young"}.get(m.group(1)) if m else None
        rec["combat_rating_value"] = int(rec["combat_rating"]) if rec["combat_rating"] and re.fullmatch(r"[+-]?\d+", rec["combat_rating"]) else None
        rec["source_ids"] = {"card_image": im["image_ref"]["path"], "helper_snapshot": h and h["key"], "helper_wiki_scrape": w and w.get("url")}
        rec["field_status"] = fs
        rec["field_status"]["defenses"] = {"status": "derived", "reason": "parsed from defenses_text"}
        rec["field_status"]["worshipper_monster"] = {"status": "derived", "reason": "first monster name in worshippers_text"}
        out["ancient_ones"].append(rec)
        for r in w_rows:
            if r is not w:
                out["ancient_one_variants"].append({
                    "id": aid + ".variant." + slug(r.get("sheet_label") or "alt"), "base_id": aid, "set_id": "promo",
                    "label": r.get("sheet_label"), "doom_track": r.get("doom_track"), "combat_rating": r.get("combat_rating"),
                    "defenses_text": r.get("defenses"), "worshippers_text": r.get("worshippers"), "power_name": r.get("power_name"),
                    "power_text": r.get("power"), "start_of_battle_text": r.get("start_of_battle"), "attack_text": r.get("attack"),
                    "source_ids": {"helper_wiki_scrape": r["src_ref"]},
                    "note": "Alternative printed sheet listed by the wiki (not part of the base game box); kept separate, never merged."})


# ============================================================================ investigator cards (items, spells, skills, allies, special)
def _bonus_text(b):
    return ", ".join("%+d %s" % (x["value"], x["check"]) if isinstance(x.get("value"), int) else "%s %s" % (x.get("value"), x.get("check")) for x in b or [])


def _build_investigator_cards(out, R, errata):
    per_copy = recs("kuerv0_json", "investigator_cards")
    per_type = recs("kuerv0_json", "card_types")
    pav = recs("pavelius_cpp", "investigator_cards", base_only=False)
    jf_allies = [a for a in recs("jesseflorig_json", "allies")]
    comps = {c["name"]: c["quantity"] for c in out["components"]}
    groups = {}
    for c in per_copy:
        d = DECKS[c["deck"]]
        groups.setdefault((d, norm_name(c["name"])), {"copy": [], "type": [], "pav": [], "jf": []})["copy"].append(c)
    for c in per_type:
        if c["deck"] == "special":
            continue
        d = DECKS[c["deck"]]
        k = norm_name(c["name"])
        hit = best_match(k, {kk for (dd, kk) in groups if dd == d}, cutoff=0.85) or k
        groups.setdefault((d, hit), {"copy": [], "type": [], "pav": [], "jf": []})["type"].append(c)
    for c in pav:
        d = {"CommonItem": "common_item", "Spell": "spell", "Skill": "skill"}[c["type"]]
        k = norm_name(c["name"])
        hit = best_match(k, {kk for (dd, kk) in groups if dd == d}, cutoff=0.85) or k
        groups.setdefault((d, hit), {"copy": [], "type": [], "pav": [], "jf": []})["pav"].append(c)
    for a in jf_allies:
        k = norm_name(a["name"])
        hit = best_match(k, {kk for (dd, kk) in groups if dd == "ally"}, cutoff=0.8) or k
        groups.setdefault(("ally", hit), {"copy": [], "type": [], "pav": [], "jf": []})["jf"].append(a)
    err_by_card = {}
    for e in errata.values():
        t = e["target"]
        if t["kind"] == "card":
            err_by_card.setdefault((t["card_type"], norm_name(t["name"])), []).append(e)
    ev = {}
    for r in read_json(config.MANUAL_DIR / "web_search_evidence.json")["records"]:
        for c in r["claims"]:
            if c.get("kind"):
                ev.setdefault((c["kind"], norm_name(c["entity"])), {}).setdefault(c["field"], []).append(claim("web_search_fandom", c["value"], r["url"]))
    from .wiki import Wiki
    W = Wiki()
    wk = {}
    for deck, rows in W.lists.items():
        for rk in rows:
            hit = best_match(rk, {kk for (dd, kk) in groups if dd == deck}, cutoff=0.85)
            if hit:
                wk[(deck, hit)] = W.card_claims(deck, rk)[0]
            else:
                out["unresolved_references"].append({"name": rows[rk]["_name"], "context": "fandom_wiki list page (%s)" % deck,
                                                     "index": "card", "note": "base-game row on the wiki list page with no matching card"})
    for (deck, k), g in sorted(groups.items()):
        cp = g["copy"][0] if g["copy"] else None
        ty = g["type"][0] if g["type"] else None
        pv = g["pav"][0] if g["pav"] else None
        jf = g["jf"][0] if g["jf"] else None
        # wiki list-table claims; search-engine summaries only where the wiki has no row for the card
        evd = wk.get((deck, k)) or ev.get((deck, k), {})
        E = lambda f: evd.get(f, [])
        prov = "card.%s.?%s" % (deck, k)
        fs = {}
        # display order: properly cased sources first; the Kuerv0 per-type file is lower-case
        name, fs["name"] = R.value(prov, "name", [claim("kuerv0_json", cp and cp["name"], cp and cp["src_ref"]),
                                                  claim("pavelius_cpp", pv and pv["name"], pv and pv["src_ref"]),
                                                  claim("jesseflorig_json", jf and jf["name"], jf and jf["src_ref"]),
                                                  claim("kuerv0_json", ty and ty["name"], ty and ty["src_ref"])] + E("name"), norm="name")
        if name is None:
            name = first(cp and cp["name"], pv and pv["name"], jf and jf["name"], ty and ty["name"].title())
        if name and name == name.lower():
            name = re.sub(r"\b([a-z])", lambda m: m.group(1).upper(), name)
            fs["name"]["note"] = "only lower-case spelling available; capitalised for display"
        cid = "card.%s.%s" % (deck.replace("_item", ""), slug(name))
        cards_errata = err_by_card.get((deck, k), [])
        e_field = {e["target"]["field"]: e for e in cards_errata}
        copies_cl = [claim("kuerv0_json", len(g["copy"]) if g["copy"] else 0 if g["type"] else None, "src/data/base-game.json#investigatorCards.%s (number of records)" % (cp["deck"] if cp else deck)),
                     claim("kuerv0_json", ty.get("count") if ty and ty.get("count") is not None else (1 if deck == "ally" and ty else None), ty and ty["src_ref"])]
        if pv and deck == "common_item":
            copies_cl.append(claim("pavelius_cpp", pv.get("deck_count"), pv["src_ref"]))
        if deck == "ally" and jf:
            copies_cl.append(claim("jesseflorig_json", 1, jf["src_ref"] + " (one record per ally)"))
        copies, fs["copies"] = R.value(cid, "copies", copies_cl + E("copies"))
        rec = {"id": cid, "set_id": BASE, "card_type": deck, "deck": deck, "name": name, "copies": copies}
        hv = lambda x: None if x is None else (0 if x == "" else x)
        if deck in ("common_item", "unique_item"):
            price_cl = [claim("kuerv0_json", cp and cp.get("price") if cp and cp.get("price") != "" else None, cp and cp["src_ref"]),
                        claim("kuerv0_json", ty and ty.get("price") if ty and ty.get("price") != "" else None, ty and ty["src_ref"]),
                        claim("pavelius_cpp", pv and pv.get("price"), pv and pv["src_ref"])] + E("price")
            rec["price"], fs["price"] = R.value(cid, "price", price_cl, errata=e_field.get("price"))
            hands_cl = [claim("kuerv0_json", hv(cp.get("hands")) if cp else None, cp and cp["src_ref"]),
                        claim("kuerv0_json", hv(ty.get("hands")) if ty else None, ty and ty["src_ref"]),
                        claim("pavelius_cpp", pv and pv.get("hands"), pv and pv["src_ref"])] + E("hands")
            rec["hands"], fs["hands"] = R.value(cid, "hands", hands_cl)
            itype_cl = [claim("kuerv0_json", (cp.get("type") or None) if cp else None, cp and cp["src_ref"]),
                        claim("kuerv0_json", (ty.get("type") or None) if ty else None, ty and ty["src_ref"])] + E("item_type")
            rec["item_type"], fs["item_type"] = R.value(cid, "item_type", itype_cl, norm="name", required=False,
                                                        missing_reason="no type keyword recorded (sources leave it blank for non-weapons)")
        if deck == "spell":
            def num(x):
                if x is None or x == "":
                    return None
                return x.lower() if isinstance(x, str) else x
            cm_cp = next((b["value"] for b in (cp or {}).get("bonus", []) if b.get("check") == "Casting Modifier"), None)
            sc_cp = next((b["value"] for b in (cp or {}).get("bonus", []) if b.get("check") == "Sanity Cost"), None)
            rec["casting_modifier"], fs["casting_modifier"] = R.value(cid, "casting_modifier", [
                claim("kuerv0_json", num(cm_cp), cp and cp["src_ref"]), claim("kuerv0_json", num(ty and ty.get("Casting Modifier")), ty and ty["src_ref"])] + E("casting_modifier"))
            rec["sanity_cost"], fs["sanity_cost"] = R.value(cid, "sanity_cost", [
                claim("kuerv0_json", num(sc_cp), cp and cp["src_ref"]), claim("kuerv0_json", num(ty and ty.get("Sanity Cost")), ty and ty["src_ref"])] + E("sanity_cost"),
                errata=e_field.get("sanity_cost"))
            rec["hands"], fs["hands"] = R.value(cid, "hands", [
                claim("kuerv0_json", hv(cp.get("hands")) if cp else None, cp and cp["src_ref"]),
                claim("kuerv0_json", hv(ty.get("hands")) if ty else None, ty and ty["src_ref"])] + E("hands"))
        if deck in ("skill", "ally"):
            def bnorm(v):
                return ", ".join(sorted(x.strip() for x in v.split(","))) if v else v
            b_cp = _bonus_text(cp and cp.get("bonus"))
            jmap = {"sanity": "Maximum Sanity", "stamina": "Maximum Stamina"}
            b_jf = ", ".join("%+d %s" % (b["value"], jmap.get(b["type"], b["type"].capitalize())) for b in (jf or {}).get("bonuses", []))
            rec["bonus_text"], fs["bonus_text"] = R.value(cid, "bonus_text", [
                claim("kuerv0_json", bnorm(b_cp) or None, cp and cp["src_ref"]),
                claim("kuerv0_json", bnorm(ty.get("modifier")) if ty and ty.get("modifier") else None, ty and ty["src_ref"]),
                claim("jesseflorig_json", bnorm(b_jf) or None, (jf["src_ref"] + " (bonus type 'sanity'/'stamina' read as 'Maximum Sanity'/'Maximum Stamina')") if jf else None)],
                norm="name", required=deck == "ally", missing_reason="no skill bonus printed / recorded")
        if deck == "ally" and jf:
            rec["acquired_text"] = jf.get("acquired")
            fs["acquired_text"] = {"status": "single_source", "sources": ["jesseflorig_json"],
                                   "reason": "not printed on the card; source's note on where the ally is met"}
        # text --------------------------------------------------------------
        cp_text = None
        if cp:
            parts = []
            if deck in ("common_item", "unique_item") and cp.get("bonus"):
                def btxt(b):
                    if isinstance(b.get("value"), int):
                        return "%+d to %s" % (b["value"], b["check"])
                    mm = re.match(r"\s*([+-]?\d+)\s*(\(.*\))\s*$", str(b.get("value")))
                    if mm:  # '+2 (+3 instead if ...)' -> '+2 to Combat checks (+3 instead if ...)'
                        return "%s to %s %s" % (mm.group(1), b.get("check"), mm.group(2))
                    return "%s to %s" % (b.get("value"), b.get("check"))
                parts.append(", ".join(btxt(b) for b in cp["bonus"]))
            for d in cp.get("description", []):
                parts.append(((d["phase"] + ": ") if d.get("phase") else "") + d["text"])
            cp_text = " ".join(parts) or None
        tcl = [claim("kuerv0_json", plain(ty and ty.get("description")), ty and ty["src_ref"]),
               claim("kuerv0_json", plain(cp_text), cp and cp["src_ref"]),
               claim("jesseflorig_json", plain(jf and jf.get("text")), jf and jf["src_ref"])]
        rec["text"], fs["text"] = R.text(cid, "text", tcl)
        if e_field.get("text"):
            e = e_field["text"]
            old = rec["text"]
            mode = e["target"].get("mode")
            if mode == "prefix" and old:
                orig = e["original_value"].rstrip("…")
                corr = e["corrected_value"].rstrip("…")
                new = corr + old[len(orig):] if norm_text(old).startswith(norm_text(orig)) else old
                applied = norm_text(new).startswith(norm_text(corr))
            elif mode == "must_contain":
                new = old if (old and norm_text(e["corrected_value"]) in norm_text(old)) else ((old + " " if old else "") + e["corrected_value"])
                applied = True
            else:
                new = e["corrected_value"]
                applied = True
            rec["text"] = new
            fs["text"] = dict(fs["text"], status="errata_applied" if applied else "errata_not_applicable",
                              errata_id=e["id"], text_before_errata=old,
                              source_already_corrected=norm_text(old or "") == norm_text(new or ""))
        rec["checks"] = extract_checks(rec["text"])
        rec["errata_ids"] = [e["id"] for e in cards_errata]
        rec["source_ids"] = {"kuerv0_json": [c["src_ref"] for c in g["copy"]][:1] + ([ty["src_ref"]] if ty else []),
                             "pavelius_cpp": pv and pv["src_ref"], "jesseflorig_json": jf and jf["src_ref"]}
        rec["field_status"] = fs
        if not g["copy"] and g["type"]:
            ok = bool(copies)
            reason = ("present in Kuerv0 per-type file but absent from Kuerv0 base-game.json deck list; " +
                      ("kept because the resolved copy count is %s (see field 'copies')" % copies if ok else "no basis to decide"))
            fs["_presence"] = {"status": "conflict_resolved" if ok else "conflict_unresolved", "reason": reason}
            R.conflicts.append({"entity_id": cid, "field": "_presence", "status": fs["_presence"]["status"], "chosen": "present" if ok else None,
                                "reason": reason, "alternatives": [{"source": "kuerv0_json", "ref": ty["src_ref"], "value": "present"},
                                                                   {"source": "kuerv0_json", "ref": "src/data/base-game.json", "value": "absent"}]})
        out["cards"].append(rec)
    # special cards ----------------------------------------------------------
    sp = [c for c in per_type if c["deck"] == "special"]
    by = {norm_name(c["name"]): c for c in sp}
    official = {"retainer": "Retainers", "silvertwilightlodgemembership": "Silver Twilight Lodge Memberships",
                "bankloan": "Bank Loans", "blessingcurse": "Blessing/Curse Cards"}
    specs = [("retainer", "Retainer", ["retainer"]), ("silvertwilightlodgemembership", "Silver Twilight Lodge Membership", ["silvertwilightlodgemembership"]),
             ("bankloan", "Bank Loan", ["bankloan"]), ("blessingcurse", "Blessing / Curse", ["blessing", "curse"]),
             ("deputyofarkham", "Deputy of Arkham", ["deputyofarkham"]), ("deputysrevolver", "Deputy's Revolver", ["deputysrevolver"]),
             ("patrolwagon", "Patrol Wagon", ["patrolwagon"])]
    for key, name, faces in specs:
        cid = "card.special." + slug(name.replace(" / ", "_"))
        fs = {}
        face_recs = []
        for f in faces:
            src = by.get(f)
            t, st = R.text(cid + ("." + f if len(faces) > 1 else ""), "text", [claim("kuerv0_json", plain(src and src.get("description")), src and src["src_ref"])])
            face_recs.append({"face": src["name"].title() if src else f, "text": t, "field_status": st})
        if key in official:
            cl = [claim("official_docs", comps.get(official[key]), "core_rulebook p.2")]
            for f in faces:
                src = by.get(f)
                if src and src.get("count") is not None:
                    cl.append(claim("kuerv0_json", src["count"], src["src_ref"] + (" (counted per face)" if len(faces) > 1 else "")))
            copies, fs["copies"] = R.value(cid, "copies", cl)
        else:
            cl = [claim("official_docs", 1 if comps.get("Deputy Cards") == 3 else None, "core_rulebook p.2 '3 Deputy Cards' (one each of three named cards)")]
            copies, fs["copies"] = R.value(cid, "copies", cl)
            fs["copies"]["reason"] = "rulebook lists '3 Deputy Cards'; Kuerv0 names three distinct deputy cards -> 1 copy each (interpretation)"
        rec = {"id": cid, "set_id": BASE, "card_type": "special", "deck": "special", "name": name, "copies": copies,
               "double_faced": len(faces) > 1, "faces": face_recs,
               "text": face_recs[0]["text"] if len(faces) == 1 else None,
               "source_ids": {"kuerv0_json": [by[f]["src_ref"] for f in faces if f in by]}, "field_status": fs}
        if len(faces) > 1:
            fs["double_faced"] = {"status": "derived", "reason": "rulebook p.2 lists '8 Blessing/Curse Cards' as one component line (interpreted as 8 double-faced cards); Kuerv0 lists Blessing x8 and Curse x8 separately"}
        if key.startswith("deputy") or key == "patrolwagon":
            src = by.get(key)
            if src and src.get("type"):
                rec["item_type"] = src["type"]
            if src and src.get("hands") not in (None, ""):
                rec["hands"] = src["hands"]
        out["cards"].append(rec)


# ============================================================================ monsters
MONSTER_STATS = ("awareness", "horror_rating", "horror_damage", "combat_rating", "combat_damage", "toughness")
WIKI_STAT_PARAM = {"awareness": "Awareness", "horror_rating": "HorrorRating", "horror_damage": "HorrorDamage",
                   "combat_rating": "CombatRating", "combat_damage": "CombatDamage", "toughness": "Toughness"}
# The wiki misspells the Dark Pharaoh everywhere (also the expansion it links: '[[The Dark Pharoah]]').
MONSTER_NAME_FIX = {"The Dark Pharoah": "The Dark Pharaoh"}


def _build_monsters(out, R):
    from .wiki import MONSTER_FLAGS, MOVEMENT_BY_COLOR, SRC as WSRC, Wiki, num, plain as wplain
    W = Wiki()
    total = next((c["quantity"] for c in out["components"] if c["name"] == "Monster Markers"), None)
    wm = W.base_monsters()
    wiki_total = sum(n for _, _, n in wm)
    wiki_by = {}
    for pg, prm, n in wm:
        wiki_by[norm_name(re.sub(r"\s*\(monster\)$", "", pg["title"]))] = (pg, prm, n)

    def wstat(prm, f):
        v = num(prm.get(WIKI_STAT_PARAM[f]))
        return v if isinstance(v, int) else None

    # Pavelius rows are checked for a row shift: a stat row that equals another monster's wiki stats
    # (and not its own) is not counted as a claim for the monster it is filed under.
    pav = {norm_name(m["name"]): m for m in recs("pavelius_cpp", "monsters", base_only=False)}
    pav_shift = {}
    for k, m in pav.items():
        if not m.get("stats_present") or k not in wiki_by:
            continue
        vec = tuple(m.get(f) for f in MONSTER_STATS)
        own = tuple(wstat(wiki_by[k][1], f) for f in MONSTER_STATS)
        twin = [kk for kk, (_, prm, _) in wiki_by.items() if kk != k and tuple(wstat(prm, f) for f in MONSTER_STATS) == vec]
        if vec != own and twin:
            pav_shift[k] = twin[0]
    keys = sorted(set(wiki_by) | set(pav))
    for k in keys:
        pg, prm, wcount = wiki_by.get(k, (None, None, None))
        pm = pav.get(k)
        shifted = k in pav_shift
        pv_ok = pm if (pm and pm.get("stats_present") and not shifted) else None
        wref = pg and pg["src_ref"] + " MonsterInfoBox"
        raw_name = pg and re.sub(r"\s*\(monster\)$", "", pg["title"])
        fs = {}
        name, fs["name"] = R.value("mon." + k, "name", [claim(WSRC, raw_name, wref), claim("pavelius_cpp", pm and pm["name"], pm and pm["src_ref"])], norm="name")
        aliases = sorted({x for x in (prm and prm.get("Name"), raw_name, pm and pm["name"]) if x and x != name})
        if name in MONSTER_NAME_FIX:
            aliases = sorted(set(aliases) | {name})
            fs["name"] = dict(fs["name"], status="derived", original_value=name,
                              reason="wiki spells 'Pharoah' throughout, including the expansion it links ('The Dark Pharoah' for "
                                     "'The Curse of the Dark Pharaoh'); normalised to the official 'Pharaoh' spelling. Printed marker not seen.")
            name = MONSTER_NAME_FIX[name]
        mid = "mon." + slug(name)
        rec = {"id": mid, "set_id": BASE, "name": name, "aliases": aliases}
        # count ---------------------------------------------------------------
        cl = [claim(WSRC, wcount, wref and wref + " AHCount")]
        if pv_ok:
            cl.append(claim("pavelius_cpp", pm.get("count"), pm["src_ref"]))
        rec["count"], fs["count"] = R.value(mid, "count", cl)
        # statistics ----------------------------------------------------------
        rules_text = wplain(prm.get("RulesText")) if prm else None
        for f in MONSTER_STATS:
            raw = prm.get(WIKI_STAT_PARAM[f]) if prm else None
            cl = [claim(WSRC, wstat(prm, f) if prm else None, wref and "%s %s=%r" % (wref, WIKI_STAT_PARAM[f], raw))]
            if pv_ok:
                cl.append(claim("pavelius_cpp", pm.get(f), pm["src_ref"]))
            blank = prm is not None and wstat(prm, f) is None
            rec[f], fs[f] = R.value(mid, f, cl, required=not blank,
                                    missing_reason=("wiki infobox gives %r for %s; read as 'no number printed on the marker'%s "
                                                    "(interpretation, not checked against a marker image)"
                                                    % (raw, WIKI_STAT_PARAM[f], " - see rules_text" if rules_text else "")))
        # movement / dimension -------------------------------------------------
        mv = MOVEMENT_BY_COLOR.get((prm.get("Movement") or "").strip().lower()) if prm else None
        rec["movement_type"], fs["movement_type"] = R.value(mid, "movement_type", [claim(WSRC, mv, wref and "%s Movement=%s (border colour)" % (wref, prm.get("Movement")))])
        rec["border_color"] = (prm.get("Movement") or "").strip().lower() or None if prm else None
        dim = (prm.get("HomeDimension") or "").strip().lower() if prm else None
        dim = SYMBOL_ALIASES.get(dim, dim) or None
        rec["dimension_symbol"], fs["dimension_symbol"] = R.value(mid, "dimension_symbol", [claim(WSRC, dim, wref and "%s HomeDimension" % wref)])
        # abilities -----------------------------------------------------------
        w_ab = None
        if prm:
            w_ab = []
            for param, aid in MONSTER_FLAGS:
                v = (prm.get(param) or "").strip()
                if v:
                    w_ab.append("%s_%s" % (aid, v) if aid in ("overwhelming", "nightmarish") else aid)
        cl = [claim(WSRC, sorted(w_ab) if w_ab is not None else None, wref)]
        if pv_ok:
            cl.append(claim("pavelius_cpp", sorted(a.lower() for a in pm.get("flags", [])), pm["src_ref"] + " (flags; levels not recorded)"))
        rec["abilities"], fs["abilities"] = R.value(mid, "abilities", cl, norm="set")
        rec["abilities"] = rec["abilities"] or []
        fs["abilities"]["note"] = "ids as in reference.monster_special_abilities; 'overwhelming_1'/'nightmarish_1' carry the X value"
        rec["rules_text"], fs["rules_text"] = R.text(mid, "rules_text", [claim(WSRC, rules_text, wref)], required=False,
                                                     missing_reason="no special rule recorded on the wiki infobox")
        rec["flavor_text"] = wplain(prm.get("FlavorText")) if prm else None
        rec["image_refs"] = {"front": prm.get("MarkerFrontImage"), "back": prm.get("MarkerBackImage"),
                             "note": "wiki file names (File:<name>.png); image host not reachable from the build environment"} if prm else None
        rec["source_ids"] = {WSRC: pg and pg["title"], "pavelius_cpp": pm and pm["src_ref"]}
        if shifted:
            reason = ("pavelius_cpp row filed under %s carries exactly the wiki statistics of %s (and its %s row has no statistics): "
                      "treated as a shifted row and not counted as a claim for %s" % (pm["name"], wiki_by[pav_shift[k]][0]["title"], wiki_by[pav_shift[k]][0]["title"], pm["name"]))
            fs["_pavelius_row"] = {"status": "conflict_resolved", "reason": reason,
                                   "alternatives": [{"source": "pavelius_cpp", "ref": pm["src_ref"],
                                                     "value": {f: pm.get(f) for f in ("count",) + MONSTER_STATS}}]}
            R.conflicts.append({"entity_id": mid, "field": "_pavelius_row", "status": "conflict_resolved", "chosen": WSRC, "reason": reason,
                                "alternatives": [{"source": "pavelius_cpp", "ref": pm["src_ref"], "value": {f: pm.get(f) for f in ("count",) + MONSTER_STATS}},
                                                 {"source": WSRC, "ref": wref, "value": {f: rec.get(f) for f in ("count",) + MONSTER_STATS}}]})
        if not prm:
            rec["warning"] = "Not on the wiki's MonsterInfoBox pages with a base-game count; values from pavelius_cpp only."
        rec["field_status"] = fs
        out["monsters"].append(rec)
    out["monsters"].sort(key=lambda m: m["id"])
    got = sum(m.get("count") or 0 for m in out["monsters"])
    if got != total:
        out["missing"].append({"entity_id": "monsters", "field": "_records",
                               "reason": "Official count: %s monster markers; data holds %d (wiki MonsterInfoBox AHCount total %d)." % (total, got, wiki_total)})


# ============================================================================ images
def _build_images(out, manual):
    for r in manual["investigator_sheets"]:
        iid = "inv." + slug(r["name"].replace('"', ""))
        out["images"].append(dict(r["image_ref"], entity_id=iid, role="investigator_sheet_scan", used_for="manual transcription"))
    for r in manual["ancient_one_sheets"]:
        out["images"].append(dict(r["image_ref"], entity_id="ao." + slug(r["name"]), role="ancient_one_sheet_scan", used_for="manual transcription"))
    mf = read_json(config.MANIFEST, {}).get("sources", {})
    kv = mf.get("kuerv0_json", {})
    ids = {c["id"] for c in out["cards"]} | {i["id"] for i in out["investigators"]}
    prefix = {"common": "card.common.", "unique": "card.unique.", "spell": "card.spell.", "investigators": "inv."}
    for f in kv.get("files", []):
        if f.get("kind") != "image" or f.get("status") not in ("cached", "downloaded", "recorded_not_cached"):
            continue
        folder, fname = f["path"].split("/")[-2:]
        eid = prefix[folder] + slug(fname[:-4].replace("-", " "))
        if eid not in ids:
            cand = [i for i in ids if i.startswith(prefix[folder]) and norm_name(i.split(".")[-1]) == norm_name(fname[:-4])]
            eid = cand[0] if cand else None
        out["images"].append({"source_id": "kuerv0_json", "repository": kv.get("repository"), "commit_sha": kv.get("commit_sha"),
                              "path": f["path"], "url": f["url"], "sha256": f.get("sha256"), "entity_id": eid,
                              "role": "investigator_portrait" if folder == "investigators" else "card_art_crop",
                              "used_for": "optional illustration (art only, no card text)"})
