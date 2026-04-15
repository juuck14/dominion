from dataclasses import dataclass, field

from dominion.core.choices import ChoiceProvider
from dominion.core.turn import DominionEngine


@dataclass
class ScriptedProvider(ChoiceProvider):
    yes_no: bool = True
    discard_order: list[str] = field(default_factory=list)
    trash_cards: list[str] = field(default_factory=list)

    def choose_cards_from_hand(
        self,
        player_index: int,
        hand: list[str],
        min_count: int,
        max_count: int,
        prompt: str,
    ) -> list[str]:
        _ = (player_index, min_count, prompt)
        if "trash" in prompt.lower():
            return [c for c in self.trash_cards if c in hand][:max_count]
        for card in self.discard_order:
            if card in hand:
                return [card]
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
        return available_cards[0] if available_cards else None


def test_witch_gives_curse_to_opponent() -> None:
    engine = DominionEngine(["A", "B"], seed=10)
    p0 = engine.state.players[0]
    p0.hand = ["Witch"]
    p0.deck = ["Copper", "Copper"]

    before = engine.state.supply["Curse"].count
    engine.play_action_card(0, "Witch")

    assert "Curse" in engine.state.players[1].discard
    assert engine.state.supply["Curse"].count == before - 1


def test_moat_blocks_attack() -> None:
    providers = [ScriptedProvider(), ScriptedProvider(yes_no=True)]
    engine = DominionEngine(["A", "B"], choice_providers=providers, seed=11)
    p0 = engine.state.players[0]
    p1 = engine.state.players[1]
    p0.hand = ["Witch"]
    p0.deck = ["Copper", "Copper"]
    p1.hand = ["Moat", "Estate", "Copper", "Copper", "Copper"]

    before = engine.state.supply["Curse"].count
    engine.play_action_card(0, "Witch")

    assert "Curse" not in p1.discard
    assert engine.state.supply["Curse"].count == before


def test_militia_forces_discard_to_three() -> None:
    providers = [ScriptedProvider(), ScriptedProvider(yes_no=False, discard_order=["Estate", "Copper"])]
    engine = DominionEngine(["A", "B"], choice_providers=providers, seed=12)
    p0 = engine.state.players[0]
    p1 = engine.state.players[1]
    p0.hand = ["Militia"]
    p1.hand = ["Estate", "Copper", "Copper", "Copper", "Estate"]

    engine.play_action_card(0, "Militia")

    assert len(p1.hand) == 3
    assert len(p1.discard) >= 2


def test_chapel_trashes_up_to_four() -> None:
    providers = [ScriptedProvider(trash_cards=["Estate", "Estate", "Copper", "Copper"]), ScriptedProvider()]
    engine = DominionEngine(["A", "B"], choice_providers=providers, seed=13)
    p0 = engine.state.players[0]
    p0.hand = ["Chapel", "Estate", "Estate", "Copper", "Copper"]

    engine.play_action_card(0, "Chapel")

    assert p0.hand == []
    assert len(engine.state.trash) == 4
