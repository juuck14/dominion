"""Source catalog: every external input of the pipeline is declared here.

GitHub sources are pinned to a commit SHA and fetched file-by-file from
raw.githubusercontent.com (no repository code is executed).  Files marked
``commit=True`` are copied into ``sources/raw/<source_id>/`` and versioned with
this repository; large binaries (PDFs, images) stay in ``.cache/`` only and are
identified by SHA-256 in ``sources/manifest.json``.
"""
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CACHE_DIR = ROOT / ".cache"
RAW_DIR = ROOT / "sources" / "raw"
PARSED_DIR = ROOT / "sources" / "parsed"
MANUAL_DIR = ROOT / "manual"
DATA_DIR = ROOT / "data"
REPORT_DIR = ROOT / "reports"
MANIFEST = ROOT / "sources" / "manifest.json"

USER_AGENT = "ah2e-data-pipeline/1.0 (personal offline project; polite crawler)"
REQUEST_INTERVAL_S = 1.0     # minimum delay between two network requests
MAX_RETRIES = 4              # retries on network errors (exponential backoff)
TIMEOUT_S = 60

GITHUB_RAW = "https://raw.githubusercontent.com/{owner}/{repo}/{sha}/{path}"

GORLITH_BASE_SHEETS = [
    "amanda_sharpe", "ashcan_pete", "bob_jenkins", "carolyn_fern", "darrell_simmons",
    "dexter_drake", "gloria_goldberg", "harvey_walters", "jenny_barnes", "joe_diamond",
    "kate_winthrop", "mandy_thompson", "michael_mcglen", "monterey_jack", "sister_mary",
    "vincent_lee",
]
KUERV0_IMAGES = {
    "common": "18-derringer 38-revolver 45-automatic ancient-tome axe bullwhip cavalry-saber cross dark-cloak dynamite food knife lantern lucky-cigarette-case map-of-arkham motorcycle old-journal research-materials rifle shotgun tommy-gun whiskey",
    "unique": "alien-statue ancient-tablet blue-watcher-of-the-pyramid book-of-dzyan cabala-of-saboth cultes-des-goules dragons-eye elder-sign enchanted-blade enchanted-jewelry enchanted-knife flute-of-the-outer-gods gate-box healing-stone holy-water lamp-of-alhazred nameless-cults necronomicon obsidian-statue pallid-mask powder-of-ibn-ghazi ruby-of-rlyeh silver-key sword-of-glory the-king-in-yellow warding-statue",
    "spell": "bind-monster dread-curse-of-azathoth enchant-weapon find-gate flesh-ward heal mists-of-releh red-sign-of-shudde-mell shrivelling voice-of-ra wither",
    "investigators": "amanda-sharpe ashcan-pete bob-jenkins carolyn-fern darrell-simmons dexter-drake gloria-goldberg harvey-walters jenny-barnes joe-diamond kate-winthrop mandy-thompson michael-mcglen monterey-jack sister-mary vincent-lee",
}
BASE_ANCIENT_ONES = [
    "azathoth", "cthulhu", "hastur", "ithaqua", "nyarlathotep", "shub-niggurath", "yig", "yog-sothoth",
]


def _f(path, commit=True, kind="data", encoding="utf-8"):
    return {"path": path, "commit": commit, "kind": kind, "encoding": encoding}


SOURCES = [
    {
        "id": "arkhamdb_sql",
        "type": "github",
        "title": "generalpf/arkhamdb - Arkham Horror 2nd Edition encounter database (SQLite SQL scripts)",
        "owner": "generalpf", "repo": "arkhamdb",
        "sha": "13e485e2d88f601e3645796c28457afdb8f10d6f",
        "license": "Apache-2.0 (repository); card text (c) Fantasy Flight Games",
        "edition_check": "README: 'Arkham Horror 2nd Edition Database API'; base SQL lists the 2e Arkham board.",
        "files": [
            _f("README.md"), _f("scripts/0_ddl.sql"), _f("scripts/1_base.sql"),
            _f("scripts/2_dunwich-horror.sql"), _f("scripts/3_black-goat-of-the-woods.sql"),
            _f("scripts/4_innsmouth-horror.sql"), _f("scripts/5_lurker-at-the-threshold.sql"),
            _f("scripts/6_kingsport-horror.sql"), _f("scripts/7_curse-of-the-dark-pharaoh.sql"),
            _f("scripts/8_king-in-yellow.sql"), _f("scripts/9_miskatonic-horror.sql"),
            _f("scripts/11_expansions.sql"),
        ],
    },
    {
        "id": "helper_snapshot",
        "type": "github",
        "title": "Oakraven79/arkham-horror-2e-helper - generated game data snapshot",
        "owner": "Oakraven79", "repo": "arkham-horror-2e-helper",
        "sha": "350ddf1594f9682a3291bcd942013d5378fed98c",
        "license": "CC0-1.0 (LICENSE file; package.json says MIT); card text (c) Fantasy Flight Games",
        "edition_check": "README: 'A local table companion for Arkham Horror Second Edition'.",
        "files": [_f("src/fixtures/gameDataSnapshot.generated.ts"), _f("src/fixtures/gameDataSnapshotTypes.ts")],
    },
    {
        "id": "helper_wiki_scrape",
        "type": "github",
        "title": "Oakraven79/arkham-horror-2e-helper - 'wireframes/Source data' (scrape of the 2e fandom wiki)",
        "owner": "Oakraven79", "repo": "arkham-horror-2e-helper",
        "sha": "350ddf1594f9682a3291bcd942013d5378fed98c",
        "license": "CC0-1.0 (repository); wiki text CC BY-SA (Fandom); card text (c) Fantasy Flight Games",
        "edition_check": "Every record carries an https://arkham-horror-second-edition.fandom.com/wiki/... URL.",
        "note": "Second-hand copy of source A (fandom wiki) - the wiki itself is blocked by this environment's network policy.",
        "files": [
            _f("wireframes/Source data/ancient_ones.json"),
            _f("wireframes/Source data/locations.json"),
            _f("wireframes/Source data/mythos_cards.json"),
        ],
    },
    {
        "id": "official_docs",
        "type": "github",
        "title": "Official FFG rule documents (copies stored in Oakraven79/arkham-horror-2e-helper/rulebooks)",
        "owner": "Oakraven79", "repo": "arkham-horror-2e-helper",
        "sha": "350ddf1594f9682a3291bcd942013d5378fed98c",
        "license": "(c) Fantasy Flight Games - only extracted excerpts are versioned here",
        "edition_check": "Core rulebook component list matches 2e (16 investigators, 179 Ancient One cards).",
        "documents": {
            "rulebooks/arkham_horror_core_rulebook.pdf": {
                "doc_id": "core_rulebook",
                "title": "Arkham Horror Rulebook (2nd edition, FFG)",
                "official_url": "https://images-cdn.fantasyflightgames.com/filer_public/e8/17/e817095d-ac80-482b-867b-41b2e41a57f1/arkham_horror_core_rulebook.pdf",
                "official_url_note": "URL found via web search; host blocked in the build environment, so the file was taken from the helper repository copy and identified by SHA-256.",
                "official": True,
            },
            "rulebooks/complete_arkham_horror_faq.pdf": {
                "doc_id": "complete_faq",
                "title": "Complete Arkham Horror FAQ (FFG)",
                "official_url": None,
                "official_url_note": "Official FFG CDN URL not verified (host blocked); file taken from the helper repository copy.",
                "official": True,
            },
            "rulebooks/ArkhamHorror_v7.6.pdf": {
                "doc_id": "eog_rules_summary",
                "title": "Esoteric Order of Gamers - Arkham Horror rules summary & reference v7.6 (Oct 2017)",
                "official_url": "https://www.orderofgamers.com",
                "official_url_note": "Fan-made, NOT official. Used only as a secondary cross-reference.",
                "official": False,
            },
        },
        "files": [
            _f("rulebooks/arkham_horror_core_rulebook.pdf", commit=False, kind="pdf", encoding=None),
            _f("rulebooks/complete_arkham_horror_faq.pdf", commit=False, kind="pdf", encoding=None),
            _f("rulebooks/ArkhamHorror_v7.6.pdf", commit=False, kind="pdf", encoding=None),
        ],
    },
    {
        "id": "jesseflorig_json",
        "type": "github",
        "title": "jesseflorig/arkham-horror-json - partial Arkham Horror (2e) JSON data",
        "owner": "jesseflorig", "repo": "arkham-horror-json",
        "sha": "a9c7bf6cc9a08888950204b4df7b40aa3c7f89f7",
        "license": "ISC (package.json); card text (c) Fantasy Flight Games",
        "edition_check": "expansions.json lists 2e expansions 2005-2011; AO data matches 2e sheets.",
        "files": [
            _f("data/" + n) for n in [
                "allies.json", "ancient-ones.json", "arkhamEncounters.json", "common-items.json",
                "epic-battles.json", "expansions.json", "investigators.json", "locations.json",
                "mythos.json", "other-world.json", "skills.json", "special.json", "spells.json",
                "unique-items.json",
            ]
        ] + [_f("images/ancient-ones/%s.png" % n, commit=False, kind="image", encoding=None) for n in BASE_ANCIENT_ONES],
    },
    {
        "id": "kuerv0_json",
        "type": "github",
        "title": "Kuerv0/arkham - 'Arkham Horror 2nd Edition Assistant' base-game JSON",
        "owner": "Kuerv0", "repo": "arkham",
        "sha": "fbdb3a8e6f3449f442312f654441c58092868fa2",
        "license": "none declared; card text (c) Fantasy Flight Games",
        "edition_check": "Repository description 'Arkham Horror 2nd Edition Assistant'; deck sizes equal 2e rulebook counts.",
        "files": [
            _f("src/data/base-game.json"),
            _f("src/data/base-game/ancient-one-cards/ancient-ones.json"),
            _f("src/data/base-game/ancient-one-cards/gate-cards.json"),
            _f("src/data/base-game/ancient-one-cards/location-cards.json"),
            _f("src/data/base-game/ancient-one-cards/mythos-cards.json"),
            _f("src/data/base-game/investigator-cards/allies.json"),
            _f("src/data/base-game/investigator-cards/common-items.json"),
            _f("src/data/base-game/investigator-cards/investigators.json"),
            _f("src/data/base-game/investigator-cards/skills.json"),
            _f("src/data/base-game/investigator-cards/special-cards.json"),
            _f("src/data/base-game/investigator-cards/spells.json"),
            _f("src/data/base-game/investigator-cards/unique-items.json"),
        ] + [_f("public/images/%s/%s.png" % (d, n), commit=False, kind="image", encoding=None)
             for d, names in KUERV0_IMAGES.items() for n in names.split()],
    },
    {
        "id": "ellebaum_json",
        "type": "github",
        "title": "ellebaum/AHTools - Arkham Horror board game scripts (mythos / other world JSON)",
        "owner": "ellebaum", "repo": "AHTools",
        "sha": "e91c99b2d18f1410981245c0c1fc1f0df515f4ae",
        "license": "MIT; card text (c) Fantasy Flight Games",
        "edition_check": "Card titles and counts (67 mythos / 49 gate) match the 2e base game.",
        "files": [_f("mythos.json"), _f("otherWorldEncounters.json"), _f("LICENSE")],
    },
    {
        "id": "gorlith_android",
        "type": "github",
        "title": "Gorlith/Arkham-Horror-Helper - Android investigator sheet helper (2011)",
        "owner": "Gorlith", "repo": "Arkham-Horror-Helper",
        "sha": "1e98a1345d1361ebc3dd26f69d9fb364af9501f3",
        "license": "none declared; sheet images (c) Fantasy Flight Games",
        "edition_check": "Investigator list split into base / Dunwich / Kingsport / Innsmouth (2e only).",
        "files": [_f("Arkham Horror Helper/src/com/gorlith/arkham/MyApp.java")] + [
            _f("Arkham Horror Helper/res/drawable-mdpi/%s.png" % n, commit=False, kind="image", encoding=None)
            for n in GORLITH_BASE_SHEETS
        ],
    },
    {
        "id": "pavelius_cpp",
        "type": "github",
        "title": "Pavelius/arkham - 'Arkham horror board game rules model' (C++, partial tables)",
        "owner": "Pavelius", "repo": "arkham",
        "sha": "36a5621babf85d02ea452e6d0f4ad3d25b9e208d",
        "license": "none declared",
        "edition_check": "Item list = 2e base common items; hero sheet layout (sanity/stamina/focus/sliders) is 2e.",
        "files": [
            _f("arkham/item.cpp", encoding="cp1251"), _f("arkham/hero.cpp", encoding="cp1251"),
            _f("arkham/monster.cpp", encoding="cp1251"),
        ],
    },
    {
        "id": "fandom_wiki",
        "type": "mediawiki",
        "title": "Arkham Horror (Second Edition) Wiki on Fandom",
        "api": "https://arkham-horror-second-edition.fandom.com/api.php",
        "page_base": "https://arkham-horror-second-edition.fandom.com/wiki/",
        "license": "CC BY-SA (Fandom); card text (c) Fantasy Flight Games",
        "edition_check": "Wiki dedicated to the second edition.",
        "seed_pages": ["Arkham_Horror_(Second_Edition)_Wiki", "Card_list", "Monster", "Investigator", "Common_Item",
                       "Unique_Item", "Spell", "Skill", "Ally", "Ancient_One", "Mythos_Card", "Location"],
        "categories": ["Monsters", "Investigators", "Ancient Ones", "Common Items", "Unique Items", "Spells",
                       "Skills", "Allies", "Locations", "Other Worlds", "Mythos Cards", "Special Cards"],
    },
]

# Sources that were evaluated but intentionally NOT used (recorded in the manifest for transparency).
EXCLUDED_SOURCES = [
    {"id": "arkhamdb_com", "title": "ArkhamDB.com", "reason": "Arkham Horror: The Card Game (LCG) - different game; excluded by requirement."},
    {"id": "kamalisk_arkhamdb_json_data", "title": "Kamalisk/arkhamdb-json-data", "reason": "LCG data - excluded by requirement."},
    {"id": "fenyx4_arkham_companion", "title": "Fenyx4/arkham-companion & DeckardSix/arkham-companion (Init.java)",
     "reason": "2e encounter decks embedded in Java SQL strings; identified but not parsed in this run (encounters already covered by 4 sources)."},
    {"id": "ellebaum_rb", "title": "ellebaum/AHTools *.rb", "reason": "Arkham encounters grouped by location, not by card - cannot rebuild 3-encounter cards; only the JSON files are used."},
]

BLOCKED_HOSTS_NOTE = (
    "The build environment's egress policy returned HTTP 403 for: arkham-horror-second-edition.fandom.com, "
    "www.fantasyflightgames.com, images-cdn.fantasyflightgames.com, boardgamegeek.com, web.archive.org, "
    "rulespal.com, cdn.1j1ju.com (checked 2026-10-14). Only GitHub was reachable."
)
