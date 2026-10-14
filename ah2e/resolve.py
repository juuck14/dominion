"""Field-level reconciliation of claims coming from several sources.

A *claim* is ``{"source": <source id>, "value": <value>, "ref": <src_ref>}``.
Sources are grouped by lineage (``GROUP``) - two claims only count as independent
confirmation when they come from different groups.

Status vocabulary (stored in ``field_status``):

* ``confirmed``                 - >= 2 independent groups agree
* ``confirmed_minor_variants``  - texts agree up to typos/punctuation (variants listed)
* ``single_source``             - only one group provides a value
* ``errata_applied``            - value set by official errata (original/other values listed)
* ``conflict_resolved``         - values differ; chosen by an explicit rule (card image / official /
                                  strict majority of independent groups); alternatives listed
* ``conflict``                  - text differs substantially; priority source kept, flagged
* ``conflict_unresolved``       - values differ with no basis to choose -> value is null
* ``derived``                   - computed from other data (rule stated in ``reason``)
* ``missing``                   - required value with no source -> null (reason stated)
* ``none_recorded``             - optional field that no source fills (normally: nothing printed)
"""
import json

from .util import norm_name, norm_text, similarity

GROUP = {
    "arkhamdb_sql": "arkhamdb",
    "helper_snapshot": "fandom_lineage", "helper_wiki_scrape": "fandom_lineage", "fandom_wiki": "fandom_lineage",
    "web_search_fandom": "fandom_lineage",
    "kuerv0_json": "kuerv0", "jesseflorig_json": "jesseflorig", "ellebaum_json": "ellebaum",
    "gorlith_android": "gorlith", "pavelius_cpp": "pavelius", "official_docs": "official",
    "card_image": "card_image", "rulebook": "official",
}
AUTHORITATIVE = ("official", "card_image")
TEXT_AGREE = 0.97
TEXT_MINOR = 0.85


def claim(source, value, ref=None):
    return {"source": source, "value": value, "ref": ref}


NAME_MINOR = 0.9


def _key(v, norm):
    if callable(norm):
        return norm(v)
    if norm == "name":
        return norm_name(v) if isinstance(v, str) else json.dumps(v, sort_keys=True)
    if norm == "set":
        return json.dumps(sorted(v) if isinstance(v, list) else v, sort_keys=True)
    if isinstance(v, str):
        return v.strip()
    return json.dumps(v, sort_keys=True)


class Resolver:
    def __init__(self):
        self.conflicts = []
        self.missing = []

    # ------------------------------------------------------------------ values
    def value(self, entity_id, field, claims, norm=None, required=True, missing_reason=None, errata=None):
        """Resolve a scalar/structured value. Returns (value, status_dict)."""
        cl = [c for c in claims if c.get("value") is not None]
        if not cl and not required:
            return None, {"status": "none_recorded",
                          "reason": missing_reason or "optional field; no source records a value (normally means none is printed)"}
        if errata is not None:
            st = {"status": "errata_applied", "errata_id": errata["id"],
                  "original_value": errata.get("original_value"),
                  "sources": [{"source": c["source"], "value": c["value"], "ref": c.get("ref"),
                               "matches_corrected": _key(c["value"], norm) == _key(errata["corrected_value"], norm)} for c in cl]}
            return errata["corrected_value"], st
        if not cl:
            st = {"status": "missing", "reason": missing_reason or "no source provides this field"}
            if required:
                self.missing.append({"entity_id": entity_id, "field": field, "reason": st["reason"]})
            return None, st
        buckets = {}
        for c in cl:
            buckets.setdefault(_key(c["value"], norm), []).append(c)
        minor = []
        if norm == "name" and len(buckets) > 1:
            # spelling variants of one name (typos, case, punctuation) are merged, not treated as conflicts
            import difflib
            keys = list(buckets)
            for k2 in keys[1:]:
                for k1 in keys:
                    if k1 == k2 or k1 not in buckets or k2 not in buckets:
                        continue
                    if difflib.SequenceMatcher(None, k1, k2).ratio() >= NAME_MINOR:
                        big, small = (k1, k2) if len(buckets[k1]) >= len(buckets[k2]) else (k2, k1)
                        minor += [{"source": c["source"], "value": c["value"], "ref": c.get("ref")} for c in buckets[small]]
                        buckets[big] += buckets.pop(small)
                        break
        if len(buckets) == 1:
            groups = {GROUP.get(c["source"], c["source"]) for c in cl}
            st = {"status": ("confirmed_minor_variants" if minor else "confirmed") if len(groups) >= 2 else "single_source",
                  "sources": sorted({c["source"] for c in cl})}
            value = cl[0]["value"]
            if minor or norm == "name":
                # display spelling = the exact spelling backed by most independent groups (ties: claim order)
                skey = lambda v: v.lower() if isinstance(v, str) else json.dumps(v, sort_keys=True)
                support, order = {}, []
                for c in cl:
                    k = skey(c["value"])
                    if k not in support:
                        order.append(k)
                    support.setdefault(k, set()).add(GROUP.get(c["source"], c["source"]))
                auth = [c for c in cl if GROUP.get(c["source"], c["source"]) in AUTHORITATIVE]
                if auth:   # printed spelling (card scan / official text) wins for display
                    bestk = skey(auth[0]["value"])
                else:
                    bestk = max(order, key=lambda k: (len(support[k]), -order.index(k)))
                spell = [c["value"] for c in cl if skey(c["value"]) == bestk]
                value = next((v for v in spell if not (isinstance(v, str) and v == v.lower())), spell[0])
                if len(support) > 1:
                    st["spellings"] = {k: sorted(v) for k, v in support.items()}
            if minor:
                st["minor_variants"] = minor
            return value, st
        alts = [{"value": v[0]["value"], "sources": sorted({c["source"] for c in v}),
                 "groups": sorted({GROUP.get(c["source"], c["source"]) for c in v}),
                 "refs": [c.get("ref") for c in v]} for v in buckets.values()]
        auth = [a for a in alts if set(a["groups"]) & set(AUTHORITATIVE)]
        chosen, reason = None, None
        if len(auth) == 1:
            chosen = auth[0]
            reason = "authoritative source (%s)" % ",".join(sorted(set(chosen["groups"]) & set(AUTHORITATIVE)))
        else:
            ranked = sorted(alts, key=lambda a: len(a["groups"]), reverse=True)
            if len(ranked[0]["groups"]) > len(ranked[1]["groups"]) and len(ranked[0]["groups"]) >= 2:
                chosen = ranked[0]
                reason = "majority of independent source groups (%d vs %d)" % (len(ranked[0]["groups"]), len(ranked[1]["groups"]))
        rec = {"entity_id": entity_id, "field": field, "alternatives": alts}
        if chosen:
            st = {"status": "conflict_resolved", "reason": reason, "alternatives": alts}
            rec.update(status="conflict_resolved", chosen=chosen["value"], reason=reason)
            self.conflicts.append(rec)
            return chosen["value"], st
        st = {"status": "conflict_unresolved", "reason": "sources disagree and no rule decides", "alternatives": alts}
        rec.update(status="conflict_unresolved", chosen=None, reason=st["reason"])
        self.conflicts.append(rec)
        return None, st

    # ------------------------------------------------------------------ texts
    def text(self, entity_id, field, claims, required=True, errata=None, missing_reason=None):
        """Resolve a text field. ``claims`` must be ordered by priority (first = preferred wording)."""
        cl = [c for c in claims if c.get("value")]
        if not cl and not required:
            return None, {"status": "none_recorded",
                          "reason": missing_reason or "optional text; no source records one (normally means none is printed)"}
        if not cl:
            st = {"status": "missing", "reason": missing_reason or "no source provides this text"}
            if required:
                self.missing.append({"entity_id": entity_id, "field": field, "reason": st["reason"]})
            return None, st
        primary = cl[0]
        comp = []
        for c in cl[1:]:
            comp.append(dict(c, similarity=round(similarity(primary["value"], c["value"]), 3)))
        agree = [primary] + [c for c in comp if c["similarity"] >= TEXT_AGREE]
        minor = [c for c in comp if TEXT_MINOR <= c["similarity"] < TEXT_AGREE]
        major = [c for c in comp if c["similarity"] < TEXT_MINOR]
        groups = {GROUP.get(c["source"], c["source"]) for c in agree + minor}
        if errata is not None:
            st = {"status": "errata_applied", "errata_id": errata["id"], "primary_source": primary["source"],
                  "sources": [{"source": c["source"], "ref": c.get("ref")} for c in cl]}
            return None, st  # caller applies the textual correction
        st = {"primary_source": primary["source"], "primary_ref": primary.get("ref"),
              "agreeing_sources": sorted({c["source"] for c in agree})}
        if minor:
            st["minor_variants"] = [{"source": c["source"], "ref": c.get("ref"), "similarity": c["similarity"],
                                     "text": c["value"]} for c in minor]
        if major:
            st["status"] = "conflict"
            st["reason"] = "substantially different wording; text of the priority source kept"
            st["conflicting"] = [{"source": c["source"], "ref": c.get("ref"), "similarity": c["similarity"],
                                  "text": c["value"]} for c in major]
            self.conflicts.append({"entity_id": entity_id, "field": field, "status": "conflict",
                                   "reason": st["reason"], "chosen_source": primary["source"],
                                   "alternatives": [{"source": primary["source"], "text": primary["value"]}] +
                                                   [{"source": c["source"], "similarity": c["similarity"], "text": c["value"]} for c in major]})
        elif len(groups) >= 2:
            st["status"] = "confirmed_minor_variants" if minor else "confirmed"
        else:
            st["status"] = "single_source"
        return primary["value"], st

    def mark_missing(self, entity_id, field, reason):
        self.missing.append({"entity_id": entity_id, "field": field, "reason": reason})
        return {"status": "missing", "reason": reason}


def best_match(key, candidates, cutoff=0.82):
    """Fuzzy match of a normalised name key among candidate keys; returns key or None."""
    import difflib
    if key in candidates:
        return key
    m = difflib.get_close_matches(key, list(candidates), n=1, cutoff=cutoff)
    return m[0] if m else None


def text_key(s):
    return norm_text(s)
