from dominion.core.scoring import score_player
from dominion.core.turn import DominionEngine


def test_scoring_counts_victory_and_curse() -> None:
    engine = DominionEngine(["A", "B"], seed=20)
    p0 = engine.state.players[0]
    p0.deck = ["Province", "Duchy", "Estate", "Curse"]
    p0.hand = []
    p0.discard = []
    p0.in_play = []

    assert score_player(engine.state, 0) == 9


def test_scoring_duke_depends_on_duchy_count() -> None:
    engine = DominionEngine(["A", "B"], seed=25)
    p0 = engine.state.players[0]
    p0.deck = ["Duke", "Duke", "Duchy", "Duchy", "Duchy"]
    p0.hand = []
    p0.discard = []
    p0.in_play = []

    assert score_player(engine.state, 0) == 15


def test_game_over_when_province_empty() -> None:
    engine = DominionEngine(["A", "B"], seed=21)
    engine.state.supply["Province"].count = 0

    assert engine.state.is_game_over() is True
