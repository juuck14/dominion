from pathlib import Path

from .. import config

# canonical set ids (base game + identifiable expansions; only "base" is populated for now)
SETS = [
    {"id": "base", "name": "Arkham Horror (Second Edition) base game", "year": 2005, "kind": "core"},
    {"id": "curse_of_the_dark_pharaoh", "name": "Curse of the Dark Pharaoh", "year": 2006, "kind": "small"},
    {"id": "dunwich_horror", "name": "Dunwich Horror", "year": 2006, "kind": "large"},
    {"id": "king_in_yellow", "name": "The King in Yellow", "year": 2007, "kind": "small"},
    {"id": "kingsport_horror", "name": "Kingsport Horror", "year": 2008, "kind": "large"},
    {"id": "black_goat_of_the_woods", "name": "The Black Goat of the Woods", "year": 2008, "kind": "small"},
    {"id": "innsmouth_horror", "name": "Innsmouth Horror", "year": 2009, "kind": "large"},
    {"id": "lurker_at_the_threshold", "name": "The Lurker at the Threshold", "year": 2010, "kind": "small"},
    {"id": "curse_of_the_dark_pharaoh_revised", "name": "Curse of the Dark Pharaoh (Revised Edition)", "year": 2011, "kind": "small"},
    {"id": "miskatonic_horror", "name": "Miskatonic Horror", "year": 2011, "kind": "large"},
    {"id": "promo", "name": "Promotional / other", "year": None, "kind": "promo"},
]

_SET_ALIASES = {
    "base": "base", "base-game": "base", "base game": "base", "akh": "base", "ah": "base", "arkham horror": "base",
    "arkham horror board game": "base", "1": "base",
    "dunwich-horror": "dunwich_horror", "dunwich horror": "dunwich_horror", "duh": "dunwich_horror", "dh": "dunwich_horror",
    "black-goat": "black_goat_of_the_woods", "the black goat of the woods": "black_goat_of_the_woods",
    "black goat of the woods": "black_goat_of_the_woods", "bgw": "black_goat_of_the_woods",
    "innsmouth-horror": "innsmouth_horror", "innsmouth horror": "innsmouth_horror", "inh": "innsmouth_horror", "innsmouth horr": "innsmouth_horror",
    "lurker-at-the-threshold": "lurker_at_the_threshold", "the lurker at the threshold": "lurker_at_the_threshold",
    "lurker at the threshold": "lurker_at_the_threshold", "lth": "lurker_at_the_threshold",
    "kingsport-horror": "kingsport_horror", "kingsport horror": "kingsport_horror", "kh": "kingsport_horror",
    "curse-dark-pharaoh-original": "curse_of_the_dark_pharaoh", "the curse of the dark pharaoh": "curse_of_the_dark_pharaoh",
    "curse of the dark pharaoh": "curse_of_the_dark_pharaoh", "curse of the dark pharoah": "curse_of_the_dark_pharaoh",
    "cdp": "curse_of_the_dark_pharaoh",
    "curse-dark-pharaoh-revised": "curse_of_the_dark_pharaoh_revised",
    "curse of the dark pharaoh (revised edition)": "curse_of_the_dark_pharaoh_revised",
    "king-in-yellow": "king_in_yellow", "the king in yellow": "king_in_yellow", "king in yellow": "king_in_yellow", "kiy": "king_in_yellow",
    "miskatonic-horror": "miskatonic_horror", "miskatonic horror": "miskatonic_horror", "mkh": "miskatonic_horror",
    "promotional": "promo",
}


def norm_set(label):
    if label is None:
        return None
    k = str(label).strip().lower()
    if k in _SET_ALIASES:
        return _SET_ALIASES[k]
    if k.startswith("miskatonic horror"):
        return "miskatonic_horror"
    return "unknown:" + str(label)


def raw_path(source_id, path):
    """Versioned copy if present, else cache copy (for binaries)."""
    p = config.RAW_DIR / source_id / path
    if p.exists():
        return p
    for src in config.SOURCES:
        if src["id"] == source_id and src["type"] == "github":
            c = config.CACHE_DIR / "github" / src["owner"] / src["repo"] / src["sha"] / path
            if c.exists():
                return c
    raise FileNotFoundError("%s:%s not fetched - run `python -m ah2e fetch`" % (source_id, path))


def read_text(source_id, path, encoding="utf-8"):
    return Path(raw_path(source_id, path)).read_bytes().decode(encoding)
