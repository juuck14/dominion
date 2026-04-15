from __future__ import annotations

from random import Random

from .base import BASE_CARDS
from .intrigue import INTRIGUE_CARDS


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
    "Courtyard",
    "Lurker",
    "Pawn",
    "Masquerade",
    "Shanty Town",
    "Steward",
    "Swindler",
    "Wishing Well",
    "Baron",
    "Bridge",
    "Conspirator",
    "Diplomat",
    "Ironworks",
    "Mill",
    "Mining Village",
    "Secret Passage",
    "Courtier",
    "Duke",
    "Minion",
    "Patrol",
    "Replace",
    "Torturer",
    "Trading Post",
    "Upgrade",
    "Harem",
    "Nobles",
    "Great Hall",
]


def create_card_registry() -> dict[str, object]:
    cards = dict(BASE_CARDS)
    cards.update(INTRIGUE_CARDS)
    return cards


def select_kingdom_cards(rng: Random, count: int = 10) -> list[str]:
    if count > len(KINGDOM_IMPLEMENTED):
        raise ValueError("Requested kingdom count exceeds implemented cards")
    return rng.sample(KINGDOM_IMPLEMENTED, k=count)
