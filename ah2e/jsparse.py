"""Minimal parser for JavaScript/TypeScript object *literals* (no code execution).

Supports: objects with bare or quoted keys, arrays, single/double-quoted strings with
escapes, numbers, true/false/null/undefined, trailing commas, // and /* */ comments.
Used to read generated TS data fixtures without running node.
"""
import re


class JSParseError(ValueError):
    pass


_NUM = re.compile(r"-?(?:0|[1-9]\d*)(?:\.\d+)?(?:[eE][+-]?\d+)?")
_IDENT = re.compile(r"[A-Za-z_$][A-Za-z0-9_$]*")
_ESC = {"n": "\n", "t": "\t", "r": "\r", "b": "\b", "f": "\f", "v": "\v", "0": "\0",
        "'": "'", '"': '"', "\\": "\\", "/": "/", "`": "`"}


class _P:
    def __init__(self, s, pos=0, allow_empty_values=False):
        self.s, self.i = s, pos
        self.allow_empty = allow_empty_values
        self.warnings = []

    def ws(self):
        s = self.s
        while self.i < len(s):
            c = s[self.i]
            if c in " \t\r\n":
                self.i += 1
            elif s.startswith("//", self.i):
                j = s.find("\n", self.i)
                self.i = len(s) if j < 0 else j + 1
            elif s.startswith("/*", self.i):
                j = s.find("*/", self.i)
                if j < 0:
                    raise JSParseError("unterminated comment")
                self.i = j + 2
            else:
                break

    def err(self, msg):
        line = self.s.count("\n", 0, self.i) + 1
        raise JSParseError("%s at line %d: %r" % (msg, line, self.s[self.i:self.i + 40]))

    def value(self):
        self.ws()
        c = self.s[self.i:self.i + 1]
        if c == "{":
            return self.obj()
        if c == "[":
            return self.arr()
        if c in "'\"":
            return self.string()
        m = _NUM.match(self.s, self.i)
        if m:
            self.i = m.end()
            t = m.group()
            return float(t) if any(x in t for x in ".eE") else int(t)
        if self.allow_empty and c in ",}]":
            line = self.s.count("\n", 0, self.i) + 1
            self.warnings.append("empty value at line %d (read as null)" % line)
            return None
        m = _IDENT.match(self.s, self.i)
        if m:
            w = m.group()
            self.i = m.end()
            if w in ("true", "false"):
                return w == "true"
            if w in ("null", "undefined"):
                return None
            self.err("unsupported identifier %r" % w)
        self.err("unexpected character")

    def string(self):
        q = self.s[self.i]
        self.i += 1
        out = []
        s = self.s
        while True:
            if self.i >= len(s):
                self.err("unterminated string")
            c = s[self.i]
            if c == q:
                self.i += 1
                return "".join(out)
            if c == "\\":
                n = s[self.i + 1]
                if n == "u":
                    out.append(chr(int(s[self.i + 2:self.i + 6], 16)))
                    self.i += 6
                    continue
                if n == "x":
                    out.append(chr(int(s[self.i + 2:self.i + 4], 16)))
                    self.i += 4
                    continue
                if n == "\n":
                    self.i += 2
                    continue
                out.append(_ESC.get(n, n))
                self.i += 2
                continue
            out.append(c)
            self.i += 1

    def key(self):
        self.ws()
        c = self.s[self.i]
        if c in "'\"":
            return self.string()
        m = _IDENT.match(self.s, self.i) or _NUM.match(self.s, self.i)
        if not m:
            self.err("bad key")
        self.i = m.end()
        return m.group()

    def obj(self):
        self.i += 1
        out = {}
        while True:
            self.ws()
            if self.s[self.i] == "}":
                self.i += 1
                return out
            k = self.key()
            self.ws()
            if self.s[self.i] != ":":
                self.err("expected ':'")
            self.i += 1
            out[k] = self.value()
            self.ws()
            if self.s[self.i] == ",":
                self.i += 1
            elif self.s[self.i] != "}":
                self.err("expected ',' or '}'")

    def arr(self):
        self.i += 1
        out = []
        while True:
            self.ws()
            if self.s[self.i] == "]":
                self.i += 1
                return out
            out.append(self.value())
            self.ws()
            if self.s[self.i] == ",":
                self.i += 1
            elif self.s[self.i] != "]":
                self.err("expected ',' or ']'")


def parse_literal_after(text, marker):
    """Parse the object/array literal that follows ``marker`` (e.g. '= ') in ``text``."""
    k = text.find(marker)
    if k < 0:
        raise JSParseError("marker %r not found" % marker)
    p = _P(text, k + len(marker))
    p.ws()
    if text[p.i] not in "{[":
        p.err("expected literal")
    return p.value()


def loads_lenient_json(text):
    """JSON with trailing commas, comments and empty values (``"k": ,``) tolerated.

    Returns ``(value, warnings)``; empty values become ``None`` and are reported."""
    p = _P(text, allow_empty_values=True)
    v = p.value()
    p.ws()
    if p.i != len(text):
        p.err("trailing data")
    return v, p.warnings
