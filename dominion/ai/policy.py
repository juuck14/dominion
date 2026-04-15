from __future__ import annotations

from typing import Protocol

from dominion.core.choices import ChoiceProvider


class TurnPolicy(ChoiceProvider, Protocol):
    """Policy that can both answer choice requests and execute a full turn."""

    def take_turn(self, engine: "DominionEngine", player_index: int) -> None: ...
