from __future__ import annotations

from enum import Enum, auto


class CardType(Enum):
    ACTION = auto()
    TREASURE = auto()
    VICTORY = auto()
    CURSE = auto()
    ATTACK = auto()
    REACTION = auto()


class Phase(Enum):
    ACTION = auto()
    BUY = auto()
    CLEANUP = auto()
