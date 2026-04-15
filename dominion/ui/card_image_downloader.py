from __future__ import annotations

from pathlib import Path
from urllib.error import HTTPError, URLError
from urllib.request import urlopen


DOMINION_IMAGE_BASE_URL = "https://raw.githubusercontent.com/ivadla/dominion-images/master/png"

COMMON_CARDS = {"Copper", "Silver", "Gold", "Estate", "Duchy", "Province", "Curse"}

BASE_CARDS = {
    "Bureaucrat",
    "Cellar",
    "Chapel",
    "Council Room",
    "Festival",
    "Gardens",
    "Laboratory",
    "Market",
    "Militia",
    "Moat",
    "Remodel",
    "Smithy",
    "Village",
    "Witch",
    "Workshop",
}

INTRIGUE_CARDS = {
    "Baron",
    "Bridge",
    "Conspirator",
    "Courtyard",
    "Duke",
    "Great Hall",
    "Harem",
    "Ironworks",
    "Masquerade",
    "Mining Village",
    "Minion",
    "Nobles",
    "Pawn",
    "Shanty Town",
    "Steward",
    "Swindler",
    "Torturer",
    "Trading Post",
    "Upgrade",
    "Wishing Well",
}


def _image_subdir_for_card(card_name: str) -> str | None:
    if card_name in COMMON_CARDS:
        return "common"
    if card_name in BASE_CARDS:
        return "base"
    if card_name in INTRIGUE_CARDS:
        return "intrigue"
    return None


def download_card_image(card_name: str, destination_dir: Path, timeout: float = 10.0) -> Path | None:
    subdir = _image_subdir_for_card(card_name)
    if subdir is None:
        return None

    filename = f"{card_name.lower()}.png"
    target_path = destination_dir / filename
    if target_path.exists():
        return target_path

    destination_dir.mkdir(parents=True, exist_ok=True)
    image_url = f"{DOMINION_IMAGE_BASE_URL}/{subdir}/{filename}"

    try:
        with urlopen(image_url, timeout=timeout) as response:
            content = response.read()
    except (HTTPError, URLError, TimeoutError):
        return None

    target_path.write_bytes(content)
    return target_path
