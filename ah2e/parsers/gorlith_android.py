"""Gorlith/Arkham-Horror-Helper: investigator name/occupation/sanity/stamina table in MyApp.java.

Note: the app's values may already include starting-equipment modifiers (e.g. Duke's +1 max
Sanity for "Ashcan" Pete); they are recorded as-is and compared in integration.
"""
import re

from .common import read_text

SID = "gorlith_android"
FILE = "Arkham Horror Helper/src/com/gorlith/arkham/MyApp.java"
_INV = re.compile(r'new Investigator\("([^"]+)",\s*"([^"]+)",\s*(\d+),\s*(\d+)(?:,\s*"([^"]+)")?\)\)')
_FN = re.compile(r"public static void (\w+)\(\)\s*\{(.*?)\n\t\}", re.S)


def parse(ctx):
    text = read_text(SID, FILE)
    rec = {"investigators": []}
    warnings = []
    for fn in _FN.finditer(text):
        name, body = fn.group(1), fn.group(2)
        line0 = text.count("\n", 0, fn.start()) + 1
        for m in _INV.finditer(body):
            line = line0 + body.count("\n", 0, m.start())
            commented = body.rfind("//", body.rfind("\n", 0, m.start()), m.start()) >= 0
            if commented:
                warnings.append("%s:%d %s is commented out in the app" % (FILE, line, m.group(1)))
            rec["investigators"].append({
                "name": m.group(1), "occupation": m.group(2), "sanity": int(m.group(3)), "stamina": int(m.group(4)),
                "set_label": m.group(5) or "Arkham Horror", "list_function": name, "commented_out": commented,
                "set": {"ahInvestigators": "base", "dhInvestigators": "dunwich_horror", "khInvestigators": "kingsport_horror",
                        "ihInvestigators": "innsmouth_horror"}.get(name),
                "src_ref": "%s:%d" % (FILE, line)})
    return {"records": rec, "warnings": warnings, "stats": {"investigators": len(rec["investigators"])}}
