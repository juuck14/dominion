from __future__ import annotations

from dataclasses import dataclass, field
from random import Random

from .events import Event
from .player import PlayerState
from .supply import SupplyPile
from .types import Phase


@dataclass
class TurnState:
    actions: int = 1
    buys: int = 1
    coins: int = 0
    cost_reduction: int = 0
    phase: Phase = Phase.ACTION


@dataclass
class GameState:
    players: list[PlayerState]
    supply: dict[str, SupplyPile]
    card_registry: dict[str, object]
    rng: Random
    current_player: int = 0
    turn: int = 1
    turn_state: TurnState = field(default_factory=TurnState)
    trash: list[str] = field(default_factory=list)
    log: list[str] = field(default_factory=list)
    events: list[Event] = field(default_factory=list)

    def pile_count(self, card_name: str) -> int:
        return self.supply[card_name].count

    def is_game_over(self) -> bool:
        empty_piles = sum(1 for pile in self.supply.values() if pile.count == 0)
        province_empty = self.supply["Province"].count == 0
        return province_empty or empty_piles >= 3
