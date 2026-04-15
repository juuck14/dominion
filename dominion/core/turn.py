from __future__ import annotations

from random import Random

from dominion.cards.registry import create_card_registry, select_kingdom_cards
from .choices import ChoiceProvider, DefaultChoiceProvider
from .exceptions import InvalidMoveError
from .game_state import GameState, TurnState
from .player import PlayerState
from .resolver import record_event
from .types import CardType, Phase


class DominionEngine:
    """Stateful game engine with rules isolated from UI/AI layers."""

    def __init__(
        self,
        player_names: list[str],
        choice_providers: list[ChoiceProvider] | None = None,
        seed: int | None = None,
    ) -> None:
        if len(player_names) != 2:
            raise ValueError("Initial prototype supports exactly 2 players")

        self.rng = Random(seed)
        self.card_registry = create_card_registry()
        self.choice_providers = choice_providers or [DefaultChoiceProvider() for _ in player_names]
        self.state = self._create_initial_state(player_names)
        for idx in range(len(self.state.players)):
            self.draw_cards(idx, 5)

    def _create_initial_state(self, player_names: list[str]) -> GameState:
        players: list[PlayerState] = []
        for name in player_names:
            starting_deck = ["Copper"] * 7 + ["Estate"] * 3
            self.rng.shuffle(starting_deck)
            player = PlayerState(name=name, deck=starting_deck)
            players.append(player)

        kingdom_cards = select_kingdom_cards(self.rng, count=10)
        supply: dict[str, object] = {
            "Copper": self._pile("Copper", 60 - len(player_names) * 7),
            "Silver": self._pile("Silver", 40),
            "Gold": self._pile("Gold", 30),
            "Estate": self._pile("Estate", 8),
            "Duchy": self._pile("Duchy", 8),
            "Province": self._pile("Province", 8),
            "Curse": self._pile("Curse", 10),
        }
        for name in kingdom_cards:
            supply[name] = self._pile(name, 10)

        return GameState(players=players, supply=supply, card_registry=self.card_registry, rng=self.rng)

    def _pile(self, name: str, count: int):
        from .supply import SupplyPile

        return SupplyPile(card_name=name, count=count)

    def card(self, name: str):
        return self.card_registry[name]

    def current_player(self) -> PlayerState:
        return self.state.players[self.state.current_player]

    def draw_cards(self, player_index: int, count: int) -> None:
        player = self.state.players[player_index]
        for _ in range(count):
            if not player.deck:
                if not player.discard:
                    return
                player.deck = player.discard
                player.discard = []
                self.rng.shuffle(player.deck)
            player.hand.append(player.deck.pop())

    def log(self, message: str) -> None:
        record_event(self.state, "LOG", message)

    def play_action_card(self, player_index: int, card_name: str) -> None:
        if player_index != self.state.current_player:
            raise InvalidMoveError("Not this player's turn")
        if self.state.turn_state.phase != Phase.ACTION:
            raise InvalidMoveError("Not in action phase")

        player = self.state.players[player_index]
        if card_name not in player.hand:
            raise InvalidMoveError(f"Card {card_name} not in hand")
        definition = self.card(card_name)
        if CardType.ACTION not in definition.types:
            raise InvalidMoveError("Card is not an action")
        if self.state.turn_state.actions <= 0:
            raise InvalidMoveError("No actions left")

        player.hand.remove(card_name)
        player.in_play.append(card_name)
        self.state.turn_state.actions -= 1
        self.log(f"{player.name} plays {card_name}")
        if definition.on_play is not None:
            definition.on_play(self, player_index)

    def play_all_treasures(self, player_index: int) -> None:
        player = self.state.players[player_index]
        treasures = [c for c in list(player.hand) if CardType.TREASURE in self.card(c).types]
        for card_name in treasures:
            player.hand.remove(card_name)
            player.in_play.append(card_name)
            on_play = self.card(card_name).on_play
            if on_play:
                on_play(self, player_index)

    def buy_card(self, player_index: int, card_name: str) -> None:
        if player_index != self.state.current_player:
            raise InvalidMoveError("Not this player's turn")
        cost = self.card(card_name).cost
        pile = self.state.supply[card_name]
        if pile.count <= 0:
            raise InvalidMoveError("Pile is empty")
        if self.state.turn_state.buys <= 0:
            raise InvalidMoveError("No buys left")
        if self.state.turn_state.coins < cost:
            raise InvalidMoveError("Not enough coins")

        self.state.turn_state.coins -= cost
        self.state.turn_state.buys -= 1
        self.gain_card(player_index, card_name)

    def gain_card(self, player_index: int, card_name: str) -> bool:
        pile = self.state.supply.get(card_name)
        if pile is None or pile.count <= 0:
            return False
        pile.count -= 1
        player = self.state.players[player_index]
        player.discard.append(card_name)
        self.log(f"{player.name} gains {card_name}")
        return True


    def discard_from_hand(self, player_index: int, card_name: str) -> bool:
        player = self.state.players[player_index]
        if card_name not in player.hand:
            return False
        player.hand.remove(card_name)
        player.discard.append(card_name)
        self.log(f"{player.name} discards {card_name}")
        return True

    def trash_from_hand(self, player_index: int, card_name: str) -> bool:
        player = self.state.players[player_index]
        if card_name not in player.hand:
            return False
        player.hand.remove(card_name)
        self.state.trash.append(card_name)
        self.log(f"{player.name} trashes {card_name}")
        return True

    def gain_card_to_deck_top(self, player_index: int, card_name: str) -> bool:
        pile = self.state.supply.get(card_name)
        if pile is None or pile.count <= 0:
            return False
        pile.count -= 1
        player = self.state.players[player_index]
        player.deck.append(card_name)
        self.log(f"{player.name} gains {card_name} to top of deck")
        return True

    def attack_discard_to_three(self, attacker_index: int, attack_name: str) -> None:
        for i, player in enumerate(self.state.players):
            if i == attacker_index:
                continue
            if self._is_attack_blocked(i, attack_name):
                continue
            while len(player.hand) > 3:
                provider = self.choice_providers[i]
                chosen = provider.choose_cards_from_hand(
                    i,
                    player.hand.copy(),
                    min_count=1,
                    max_count=1,
                    prompt=f"Discard 1 card due to {attack_name}",
                )
                if not chosen:
                    chosen = [player.hand[0]]
                card_name = chosen[0]
                if card_name not in player.hand:
                    card_name = player.hand[0]
                player.hand.remove(card_name)
                player.discard.append(card_name)
                self.log(f"{player.name} discards {card_name} due to {attack_name}")

    def attack_gain_curse(self, attacker_index: int, attack_name: str) -> None:
        for i in range(len(self.state.players)):
            if i == attacker_index:
                continue
            if self._is_attack_blocked(i, attack_name):
                continue
            self.gain_card(i, "Curse")

    def _is_attack_blocked(self, player_index: int, attack_name: str) -> bool:
        player = self.state.players[player_index]
        if "Moat" not in player.hand:
            return False
        use_moat = self.choice_providers[player_index].choose_yes_no(
            player_index,
            f"Reveal Moat to block {attack_name}?",
        )
        if use_moat:
            self.log(f"{player.name} reveals Moat and blocks {attack_name}")
        return use_moat

    def move_to_buy_phase(self) -> None:
        if self.state.turn_state.phase == Phase.ACTION:
            self.state.turn_state.phase = Phase.BUY

    def end_turn(self) -> None:
        player = self.current_player()
        player.discard.extend(player.hand)
        player.discard.extend(player.in_play)
        player.hand.clear()
        player.in_play.clear()

        self.draw_cards(self.state.current_player, 5)

        self.state.current_player = (self.state.current_player + 1) % len(self.state.players)
        if self.state.current_player == 0:
            self.state.turn += 1
        self.state.turn_state = TurnState()
