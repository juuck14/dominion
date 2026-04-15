from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path
from typing import Callable

import pygame

from dominion.ai.heuristic import HeuristicAI
from dominion.core.choices import ChoiceProvider
from dominion.core.scoring import score_player
from dominion.core.turn import DominionEngine
from dominion.core.types import CardType, Phase


CARD_W = 110
CARD_H = 150
PADDING = 8


@dataclass
class Button:
    rect: pygame.Rect
    label: str
    on_click: Callable[[], None]


class PygameChoiceProvider(ChoiceProvider):
    """Human choice provider driven by pygame interactions."""

    def __init__(self, app: "PygameDominionApp") -> None:
        self.app = app

    def choose_cards_from_hand(
        self,
        player_index: int,
        hand: list[str],
        min_count: int,
        max_count: int,
        prompt: str,
    ) -> list[str]:
        return self.app.blocking_choose_cards(player_index, hand, min_count, max_count, prompt)

    def choose_yes_no(self, player_index: int, prompt: str) -> bool:
        return self.app.blocking_yes_no(player_index, prompt)

    def choose_card_from_supply(
        self,
        player_index: int,
        available_cards: list[str],
        prompt: str,
    ) -> str | None:
        return self.app.blocking_choose_supply(player_index, available_cards, prompt)


class PygameDominionApp:
    def __init__(self, seed: int | None = None, card_image_dir: str = "assets/cards") -> None:
        pygame.init()
        self.screen = pygame.display.set_mode((1400, 900))
        pygame.display.set_caption("Dominion (Pygame Prototype)")
        self.clock = pygame.time.Clock()
        self.font = pygame.font.SysFont("arial", 18)
        self.small_font = pygame.font.SysFont("arial", 14)

        self.card_image_dir = Path(card_image_dir)
        self.cached_card_surfaces: dict[tuple[str, int, int], pygame.Surface] = {}

        human_provider = PygameChoiceProvider(self)
        self.ai = HeuristicAI()
        self.engine = DominionEngine(["Human", "AI"], choice_providers=[human_provider, self.ai], seed=seed)
        self.running = True

        self.buttons: list[Button] = []
        self.supply_card_rects: dict[str, pygame.Rect] = {}
        self.hand_card_rects: list[tuple[str, pygame.Rect]] = []

    def run(self) -> None:
        while self.running:
            self._process_ai_turn_if_needed()
            self._handle_events()
            self._draw()
            self.clock.tick(30)
        pygame.quit()

    def _process_ai_turn_if_needed(self) -> None:
        if self.engine.state.is_game_over():
            return
        if self.engine.state.current_player == 1:
            self.ai.take_turn(self.engine, 1)

    def _handle_events(self) -> None:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                self.running = False
            if event.type == pygame.MOUSEBUTTONDOWN and event.button == 1:
                self._on_left_click(event.pos)

    def _on_left_click(self, pos: tuple[int, int]) -> None:
        if self.engine.state.is_game_over():
            return
        if self.engine.state.current_player != 0:
            return

        for button in self.buttons:
            if button.rect.collidepoint(pos):
                button.on_click()
                return

        player = self.engine.state.players[0]
        if self.engine.state.turn_state.phase == Phase.ACTION:
            for card_name, rect in self.hand_card_rects:
                if rect.collidepoint(pos):
                    if CardType.ACTION in self.engine.card(card_name).types:
                        self.engine.play_action_card(0, card_name)
                    return

        if self.engine.state.turn_state.phase == Phase.BUY:
            for card_name, rect in self.supply_card_rects.items():
                if rect.collidepoint(pos):
                    self._try_buy(card_name)
                    return

    def _to_buy_phase(self) -> None:
        self.engine.move_to_buy_phase()

    def _play_treasures(self) -> None:
        self.engine.play_all_treasures(0)

    def _end_turn(self) -> None:
        self.engine.end_turn()

    def _try_buy(self, card_name: str) -> None:
        try:
            self.engine.buy_card(0, card_name)
        except Exception:
            # Keep GUI responsive even if invalid click; game engine stays source of truth.
            pass

    def _draw(self) -> None:
        self.screen.fill((26, 54, 88))
        self._draw_header()
        self._draw_supply()
        self._draw_hand()
        self._draw_buttons()
        self._draw_log()
        if self.engine.state.is_game_over():
            self._draw_game_over()
        pygame.display.flip()

    def _draw_header(self) -> None:
        state = self.engine.state
        turn = state.turn
        current = state.players[state.current_player].name
        ts = state.turn_state
        text = f"Turn {turn} | Current: {current} | Actions={ts.actions} Buys={ts.buys} Coins={ts.coins}"
        surf = self.font.render(text, True, (255, 255, 255))
        self.screen.blit(surf, (16, 12))

    def _draw_supply(self) -> None:
        self.supply_card_rects.clear()
        supply_names = sorted(self.engine.state.supply.keys())
        start_x, start_y = 16, 50
        cols = 10

        for idx, card_name in enumerate(supply_names):
            x = start_x + (idx % cols) * (CARD_W + PADDING)
            y = start_y + (idx // cols) * (CARD_H + 34)
            rect = pygame.Rect(x, y, CARD_W, CARD_H)
            self.supply_card_rects[card_name] = rect

            card_surf = self._get_card_surface(card_name, CARD_W, CARD_H)
            self.screen.blit(card_surf, rect)
            count = self.engine.state.supply[card_name].count
            cnt = self.small_font.render(f"x{count}", True, (255, 255, 255))
            self.screen.blit(cnt, (x, y + CARD_H + 2))

    def _draw_hand(self) -> None:
        self.hand_card_rects.clear()
        player = self.engine.state.players[0]
        y = 560
        for idx, card_name in enumerate(player.hand):
            x = 16 + idx * (CARD_W + PADDING)
            rect = pygame.Rect(x, y, CARD_W, CARD_H)
            self.hand_card_rects.append((card_name, rect))
            self.screen.blit(self._get_card_surface(card_name, CARD_W, CARD_H), rect)

        info = self.font.render("Your hand (click Action card in Action phase)", True, (255, 255, 255))
        self.screen.blit(info, (16, y - 24))

    def _draw_buttons(self) -> None:
        self.buttons = [
            Button(pygame.Rect(1180, 70, 180, 40), "To Buy Phase", self._to_buy_phase),
            Button(pygame.Rect(1180, 120, 180, 40), "Play Treasures", self._play_treasures),
            Button(pygame.Rect(1180, 170, 180, 40), "End Turn", self._end_turn),
        ]
        for b in self.buttons:
            pygame.draw.rect(self.screen, (60, 60, 60), b.rect)
            pygame.draw.rect(self.screen, (230, 230, 230), b.rect, 1)
            text = self.font.render(b.label, True, (255, 255, 255))
            self.screen.blit(text, (b.rect.x + 12, b.rect.y + 10))

    def _draw_log(self) -> None:
        logs = self.engine.state.log[-15:]
        y = 760
        title = self.font.render("Game Log", True, (255, 255, 255))
        self.screen.blit(title, (16, y - 24))
        for idx, line in enumerate(logs):
            txt = self.small_font.render(line[:130], True, (240, 240, 240))
            self.screen.blit(txt, (16, y + idx * 18))

    def _draw_game_over(self) -> None:
        s0 = score_player(self.engine.state, 0)
        s1 = score_player(self.engine.state, 1)
        text = f"Game Over! Human={s0} / AI={s1}"
        surf = self.font.render(text, True, (255, 215, 0))
        self.screen.blit(surf, (520, 16))

    def _get_card_surface(self, card_name: str, w: int, h: int) -> pygame.Surface:
        key = (card_name, w, h)
        if key in self.cached_card_surfaces:
            return self.cached_card_surfaces[key]

        path = self._find_card_image(card_name)
        if path is not None:
            image = pygame.image.load(str(path)).convert_alpha()
            surf = pygame.transform.smoothscale(image, (w, h))
        else:
            surf = self._build_placeholder_card(card_name, w, h)

        self.cached_card_surfaces[key] = surf
        return surf

    def _find_card_image(self, card_name: str) -> Path | None:
        if not self.card_image_dir.exists():
            return None
        candidates = [card_name, card_name.replace(" ", "_"), card_name.lower(), card_name.lower().replace(" ", "_")]
        exts = [".png", ".jpg", ".jpeg", ".webp"]
        for base in candidates:
            for ext in exts:
                p = self.card_image_dir / f"{base}{ext}"
                if p.exists():
                    return p
        return None

    def _build_placeholder_card(self, card_name: str, w: int, h: int) -> pygame.Surface:
        card = self.engine.card(card_name)
        surf = pygame.Surface((w, h))
        bg = (210, 180, 140)
        if CardType.TREASURE in card.types:
            bg = (181, 140, 28)
        elif CardType.VICTORY in card.types:
            bg = (42, 128, 75)
        elif CardType.CURSE in card.types:
            bg = (110, 64, 151)
        elif CardType.ACTION in card.types:
            bg = (61, 107, 171)

        surf.fill(bg)
        pygame.draw.rect(surf, (15, 15, 15), (0, 0, w, h), 2)

        title = self.small_font.render(card_name, True, (255, 255, 255))
        cost = self.small_font.render(f"Cost: {card.cost}", True, (255, 255, 255))
        desc = self.small_font.render(card.description[:24], True, (245, 245, 245))

        surf.blit(title, (6, 6))
        surf.blit(cost, (6, 24))
        surf.blit(desc, (6, h - 20))
        return surf

    def blocking_yes_no(self, player_index: int, prompt: str) -> bool:
        yes = pygame.Rect(500, 400, 140, 44)
        no = pygame.Rect(660, 400, 140, 44)
        while True:
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    self.running = False
                    return False
                if event.type == pygame.MOUSEBUTTONDOWN and event.button == 1:
                    if yes.collidepoint(event.pos):
                        return True
                    if no.collidepoint(event.pos):
                        return False
            self._draw()
            self._draw_modal(prompt, [yes, no], ["Yes", "No"])
            pygame.display.flip()
            self.clock.tick(30)

    def blocking_choose_cards(
        self,
        player_index: int,
        hand: list[str],
        min_count: int,
        max_count: int,
        prompt: str,
    ) -> list[str]:
        _ = player_index
        selected: list[str] = []
        done_btn = pygame.Rect(600, 720, 180, 44)

        while True:
            temp_rects: list[tuple[str, pygame.Rect]] = []
            for idx, card_name in enumerate(hand):
                x = 120 + idx * (CARD_W + PADDING)
                y = 500
                temp_rects.append((card_name, pygame.Rect(x, y, CARD_W, CARD_H)))

            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    self.running = False
                    return selected
                if event.type == pygame.MOUSEBUTTONDOWN and event.button == 1:
                    if done_btn.collidepoint(event.pos) and len(selected) >= min_count:
                        return selected[:max_count]
                    for card_name, rect in temp_rects:
                        if rect.collidepoint(event.pos):
                            if card_name in selected:
                                selected.remove(card_name)
                            elif len(selected) < max_count:
                                selected.append(card_name)

            self._draw()
            self._draw_modal(prompt, [done_btn], [f"Done ({len(selected)})"])
            for card_name, rect in temp_rects:
                self.screen.blit(self._get_card_surface(card_name, CARD_W, CARD_H), rect)
                if card_name in selected:
                    pygame.draw.rect(self.screen, (255, 255, 0), rect, 3)
            pygame.display.flip()
            self.clock.tick(30)

    def blocking_choose_supply(self, player_index: int, available_cards: list[str], prompt: str) -> str | None:
        _ = player_index
        cancel = pygame.Rect(620, 720, 180, 44)
        choices = available_cards[:12]
        while True:
            rects: list[tuple[str, pygame.Rect]] = []
            for idx, card_name in enumerate(choices):
                x = 120 + (idx % 6) * (CARD_W + PADDING)
                y = 420 + (idx // 6) * (CARD_H + 12)
                rects.append((card_name, pygame.Rect(x, y, CARD_W, CARD_H)))

            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    self.running = False
                    return None
                if event.type == pygame.MOUSEBUTTONDOWN and event.button == 1:
                    if cancel.collidepoint(event.pos):
                        return None
                    for card_name, rect in rects:
                        if rect.collidepoint(event.pos):
                            return card_name

            self._draw()
            self._draw_modal(prompt, [cancel], ["Cancel"])
            for card_name, rect in rects:
                self.screen.blit(self._get_card_surface(card_name, CARD_W, CARD_H), rect)
            pygame.display.flip()
            self.clock.tick(30)

    def _draw_modal(self, prompt: str, rects: list[pygame.Rect], labels: list[str]) -> None:
        overlay = pygame.Surface((1400, 900), pygame.SRCALPHA)
        overlay.fill((0, 0, 0, 140))
        self.screen.blit(overlay, (0, 0))

        modal = pygame.Rect(320, 320, 760, 420)
        pygame.draw.rect(self.screen, (28, 31, 38), modal)
        pygame.draw.rect(self.screen, (255, 255, 255), modal, 1)

        text = self.font.render(prompt, True, (255, 255, 255))
        self.screen.blit(text, (340, 340))

        for rect, label in zip(rects, labels):
            pygame.draw.rect(self.screen, (60, 60, 60), rect)
            pygame.draw.rect(self.screen, (230, 230, 230), rect, 1)
            t = self.font.render(label, True, (255, 255, 255))
            self.screen.blit(t, (rect.x + 12, rect.y + 10))


def run_pygame_app(seed: int | None = None, card_image_dir: str = "assets/cards") -> None:
    app = PygameDominionApp(seed=seed, card_image_dir=card_image_dir)
    app.run()
