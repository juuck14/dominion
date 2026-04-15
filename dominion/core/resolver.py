from __future__ import annotations

from .events import Event
from .game_state import GameState


def record_event(state: GameState, name: str, detail: str) -> None:
    """Append a human-readable event log entry."""
    state.events.append(Event(name=name, detail=detail))
    state.log.append(f"[{name}] {detail}")
