#!/usr/bin/env python3
"""Import the owner's in-game probe reports (plan R8) into tracked JSON captures.

The probe (/lpprobe on the WoW Forever client) prints a plain-text report; chat cannot
be copied out of the client, so the owner pastes it into a file and runs:

    python3 scripts/import_probe.py --bucket forever --input report.txt

Output, under <sources-dir>/<Bucket>/ingame/:
    <Profession>.json  recipes present/learned, trainer learn skill, vendor-free facts
    Merchants.json     prices and extended costs per vendor NPC
    Currencies.json    currency name -> id

These are the highest-authority facts for the Forever resolver (recipe presence,
learned state, trainer learn skill, vendor prices).

Exit codes follow pipeline.py: 0 ok, 1 usage/config, 2 the report has no recognised section.
"""
import argparse
import re
import sys
from dataclasses import dataclass, field
from datetime import date
from pathlib import Path

from buckets import PROFESSIONS, add_bucket_argument, get_bucket
from forever_resolve import IngameFacts
from pipeline_io import InputFileError, atomic_write_json, load_json
from wiki import normalize

REPO_ROOT = Path(__file__).resolve().parent.parent

# The probe joins fields with " | "; an empty last cell leaves a bare trailing "|", so the
# separator may end the line instead of being followed by a space.
_SEP = re.compile(r" \|(?: |$)")
_SECTION = re.compile(r"^== (.+?) ==\s*$")
_KV = re.compile(r"(\w+)=(.*?)(?=\s+\w+=|$)")
_BUILD = re.compile(r"^build (\S+) (\d+)\b")
_DATE = re.compile(r"^LPProbe report (\d{4}-\d{2}-\d{2})")
_SKILL_REQ = re.compile(r"^(.+) (\d+) (true|false|nil)$")
_NPC_MERCHANT = re.compile(r"^npc (.*?) guid \S+")
_CURRENCY = re.compile(r"^currency (.*) qty (\S+) id (\S+)\s*$")
_ROW = re.compile(r"^\d+ \| ")

# Sections whose presence makes a report worth importing.
_KNOWN = {"profession window", "merchant", "trainer", "currencies"}


@dataclass
class ProbeReport:
    build: "str | None" = None
    captured: "str | None" = None
    profession: "dict | None" = None
    recipes: dict = field(default_factory=dict)
    trainer: list = field(default_factory=list)
    merchants: dict = field(default_factory=dict)
    currencies: dict = field(default_factory=dict)
    sections: set = field(default_factory=set)
    # Why the profession window's recipe list cannot be trusted (None = complete).
    recipe_error: "str | None" = None

    @property
    def recognised(self) -> bool:
        return bool(self.sections & _KNOWN)


def _val(s):
    """A probe value: 'nil' -> None, digits -> int, anything else verbatim."""
    s = s.strip()
    if s == "nil":
        return None
    if re.fullmatch(r"-?\d+", s):
        return int(s)
    return s


def _int_or_none(s):
    v = _val(s)
    return v if isinstance(v, int) else None


def _parse_kv(text: str) -> dict:
    # Only professionName/expansionName hold spaces; the lookahead ends a value at the next key=.
    return {k: _val(v) for k, v in _KV.findall(text)}


def _profession(base: "dict | None", child: "dict | None") -> "dict | None":
    # A real child (professionID != 0) is the active expansion skill; the skill line is
    # its parent's. Otherwise the base line describes the profession itself.
    if child and child.get("professionID"):
        line, skill_line = child, child.get("parentProfessionID") or child["professionID"]
    elif base and base.get("professionID"):
        line, skill_line = base, base["professionID"]
    else:
        return None
    return {
        "skillLine": skill_line,
        "skillLevel": line.get("skillLevel"),
        "maxSkillLevel": line.get("maxSkillLevel"),
        "skillModifier": line.get("skillModifier"),
        "base": base,
        "child": child,
    }


def _recipe(fields: list) -> "tuple[str, dict] | None":
    if len(fields) < 4 or fields[2] not in ("true", "false"):
        return None
    return fields[0].strip(), {
        "name": fields[1],
        "learned": fields[2] == "true",
        "difficulty": fields[3],
        # Cell 11 is the source text of unlearned recipes; it may itself contain " | ".
        "sourceText": " | ".join(fields[11:]).strip() if len(fields) > 11 else "",
    }


def _trainer(fields: list) -> "dict | None":
    # index | name | type | subText | reqLevel | skill req | cost | link
    if len(fields) < 7:
        return None
    m = _SKILL_REQ.match(fields[5].strip())
    if not m or m.group(1) == "nil":
        return None  # no skill requirement (e.g. the rank-up spell): nothing to learn from
    # nil cost stays None: 0 would claim the recipe is free.
    return {"name": fields[1], "skillName": m.group(1), "skill": int(m.group(2)),
            "cost": _int_or_none(fields[6])}


def _merchant_item(fields: list) -> "tuple[str, dict] | None":
    # index | itemID | name | price | stack | available | extendedCost | currencyID | cost items
    if len(fields) < 7 or not fields[1].strip().isdigit():
        return None
    return fields[1].strip(), {
        "name": _val(fields[2]),  # the probe prints nil for an unreadable item
        "price": _int_or_none(fields[3]),
        "stack": _int_or_none(fields[4]),
        "extendedCost": fields[6].strip() == "true",
        "costs": " | ".join(fields[8:]).strip() if len(fields) > 8 else "",
    }


def parse_report(text: str) -> ProbeReport:
    r = ProbeReport()
    section = None
    base = child = None
    npc = None
    declared = None   # the probe's own "recipes all=N" count
    window_errors: list = []
    for raw in text.splitlines():
        line = raw.rstrip()
        m = _SECTION.match(line)
        if m:
            section = m.group(1)
            r.sections.add(section)
            continue
        if section is None:
            d = _DATE.match(line)
            if d:
                r.captured = d.group(1)
        b = _BUILD.match(line)
        if b and r.build is None:
            # "1.60.1 71037" -> the bucket's "1.60.1.71037" spelling.
            r.build = f"{b.group(1)}.{b.group(2)}"
        if line.startswith("SECTION ERROR"):
            if section == "profession window":
                window_errors.append("SECTION ERROR")
            continue
        if section == "profession window":
            if line.startswith("base:"):
                base = _parse_kv(line[5:])
            elif line.startswith("child:"):
                child = _parse_kv(line[6:])
            elif line.startswith("CAPPED at"):
                window_errors.append("list truncated (CAPPED)")
            elif line.startswith("recipes all="):
                m2 = re.match(r"recipes all=(\d+)", line)
                declared = int(m2.group(1)) if m2 else None
            elif _ROW.match(line):
                rec = _recipe(_SEP.split(line))
                if rec:
                    r.recipes[rec[0]] = rec[1]
        elif section == "trainer":
            if _ROW.match(line):
                t = _trainer(_SEP.split(line))
                if t:
                    r.trainer.append(t)
        elif section == "merchant":
            n = _NPC_MERCHANT.match(line)
            if n:
                npc = n.group(1)
                r.merchants.setdefault(npc, {"items": {}})
            elif npc is not None and _ROW.match(line):
                it = _merchant_item(_SEP.split(line))
                if it:
                    r.merchants[npc]["items"][it[0]] = it[1]
        elif section == "currencies":
            c = _CURRENCY.match(line)
            if c:
                r.currencies[c.group(1)] = {"id": _int_or_none(c.group(3))}
    r.profession = _profession(base, child)
    if "profession window" in r.sections:
        # R8 excludes every DB2 recipe absent from a capture, so a partial list is worse than none.
        if window_errors:
            r.recipe_error = window_errors[0]
        elif declared is not None and declared != len(r.recipes):
            r.recipe_error = f"parsed {len(r.recipes)} recipes but the probe reported all={declared}"
    return r


def _load(path: Path, default):
    return load_json(path) if path.exists() else default


def merge_into(sources_dir: Path, bucket, report: ProbeReport) -> "list[Path]":
    """Write the report's captures under <sources_dir>/<bucket.folder>/ingame/."""
    ingame = Path(sources_dir) / bucket.folder / "ingame"
    ingame.mkdir(parents=True, exist_ok=True)
    today = report.captured or date.today().isoformat()
    written: list[Path] = []
    by_line = {p.skill_line: p for p in PROFESSIONS.values() if p.folder in bucket.professions}
    by_name = {p.name.lower(): p for p in by_line.values()}

    def capture(prof):
        path = ingame / f"{prof.folder}.json"
        cap = _load(path, {"build": None, "profession": None, "recipes": {},
                           "trainer": {}, "recipesCaptured": None, "trainerCaptured": None})
        if path not in written:
            written.append(path)
        # Older files had one "captured" stamp; keep the keys uniform.
        cap.setdefault("recipesCaptured", None)
        cap.setdefault("trainerCaptured", None)
        return path, cap

    pending: dict = {}
    if report.recipe_error:
        print(f"error: recipe capture refused: {report.recipe_error}", file=sys.stderr)
    elif report.recipes:
        prof = by_line.get((report.profession or {}).get("skillLine"))
        if prof is None:
            # Not fileable: say so rather than silently dropping the owner's capture.
            print("warning: recipe capture skipped: profession not recognised for this bucket",
                  file=sys.stderr)
        else:
            path, cap = capture(prof)
            # A fresh recipe list is the whole truth for the profession: replace, never merge.
            cap["recipes"] = report.recipes
            cap["profession"] = report.profession
            cap["recipesCaptured"] = today
            cap["build"] = report.build or cap.get("build")
            pending[path] = cap
    skipped: set = set()
    for t in report.trainer:
        prof = by_name.get(t["skillName"].lower())
        if prof is None:
            skipped.add(t["skillName"])  # outside this bucket's professions (e.g. Riding)
            continue
        path = ingame / f"{prof.folder}.json"
        cap = pending.get(path)
        if cap is None:
            path, cap = capture(prof)
            pending[path] = cap
        # Keyed by normalized spell name so the resolver finds it from a DB2 name.
        cap["trainer"][normalize(t["name"])] = {"skill": t["skill"], "cost": t["cost"]}
        cap["trainerCaptured"] = today
        # A trainer-only import must not relabel an earlier recipe capture's build.
        cap["build"] = cap.get("build") or report.build
    if skipped:
        print("warning: skipped trainer lines for skills outside this bucket: "
              + ", ".join(sorted(skipped)), file=sys.stderr)
    for path, cap in pending.items():
        atomic_write_json(path, cap)

    if report.merchants:
        path = ingame / "Merchants.json"
        merchants = _load(path, {})
        for npc, data in report.merchants.items():
            entry = merchants.setdefault(npc, {"captured": today, "items": {}})
            entry["captured"] = today
            entry["items"].update(data["items"])
        atomic_write_json(path, merchants)
        written.append(path)
    if report.currencies:
        path = ingame / "Currencies.json"
        cur = _load(path, {})
        cur.update(report.currencies)
        atomic_write_json(path, cur)
        written.append(path)
    return written


def ingame_facts(capture: "dict | None", spell_id: str, spell_name: str) -> "IngameFacts | None":
    """The capture's facts for one recipe; None when the profession has no capture."""
    if not capture:
        return None
    recipes = capture.get("recipes") or {}
    # An empty recipe list means "not captured", not "nothing exists" (R8 would exclude all).
    present = (spell_id in recipes) if recipes else None
    entry = (capture.get("trainer") or {}).get(normalize(spell_name))
    if entry is None:
        return IngameFacts(present=present, trainer_skill=None)
    return IngameFacts(present=present, trainer_skill=entry["skill"],
                       trainer_cost=entry.get("cost"))


def main(argv: "list[str] | None" = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    add_bucket_argument(ap)
    ap.add_argument("--input", type=Path, required=True, help="the pasted probe report")
    ap.add_argument("--sources-dir", type=Path, default=REPO_ROOT / "Data" / "Sources")
    args = ap.parse_args(argv)
    bucket = get_bucket(args.bucket)
    try:
        text = args.input.read_text(encoding="utf-8", errors="replace")
        report = parse_report(text)
        if not report.recognised:
            print(f"error: {args.input}: no recognised section "
                  f"(expected one of: {', '.join(sorted(_KNOWN))})", file=sys.stderr)
            return 2
        for p in merge_into(args.sources_dir, bucket, report):
            print(f"wrote {p}")
        if report.recipe_error:
            return 2  # the rest of the report was imported; the recipe list was not
    except (OSError, InputFileError) as e:
        print(f"error: {e}", file=sys.stderr)
        return 2
    return 0


if __name__ == "__main__":
    sys.exit(main())
