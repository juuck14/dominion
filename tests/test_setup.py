from dominion.core.turn import DominionEngine


def test_initial_setup_two_players() -> None:
    engine = DominionEngine(["Alice", "Bob"], seed=1)
    state = engine.state

    assert len(state.players) == 2
    for player in state.players:
        assert len(player.hand) == 5
        assert len(player.deck) == 5
        assert sorted(player.all_cards()).count("Copper") == 7
        assert sorted(player.all_cards()).count("Estate") == 3

    assert state.supply["Province"].count == 8
    assert state.supply["Curse"].count == 10
    assert len(state.supply) == 17
