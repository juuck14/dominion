from __future__ import annotations

from dataclasses import dataclass, field

from dominion.core.choices import ChoiceProvider
from dominion.core.types import CardType

if False:  # pragma: no cover
    from dominion.core.turn import DominionEngine


@dataclass
class HeuristicAI(ChoiceProvider):
    """Simple rule-based AI designed to be replaceable by stronger policies."""

    action_priority: list[str] = field(
        default_factory=lambda: [
            "Witch",
            "Militia",
            "Festival",
            "Nobles",
            "Laboratory",
            "Market",
            "Bridge",
            "Patrol",
            "Mill",
            "Steward",
            "Village",
            "Shanty Town",
            "Conspirator",
            "Smithy",
            "Workshop",
            "Chapel",
            "Moat",
        ]
    )

    def take_turn(self, engine: "DominionEngine", player_index: int) -> None:
        """Play action(s), treasures, and buys for one full turn."""
        while engine.state.turn_state.actions > 0:
            action = self._choose_action_to_play(engine, player_index)
            if action is None:
                break
            engine.play_action_card(player_index, action)

        engine.move_to_buy_phase()
        engine.play_all_treasures(player_index)

        while engine.state.turn_state.buys > 0:
            purchase = self._choose_buy(engine, player_index)
            if purchase is None:
                break
            engine.buy_card(player_index, purchase)

        engine.end_turn()

    def _choose_action_to_play(self, engine: "DominionEngine", player_index: int) -> str | None:
        hand = engine.state.players[player_index].hand
        actions = [c for c in hand if CardType.ACTION in engine.card(c).types]
        if not actions:
            return None
        ranked = sorted(
            actions,
            key=lambda c: self.action_priority.index(c) if c in self.action_priority else 999,
        )
        return ranked[0]

    def _choose_buy(self, engine: "DominionEngine", player_index: int) -> str | None:
        _ = player_index
        coins = engine.state.turn_state.coins

        buy_order = [
            (8, "Province"),
            (6, "Gold"),
            (6, "Nobles"),
            (6, "Harem"),
            (5, "Patrol"),
            (5, "Witch"),
            (5, "Torturer"),
            (5, "Duke"),
            (5, "Laboratory"),
            (5, "Market"),
            (5, "Festival"),
            (4, "Bridge"),
            (4, "Ironworks"),
            (4, "Militia"),
            (4, "Smithy"),
            (3, "Steward"),
            (3, "Silver"),
            (2, "Estate"),
            (0, "Copper"),
        ]

        if engine.state.supply["Province"].count <= 2:
            buy_order = [(8, "Province"), (5, "Duchy"), (2, "Estate"), *buy_order]

        for cost, card_name in buy_order:
            pile = engine.state.supply.get(card_name)
            if pile is not None and pile.count > 0 and coins >= cost:
                return card_name
        return None

    def choose_cards_from_hand(
        self,
        player_index: int,
        hand: list[str],
        min_count: int,
        max_count: int,
        prompt: str,
    ) -> list[str]:
        _ = player_index
        priority = ["Curse", "Estate", "Copper", "Duchy", "Moat", "Silver", "Gold", "Province"]

        if "trash" in prompt.lower():
            ranked = sorted(hand, key=lambda c: priority.index(c) if c in priority else 999)
            return ranked[:max_count]

        # discard for Militia and similar attacks: keep stronger cards when possible
        ranked = sorted(hand, key=lambda c: priority.index(c) if c in priority else 999)
        pick_count = max(min_count, min(max_count, len(ranked)))
        return ranked[:pick_count]

    def choose_yes_no(self, player_index: int, prompt: str) -> bool:
        _ = player_index
        # Always block attacks with Moat when asked.
        return "moat" in prompt.lower()

    def choose_card_from_supply(
        self,
        player_index: int,
        available_cards: list[str],
        prompt: str,
    ) -> str | None:
        _ = (player_index, prompt)
        if not available_cards:
            return None
        preferred = ["Silver", "Village", "Smithy", "Workshop", "Estate", "Copper"]
        for card_name in preferred:
            if card_name in available_cards:
                return card_name
        return available_cards[0]
