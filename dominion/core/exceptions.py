class DominionError(Exception):
    """Base exception for engine errors."""


class InvalidMoveError(DominionError):
    """Raised when a move violates game rules."""
