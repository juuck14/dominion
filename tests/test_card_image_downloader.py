from __future__ import annotations

from pathlib import Path

from dominion.ui.card_image_downloader import download_card_image


class _FakeResponse:
    def __init__(self, content: bytes) -> None:
        self._content = content

    def __enter__(self) -> "_FakeResponse":
        return self

    def __exit__(self, exc_type, exc, tb) -> None:
        return None

    def read(self) -> bytes:
        return self._content


def test_download_card_image_saves_file(monkeypatch, tmp_path: Path) -> None:
    captured_url: dict[str, str] = {}

    def fake_urlopen(url: str, timeout: float):  # type: ignore[no-untyped-def]
        captured_url["value"] = url
        assert timeout == 10.0
        return _FakeResponse(b"png-bytes")

    monkeypatch.setattr("dominion.ui.card_image_downloader.urlopen", fake_urlopen)

    result = download_card_image("Village", tmp_path)

    assert result == tmp_path / "village.png"
    assert result is not None and result.exists()
    assert result.read_bytes() == b"png-bytes"
    assert captured_url["value"].endswith("/base/village.png")


def test_download_card_image_returns_none_for_unknown_card(tmp_path: Path) -> None:
    result = download_card_image("Lurker", tmp_path)
    assert result is None
    assert not (tmp_path / "lurker.png").exists()
