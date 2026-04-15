from __future__ import annotations

from dataclasses import dataclass, field


@dataclass
class PlayerState:
    name: str
    deck: list[str] = field(default_factory=list)
    hand: list[str] = field(default_factory=list)
    discard: list[str] = field(default_factory=list)
    in_play: list[str] = field(default_factory=list)

    def all_cards(self) -> list[str]:
        return self.deck + self.hand + self.discard + self.in_play
