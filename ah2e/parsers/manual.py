"""Hand-made inputs in ``manual/`` (image transcriptions, errata, rulebook tables, search evidence).

Image transcriptions are linked to the exact image file (repository, commit, path, SHA-256)
so that every transcribed value can be re-checked against its picture.
"""
from .. import config
from ..util import read_json, sha256_file
from .common import raw_path


def _image_ref(source_id, path):
    src = next(s for s in config.SOURCES if s["id"] == source_id)
    ref = {"source_id": source_id, "repository": "https://github.com/%s/%s" % (src["owner"], src["repo"]),
           "commit_sha": src["sha"], "path": path,
           "url": config.GITHUB_RAW.format(owner=src["owner"], repo=src["repo"], sha=src["sha"], path=path.replace(" ", "%20"))}
    try:
        ref["sha256"] = sha256_file(raw_path(source_id, path))
    except FileNotFoundError:   # offline without cache: fall back to the hash recorded by an earlier fetch
        files = read_json(config.MANIFEST, {}).get("sources", {}).get(source_id, {}).get("files", [])
        ref["sha256"] = next((f.get("sha256") for f in files if f["path"] == path), None)
    return ref


def parse(ctx):
    rec = {}
    warnings = []
    for name in ("investigator_sheets", "ancient_one_sheets"):
        m = read_json(config.MANUAL_DIR / (name + ".json"))
        rows = []
        for i, r in enumerate(m["records"]):
            img = _image_ref(m["source_id"], m["image_dir"] + r["image"])
            if img["sha256"] is None:
                warnings.append("%s: image not cached for %s" % (name, r["name"]))
            rows.append(dict(r, image_ref=img, method=m["method"], src_ref="manual/%s.json#records[%d]" % (name, i)))
        rec[name] = rows
    for name in ("errata_base", "rulebook_reference", "web_search_evidence"):
        rec[name] = read_json(config.MANUAL_DIR / (name + ".json"))
    stats = {k: (len(v) if isinstance(v, list) else len(v.get("records", v.get("tables", {})))) for k, v in rec.items()}
    return {"records": rec, "warnings": warnings, "stats": stats}
