from __future__ import annotations

from dataclasses import dataclass
from typing import Protocol


@dataclass(frozen=True)
class ChoiceRequest:
    prompt: str


class ChoiceProvider(Protocol):
    def choose_cards_from_hand(
        self,
        player_index: int,
        hand: list[str],
        min_count: int,
        max_count: int,
        prompt: str,
    ) -> list[str]: ...

    def choose_yes_no(self, player_index: int, prompt: str) -> bool: ...

    def choose_card_from_supply(
        self,
        player_index: int,
        available_cards: list[str],
        prompt: str,
    ) -> str | None: ...


class DefaultChoiceProvider:
    """Simple deterministic policy used in tests and non-interactive runs."""

    def choose_cards_from_hand(
        self,
        player_index: int,
        hand: list[str],
        min_count: int,
        max_count: int,
        prompt: str,
    ) -> list[str]:
        _ = (player_index, prompt)
        return hand[:max_count]

    def choose_yes_no(self, player_index: int, prompt: str) -> bool:
        _ = (player_index, prompt)
        return True

    def choose_card_from_supply(
        self,
        player_index: int,
        available_cards: list[str],
        prompt: str,
    ) -> str | None:
        _ = (player_index, prompt)
        return available_cards[0] if available_cards else None
