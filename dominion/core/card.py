from __future__ import annotations

from dataclasses import dataclass
from typing import Callable, TYPE_CHECKING

from .types import CardType

if TYPE_CHECKING:
    from .turn import DominionEngine


CardEffect = Callable[["DominionEngine", int], None]


@dataclass(frozen=True)
class CardDefinition:
    name: str
    cost: int
    types: frozenset[CardType]
    description: str
    expansion: str = "Base"
    on_play: CardEffect | None = None
    victory_points: int = 0
    treasure_value: int = 0
