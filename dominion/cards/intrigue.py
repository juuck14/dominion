from __future__ import annotations

from dataclasses import dataclass
from typing import Callable

from dominion.core.card import CardDefinition
from dominion.core.types import CardType

CardEffect = Callable[["DominionEngine", int], None]


@dataclass(frozen=True)
class CardSpec:
    name: str
    cost: int
    types: frozenset[CardType]
    description: str
    on_play: CardEffect | None = None
    victory_points: int = 0
    treasure_value: int = 0


def _draw(engine: "DominionEngine", player_index: int, n: int) -> None:
    engine.draw_cards(player_index, n)


def _plus_actions(engine: "DominionEngine", n: int) -> None:
    engine.state.turn_state.actions += n


def _plus_buys(engine: "DominionEngine", n: int) -> None:
    engine.state.turn_state.buys += n


def _plus_coins(engine: "DominionEngine", n: int) -> None:
    engine.state.turn_state.coins += n


def _choose_from_supply(engine: "DominionEngine", player_index: int, max_cost: int, prompt: str) -> str | None:
    affordable = [
        name
        for name, pile in engine.state.supply.items()
        if pile.count > 0 and engine.effective_cost(name) <= max_cost
    ]
    return engine.choice_providers[player_index].choose_card_from_supply(
        player_index,
        sorted(affordable),
        prompt,
    )


def courtyard(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 3)
    player = engine.state.players[player_index]
    if not player.hand:
        return
    provider = engine.choice_providers[player_index]
    selected = provider.choose_cards_from_hand(
        player_index,
        player.hand.copy(),
        min_count=1,
        max_count=1,
        prompt="Choose 1 card to put on top of your deck (Courtyard)",
    )
    card_name = selected[0] if selected and selected[0] in player.hand else player.hand[0]
    player.hand.remove(card_name)
    player.deck.append(card_name)
    engine.log(f"{player.name} puts {card_name} on top of deck due to Courtyard")


def lurker(engine: "DominionEngine", player_index: int) -> None:
    _plus_actions(engine, 1)
    provider = engine.choice_providers[player_index]
    trash_action = provider.choose_yes_no(player_index, "Lurker: trash an Action from Supply?")
    if trash_action:
        action_cards = [
            name
            for name, pile in engine.state.supply.items()
            if pile.count > 0 and CardType.ACTION in engine.card(name).types
        ]
        choice = provider.choose_card_from_supply(player_index, sorted(action_cards), "Choose an Action to trash")
        if choice and choice in action_cards:
            engine.state.supply[choice].count -= 1
            engine.state.trash.append(choice)
            engine.log(f"{engine.state.players[player_index].name} trashes {choice} from Supply due to Lurker")
        return

    action_in_trash = [name for name in engine.state.trash if CardType.ACTION in engine.card(name).types]
    if not action_in_trash:
        return
    available = sorted(set(action_in_trash))
    choice = provider.choose_card_from_supply(player_index, available, "Choose an Action from trash to gain")
    if choice not in action_in_trash:
        choice = action_in_trash[0]
    engine.state.trash.remove(choice)
    engine.state.players[player_index].discard.append(choice)
    engine.log(f"{engine.state.players[player_index].name} gains {choice} from trash due to Lurker")


def pawn(engine: "DominionEngine", player_index: int) -> None:
    provider = engine.choice_providers[player_index]
    options: list[str] = []
    ordered = [
        ("card", "Choose +1 Card for Pawn?"),
        ("action", "Choose +1 Action for Pawn?"),
        ("buy", "Choose +1 Buy for Pawn?"),
        ("coin", "Choose +1 Coin for Pawn?"),
    ]
    for key, prompt in ordered:
        if provider.choose_yes_no(player_index, prompt):
            options.append(key)

    unique_options: list[str] = []
    for key in options:
        if key not in unique_options:
            unique_options.append(key)

    fallback_order = ["action", "card", "buy", "coin"]
    for key in fallback_order:
        if len(unique_options) >= 2:
            break
        if key not in unique_options:
            unique_options.append(key)

    for key in unique_options[:2]:
        if key == "card":
            _draw(engine, player_index, 1)
        elif key == "action":
            _plus_actions(engine, 1)
        elif key == "buy":
            _plus_buys(engine, 1)
        elif key == "coin":
            _plus_coins(engine, 1)


def masquerade(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 2)
    player_count = len(engine.state.players)
    passed_cards: list[str | None] = [None] * player_count

    for i, player in enumerate(engine.state.players):
        if not player.hand:
            continue
        provider = engine.choice_providers[i]
        selected = provider.choose_cards_from_hand(
            i,
            player.hand.copy(),
            min_count=1,
            max_count=1,
            prompt="Choose a card to pass left (Masquerade)",
        )
        card_name = selected[0] if selected and selected[0] in player.hand else player.hand[0]
        player.hand.remove(card_name)
        passed_cards[i] = card_name

    for i, card_name in enumerate(passed_cards):
        if card_name is None:
            continue
        receiver = (i + 1) % player_count
        engine.state.players[receiver].hand.append(card_name)

    current = engine.state.players[player_index]
    if not current.hand:
        return
    provider = engine.choice_providers[player_index]
    to_trash = provider.choose_cards_from_hand(
        player_index,
        current.hand.copy(),
        min_count=0,
        max_count=1,
        prompt="You may trash a card from your hand (Masquerade)",
    )
    if to_trash:
        engine.trash_from_hand(player_index, to_trash[0])


def shanty_town(engine: "DominionEngine", player_index: int) -> None:
    _plus_actions(engine, 2)
    player = engine.state.players[player_index]
    has_other_action = any(CardType.ACTION in engine.card(c).types for c in player.hand)
    if not has_other_action:
        _draw(engine, player_index, 2)


def steward(engine: "DominionEngine", player_index: int) -> None:
    provider = engine.choice_providers[player_index]
    if provider.choose_yes_no(player_index, "Steward: choose +2 Cards?"):
        _draw(engine, player_index, 2)
        return
    if provider.choose_yes_no(player_index, "Steward: choose +2 Coins?"):
        _plus_coins(engine, 2)
        return

    player = engine.state.players[player_index]
    to_trash = provider.choose_cards_from_hand(
        player_index,
        player.hand.copy(),
        min_count=0,
        max_count=2,
        prompt="Steward: choose up to 2 cards to trash",
    )[:2]
    for card_name in to_trash:
        engine.trash_from_hand(player_index, card_name)


def swindler(engine: "DominionEngine", player_index: int) -> None:
    _plus_coins(engine, 2)
    attacker_provider = engine.choice_providers[player_index]
    for i in range(len(engine.state.players)):
        if i == player_index:
            continue
        if engine._is_attack_blocked(i, "Swindler"):
            continue
        trashed = engine.trash_top_of_deck(i)
        if trashed is None:
            continue
        trashed_cost = engine.card(trashed).cost
        choices = [
            name
            for name, pile in engine.state.supply.items()
            if pile.count > 0 and engine.card(name).cost == trashed_cost
        ]
        if not choices:
            continue
        gain = attacker_provider.choose_card_from_supply(
            player_index,
            sorted(choices),
            f"Choose a {trashed_cost}-cost card for opponent to gain (Swindler)",
        )
        if gain is None or gain not in choices:
            gain = choices[0]
        engine.gain_card(i, gain)


def wishing_well(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 1)
    _plus_actions(engine, 1)
    provider = engine.choice_providers[player_index]
    guess = provider.choose_card_from_supply(
        player_index,
        sorted(engine.card_registry.keys()),
        "Name a card for Wishing Well",
    )
    top = engine.draw_card_from_deck(player_index)
    if top is None:
        return
    if guess == top:
        engine.state.players[player_index].hand.append(top)
        engine.log(f"{engine.state.players[player_index].name} guesses {top} correctly with Wishing Well")
    else:
        engine.state.players[player_index].deck.append(top)


def baron(engine: "DominionEngine", player_index: int) -> None:
    _plus_buys(engine, 1)
    player = engine.state.players[player_index]
    provider = engine.choice_providers[player_index]
    if "Estate" in player.hand and provider.choose_yes_no(player_index, "Baron: discard an Estate for +4 Coins?"):
        engine.discard_from_hand(player_index, "Estate")
        _plus_coins(engine, 4)
    else:
        engine.gain_card(player_index, "Estate")


def bridge(engine: "DominionEngine", player_index: int) -> None:
    _plus_buys(engine, 1)
    _plus_coins(engine, 1)
    engine.state.turn_state.cost_reduction += 1


def conspirator(engine: "DominionEngine", player_index: int) -> None:
    _plus_coins(engine, 2)
    player = engine.state.players[player_index]
    action_cards_in_play = sum(1 for c in player.in_play if CardType.ACTION in engine.card(c).types)
    if action_cards_in_play >= 3:
        _draw(engine, player_index, 1)
        _plus_actions(engine, 1)


def diplomat(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 2)
    if len(engine.state.players[player_index].hand) <= 5:
        _plus_actions(engine, 2)


def ironworks(engine: "DominionEngine", player_index: int) -> None:
    choice = _choose_from_supply(engine, player_index, max_cost=4, prompt="Gain a card costing up to 4 (Ironworks)")
    if choice is None:
        return
    if not engine.gain_card(player_index, choice):
        return

    types = engine.card(choice).types
    if CardType.ACTION in types:
        _plus_actions(engine, 1)
    if CardType.TREASURE in types:
        _plus_coins(engine, 1)
    if CardType.VICTORY in types:
        _draw(engine, player_index, 1)


def mill(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 1)
    _plus_actions(engine, 1)
    player = engine.state.players[player_index]
    provider = engine.choice_providers[player_index]
    choices = provider.choose_cards_from_hand(
        player_index,
        player.hand.copy(),
        min_count=0,
        max_count=2,
        prompt="You may discard 2 cards for +2 Coins (Mill)",
    )
    if len(choices) < 2:
        return
    discarded = 0
    for card_name in choices[:2]:
        if engine.discard_from_hand(player_index, card_name):
            discarded += 1
    if discarded == 2:
        _plus_coins(engine, 2)


def mining_village(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 1)
    _plus_actions(engine, 2)
    provider = engine.choice_providers[player_index]
    if provider.choose_yes_no(player_index, "Trash Mining Village from play for +2 Coins?"):
        if engine.trash_from_play(player_index, "Mining Village"):
            _plus_coins(engine, 2)


def secret_passage(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 2)
    _plus_actions(engine, 1)
    player = engine.state.players[player_index]
    if not player.hand:
        return
    provider = engine.choice_providers[player_index]
    selected = provider.choose_cards_from_hand(
        player_index,
        player.hand.copy(),
        min_count=1,
        max_count=1,
        prompt="Choose a card to put on top of your deck (Secret Passage simplified)",
    )
    card_name = selected[0] if selected and selected[0] in player.hand else player.hand[0]
    player.hand.remove(card_name)
    player.deck.append(card_name)


def courtier(engine: "DominionEngine", player_index: int) -> None:
    player = engine.state.players[player_index]
    if not player.hand:
        return
    provider = engine.choice_providers[player_index]
    selected = provider.choose_cards_from_hand(
        player_index,
        player.hand.copy(),
        min_count=1,
        max_count=1,
        prompt="Reveal a card for Courtier",
    )
    reveal = selected[0] if selected and selected[0] in player.hand else player.hand[0]
    distinct_types = len(engine.card(reveal).types)
    effects = ["action", "buy", "coin", "gold"][:distinct_types]
    for effect in effects:
        if effect == "action":
            _plus_actions(engine, 1)
        elif effect == "buy":
            _plus_buys(engine, 1)
        elif effect == "coin":
            _plus_coins(engine, 3)
        elif effect == "gold":
            engine.gain_card(player_index, "Gold")


def minion(engine: "DominionEngine", player_index: int) -> None:
    _plus_actions(engine, 1)
    provider = engine.choice_providers[player_index]
    if provider.choose_yes_no(player_index, "Minion: choose +2 Coins?"):
        _plus_coins(engine, 2)
        return

    current = engine.state.players[player_index]
    discard_hand = list(current.hand)
    for card_name in discard_hand:
        engine.discard_from_hand(player_index, card_name)
    _draw(engine, player_index, 4)

    for i, other in enumerate(engine.state.players):
        if i == player_index:
            continue
        if engine._is_attack_blocked(i, "Minion"):
            continue
        if len(other.hand) >= 5:
            for card_name in list(other.hand):
                engine.discard_from_hand(i, card_name)
            _draw(engine, i, 4)


def patrol(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 3)
    _plus_actions(engine, 1)
    revealed: list[str] = []
    while len(revealed) < 4:
        card_name = engine.draw_card_from_deck(player_index)
        if card_name is None:
            break
        revealed.append(card_name)

    player = engine.state.players[player_index]
    keep = [c for c in revealed if c in {"Estate", "Duchy", "Province", "Curse"}]
    for card_name in keep:
        player.hand.append(card_name)
    rest = [c for c in revealed if c not in keep]
    for card_name in reversed(rest):
        player.deck.append(card_name)


def replace(engine: "DominionEngine", player_index: int) -> None:
    player = engine.state.players[player_index]
    provider = engine.choice_providers[player_index]

    trash_choice = provider.choose_cards_from_hand(
        player_index,
        player.hand.copy(),
        min_count=1,
        max_count=1,
        prompt="Choose a card to trash for Replace",
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
    if gain_choice is None:
        return

    gained_types = engine.card(gain_choice).types
    gained = (
        engine.gain_card_to_deck_top(player_index, gain_choice)
        if CardType.ACTION in gained_types or CardType.VICTORY in gained_types
        else engine.gain_card(player_index, gain_choice)
    )
    if not gained:
        return

    if CardType.VICTORY in gained_types:
        for i in range(len(engine.state.players)):
            if i == player_index:
                continue
            if engine._is_attack_blocked(i, "Replace"):
                continue
            engine.gain_card_to_deck_top(i, "Curse")


def torturer(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 3)
    for i, other in enumerate(engine.state.players):
        if i == player_index:
            continue
        if engine._is_attack_blocked(i, "Torturer"):
            continue

        provider = engine.choice_providers[i]
        discard_two = provider.choose_yes_no(i, "Torturer: discard 2 cards? (No = gain Curse to hand)")
        if discard_two and len(other.hand) >= 2:
            selected = provider.choose_cards_from_hand(
                i,
                other.hand.copy(),
                min_count=2,
                max_count=2,
                prompt="Discard 2 cards due to Torturer",
            )
            discarded = 0
            for card_name in selected[:2]:
                if engine.discard_from_hand(i, card_name):
                    discarded += 1
            if discarded < 2:
                while discarded < 2 and other.hand:
                    engine.discard_from_hand(i, other.hand[0])
                    discarded += 1
        else:
            engine.gain_card_to_hand(i, "Curse")


def trading_post(engine: "DominionEngine", player_index: int) -> None:
    player = engine.state.players[player_index]
    provider = engine.choice_providers[player_index]
    to_trash = provider.choose_cards_from_hand(
        player_index,
        player.hand.copy(),
        min_count=2,
        max_count=2,
        prompt="Trash 2 cards for Trading Post",
    )
    trashed = 0
    for card_name in to_trash[:2]:
        if engine.trash_from_hand(player_index, card_name):
            trashed += 1
    if trashed == 2:
        engine.gain_card_to_hand(player_index, "Silver")


def upgrade(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 1)
    _plus_actions(engine, 1)
    player = engine.state.players[player_index]
    provider = engine.choice_providers[player_index]

    trash_choice = provider.choose_cards_from_hand(
        player_index,
        player.hand.copy(),
        min_count=1,
        max_count=1,
        prompt="Choose a card to trash for Upgrade",
    )
    if not trash_choice:
        return

    trashed_card = trash_choice[0]
    if trashed_card not in player.hand:
        return
    trashed_cost = engine.card(trashed_card).cost
    if not engine.trash_from_hand(player_index, trashed_card):
        return

    exact_cost = trashed_cost + 1
    gainable = [
        name
        for name, pile in engine.state.supply.items()
        if pile.count > 0 and engine.effective_cost(name) == exact_cost
    ]
    gain_choice = provider.choose_card_from_supply(
        player_index,
        sorted(gainable),
        f"Choose a card costing exactly {exact_cost} to gain",
    )
    if gain_choice is not None:
        engine.gain_card(player_index, gain_choice)


def harem(engine: "DominionEngine", player_index: int) -> None:
    _ = player_index
    _plus_coins(engine, 2)


def nobles(engine: "DominionEngine", player_index: int) -> None:
    provider = engine.choice_providers[player_index]
    if provider.choose_yes_no(player_index, "Nobles: choose +3 Cards?"):
        _draw(engine, player_index, 3)
    else:
        _plus_actions(engine, 2)


def great_hall(engine: "DominionEngine", player_index: int) -> None:
    _draw(engine, player_index, 1)
    _plus_actions(engine, 1)


CARD_SPECS: list[CardSpec] = [
    CardSpec("Courtyard", 2, frozenset({CardType.ACTION}), "+3 Cards; put a card from hand on top of deck", on_play=courtyard),
    CardSpec("Lurker", 2, frozenset({CardType.ACTION}), "+1 Action; trash an Action from Supply, or gain one from trash", on_play=lurker),
    CardSpec("Pawn", 2, frozenset({CardType.ACTION}), "Choose two: +1 Card; +1 Action; +1 Buy; +1 Coin", on_play=pawn),
    CardSpec("Masquerade", 3, frozenset({CardType.ACTION}), "+2 Cards; each passes a card left; you may trash a card", on_play=masquerade),
    CardSpec("Shanty Town", 3, frozenset({CardType.ACTION}), "+2 Actions; if no other Action cards in hand, +2 Cards", on_play=shanty_town),
    CardSpec("Steward", 3, frozenset({CardType.ACTION}), "Choose one: +2 Cards; +2 Coins; or trash up to 2 cards", on_play=steward),
    CardSpec("Swindler", 3, frozenset({CardType.ACTION, CardType.ATTACK}), "+2 Coins; opponents trash top card and gain same cost", on_play=swindler),
    CardSpec("Wishing Well", 3, frozenset({CardType.ACTION}), "+1 Card; +1 Action; name a card; if top card matches, draw it", on_play=wishing_well),
    CardSpec("Baron", 4, frozenset({CardType.ACTION}), "+1 Buy; discard Estate for +4 Coins or gain an Estate", on_play=baron),
    CardSpec("Bridge", 4, frozenset({CardType.ACTION}), "+1 Buy; +1 Coin; cards cost 1 less this turn", on_play=bridge),
    CardSpec("Conspirator", 4, frozenset({CardType.ACTION}), "+2 Coins; if 3+ Actions in play, +1 Card +1 Action", on_play=conspirator),
    CardSpec("Diplomat", 4, frozenset({CardType.ACTION, CardType.REACTION}), "+2 Cards; if <=5 cards in hand, +2 Actions", on_play=diplomat),
    CardSpec("Ironworks", 4, frozenset({CardType.ACTION}), "Gain a card up to 4; +1 Action/Coin/Card by gained type", on_play=ironworks),
    CardSpec("Mill", 4, frozenset({CardType.ACTION, CardType.VICTORY}), "+1 Card; +1 Action; discard 2 for +2 Coins; 1 VP", on_play=mill, victory_points=1),
    CardSpec("Mining Village", 4, frozenset({CardType.ACTION}), "+1 Card; +2 Actions; may trash this for +2 Coins", on_play=mining_village),
    CardSpec("Secret Passage", 4, frozenset({CardType.ACTION}), "+2 Cards; +1 Action; put a card from hand into deck", on_play=secret_passage),
    CardSpec("Courtier", 5, frozenset({CardType.ACTION}), "Reveal a card; get effects equal to its distinct types", on_play=courtier),
    CardSpec("Duke", 5, frozenset({CardType.VICTORY}), "Worth 1 VP per Duchy you have"),
    CardSpec("Minion", 5, frozenset({CardType.ACTION, CardType.ATTACK}), "+1 Action; choose +2 Coins or hand reset attack", on_play=minion),
    CardSpec("Patrol", 5, frozenset({CardType.ACTION}), "+3 Cards; +1 Action; reveal 4 and keep Victory/Curses", on_play=patrol),
    CardSpec("Replace", 5, frozenset({CardType.ACTION, CardType.ATTACK}), "Trash a card; gain up to +2; attacks if Victory gained", on_play=replace),
    CardSpec("Torturer", 5, frozenset({CardType.ACTION, CardType.ATTACK}), "+3 Cards; opponents discard 2 or gain Curse to hand", on_play=torturer),
    CardSpec("Trading Post", 5, frozenset({CardType.ACTION}), "Trash 2 cards; gain a Silver to hand", on_play=trading_post),
    CardSpec("Upgrade", 5, frozenset({CardType.ACTION}), "+1 Card; +1 Action; trash a card, gain one costing exactly +1", on_play=upgrade),
    CardSpec("Harem", 6, frozenset({CardType.TREASURE, CardType.VICTORY}), "+2 Coins; 2 VP", on_play=harem, victory_points=2, treasure_value=2),
    CardSpec("Nobles", 6, frozenset({CardType.ACTION, CardType.VICTORY}), "Choose one: +3 Cards; or +2 Actions; 2 VP", on_play=nobles, victory_points=2),
    CardSpec("Great Hall", 3, frozenset({CardType.ACTION, CardType.VICTORY}), "+1 Card; +1 Action; 1 VP", on_play=great_hall, victory_points=1),
]

INTRIGUE_CARDS: dict[str, CardDefinition] = {
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
