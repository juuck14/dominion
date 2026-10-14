"""Pavelius/arkham (C++ rules model, cp1251): static tables in item.cpp / hero.cpp / monster.cpp.

Only rows with real data are extracted.  Spell/skill rows in item.cpp all carry the same
placeholder deck_count (2) and no price, so for spells/skills only the *names* are used.
"""
import re

from .common import read_text

SID = "pavelius_cpp"
_ITEM = re.compile(r'\{"([^"]+)",\s*"[^"]*",\s*(CommonItem|Skill|Spell)(?:,\s*(\d+))?(?:,\s*(\d+))?(?:,\s*(\d+))?(?:,\s*\{(\w*)(?:,\s*(-?\d+))?\})?')
_HERO = re.compile(r'\{"(\w+)",\s*"(?:[^"\\]|\\.)*",\s*(\w+),\s*(\w+),\s*(\d+),\s*(\d+),\s*(\d+),\s*\{([-\d,\s]+)\},\s*\{([^}]*)\},\s*\{([^}]*)\}\}')
_MON = re.compile(r'\{"([^"]+)",\s*"[^"]*"(?:,\s*(\d+),\s*(-?\d+),\s*\{(-?\d+),\s*(-?\d+)\},\s*(\d+),\s*\{(-?\d+),\s*(-?\d+)\}(?:,\s*\{([^}]*)\})?)?\}')


def parse(ctx):
    warnings = []
    rec = {"investigator_cards": [], "investigators": [], "monsters": []}
    text = read_text(SID, "arkham/item.cpp", "cp1251")
    for m in _ITEM.finditer(text):
        line = text.count("\n", 0, m.start()) + 1
        name, typ = m.group(1), m.group(2)
        r = {"name": name, "type": typ, "src_ref": "arkham/item.cpp:%d" % line}
        if typ == "CommonItem":
            r.update(deck_count=int(m.group(3)), price=int(m.group(4)), hands=int(m.group(5)),
                     bonus_stat=m.group(6) or None, bonus_value=int(m.group(7)) if m.group(7) else None)
        else:
            r["name"] = re.sub(r"^Skill ", "", name)
        rec["investigator_cards"].append(r)
    text = read_text(SID, "arkham/hero.cpp", "cp1251")
    stat_order = ["speed", "sneak", "fight", "will", "lore", "luck"]
    for m in _HERO.finditer(text):
        line = text.count("\n", 0, m.start()) + 1
        stats = [int(x) for x in m.group(7).split(",")]
        rec["investigators"].append({
            "id": m.group(1), "ability_enum": m.group(2), "home_enum": m.group(3), "sanity": int(m.group(4)),
            "stamina": int(m.group(5)), "focus": int(m.group(6)), "slider_first": dict(zip(stat_order, stats)),
            "possessions_enum": [x.strip() for x in m.group(8).split(",") if x.strip()],
            "items_enum": [x.strip() for x in m.group(9).split(",") if x.strip()],
            "src_ref": "arkham/hero.cpp:%d" % line})
    text = read_text(SID, "arkham/monster.cpp", "cp1251")
    for m in _MON.finditer(text):
        line = text.count("\n", 0, m.start()) + 1
        if m.group(2) is None:
            warnings.append("arkham/monster.cpp:%d %s: name only, no statistics" % (line, m.group(1)))
            rec["monsters"].append({"name": m.group(1), "stats_present": False, "src_ref": "arkham/monster.cpp:%d" % line})
            continue
        rec["monsters"].append({
            "name": m.group(1), "stats_present": True, "count": int(m.group(2)), "awareness": int(m.group(3)),
            "horror_rating": int(m.group(4)), "horror_damage": int(m.group(5)), "toughness": int(m.group(6)),
            "combat_rating": int(m.group(7)), "combat_damage": int(m.group(8)),
            "flags": [x.strip() for x in (m.group(9) or "").split(",") if x.strip()],
            "src_ref": "arkham/monster.cpp:%d" % line})
    warnings.append("item.cpp: spell/skill rows use a uniform placeholder deck_count=2 and no price; only names are used")
    return {"records": rec, "warnings": warnings, "stats": {k: len(v) for k, v in rec.items()}}
