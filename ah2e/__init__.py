"""Arkham Horror 2nd Edition (FFG, 2005) data collection / integration pipeline.

Stages (see README.md):
  fetch     -> sources/raw/<source_id>/...  (+ .cache/ for large binaries)
  parse     -> sources/parsed/<source_id>.json
  integrate -> data/ah2e_base.json
  validate  -> reports/validation.json
  export    -> data/ah2e_base.sqlite
  report    -> reports/completeness_report.md
"""

SCHEMA_VERSION = "1.0.0"
