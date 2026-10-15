"""Lookups over the parsed fandom wiki pages (``sources/parsed/fandom_wiki.json``) for ``integrate``.

Everything returned here is a *claim* source ``fandom_wiki`` (independence group ``fandom_lineage``).
When the wiki has never been fetched every lookup is empty and integration falls back to the
other sources.
"""
import re

from . import config
from .resolve import claim
from .util import norm_name, read_json

SRC = "fandom_wiki"
BASE_EDITION = "Arkham Horror"
# Template:MonsterInfoBox 'Movement' = border colour (wiki Template:Monster maps colour -> movement type)
MOVEMENT_BY_COLOR = {"black": "normal", "blue": "flying", "green": "special", "orange": "aquatic", "purple": "stalker",
                     "red": "fast", "yellow": "stationary", "white": "none"}
MONSTER_FLAGS = [("Spawn", "spawn"), ("Mask", "mask"), ("Ambush", "ambush"), ("Undead", "undead"), ("Endless", "endless"),
                 ("WeaponImmunity", "weapon_immunity"), ("PhysicalImmunity", "physical_immunity"),
                 ("MagicalImmunity", "magical_immunity"), ("PhysicalResistance", "physical_resistance"),
                 ("MagicalResistance", "magical_resistance"), ("Overwhelming", "overwhelming"),
                 ("Nightmarish", "nightmarish"), ("Elusive", "elusive")]
LIST_PAGES = {"Common Item": "common_item", "Unique Item": "unique_item", "Spell": "spell"}


def link_target(cell):
    m = re.search(r"\[\[([^|\]]+)(?:\|([^\]]+))?\]\]", cell or "")
    return (m.group(1).strip(), (m.group(2) or m.group(1)).strip()) if m else (None, None)


def plain(v):
    if v is None:
        return None
    v = re.sub(r"\[\[(?:[^|\]]*\|)?([^\]]*)\]\]", r"\1", v)
    v = re.sub(r"\{\{[^{}]*\}\}", "", v)
    v = re.sub(r"'{2,}", "", v)
    v = re.sub(r"<[^>]+>", "", v)
    return re.sub(r"\s+", " ", v).strip()


def num(v):
    """'+0' -> 0, '-2' -> -2, '$5' -> 5, '' -> None; other text (e.g. 'Special') -> lower-case string."""
    if v is None:
        return None
    s = plain(v).replace("$", "").replace("–", "-").replace("−", "-").strip()
    if s == "":
        return None
    if re.fullmatch(r"[+-]?\d+", s):
        return int(s)
    return s.lower()


class Wiki:
    def __init__(self):
        d = read_json(config.PARSED_DIR / (SRC + ".json"), {}) or {}
        self.pages = {p["title"]: p for p in d.get("records", {}).get("pages", [])}
        self.available = bool(self.pages)
        self.monsters, self.investigators, self.lists = [], {}, {}
        for p in self.pages.values():
            for t in p["templates"]:
                if t["name"] == "MonsterInfoBox":
                    self.monsters.append((p, t["params"]))
                elif t["name"] == "Investigator" and t["params"].get("Edition") == BASE_EDITION:
                    self.investigators[norm_name(t["params"].get("Name", "").replace('"', ""))] = (p, t["params"])
        for title, deck in LIST_PAGES.items():
            pg = self.pages.get(title)
            rows = {}
            for tb in (pg or {}).get("tables", []):
                hdr = [h.strip().lower() for h in tb["header"]]
                if "expansion" not in hdr or "count" not in hdr:
                    continue
                for r in tb["rows"]:
                    if len(r) != len(hdr):
                        continue
                    row = dict(zip(hdr, r))
                    if row["expansion"].strip():        # expansion icon present -> not base game
                        continue
                    target, label = link_target(r[0])
                    rows[norm_name(label)] = dict(row, _name=label, _page=target,
                                                  _ref="%s (revid %s) table row '%s'" % (title, pg["revid"], label))
            self.lists[deck] = rows

    # ------------------------------------------------------------------ monsters
    def base_monsters(self):
        """[(page, params, count)] for MonsterInfoBox pages with AHCount > 0 (base-game markers)."""
        out = []
        for p, prm in self.monsters:
            n = num(prm.get("AHCount"))
            if isinstance(n, int) and n > 0:
                out.append((p, prm, n))
        return sorted(out, key=lambda x: x[1].get("Name") or x[0]["title"])

    # ------------------------------------------------------------------ investigator cards
    def card_claims(self, deck, key):
        """{field: [claim]} for one base-game card from the list tables (+ the card's own page for hands)."""
        from .resolve import best_match
        rows = self.lists.get(deck) or {}
        k = best_match(key, set(rows), cutoff=0.85)
        if not k:
            return {}, None
        row = rows[k]
        ref = row["_ref"]
        out = {"name": [claim(SRC, row["_name"], ref)]}
        out["copies"] = [claim(SRC, num(row.get("count")), ref)]
        if deck in ("common_item", "unique_item"):
            out["price"] = [claim(SRC, num(row.get("price")), ref)]
            out["item_type"] = [claim(SRC, plain(row.get("type")) or None, ref)]
        if deck == "spell":
            out["casting_modifier"] = [claim(SRC, num(row.get("casting modifier")), ref)]
            out["sanity_cost"] = [claim(SRC, num(row.get("sanity cost")), ref)]
        hands = num(row.get("hands")) if "hands" in row else None
        page = self.pages.get(row["_page"])
        if hands is not None:
            out["hands"] = [claim(SRC, hands, ref)]
        elif page is not None:
            # two page formats: an item template with an explicit ItemHands parameter (blank = none),
            # or free text where a bold 'Hands' line is present only for cards that need hands
            tpl = next((t for t in page["templates"] if "ItemHands" in t["params"]), None)
            if tpl is not None:
                h = num(tpl["params"]["ItemHands"])
                out["hands"] = [claim(SRC, h if isinstance(h, int) else 0,
                                      "%s %s ItemHands=%r" % (page["src_ref"], tpl["name"], tpl["params"]["ItemHands"]))]
            else:
                h = num(page["fields"].get("Hands"))
                if isinstance(h, int):
                    out["hands"] = [claim(SRC, h, page["src_ref"] + " 'Hands' line")]
                else:
                    out["hands"] = [claim(SRC, 0, page["src_ref"] + " (free-text card page without a 'Hands' line"
                                          + ("; list-table cell empty" if "hands" in row else "") + " -> 0 hands)")]
        return out, row
