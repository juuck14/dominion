from __future__ import annotations

from dataclasses import dataclass
import argparse

from dominion.ai.heuristic import HeuristicAI
from dominion.core.choices import ChoiceProvider
from dominion.core.scoring import score_player
from dominion.core.turn import DominionEngine
from dominion.ui.pygame_app import run_pygame_app


@dataclass
class CLIHumanChoices(ChoiceProvider):
    """Minimal CLI choice provider for person-vs-AI play."""

    def choose_cards_from_hand(
        self,
        player_index: int,
        hand: list[str],
        min_count: int,
        max_count: int,
        prompt: str,
    ) -> list[str]:
        print(f"\n[P{player_index}] {prompt}")
        print("Hand:", ", ".join(hand))
        raw = input(f"Choose {min_count}~{max_count} card names, comma-separated (empty for auto): ").strip()
        if not raw:
            return hand[:max_count]
        selected = [x.strip() for x in raw.split(",") if x.strip() in hand]
        if len(selected) < min_count:
            return hand[:max_count]
        return selected[:max_count]

    def choose_yes_no(self, player_index: int, prompt: str) -> bool:
        print(f"\n[P{player_index}] {prompt}")
        return input("y/n: ").strip().lower().startswith("y")

    def choose_card_from_supply(
        self,
        player_index: int,
        available_cards: list[str],
        prompt: str,
    ) -> str | None:
        print(f"\n[P{player_index}] {prompt}")
        print("Available:", ", ".join(available_cards))
        raw = input("Card name (empty to skip): ").strip()
        return raw if raw in available_cards else None


def play_human_vs_ai(max_turns: int = 50, seed: int | None = None) -> dict[str, int]:
    """Simple callable entrypoint for person-vs-AI match (human is player 0)."""
    human = CLIHumanChoices()
    ai = HeuristicAI()
    engine = DominionEngine(["Human", "AI"], choice_providers=[human, ai], seed=seed)

    while not engine.state.is_game_over() and engine.state.turn <= max_turns:
        p = engine.state.current_player
        if p == 0:
            _play_human_turn(engine, p)
        else:
            ai.take_turn(engine, p)

    scores = {
        engine.state.players[0].name: score_player(engine.state, 0),
        engine.state.players[1].name: score_player(engine.state, 1),
    }
    print("\n=== Final Scores ===")
    for name, score in scores.items():
        print(f"{name}: {score}")
    return scores


def _play_human_turn(engine: DominionEngine, player_index: int) -> None:
    player = engine.state.players[player_index]
    print(f"\n=== Turn {engine.state.turn} | {player.name} ===")

    while engine.state.turn_state.actions > 0:
        actions = [c for c in player.hand if "ACTION" in {t.name for t in engine.card(c).types}]
        if not actions:
            break
        print("Hand:", ", ".join(player.hand))
        print(f"Actions={engine.state.turn_state.actions}, Buys={engine.state.turn_state.buys}, Coins={engine.state.turn_state.coins}")
        pick = input("Play action card (empty to stop action phase): ").strip()
        if not pick:
            break
        if pick in actions:
            engine.play_action_card(player_index, pick)
        else:
            print("Invalid action choice.")

    engine.move_to_buy_phase()
    engine.play_all_treasures(player_index)

    while engine.state.turn_state.buys > 0:
        affordable = [
            n
            for n, pile in engine.state.supply.items()
            if pile.count > 0 and engine.card(n).cost <= engine.state.turn_state.coins
        ]
        print(f"Coins={engine.state.turn_state.coins}, Buys={engine.state.turn_state.buys}")
        print("Affordable:", ", ".join(sorted(affordable)))
        pick = input("Buy card (empty to end buy phase): ").strip()
        if not pick:
            break
        if pick in affordable:
            engine.buy_card(player_index, pick)
        else:
            print("Cannot buy that card.")

    engine.end_turn()


def _main() -> None:
    parser = argparse.ArgumentParser(description="Dominion prototype runner")
    parser.add_argument("--mode", choices=["cli", "pygame"], default="cli")
    parser.add_argument("--seed", type=int, default=None)
    args = parser.parse_args()

    if args.mode == "pygame":
        run_pygame_app(seed=args.seed)
    else:
        play_human_vs_ai(seed=args.seed)


if __name__ == "__main__":
    _main()
