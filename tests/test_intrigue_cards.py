from dataclasses import dataclass, field

from dominion.core.choices import ChoiceProvider
from dominion.core.turn import DominionEngine


@dataclass
class ScriptedProvider(ChoiceProvider):
    hand_choices: list[str] = field(default_factory=list)
    yes_no_answers: list[bool] = field(default_factory=list)
    supply_choice: str | None = None

    def choose_cards_from_hand(
        self,
        player_index: int,
        hand: list[str],
        min_count: int,
        max_count: int,
        prompt: str,
    ) -> list[str]:
        _ = (player_index, min_count, prompt)
        selected = [c for c in self.hand_choices if c in hand]
        if selected:
            return selected[:max_count]
        return hand[:max_count]

    def choose_yes_no(self, player_index: int, prompt: str) -> bool:
        _ = (player_index, prompt)
        if self.yes_no_answers:
            return self.yes_no_answers.pop(0)
        return False

    def choose_card_from_supply(
        self,
        player_index: int,
        available_cards: list[str],
        prompt: str,
    ) -> str | None:
        _ = (player_index, prompt)
        if self.supply_choice in available_cards:
            return self.supply_choice
        return available_cards[0] if available_cards else None


def test_courtyard_draws_three_then_topdecks_one_card() -> None:
    providers = [ScriptedProvider(hand_choices=["Estate"]), ScriptedProvider()]
    engine = DominionEngine(["A", "B"], choice_providers=providers, seed=40)
    p0 = engine.state.players[0]
    p0.hand = ["Courtyard", "Estate"]
    p0.deck = ["Copper", "Silver", "Gold"]

    engine.play_action_card(0, "Courtyard")

    assert len(p0.hand) == 3
    assert p0.deck[-1] == "Estate"


def test_bridge_reduces_buy_cost_for_turn() -> None:
    engine = DominionEngine(["A", "B"], seed=41)
    p0 = engine.state.players[0]
    p0.hand = ["Bridge", "Silver", "Silver"]
    engine.state.turn_state.actions = 1

    engine.play_action_card(0, "Bridge")
    engine.move_to_buy_phase()
    engine.play_all_treasures(0)

    engine.buy_card(0, "Gold")

    assert "Gold" in p0.discard


def test_swindler_trashes_top_and_forces_same_cost_gain() -> None:
    providers = [ScriptedProvider(supply_choice="Silver"), ScriptedProvider(yes_no_answers=[False])]
    engine = DominionEngine(["A", "B"], choice_providers=providers, seed=42)
    p0 = engine.state.players[0]
    p1 = engine.state.players[1]
    p0.hand = ["Swindler"]
    p1.deck = ["Silver"]

    engine.play_action_card(0, "Swindler")

    assert "Silver" in engine.state.trash
    assert "Silver" in p1.discard


def test_mining_village_can_trash_itself_for_two_coins() -> None:
    providers = [ScriptedProvider(yes_no_answers=[True]), ScriptedProvider()]
    engine = DominionEngine(["A", "B"], choice_providers=providers, seed=43)
    p0 = engine.state.players[0]
    p0.hand = ["Mining Village"]
    p0.deck = ["Copper"]

    engine.play_action_card(0, "Mining Village")

    assert "Mining Village" in engine.state.trash
    assert "Mining Village" not in p0.in_play
    assert engine.state.turn_state.coins == 2


def test_torturer_opponent_can_gain_curse_to_hand() -> None:
    providers = [ScriptedProvider(), ScriptedProvider(yes_no_answers=[False])]
    engine = DominionEngine(["A", "B"], choice_providers=providers, seed=44)
    p0 = engine.state.players[0]
    p1 = engine.state.players[1]
    p0.hand = ["Torturer"]
    p0.deck = ["Copper", "Copper", "Copper"]

    engine.play_action_card(0, "Torturer")

    assert "Curse" in p1.hand


def test_upgrade_gains_exactly_plus_one_cost() -> None:
    providers = [ScriptedProvider(hand_choices=["Estate"], supply_choice="Silver"), ScriptedProvider()]
    engine = DominionEngine(["A", "B"], choice_providers=providers, seed=45)
    p0 = engine.state.players[0]
    p0.hand = ["Upgrade", "Estate"]

    engine.play_action_card(0, "Upgrade")

    assert "Estate" in engine.state.trash
    assert "Silver" in p0.discard
