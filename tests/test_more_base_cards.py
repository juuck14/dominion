from dataclasses import dataclass, field

from dominion.core.choices import ChoiceProvider
from dominion.core.turn import DominionEngine


@dataclass
class ScriptedProvider(ChoiceProvider):
    hand_choices: list[str] = field(default_factory=list)
    yes_no: bool = False
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
        return self.yes_no

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


def test_cellar_discards_and_draws_same_count() -> None:
    providers = [ScriptedProvider(hand_choices=["Estate", "Copper"]), ScriptedProvider()]
    engine = DominionEngine(["A", "B"], choice_providers=providers, seed=30)
    p0 = engine.state.players[0]
    p0.hand = ["Cellar", "Estate", "Copper", "Copper"]
    p0.deck = ["Silver", "Gold", "Estate"]
    engine.state.turn_state.actions = 1

    engine.play_action_card(0, "Cellar")

    assert engine.state.turn_state.actions == 1
    assert len(p0.hand) == 3
    assert p0.discard.count("Estate") == 1


def test_council_room_draws_for_self_and_other() -> None:
    engine = DominionEngine(["A", "B"], seed=31)
    p0 = engine.state.players[0]
    p1 = engine.state.players[1]
    p0.hand = ["Council Room"]
    p0.deck = ["Copper", "Copper", "Copper", "Copper", "Copper"]
    p1.deck = ["Estate", "Copper"]
    before_other = len(p1.hand)

    engine.play_action_card(0, "Council Room")

    assert len(p0.hand) == 4
    assert len(p1.hand) == before_other + 1
    assert engine.state.turn_state.buys == 2


def test_remodel_trashes_and_gains_up_to_plus_two() -> None:
    providers = [
        ScriptedProvider(hand_choices=["Estate"], supply_choice="Silver"),
        ScriptedProvider(),
    ]
    engine = DominionEngine(["A", "B"], choice_providers=providers, seed=32)
    p0 = engine.state.players[0]
    p0.hand = ["Remodel", "Estate"]

    engine.play_action_card(0, "Remodel")

    assert "Estate" in engine.state.trash
    assert "Silver" in p0.discard


def test_bureaucrat_gains_silver_and_attacks_victory_topdeck() -> None:
    providers = [ScriptedProvider(), ScriptedProvider(hand_choices=["Estate"], yes_no=False)]
    engine = DominionEngine(["A", "B"], choice_providers=providers, seed=33)
    p0 = engine.state.players[0]
    p1 = engine.state.players[1]
    p0.hand = ["Bureaucrat"]
    p1.hand = ["Estate", "Copper", "Copper", "Copper", "Copper"]

    engine.play_action_card(0, "Bureaucrat")

    assert p0.deck[-1] == "Silver"
    assert "Estate" not in p1.hand
    assert p1.deck[-1] == "Estate"
