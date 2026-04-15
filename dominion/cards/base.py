from __future__ import annotations

from dataclasses import dataclass
from typing import Callable

from dominion.core.card import CardDefinition
from dominion.core.types import CardType

CardEffect = Callable[["DominionEngine", int], None]


@dataclass(frozen=True)
class CardSpec:
    """Declarative card registration spec for consistent card additions."""

    name: str
    cost: int
    types: frozenset[CardType]
    description: str
    on_play: CardEffect | None = None
    victory_points: int = 0
    treasure_value: int = 0


# --- Shared helpers ---------------------------------------------------------

def _draw(engine: "DominionEngine", player_index: int, n: int) -> None:
    engine.draw_cards(player_index, n)


def _plus_actions(engine: "DominionEngine", n: int) -> None:
    engine.state.turn_state.actions += n


def _plus_buys(engine: "DominionEngine", n: int) -> None:
    engine.state.turn_state.buys += n


def _plus_coins(engine: "DominionEngine", n: int) -> None:
    engine.state.turn_state.coins += n


# --- Treasure cards ---------------------------------------------------------

def copper(engine: "DominionEngine", player_index: int) -> None:
    _ = player_index
    _plus_coins(engine, 1)


def silver(engine: "DominionEngine", player_index: int) -> None:
    _ = player_index
    _plus_coins(engine, 2)


def gold(engine: "DominionEngine", player_index: int) -> None:
    _ = player_index
    _plus_coins(engine, 3)


# --- Action cards -----------------------------------------------------------

def village(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 1)
    _plus_actions(engine, 2)


def smithy(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 3)


def market(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 1)
    _plus_actions(engine, 1)
    _plus_buys(engine, 1)
    _plus_coins(engine, 1)


def laboratory(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 2)
    _plus_actions(engine, 1)


def festival(engine: "DominionEngine", player_index: int) -> None:
    _plus_actions(engine, 2)
    _plus_buys(engine, 1)
    _plus_coins(engine, 2)


def moat(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 2)


def militia(engine: "DominionEngine", player_index: int) -> None:
    _plus_coins(engine, 2)
    engine.attack_discard_to_three(attacker_index=player_index, attack_name="Militia")


def witch(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 2)
    engine.attack_gain_curse(attacker_index=player_index, attack_name="Witch")


def chapel(engine: "DominionEngine", player_index: int) -> None:
    player = engine.state.players[player_index]
    provider = engine.choice_providers[player_index]
    to_trash = provider.choose_cards_from_hand(
        player_index,
        player.hand.copy(),
        min_count=0,
        max_count=4,
        prompt="Choose up to 4 cards to trash",
    )[:4]
    for card_name in to_trash:
        engine.trash_from_hand(player_index, card_name)


def workshop(engine: "DominionEngine", player_index: int) -> None:
    affordable = [
        name
        for name, pile in engine.state.supply.items()
        if pile.count > 0 and engine.effective_cost(name) <= 4
    ]
    choice = engine.choice_providers[player_index].choose_card_from_supply(
        player_index,
        sorted(affordable),
        "Choose a card costing up to 4 to gain",
    )
    if choice is not None:
        engine.gain_card(player_index, choice)


def cellar(engine: "DominionEngine", player_index: int) -> None:
    _plus_actions(engine, 1)
    player = engine.state.players[player_index]
    provider = engine.choice_providers[player_index]
    to_discard = provider.choose_cards_from_hand(
        player_index,
        player.hand.copy(),
        min_count=0,
        max_count=len(player.hand),
        prompt="Choose any number of cards to discard for Cellar",
    )
    discarded = 0
    for card_name in list(to_discard):
        if engine.discard_from_hand(player_index, card_name):
            discarded += 1
    _draw(engine, player_index, discarded)


def council_room(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 4)
    _plus_buys(engine, 1)
    for other in range(len(engine.state.players)):
        if other != player_index:
            _draw(engine, other, 1)


def remodel(engine: "DominionEngine", player_index: int) -> None:
    player = engine.state.players[player_index]
    provider = engine.choice_providers[player_index]

    trash_choice = provider.choose_cards_from_hand(
        player_index,
        player.hand.copy(),
        min_count=1,
        max_count=1,
        prompt="Choose a card to trash for Remodel",
    )
    if not trash_choice:
        return

    trashed_card = trash_choice[0]
    if trashed_card not in player.hand:
        return
    trashed_cost = engine.card(trashed_card).cost
    if not engine.trash_from_hand(player_index, trashed_card):
        return

    max_cost = trashed_cost + 2
    gainable = [
        name
        for name, pile in engine.state.supply.items()
        if pile.count > 0 and engine.effective_cost(name) <= max_cost
    ]
    gain_choice = provider.choose_card_from_supply(
        player_index,
        sorted(gainable),
        f"Choose a card costing up to {max_cost} to gain",
    )
    if gain_choice is not None:
        engine.gain_card(player_index, gain_choice)


def bureaucrat(engine: "DominionEngine", player_index: int) -> None:
    engine.gain_card_to_deck_top(player_index, "Silver")

    for other_index, other in enumerate(engine.state.players):
        if other_index == player_index:
            continue
        if engine._is_attack_blocked(other_index, "Bureaucrat"):
            continue

        victory_cards = [c for c in other.hand if CardType.VICTORY in engine.card(c).types]
        if not victory_cards:
            engine.log(f"{other.name} reveals hand with no Victory card for Bureaucrat")
            continue

        provider = engine.choice_providers[other_index]
        selected = provider.choose_cards_from_hand(
            other_index,
            victory_cards,
            min_count=1,
            max_count=1,
            prompt="Choose a Victory card to put on top of your deck (Bureaucrat)",
        )
        card_name = selected[0] if selected and selected[0] in victory_cards else victory_cards[0]
        other.hand.remove(card_name)
        other.deck.append(card_name)
        engine.log(f"{other.name} puts {card_name} on top of deck due to Bureaucrat")


# --- Registry ---------------------------------------------------------------

CARD_SPECS: list[CardSpec] = [
    CardSpec("Copper", 0, frozenset({CardType.TREASURE}), "+1 Coin", on_play=copper, treasure_value=1),
    CardSpec("Silver", 3, frozenset({CardType.TREASURE}), "+2 Coins", on_play=silver, treasure_value=2),
    CardSpec("Gold", 6, frozenset({CardType.TREASURE}), "+3 Coins", on_play=gold, treasure_value=3),
    CardSpec("Estate", 2, frozenset({CardType.VICTORY}), "1 VP", victory_points=1),
    CardSpec("Duchy", 5, frozenset({CardType.VICTORY}), "3 VP", victory_points=3),
    CardSpec("Province", 8, frozenset({CardType.VICTORY}), "6 VP", victory_points=6),
    CardSpec("Curse", 0, frozenset({CardType.CURSE}), "-1 VP", victory_points=-1),
    CardSpec("Village", 3, frozenset({CardType.ACTION}), "+1 Card; +2 Actions", on_play=village),
    CardSpec("Smithy", 4, frozenset({CardType.ACTION}), "+3 Cards", on_play=smithy),
    CardSpec("Market", 5, frozenset({CardType.ACTION}), "+1 Card; +1 Action; +1 Buy; +1 Coin", on_play=market),
    CardSpec("Laboratory", 5, frozenset({CardType.ACTION}), "+2 Cards; +1 Action", on_play=laboratory),
    CardSpec("Festival", 5, frozenset({CardType.ACTION}), "+2 Actions; +1 Buy; +2 Coins", on_play=festival),
    CardSpec("Moat", 2, frozenset({CardType.ACTION, CardType.REACTION}), "+2 Cards", on_play=moat),
    CardSpec("Militia", 4, frozenset({CardType.ACTION, CardType.ATTACK}), "+2 Coins; opponents discard to 3", on_play=militia),
    CardSpec("Witch", 5, frozenset({CardType.ACTION, CardType.ATTACK}), "+2 Cards; opponents gain Curse", on_play=witch),
    CardSpec("Chapel", 2, frozenset({CardType.ACTION}), "Trash up to 4 cards", on_play=chapel),
    CardSpec("Workshop", 3, frozenset({CardType.ACTION}), "Gain a card costing up to 4", on_play=workshop),
    CardSpec("Cellar", 2, frozenset({CardType.ACTION}), "+1 Action; discard any number then draw that many", on_play=cellar),
    CardSpec("Remodel", 4, frozenset({CardType.ACTION}), "Trash a card; gain one costing up to +2", on_play=remodel),
    CardSpec("Council Room", 5, frozenset({CardType.ACTION}), "+4 Cards; +1 Buy; others +1 Card", on_play=council_room),
    CardSpec("Bureaucrat", 4, frozenset({CardType.ACTION, CardType.ATTACK}), "Gain Silver to topdeck; others topdeck Victory", on_play=bureaucrat),
    CardSpec("Gardens", 4, frozenset({CardType.VICTORY}), "Worth 1 VP per 10 cards"),
]

BASE_CARDS: dict[str, CardDefinition] = {
    spec.name: CardDefinition(
        name=spec.name,
        cost=spec.cost,
        types=spec.types,
        description=spec.description,
        on_play=spec.on_play,
        victory_points=spec.victory_points,
        treasure_value=spec.treasure_value,
    )
    for spec in CARD_SPECS
}
