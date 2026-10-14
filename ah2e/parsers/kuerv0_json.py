"""Kuerv0/arkham ('Arkham Horror 2nd Edition Assistant'): base-game JSON files.

Two parallel representations exist in the repository: ``src/data/base-game.json`` (one record
per physical card) and ``src/data/base-game/**.json`` (one record per card name with a
``count``).  Both are parsed and kept apart (``variant``) so that internal disagreements show up.
"""
import json
import re

from .common import read_text

SID = "kuerv0_json"
BG = "src/data/base-game.json"
D = "src/data/base-game/"


def _j(path):
    return json.loads(read_text(SID, path))


_H2 = re.compile(r"<h2>(.*?)</h2>", re.S)


def split_h2(html):
    """'<h2>Title</h2><br/>text<h2>Title2</h2>...' -> [(title, text_html)]"""
    parts = _H2.split(html)
    out = []
    for i in range(1, len(parts), 2):
        body = re.sub(r"^\s*<br\s*/?>\s*", "", parts[i + 1]).strip()
        out.append((parts[i].strip(), body))
    return out


def parse(ctx):
    warnings = []
    rec = {"investigators": [], "investigator_cards": [], "card_types": [], "gate_cards": [], "arkham_cards": [],
           "mythos_cards": [], "ancient_ones": []}
    bg = _j(BG)
    for i, s in enumerate(bg["investigatorSheets"]):
        rec["investigators"].append(dict(s, variant="base-game.json", src_ref="%s#investigatorSheets[%d]" % (BG, i)))
    for deck, cards in bg["investigatorCards"].items():
        for i, c in enumerate(cards):
            if re.fullmatch(r"special\d+", c.get("name", "")):
                warnings.append("%s#investigatorCards.%s[%d]: placeholder record %r ignored" % (BG, deck, i, c["name"]))
                continue
            rec["investigator_cards"].append(dict(c, deck=deck, variant="base-game.json",
                                                  src_ref="%s#investigatorCards.%s[%d]" % (BG, deck, i)))
    for k in ("ancientOneSheets",):
        if all(re.fullmatch(r"ancientOne\d+", x.get("name", "")) for x in bg.get(k, [])):
            warnings.append("%s#%s: placeholder records only" % (BG, k))
    files = {
        "common": ("investigator-cards/common-items.json", "Common Items"),
        "unique": ("investigator-cards/unique-items.json", "Unique Items"),
        "spell": ("investigator-cards/spells.json", "Spells"),
        "skill": ("investigator-cards/skills.json", "Skills"),
        "ally": ("investigator-cards/allies.json", "Allies"),
    }
    for deck, (f, key) in files.items():
        for i, c in enumerate(_j(D + f)[key]):
            rec["card_types"].append(dict(c, deck=deck, variant="per-type file", src_ref="%s%s#%s[%d]" % (D, f, key, i)))
    sp = _j(D + "investigator-cards/special-cards.json")
    for key, lst in sp.items():
        for i, c in enumerate(lst):
            rec["card_types"].append(dict(c, deck="special", group=key, variant="per-type file",
                                          src_ref="%sinvestigator-cards/special-cards.json#%s[%d]" % (D, key, i)))
    inv = _j(D + "investigator-cards/investigators.json")["Investigators"]
    for i, s in enumerate(inv):
        if len(s) > 1:
            rec["investigators"].append(dict(s, variant="investigators.json",
                                             src_ref="%sinvestigator-cards/investigators.json#Investigators[%d]" % (D, i)))
    warnings.append("%sinvestigator-cards/investigators.json: only %d of %d records have data (others are name-only)"
                    % (D, sum(1 for s in inv if len(s) > 1), len(inv)))
    for i, g in enumerate(_j(D + "ancient-one-cards/gate-cards.json")["Gate Cards"]):
        rec["gate_cards"].append({"colors": [g["color"]], "encounters": [
            {"world": t, "text_html": b} for t, b in split_h2(g["description"])],
            "src_ref": "%sancient-one-cards/gate-cards.json#[%d]" % (D, i), "set": "base"})
    lc = _j(D + "ancient-one-cards/location-cards.json")
    for hood, cards in lc.items():
        for i, c in enumerate(cards):
            rec["arkham_cards"].append({"neighborhood": hood, "encounters": [
                {"location": t, "text_html": b} for t, b in split_h2(c["text"])],
                "src_ref": "%sancient-one-cards/location-cards.json#%s[%d]" % (D, hood, i), "set": "base"})
    for i, m in enumerate(_j(D + "ancient-one-cards/mythos-cards.json")["Mythos Cards"]):
        rec["mythos_cards"].append(dict(m, set="base", src_ref="%sancient-one-cards/mythos-cards.json#[%d]" % (D, i)))
    for i, a in enumerate(_j(D + "ancient-one-cards/ancient-ones.json")["Ancient Ones"]):
        rec["ancient_ones"].append(dict(a, set="base", src_ref="%sancient-one-cards/ancient-ones.json#[%d]" % (D, i)))
    stats = {k: len(v) for k, v in rec.items()}
    return {"records": rec, "warnings": warnings, "stats": stats}
