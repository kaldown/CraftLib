"""Coverage gate (plan ruling R4) and the review report of a review_policy "exclude" bucket.

A bucket that excludes the recipes it cannot establish (Forever) instead of failing on
them must show what it left out, or "shipped" silently means "whatever was easy". The
generator calls this module once per profession:

  coverage()          shipped vs in-game recipes and the largest skill gap;
  gate_failures()     why the profession fails the registry's coverage gate, if it does;
  profession_data()   the facts behind one profession's review file;
  write_profession()  writes <sources>/<Folder>/review/<Prof>.json (sorted, deterministic);
  render()            rebuilds <sources>/<Folder>/REVIEW.md from every review file.

Both files are tracked: a rerun on unchanged sources must produce no diff, so nothing
here depends on time, dict order or the order recipes were read in.
"""
import json
import re
from collections import Counter
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path

from forever_resolve import NO_WIKI_ROW
from pipeline_io import atomic_write_text, load_json

# Reasons for recipes that do not count as "in game" (R4): the game lacks them, or they
# give no skill-up, so leaving them out costs a player nothing. The wordings are
# forever_resolve's (NOT_IN_GAME, NO_SKILL_UP); every other reason counts as in game.
NOT_IN_GAME_PREFIXES = ("not in game:", "no skill-up:")

_TAKEN = re.compile(rf"^{re.escape(NO_WIKI_ROW)}: row .* taken by spell \d+$")


@dataclass(frozen=True)
class Coverage:
    shipped: int
    in_game: int
    share: float                       # shipped / in_game (0.0 when nothing is in game)
    known_source: int                  # shipped recipes whose source is not UNKNOWN
    max_gap: int                       # longest run of uncovered skill points in 1..cap-1
    gap: "tuple[int, int] | None"      # that run (first, last), None when max_gap is 0


def counts_in_game(reason: str) -> bool:
    return not reason.startswith(NOT_IN_GAME_PREFIXES)


def coverage(shipped: "list[dict]", excluded: "list[tuple[str, str, str]]",
             cap: int) -> Coverage:
    """R4 numbers for one profession.

    shipped: the generator's recipe dicts (skillRequired, skillRange.gray, source.type).
    excluded: (spell id, name, reason) of every recipe the generator left out.
    A point p in 1..cap-1 is covered when a shipped recipe has skillRequired <= p < gray:
    a player at p can learn it and still gets skill-ups from it.
    """
    in_game = len(shipped) + sum(1 for _sid, _name, reason in excluded if counts_in_game(reason))
    share = len(shipped) / in_game if in_game else 0.0
    known = sum(1 for r in shipped if r["source"]["type"] != "UNKNOWN")
    covered = [False] * cap          # index p for p in 1..cap-1; index 0 unused
    for r in shipped:
        # A recipe learned above the cap (the wiki lists 315/320, kept per R10) covers nothing.
        for p in range(max(1, r["skillRequired"]), min(cap, r["skillRange"]["gray"])):
            covered[p] = True
    best, best_run, start = 0, None, None
    for p in range(1, cap):
        if covered[p]:
            start = None
            continue
        start = p if start is None else start
        if p - start + 1 > best:     # strictly longer: a tie keeps the first (lowest) run
            best, best_run = p - start + 1, (start, p)
    return Coverage(len(shipped), in_game, share, known, best, best_run)


def gate_failures(cov: Coverage, bucket) -> "list[str]":
    """Why cov fails the bucket's coverage gate; [] when it passes or there is no gate."""
    if bucket.coverage_floor is None:
        return []
    failures = []
    # WHY Fraction: 9 of 10 must pass a 0.90 floor; float division and a float floor
    # can land a hair on either side of each other.
    if not cov.in_game or Fraction(cov.shipped, cov.in_game) < Fraction(str(bucket.coverage_floor)):
        failures.append(f"share {cov.share:.3f} ({cov.shipped} of {cov.in_game} in game) "
                        f"below the floor {bucket.coverage_floor:.2f}")
    if cov.max_gap > bucket.coverage_max_gap:
        first, last = cov.gap
        failures.append(f"largest gap {cov.max_gap} skill points ({first}-{last}) above "
                        f"the maximum {bucket.coverage_max_gap}")
    return failures


def reason_group(reason: str) -> str:
    """A reason's prefix (text before ':'), numbers folded, for the summary and REVIEW.md.

    One rule for the enrich step's summary and this report, so their counts agree.
    """
    if _TAKEN.match(reason):
        # Counted apart: the row exists but belongs to another spell, which an alias or a
        # capture can settle; a missing row needs the wiki itself.
        return f"{NO_WIKI_ROW} (taken by another spell)"
    # WHY \b: fold counts and ids ("teaching item 6004"), not digits inside names ("DB2").
    return re.sub(r"\b\d+\b", "N", reason.split(":", 1)[0])


# --- review/<Prof>.json --------------------------------------------------------------

def _ratio(n: int, d: int) -> float:
    # Rounded so the tracked JSON does not carry 17-digit floats.
    return round(n / d, 4) if d else 0.0


def profession_data(cov: Coverage, held_back: bool, shipped: "list[dict]",
                    excluded: "list[tuple[str, str, str]]", bucket) -> dict:
    """The review file's content for one profession (write_profession sorts it)."""
    gated = bucket.coverage_floor is not None
    return {
        "coverage": {
            "cap": max(bucket.milestones),
            "shipped": cov.shipped,
            "inGame": cov.in_game,
            "share": _ratio(cov.shipped, cov.in_game),
            "knownSource": cov.known_source,
            "knownSourceShare": _ratio(cov.known_source, cov.in_game),
            "maxGap": cov.max_gap,
            "gap": list(cov.gap) if cov.gap else None,
            "floor": bucket.coverage_floor,
            "maxGapAllowed": bucket.coverage_max_gap,
            # None (not False) when the bucket has no gate: nothing was judged.
            "passes": (not gate_failures(cov, bucket)) if gated else None,
        },
        "heldBack": held_back,
        "excluded": [[int(sid), name, reason] for sid, name, reason in excluded],
        "unknownSource": [[r["id"], r["name"]] for r in shipped
                          if r["source"]["type"] == "UNKNOWN"],
        "orangeFrom": dict(Counter(r.get("difficultyOrigin") or "?" for r in shipped)),
        "sourceTypes": dict(Counter(r["source"]["type"] for r in shipped)),
    }


def write_profession(review_dir: Path, folder: str, data: dict) -> Path:
    """Write review_dir/<folder>.json, sorted so equal data always gives equal bytes."""
    data = dict(data)
    data["excluded"] = sorted(([int(e[0]), e[1], e[2]] for e in data["excluded"]),
                              key=lambda e: (e[0], e[2]))
    data["unknownSource"] = sorted(([int(e[0]), e[1]] for e in data["unknownSource"]),
                                   key=lambda e: e[0])
    review_dir = Path(review_dir)
    review_dir.mkdir(parents=True, exist_ok=True)
    path = review_dir / f"{folder}.json"
    atomic_write_text(path, json.dumps(data, indent=2, sort_keys=True) + "\n")
    return path


def load_profession(path: Path) -> dict:
    data = load_json(path)
    keys = ("coverage", "heldBack", "excluded", "unknownSource", "orangeFrom", "sourceTypes")
    if not isinstance(data, dict) or any(k not in data for k in keys):
        raise ValueError(f"{path}: not a review file (expected keys {', '.join(keys)})")
    return data


# --- REVIEW.md -----------------------------------------------------------------------

def _pct(x: float) -> str:
    return f"{x * 100:.1f}%"


def _gap(cov: dict) -> str:
    return f"{cov['maxGap']} ({cov['gap'][0]}-{cov['gap'][1]})" if cov["gap"] else "0"


def _counts(counter: dict) -> str:
    return ", ".join(f"{k} {counter[k]}" for k in sorted(counter)) or "none"


def render(review_dir: Path, bucket) -> str:
    """REVIEW.md for the bucket, from every review/<Prof>.json present (registry order)."""
    review_dir = Path(review_dir)
    files = {p.stem: p for p in review_dir.glob("*.json")} if review_dir.is_dir() else {}
    stray = sorted(set(files) - set(bucket.professions))
    if stray:
        # A leftover file would describe data that is no longer generated; fail rather
        # than leave it in the tracked tree unreported.
        raise ValueError(f"{review_dir}: review files for professions not in bucket "
                         f"'{bucket.key}': {', '.join(stray)}; delete them")
    profs = [(p, load_profession(files[p])) for p in bucket.professions if p in files]
    missing = [p for p in bucket.professions if p not in files]

    gate = (f"share >= {bucket.coverage_floor:.2f} and largest gap <= {bucket.coverage_max_gap}"
            if bucket.coverage_floor is not None else "none")
    cap = max(bucket.milestones)
    out = [
        f"# {bucket.folder} recipe review",
        "",
        f"Generated by `scripts/generate_recipes.py --bucket {bucket.key}` from the files in "
        f"`review/`; do not edit by hand. Regenerate offline from the tracked sources with "
        f"`make {bucket.key}-generate OUT=<dir>` (it rewrites this file and `review/`), or run "
        f"the whole pipeline with `make {bucket.key}-all`.",
        "",
        "Shipped counts every recipe written to the bucket, UNKNOWN sources included. In game "
        "counts shipped plus excluded recipes, except those excluded as `not in game:` or "
        "`no skill-up:`. Share is shipped / in game; known-source share is shipped with a "
        f"known source / in game. Largest gap is the longest run of skill points in 1-{cap - 1} "
        "where no shipped recipe has skillRequired <= p < gray. "
        f"Coverage gate: {gate}; a held-back profession is not written.",
        "",
        "## Coverage",
        "",
        "| Profession | Shipped | In game | Share | Known-source share | Largest gap | Held back |",
        "|---|---|---|---|---|---|---|",
    ]
    for prof, data in profs:
        c = data["coverage"]
        out.append(f"| {prof} | {c['shipped']} | {c['inGame']} | {_pct(c['share'])} | "
                   f"{_pct(c['knownSourceShare'])} | {_gap(c)} | "
                   f"{'yes' if data['heldBack'] else 'no'} |")
    if missing:
        out += ["", f"Not generated yet: {', '.join(missing)}."]

    for prof, data in profs:
        out += ["", f"## {prof}", "",
                f"Orange from: {_counts(data['orangeFrom'])}. "
                f"Sources: {_counts(data['sourceTypes'])}.",
                "", f"Excluded: {len(data['excluded'])}."]
        groups: dict[str, list] = {}
        for sid, name, reason in data["excluded"]:
            groups.setdefault(reason_group(reason), []).append((sid, name, reason))
        # Largest group first: that is where alignment work pays most.
        for group, entries in sorted(groups.items(), key=lambda kv: (-len(kv[1]), kv[0])):
            out += ["", f"### {group} ({len(entries)})", ""]
            out += [f"- {sid} {name}: {reason}" for sid, name, reason in entries]
        unknown = data["unknownSource"]
        out += ["", f"### UNKNOWN source ({len(unknown)})", ""]
        out += [f"- {sid} {name}" for sid, name in unknown] or ["none"]
    out.append("")
    return "\n".join(out)
