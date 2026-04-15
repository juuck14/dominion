from dominion.core.turn import DominionEngine


def test_end_turn_draws_five_cards() -> None:
    engine = DominionEngine(["Alice", "Bob"], seed=2)
    current = engine.state.current_player
    engine.end_turn()

    next_player = engine.state.current_player
    assert next_player != current
    assert len(engine.state.players[next_player].hand) == 5
