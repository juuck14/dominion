"""Per-source parsers. Each module exposes ``parse(ctx) -> dict`` returning

    {"records": {<record_type>: [ {...,"src_ref": "<file>#<pointer>", "set": "<set id>"} ]},
     "warnings": [...], "stats": {...}}

Record types are source-neutral (arkham_cards, gate_cards, mythos_cards, locations, ...),
but field names/values are kept as close to the source as possible; normalisation happens in
``ah2e.integrate``.
"""
