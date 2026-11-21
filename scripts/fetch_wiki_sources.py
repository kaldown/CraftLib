#!/usr/bin/env python3
"""Resolve the source and learn skill of every recipe of one wiki-enriched profession.

The enrich step of a bucket whose registry entry says enrich="wiki" (Forever). Per recipe
it gathers the facts and lets forever_resolve decide (plan rulings R1, R2, R5, R8):
  * DB2, the bucket's build: yellow/gray of the profession's SkillLineAbility row, the
    created item, the chosen teaching item (db2.choose_teaching_item, so scroll copies and
    placeholders never count) and that item's RequiredSkillRank, BuyPrice and faction;
  * the profession's Warcraft Wiki table, cached in <sources>/<Folder>/.wiki_cache/;
  * <sources>/<Folder>/wiki_aliases.json (optional): spell id -> the wiki row to use;
  * <sources>/<Folder>/ingame/<Prof>.json (optional): the owner's in-game capture;
  * <sources>/<cross bucket folder>/<Prof>.json: the cross bucket's Wowhead orange, used
    only when its yellow AND gray equal this build's (the resolver relies on this check).

Writes back into <sources>/<Folder>/<Prof>.json, atomically:
  resolved -> "source" and "difficulty" from the resolver;
  review   -> source {"type": "UNRESOLVED", "certainty": "REVIEW", "needsReview": true,
              "reviewReason": <reason>} (+ "itemId" of the teaching item), no "difficulty";
  MANUAL   -> untouched: hand-verified state wins over any automatic value.
Resolver notes go to "forever": {"notes": [...]} and are rewritten on every run. No PENDING
source survives this step, so the assert-no-pending gate after it passes by construction.

Usage:
    python scripts/fetch_wiki_sources.py --bucket forever --profession Tailoring [--offline]

Exit codes follow pipeline.py: 0 ok; 1 usage/config (the bucket is not wiki-enriched, an
unknown profession, a missing DB2 build directory, sources extracted from another build);
2 input data (a missing or malformed sources, alias, capture or cross-bucket file, a failed
wiki fetch or --offline without a cached page, a DB2 column-contract or canary failure).
"""
import argparse
import re
import sys
from collections import Counter
from dataclasses import dataclass, field
from pathlib import Path

import extract_db2_sources as extract
from buckets import ENRICH_SCRIPTS, UnknownProfessionError, add_bucket_argument, get_bucket
from db2 import CanaryError, ColumnContractError
from forever_resolve import RecipeFacts, Resolution, build_claims, match_wiki, resolve
from import_probe import ingame_facts
from pipeline_io import atomic_write_json, load_json
from wiki import WikiError, fetch_wikitext, index_rows, parse_rows

REPO_ROOT = Path(__file__).resolve().parent.parent

# Summary order of orangeFrom: the R1 precedence, strongest first.
_ORANGE_ORDER = ("INGAME", "ITEM", "CROSS", "WIKI")


# --- optional and cross-bucket inputs -----------------------------------------------

def load_aliases(path: Path) -> dict:
    """spell id -> {"key": str, "skill": int, ...}; {} when the file does not exist.

    Shape: {"_doc": str, "aliases": {spellId: {"key": str, "skill": int}}}; extra keys
    (a per-alias "_doc" reason) are allowed.
    """
    if not path.exists():
        return {}
    data = load_json(path)
    aliases = data.get("aliases") if isinstance(data, dict) else None
    if not isinstance(aliases, dict):
        raise ValueError(f"{path}: expected an object with an 'aliases' object")
    for sid, alias in aliases.items():
        # WHY strict: match_wiki reads both fields unchecked, and a JSON true is an int in
        # Python, so it would silently read as skill 1.
        ok = (isinstance(alias, dict) and isinstance(alias.get("key"), str)
              and alias["key"].strip() and type(alias.get("skill")) is int)
        if not ok:
            raise ValueError(f"{path}: alias for spell {sid} needs a 'key' string and a "
                             f"'skill' integer")
    return aliases


def load_capture(path: Path, version: str) -> "dict | None":
    """The profession's in-game capture (import_probe.py), or None when there is none."""
    if not path.exists():
        return None
    cap = load_json(path)
    ok = (isinstance(cap, dict) and isinstance(cap.get("recipes") or {}, dict)
          and isinstance(cap.get("trainer") or {}, dict)
          and all(isinstance(e, dict) and type(e.get("skill")) is int
                  for e in (cap.get("trainer") or {}).values()))
    if not ok:
        raise ValueError(f"{path}: not an in-game capture (expected 'recipes' and 'trainer' "
                         f"objects as import_probe.py writes them)")
    build = cap.get("build")
    if build and build != version:
        # Not fatal: the owner's capture may predate a client patch, and R8 decides on it
        # anyway; the warning says why a recipe may be "not in game" unexpectedly.
        print(f"WARNING: {path} was captured on build {build}, not {version}", file=sys.stderr)
    return cap


def load_cross(sources_dir: Path, bucket, profession) -> dict:
    """spell id -> recipe of the cross bucket's twin file; {} when there is no twin."""
    if bucket.cross_orange_bucket is None:
        return {}
    cross = get_bucket(bucket.cross_orange_bucket)
    if profession.folder not in cross.professions:
        return {}  # the cross bucket never had this profession: nothing to borrow
    path = Path(sources_dir) / cross.folder / f"{profession.folder}.json"
    if not path.is_file():
        # WHY fail, not skip: every CROSS orange would silently fall to the weaker wiki skill.
        raise FileNotFoundError(f"cross bucket '{cross.key}' sources not found: {path}")
    data = load_json(path)
    recipes = data.get("recipes") if isinstance(data, dict) else None
    if not isinstance(recipes, dict):
        raise ValueError(f"{path}: expected an object with a 'recipes' object")
    return recipes


def cross_orange(cross_recipe: "dict | None", yellow: int, gray: int) -> "int | None":
    """The cross bucket's orange for the same spell, or None when it may not be borrowed.

    Plan R1: only a Wowhead-verified orange, and only when this build's yellow AND gray
    equal the cross bucket's, i.e. the recipe is unchanged. forever_resolve.resolve does
    not repeat this check; it trusts the caller.
    """
    difficulty = (cross_recipe or {}).get("difficulty") or {}
    if difficulty.get("certainty") != "WOWHEAD":
        return None
    if difficulty.get("yellow") != yellow or difficulty.get("gray") != gray:
        return None
    orange = difficulty.get("orange")
    # 0 (ADR-005 "learned at 0") and values above yellow are passed on: the resolver
    # rejects those itself and says so in a note.
    return orange if type(orange) is int else None


# --- DB2 facts ----------------------------------------------------------------------

def skill_ranks(indexes: dict, profession, spells) -> "dict[str, tuple[int, int]]":
    """spell id -> (yellow, gray) from the profession's SkillLineAbility rows, for spells."""
    out: dict[str, tuple[int, int]] = {}
    for row in indexes["skill_line_abilities"]:
        spell = row["Spell"]
        if row["SkillLine"] != str(profession.skill_line) or spell not in spells:
            continue
        try:
            ranks = (int(row["TrivialSkillLineRankLow"]), int(row["TrivialSkillLineRankHigh"]))
        except ValueError:
            raise ValueError(f"spell {spell}: {profession.name} SkillLineAbility row has no "
                             f"numeric yellow/gray") from None
        prev = out.setdefault(spell, ranks)
        if prev != ranks:
            # Measured none on 1.60.1.71037 (2 duplicate rows, equal ranks); two different
            # thresholds for one recipe cannot both be true, so neither is picked.
            raise ValueError(f"spell {spell}: {profession.name} SkillLineAbility rows disagree "
                             f"on yellow/gray: {prev} vs {ranks}")
    return out


def _item_int(item_id: str, row: dict, column: str) -> int:
    try:
        return int(row[column])
    except (KeyError, ValueError):
        # Fail loud: a guessed 0 would read as "no rank", "free" or "no faction".
        raise ValueError(f"teaching item {item_id}: {column} missing or not a number "
                         f"({row.get(column)!r})") from None


def recipe_facts(spell_id: str, name: str, ranks: "tuple[int, int]",
                 indexes: dict) -> RecipeFacts:
    yellow, gray = ranks
    crafted = indexes["crafted_items"].get(spell_id)
    # None for enchants (no created item) and for an unnamed item: the resolver then
    # matches by the spell name.
    item_name = indexes["item_names"].get(crafted) if crafted else None
    # extract's choice, so enrich, extract and generate agree on the one teaching item.
    item = indexes["recipe_items"].get(spell_id)
    rsr = buy_price = min_faction = 0
    faction_name = rep_level = None
    if item is not None:
        row = indexes["item_details"][item]
        rsr = _item_int(item, row, "RequiredSkillRank")
        buy_price = _item_int(item, row, "BuyPrice")
        min_faction = _item_int(item, row, "MinFactionID")
        if min_faction > 0:
            # WHY None instead of extract's error: the resolver turns a faction without a
            # name or level into a review naming it, instead of stopping the profession.
            faction_name = indexes["faction_names"].get(str(min_faction))
            rep_level = extract.REP_LEVELS.get(_item_int(item, row, "MinReputation"))
    return RecipeFacts(spell_id=spell_id, name=name, item_name=item_name, yellow=yellow,
                       gray=gray, teaching_item=item, rsr=rsr, buy_price=buy_price,
                       min_faction=min_faction, faction_name=faction_name,
                       rep_level=rep_level)


# --- writing one recipe -------------------------------------------------------------

def review_source(reason: str, facts: "RecipeFacts | None") -> dict:
    """Ruling 2: a review replaces the DB2 source, so no PENDING survives this step."""
    source = {"type": "UNRESOLVED", "certainty": "REVIEW", "needsReview": True,
              "reviewReason": reason}
    if facts is not None and facts.teaching_item is not None:
        # Kept for REVIEW.md and for a human aligning the recipe: the item is a DB2 fact.
        source["itemId"] = int(facts.teaching_item)
    return source


def apply_resolution(recipe: dict, res: Resolution, facts: "RecipeFacts | None") -> None:
    if res.review is None:
        recipe["source"] = res.source
        recipe["difficulty"] = res.difficulty
    else:
        recipe["source"] = review_source(res.review, facts)
        # WHY drop it: a review has no trustworthy thresholds, and one left from an earlier
        # run (or from Wowhead) would read as if it had.
        recipe.pop("difficulty", None)
    forever = dict(recipe.get("forever") or {})
    # Rewritten every run: a note about an input that has changed since must not linger.
    if res.notes:
        forever["notes"] = list(res.notes)
    else:
        forever.pop("notes", None)
    if forever:
        recipe["forever"] = forever
    else:
        recipe.pop("forever", None)


# --- one profession -----------------------------------------------------------------

@dataclass
class Summary:
    recipes: int = 0
    manual: int = 0
    orange_from: Counter = field(default_factory=Counter)
    source_types: Counter = field(default_factory=Counter)
    reviews: Counter = field(default_factory=Counter)


def review_group(reason: str) -> str:
    """A review reason's prefix (text before ':'), numbers folded, for the summary counts."""
    return re.sub(r"\d+", "N", reason.split(":", 1)[0])


def enrich(doc: dict, profession, indexes: dict, rows, aliases: dict,
           capture: "dict | None", cross: dict, version: str) -> Summary:
    """Resolve every non-MANUAL recipe of doc["recipes"] in place."""
    recipes = doc["recipes"]
    ranks = skill_ranks(indexes, profession, set(recipes))
    facts: dict[str, RecipeFacts] = {}
    for sid, recipe in recipes.items():
        if sid in ranks:
            name = indexes["spell_names"].get(sid) or recipe.get("name") or sid
            facts[sid] = recipe_facts(sid, name, ranks[sid], indexes)
    index = index_rows(rows)
    ingame = {sid: ingame_facts(capture, sid, f.name) for sid, f in facts.items()}
    # Over every recipe of the profession, MANUAL ones included: a row a hand-verified
    # recipe also reaches is still shared, and sharing is what makes a match ambiguous.
    # The capture goes in too, so a spell absent in game releases the rows it reaches.
    claims = build_claims(list(facts.values()), index, ingame=ingame)

    summary = Summary(recipes=len(recipes))
    for sid, recipe in recipes.items():
        if (recipe.get("source") or {}).get("certainty") == "MANUAL":
            summary.manual += 1
            continue
        f = facts.get(sid)
        if f is None:
            # An orphan extract kept from an earlier build: no DB2 facts to resolve from,
            # and its old (possibly PENDING) source must not survive.
            res = Resolution(None, None, f"not in DB2: no {profession.name} SkillLineAbility "
                                         f"row for spell {sid} in build {version}")
        else:
            match = match_wiki(f, index, aliases, claims)
            res = resolve(f, match, ingame[sid], cross_orange(cross.get(sid), f.yellow, f.gray))
        apply_resolution(recipe, res, f)
        if res.review is None:
            summary.orange_from[res.difficulty["orangeFrom"]] += 1
            summary.source_types[res.source["type"]] += 1
        else:
            summary.reviews[review_group(res.review)] += 1
    return summary


def print_summary(path: Path, s: Summary) -> None:
    out = sys.stderr
    print(f"\nWrote {path}", file=out)
    print(f"  Recipes: {s.recipes}", file=out)
    print(f"  Resolved: {sum(s.source_types.values())}", file=out)
    for origin in _ORANGE_ORDER:
        print(f"    orangeFrom {origin}: {s.orange_from.get(origin, 0)}", file=out)
    for kind in sorted(s.source_types):
        print(f"    source {kind}: {s.source_types[kind]}", file=out)
    print(f"  UNKNOWN source: {s.source_types.get('UNKNOWN', 0)}", file=out)
    print(f"  Reviews: {sum(s.reviews.values())}", file=out)
    for reason, n in sorted(s.reviews.items(), key=lambda kv: (-kv[1], kv[0])):
        print(f"    {reason}: {n}", file=out)
    print(f"  MANUAL (kept): {s.manual}", file=out)


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Resolve recipe sources and learn skills from DB2, the wiki and in-game captures")
    add_bucket_argument(parser)
    parser.add_argument("--profession", required=True, help="Profession name, key or folder")
    parser.add_argument("--version", help="DB2 build version (default: the bucket's pinned build)")
    parser.add_argument("--data-dir", type=Path,
                        default=REPO_ROOT / "vendor" / "db2-parser" / "artifacts",
                        help="DB2 artifacts directory")
    parser.add_argument("--sources-dir", type=Path, default=REPO_ROOT / "Data" / "Sources",
                        help="Base sources directory (bucket folder added automatically)")
    parser.add_argument("--offline", action="store_true",
                        help="never fetch: use the cached wiki page, or fail when there is none")
    return parser


def main(argv: "list[str] | None" = None) -> int:
    args = build_parser().parse_args(argv)
    bucket = get_bucket(args.bucket)
    if bucket.enrich != "wiki":
        print(f"ERROR: bucket '{bucket.key}' is enriched by '{bucket.enrich}', not the wiki; "
              f"use {ENRICH_SCRIPTS[bucket.enrich]}.py", file=sys.stderr)
        return 1
    try:
        profession = bucket.profession(args.profession)
    except UnknownProfessionError as e:
        print(f"ERROR: {e}", file=sys.stderr)
        return 1

    version = args.version or bucket.build
    data_dir = args.data_dir / version
    if not data_dir.is_dir():
        print(f"ERROR: bucket '{bucket.key}': data directory not found: {data_dir}",
              file=sys.stderr)
        return 1
    folder = args.sources_dir / bucket.folder
    sources_file = folder / f"{profession.folder}.json"
    if not sources_file.is_file():
        print(f"ERROR: bucket '{bucket.key}': sources file not found: {sources_file}",
              file=sys.stderr)
        print("Run extract_db2_sources.py first.", file=sys.stderr)
        return 2

    title = bucket.wiki_pages[profession.folder]
    try:
        doc = load_json(sources_file)
        if not isinstance(doc, dict) or not isinstance(doc.get("recipes"), dict):
            raise ValueError(f"{sources_file}: expected an object with a 'recipes' object")
        if doc.get("version") != version:
            # The recipe list and the facts must come from one build, or a spell's
            # thresholds and teaching item would describe a different client.
            print(f"ERROR: bucket '{bucket.key}': {sources_file} was extracted from build "
                  f"{doc.get('version')}, not {version}; re-run extract or pass --version",
                  file=sys.stderr)
            return 1
        # Local inputs first, the network last: a bad file must fail before a wiki request.
        aliases = load_aliases(folder / "wiki_aliases.json")
        capture = load_capture(folder / "ingame" / f"{profession.folder}.json", version)
        cross = load_cross(args.sources_dir, bucket, profession)
        indexes = extract.build_indexes(data_dir, bucket)
        rows = parse_rows(fetch_wikitext(title, folder / ".wiki_cache", offline=args.offline))
        summary = enrich(doc, profession, indexes, rows, aliases, capture, cross, version)
    except (ValueError, FileNotFoundError, ColumnContractError, CanaryError, WikiError) as e:
        print(f"ERROR: bucket '{bucket.key}': {e}", file=sys.stderr)
        return 2

    if not rows:
        # Not an error: Mining's page has no recipe table (measured 2026-11-21). Every
        # recipe the in-game trainer does not decide becomes a review, visibly.
        print(f"WARNING: wiki page {title!r} has no recipe table (Item/Skill/Source); "
              f"recipes without an in-game trainer entry become reviews", file=sys.stderr)
    atomic_write_json(sources_file, doc)
    print_summary(sources_file, summary)
    return 0


if __name__ == "__main__":
    sys.exit(main())
