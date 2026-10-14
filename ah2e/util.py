"""Small stdlib-only helpers: polite cached HTTP, hashing, JSON IO, text normalisation."""
import datetime as _dt
import difflib
import hashlib
import html
import json
import re
import time
import unicodedata
import urllib.error
import urllib.request
from pathlib import Path

from . import config

_last_request = [0.0]


class FetchBlocked(Exception):
    """Raised when the network (or a proxy policy) refuses a request - not retried."""


def now_iso():
    return _dt.datetime.now(_dt.timezone.utc).replace(microsecond=0).isoformat()


def sha256_bytes(b):
    return hashlib.sha256(b).hexdigest()


def sha256_file(p):
    h = hashlib.sha256()
    with open(p, "rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def http_get(url, accept=None):
    """GET with a minimum interval between requests and bounded exponential-backoff retries.

    403/404/407 are not retried (policy denial / missing file); network errors are retried
    ``config.MAX_RETRIES`` times (2s, 4s, 8s, 16s)."""
    headers = {"User-Agent": config.USER_AGENT}
    if accept:
        headers["Accept"] = accept
    last_err = None
    for attempt in range(config.MAX_RETRIES + 1):
        wait = config.REQUEST_INTERVAL_S - (time.time() - _last_request[0])
        if wait > 0:
            time.sleep(wait)
        _last_request[0] = time.time()
        try:
            req = urllib.request.Request(url, headers=headers)
            with urllib.request.urlopen(req, timeout=config.TIMEOUT_S) as resp:
                return resp.read()
        except urllib.error.HTTPError as e:
            if e.code in (401, 403, 404, 407, 410, 451):
                raise FetchBlocked("HTTP %s for %s" % (e.code, url)) from e
            last_err = e
        except (urllib.error.URLError, TimeoutError, ConnectionError, OSError) as e:
            msg = str(e)
            if "403" in msg or "Tunnel connection failed" in msg:
                raise FetchBlocked("%s for %s" % (msg, url)) from e
            last_err = e
        if attempt < config.MAX_RETRIES:
            time.sleep(2 ** (attempt + 1))
    raise FetchBlocked("network error after %d retries for %s: %s" % (config.MAX_RETRIES, url, last_err))


def read_json(p, default=None):
    p = Path(p)
    if not p.exists():
        return default
    with open(p, encoding="utf-8") as f:
        return json.load(f)


def write_json(p, obj, indent=1):
    p = Path(p)
    p.parent.mkdir(parents=True, exist_ok=True)
    tmp = p.with_suffix(p.suffix + ".tmp")
    with open(tmp, "w", encoding="utf-8") as f:
        json.dump(obj, f, ensure_ascii=False, indent=indent, sort_keys=False)
        f.write("\n")
    tmp.replace(p)


def slug(s):
    s = unicodedata.normalize("NFKD", s).encode("ascii", "ignore").decode()
    s = s.lower().replace("&", " and ")
    s = re.sub(r"['’`\"]", "", s)
    s = re.sub(r"[^a-z0-9]+", "_", s).strip("_")
    return s


_TAG_RE = re.compile(r"<[^>]+>")


def strip_html(s):
    """HTML -> plain text, keeping line breaks for <br>/<p>/<tr>."""
    if s is None:
        return None
    s = re.sub(r"(?i)<br\s*/?>|</p>|</tr>|</h2>", "\n", s)
    s = re.sub(r"(?i)</td>", " ", s)
    s = _TAG_RE.sub("", s)
    s = html.unescape(s)
    s = s.replace(" ", " ")
    s = re.sub(r"[ \t]+", " ", s)
    s = re.sub(r" *\n *", "\n", s)
    s = re.sub(r"\n{3,}", "\n\n", s)
    return s.strip()


def strip_markdown(s):
    if s is None:
        return None
    s = re.sub(r"\*\*(.+?)\*\*", r"\1", s)
    s = re.sub(r"(?<!\w)\*(.+?)\*(?!\w)", r"\1", s)
    return s


def norm_text(s):
    """Aggressive normalisation used ONLY to decide whether two transcriptions agree."""
    if s is None:
        return ""
    s = strip_markdown(strip_html(s))
    s = unicodedata.normalize("NFKD", s)
    s = s.replace("–", "-").replace("—", "-").replace("’", "'").replace("‘", "'").replace("“", '"').replace("”", '"')
    s = s.lower()
    s = re.sub(r"[^a-z0-9$+\-]+", " ", s)
    return re.sub(r"\s+", " ", s).strip()


def similarity(a, b):
    a, b = norm_text(a), norm_text(b)
    if not a and not b:
        return 1.0
    return difflib.SequenceMatcher(None, a, b, autojunk=False).ratio()


def norm_name(s):
    """Name key for cross-source matching (case/punctuation/article-insensitive)."""
    s = norm_text(s)
    s = re.sub(r"^the ", "", s)
    s = s.replace(" ", "")
    return s
