from __future__ import annotations

from .game_state import GameState


def score_player(state: GameState, player_index: int) -> int:
    """Compute final VP for a player from all owned cards."""
    player = state.players[player_index]
    total_cards = len(player.all_cards())
    score = 0
    for card_name in player.all_cards():
        card = state.card_registry[card_name]
        if card_name == "Gardens":
            score += total_cards // 10
        else:
            score += card.victory_points
    return score
