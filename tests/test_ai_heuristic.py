from dominion.match import play_ai_vs_ai


def test_ai_vs_ai_runs_to_completion() -> None:
    scores = play_ai_vs_ai(max_turns=30, seed=123)
    assert set(scores.keys()) == {"AI-0", "AI-1"}
    assert all(isinstance(v, int) for v in scores.values())
