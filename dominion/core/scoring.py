from __future__ import annotations

from .game_state import GameState


def score_player(state: GameState, player_index: int) -> int:
    """Compute final VP for a player from all owned cards."""
    player = state.players[player_index]
    all_cards = player.all_cards()
    total_cards = len(all_cards)
    duchy_count = all_cards.count("Duchy")

    score = 0
    for card_name in all_cards:
        card = state.card_registry[card_name]
        if card_name == "Gardens":
            score += total_cards // 10
        elif card_name == "Duke":
            score += duchy_count
        else:
            score += card.victory_points
    return score
