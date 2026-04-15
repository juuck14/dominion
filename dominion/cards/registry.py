from __future__ import annotations

from random import Random

from .base import BASE_CARDS


KINGDOM_IMPLEMENTED = [
    "Village",
    "Smithy",
    "Market",
    "Laboratory",
    "Festival",
    "Moat",
    "Militia",
    "Witch",
    "Chapel",
    "Workshop",
    "Cellar",
    "Remodel",
    "Council Room",
    "Bureaucrat",
    "Gardens",
]


def create_card_registry() -> dict[str, object]:
    return dict(BASE_CARDS)


def select_kingdom_cards(rng: Random, count: int = 10) -> list[str]:
    if count > len(KINGDOM_IMPLEMENTED):
        raise ValueError("Requested kingdom count exceeds implemented cards")
    return rng.sample(KINGDOM_IMPLEMENTED, k=count)
