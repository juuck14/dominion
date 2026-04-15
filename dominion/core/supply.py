from __future__ import annotations

from dataclasses import dataclass


@dataclass
class SupplyPile:
    card_name: str
    count: int
