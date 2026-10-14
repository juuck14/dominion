"""Stage 2 - run every per-source parser and write ``sources/parsed/<source_id>.json``."""
import importlib

from . import config
from .util import now_iso, read_json, write_json

PARSERS = [
    ("arkhamdb_sql", "arkhamdb_sql"),
    ("helper_snapshot", "helper_snapshot"),
    ("helper_wiki_scrape", "helper_wiki_scrape"),
    ("official_docs", "official_docs"),
    ("jesseflorig_json", "jesseflorig_json"),
    ("kuerv0_json", "kuerv0_json"),
    ("ellebaum_json", "ellebaum_json"),
    ("gorlith_android", "gorlith_android"),
    ("pavelius_cpp", "pavelius_cpp"),
    ("fandom_wiki", "fandom_wiki"),
    ("manual", "manual"),
]


def run(log=print):
    manifest = read_json(config.MANIFEST, {})
    summary = {}
    for sid, mod in PARSERS:
        m = importlib.import_module("ah2e.parsers." + mod)
        try:
            res = m.parse({"manifest": manifest})
            status = "ok"
        except FileNotFoundError as e:
            res = {"records": {}, "warnings": [str(e)], "stats": {}}
            status = "missing_input"
        src = manifest.get("sources", {}).get(sid, {})
        out = {"source_id": sid, "parser": "ah2e.parsers." + mod, "parsed_at": now_iso(), "status": status,
               "commit_sha": src.get("commit_sha"), "warnings": res["warnings"], "stats": res["stats"],
               "records": res["records"]}
        write_json(config.PARSED_DIR / (sid + ".json"), out)
        summary[sid] = {"status": status, "warnings": len(res["warnings"]), "stats": res["stats"]}
        log("  %-20s %-14s warnings=%d" % (sid, status, len(res["warnings"])))
    return summary
