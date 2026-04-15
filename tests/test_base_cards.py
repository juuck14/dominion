from dominion.core.turn import DominionEngine


def test_smithy_draws_three_cards() -> None:
    engine = DominionEngine(["Alice", "Bob"], seed=3)
    p0 = engine.state.players[0]
    p0.hand = ["Smithy"]
    p0.deck = ["Copper", "Copper", "Estate", "Copper"]
    engine.state.turn_state.actions = 1

    engine.play_action_card(0, "Smithy")

    assert len(p0.hand) == 3


def test_village_gives_plus_card_plus_two_actions() -> None:
    engine = DominionEngine(["Alice", "Bob"], seed=4)
    p0 = engine.state.players[0]
    p0.hand = ["Village"]
    p0.deck = ["Copper"]
    engine.state.turn_state.actions = 1

    engine.play_action_card(0, "Village")

    assert len(p0.hand) == 1
    assert engine.state.turn_state.actions == 2
