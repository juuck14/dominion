from __future__ import annotations

from dominion.ai.heuristic import HeuristicAI
from dominion.core.scoring import score_player
from dominion.core.turn import DominionEngine


def play_ai_vs_ai(max_turns: int = 200, seed: int | None = None) -> dict[str, int]:
    """Run a non-interactive game loop suitable for tests or simulations."""
    ai0 = HeuristicAI()
    ai1 = HeuristicAI()
    engine = DominionEngine(["AI-0", "AI-1"], choice_providers=[ai0, ai1], seed=seed)

    while not engine.state.is_game_over() and engine.state.turn <= max_turns:
        current = engine.state.current_player
        actor = ai0 if current == 0 else ai1
        actor.take_turn(engine, current)

    return {
        "AI-0": score_player(engine.state, 0),
        "AI-1": score_player(engine.state, 1),
    }
