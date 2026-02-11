#!/usr/bin/env python3
"""Fetch recipe data from Wowhead spell pages.

Single-pass: fetches each spell page once, extracts ALL data:
- Difficulty colors (orange/yellow/green/gray)
- Source type resolution (TRAINER/VENDOR/DROP/QUEST/STARTER)
- Trainer reclassification (VENDOR/DROP -> TRAINER if trainable)
- Comprehensive wowhead metadata (reagents, creates, taughtBy NPCs)

Usage:
    python fetch_wowhead_sources.py --profession Engineering
    python fetch_wowhead_sources.py --profession Engineering --dry-run
    python fetch_wowhead_sources.py --profession Engineering --spells 3922 3923
    python fetch_wowhead_sources.py --profession Engineering --force
"""

import argparse
import json
import re
import sys
import time
import urllib.request
import urllib.error
from datetime import date
from pathlib import Path


# Wowhead source type IDs (from g_spells[id].source array)
WOWHEAD_SOURCE_TYPES = {
    1: "CRAFTED",
    2: "DROP",
    3: "PVP",
    4: "QUEST",
    5: "VENDOR",
    6: "TRAINER",
    7: "DISCOVERY",
    10: "STARTER",
    11: "EVENT",
    12: "ACHIEVEMENT",
}


def _fetch_page(url: str) -> str | None:
    """Fetch a web page and return content as string."""
    try:
        req = urllib.request.Request(
            url,
            headers={
                "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36",
            },
        )
        with urllib.request.urlopen(req, timeout=30) as response:
            return response.read().decode("utf-8")
    except (urllib.error.URLError, TimeoutError, OSError) as e:
        print(f"  Error fetching {url}: {e}", file=sys.stderr)
        return None


def _fix_js_object(js_text: str) -> str:
    """Fix JavaScript object notation to be valid JSON.

    Wowhead sometimes uses unquoted keys like: {difficulties:[]}
    This fixes them to: {"difficulties":[]}
    """
    return re.sub(r'(?<=[{,])(\s*)([a-zA-Z_]\w*)(\s*):', r'\1"\2"\3:', js_text)


def _extract_spell_data(content: str, spell_id: int) -> dict | None:
    """Extract the g_spells data blob for a spell from page content.

    Wowhead embeds spell data as:
        $.extend(g_spells[SPELL_ID], {"key":value,...});

    Returns the parsed dict or None if not found.
    """
    # Pattern: $.extend(g_spells[SPELL_ID], {JSON_OBJECT});
    pattern = rf'\$\.extend\(g_spells\[{spell_id}\],\s*(\{{[^;]*?\}})\s*\)'
    match = re.search(pattern, content)
    if match:
        raw = match.group(1)
        for text in [raw, _fix_js_object(raw)]:
            try:
                return json.loads(text)
            except json.JSONDecodeError:
                continue

    # Fallback: inline object assignment
    # g_spells[SPELL_ID] = {JSON_OBJECT};
    pattern2 = rf'g_spells\[{spell_id}\]\s*=\s*(\{{[^;]*?\}})\s*;'
    match2 = re.search(pattern2, content)
    if match2:
        raw = match2.group(1)
        for text in [raw, _fix_js_object(raw)]:
            try:
                return json.loads(text)
            except json.JSONDecodeError:
                continue

    return None


def _extract_taught_by_npcs(content: str) -> list[dict]:
    """Extract NPC trainer data from the taught-by-npc Listview."""
    pattern = r"id:\s*'taught-by-npc'[^]]*?data:\s*(\[.*?\])\s*\}"
    match = re.search(pattern, content, re.DOTALL)
    if not match:
        return []

    try:
        npc_list = json.loads(match.group(1))
    except json.JSONDecodeError:
        return []

    result = []
    for npc in npc_list:
        if not isinstance(npc, dict):
            continue

        npc_id = npc.get("id")
        name = npc.get("name", "")
        react = npc.get("react", [])

        if not npc_id or not name:
            continue

        ally = react[0] if len(react) > 0 else None
        horde = react[1] if len(react) > 1 else None

        if ally and horde:
            faction = "Neutral"
        elif ally:
            faction = "Alliance"
        elif horde:
            faction = "Horde"
        else:
            faction = "Neutral"

        result.append({"npcId": npc_id, "name": name, "faction": faction})

    return result


def fetch_wowhead_spell(spell_id: int, expansion: str = "tbc") -> dict | None:
    """Fetch comprehensive spell data from Wowhead HTML page.

    Returns dict with all available data:
        orange, yellow, green, gray: difficulty thresholds (or None if not found)
        wowhead: {source, trainingCost, learnedAt, numSkillUps, quality,
                  reagents, creates, taughtBy, fetchedAt}

    Returns None on complete failure (page not found / network error).
    """
    url = f"https://www.wowhead.com/{expansion}/spell={spell_id}"
    content = _fetch_page(url)
    if not content:
        return None

    result = {}

    # Extract the g_spells data blob — this is the authoritative source
    spell_data = _extract_spell_data(content, spell_id)

    if spell_data:
        # Difficulty (colors array: [orange, yellow, green, gray])
        colors = spell_data.get("colors")
        if colors and len(colors) == 4:
            result["orange"] = colors[0]
            result["yellow"] = colors[1]
            result["green"] = colors[2]
            result["gray"] = colors[3]

        # Wowhead comprehensive data — only store fields that exist
        wowhead = {}

        if "source" in spell_data:
            wowhead["source"] = spell_data["source"]

        if "trainingcost" in spell_data:
            wowhead["trainingCost"] = spell_data["trainingcost"]

        if "learnedat" in spell_data:
            wowhead["learnedAt"] = spell_data["learnedat"]

        if "nskillup" in spell_data:
            wowhead["numSkillUps"] = spell_data["nskillup"]

        if "quality" in spell_data:
            wowhead["quality"] = spell_data["quality"]

        if "reagents" in spell_data:
            wowhead["reagents"] = spell_data["reagents"]

        if "creates" in spell_data:
            wowhead["creates"] = spell_data["creates"]

        wowhead["fetchedAt"] = date.today().isoformat()
        result["wowhead"] = wowhead

    # No fallback regex — if _extract_spell_data fails, we report failure
    # rather than guessing from unreliable regex matches

    # Extract taught-by NPC data (separate from g_spells blob)
    taught_by = _extract_taught_by_npcs(content)
    if taught_by:
        if "wowhead" not in result:
            result["wowhead"] = {"fetchedAt": date.today().isoformat()}
        result["wowhead"]["taughtBy"] = taught_by

    return result if result else None


def _resolve_source(recipe: dict, wh: dict) -> dict | None:
    """Resolve source type from Wowhead spell page data.

    Policy: if trainable, always classify as TRAINER (cheaper, always available).
    Does NOT reclassify REPUTATION sources (DB2 faction data is authoritative).

    Returns new source dict with WOWHEAD certainty, or None if no change needed.
    """
    existing_source = recipe.get("source", {})
    existing_type = existing_source.get("type", "")

    # Don't reclassify REPUTATION sources — DB2 faction data is authoritative
    if existing_type == "REPUTATION":
        return None

    source_types = wh.get("source", [])

    # Policy: if trainable, always classify as TRAINER
    has_training_cost = "trainingCost" in wh
    has_trainer_source = 6 in source_types

    if has_training_cost or has_trainer_source:
        new_source = {
            "type": "TRAINER",
            "certainty": "WOWHEAD",
        }
        if "trainingCost" in wh:
            new_source["trainingCost"] = wh["trainingCost"]
        return new_source

    # For PENDING sources, resolve from Wowhead source array
    if existing_source.get("certainty") == "PENDING":
        if 5 in source_types:  # VENDOR
            new_source = {
                "type": "VENDOR",
                "certainty": "WOWHEAD",
                "itemId": existing_source.get("itemId"),
                "cost": existing_source["cost"],  # KeyError = upstream bug
            }
            return new_source
        if 2 in source_types:  # DROP
            return {
                "type": "DROP",
                "certainty": "WOWHEAD",
                "itemId": existing_source.get("itemId"),
            }
        if 4 in source_types:  # QUEST
            return {
                "type": "QUEST",
                "certainty": "WOWHEAD",
                "itemId": existing_source.get("itemId"),
            }
        if 10 in source_types:  # STARTER
            return {
                "type": "STARTER",
                "certainty": "WOWHEAD",
            }
        if 7 in source_types:  # DISCOVERY
            return {
                "type": "DISCOVERY",
                "certainty": "WOWHEAD",
            }
        # Unknown source type — flag it
        print(f"  WARNING: PENDING recipe has unrecognized Wowhead sources: {source_types}", file=sys.stderr)
        return {
            "type": "UNKNOWN",
            "certainty": "WOWHEAD",
            "wowheadSources": source_types,
        }

    return None


def _needs_fetch(recipe: dict, force: bool) -> bool:
    """Determine if a recipe needs Wowhead data fetched."""
    if force:
        return True

    difficulty = recipe.get("difficulty", {})
    source = recipe.get("source", {})

    # Need difficulty data
    if difficulty.get("certainty") != "WOWHEAD":
        return True

    # Need source resolution (PENDING)
    if source.get("certainty") == "PENDING":
        return True

    # Need trainer audit (VENDOR/DROP without wowhead source data)
    if source.get("type") in ("VENDOR", "DROP") and not recipe.get("wowhead", {}).get("source"):
        return True

    return False


def process_profession(
    sources_file: Path,
    dry_run: bool,
    specific_spells: list[int] | None,
    expansion: str = "tbc",
    force: bool = False,
) -> int:
    """Single-pass Wowhead data fetch for a profession.

    For each recipe needing data, fetches the spell page and extracts:
    - Difficulty (orange/yellow/green/gray)
    - Source type resolution (TRAINER/VENDOR/DROP/QUEST)
    - Comprehensive wowhead data (reagents, creates, quality, NPCs)
    """
    with open(sources_file, "r", encoding="utf-8") as f:
        data = json.load(f)

    # Find recipes that need fetching
    recipes_to_fetch = []
    for spell_id, recipe in data["recipes"].items():
        if specific_spells and int(spell_id) not in specific_spells:
            continue

        if specific_spells or _needs_fetch(recipe, force):
            recipes_to_fetch.append((spell_id, recipe))

    if not recipes_to_fetch:
        print("All recipes already have complete Wowhead data.", file=sys.stderr)
        return 0

    # Categorize what needs fetching for reporting
    needs_difficulty = sum(
        1 for _, r in recipes_to_fetch
        if r.get("difficulty", {}).get("certainty") != "WOWHEAD"
    )
    needs_source = sum(
        1 for _, r in recipes_to_fetch
        if r.get("source", {}).get("certainty") == "PENDING"
    )
    needs_audit = sum(
        1 for _, r in recipes_to_fetch
        if r.get("source", {}).get("type") in ("VENDOR", "DROP")
        and not r.get("wowhead", {}).get("source")
    )

    print(f"Found {len(recipes_to_fetch)} recipes to fetch:", file=sys.stderr)
    print(f"  Need difficulty:    {needs_difficulty}", file=sys.stderr)
    print(f"  Need source (PENDING): {needs_source}", file=sys.stderr)
    print(f"  Need trainer audit: {needs_audit}", file=sys.stderr)

    if dry_run:
        for spell_id, recipe in recipes_to_fetch[:20]:
            src = recipe.get("source", {})
            diff = recipe.get("difficulty", {})
            status = []
            if diff.get("certainty") != "WOWHEAD":
                status.append("no-difficulty")
            if src.get("certainty") == "PENDING":
                status.append("PENDING")
            if src.get("type") in ("VENDOR", "DROP") and not recipe.get("wowhead", {}).get("source"):
                status.append(f"audit-{src['type']}")
            print(f"  - {recipe['name']} (spell {spell_id}) [{', '.join(status)}]", file=sys.stderr)
        if len(recipes_to_fetch) > 20:
            print(f"  ... and {len(recipes_to_fetch) - 20} more", file=sys.stderr)
        print("\nDry run - no changes made.", file=sys.stderr)
        return 0

    # Process
    print("\nFetching from Wowhead...", file=sys.stderr)
    updated = 0
    reclassified = 0
    no_colors = []
    failed = 0

    for spell_id, recipe in recipes_to_fetch:
        src_type = recipe.get("source", {}).get("type", "?")
        print(f"  Spell {spell_id} ({recipe['name']}, {src_type})...", file=sys.stderr, end=" ")

        wowhead_data = fetch_wowhead_spell(int(spell_id), expansion)
        if not wowhead_data:
            print("FAILED (no data)", file=sys.stderr)
            failed += 1
            continue

        # Update difficulty if we got colors
        if wowhead_data.get("yellow") is not None:
            data["recipes"][spell_id]["difficulty"] = {
                "orange": wowhead_data["orange"],
                "yellow": wowhead_data["yellow"],
                "green": wowhead_data["green"],
                "gray": wowhead_data["gray"],
                "certainty": "WOWHEAD",
                "expansion": expansion,
            }
        else:
            no_colors.append({"spell_id": spell_id, "name": recipe["name"]})

        # Store comprehensive wowhead data
        if "wowhead" in wowhead_data:
            data["recipes"][spell_id]["wowhead"] = wowhead_data["wowhead"]

            # Resolve source from spell page data
            wh = wowhead_data["wowhead"]
            new_source = _resolve_source(recipe, wh)
            if new_source:
                old_type = recipe.get("source", {}).get("type", "?")
                data["recipes"][spell_id]["source"] = new_source
                if new_source["type"] != old_type:
                    print(f"{old_type} -> {new_source['type']}", file=sys.stderr, end=" ")
                    reclassified += 1

        # Print status
        if wowhead_data.get("yellow") is not None:
            print(f"OK {wowhead_data['orange']}/{wowhead_data['yellow']}/{wowhead_data['green']}/{wowhead_data['gray']}", file=sys.stderr)
        else:
            print("NO_COLORS (likely removed)", file=sys.stderr)

        updated += 1

        # Save progress every 10 items
        if updated % 10 == 0:
            with open(sources_file, "w", encoding="utf-8") as f:
                json.dump(data, f, indent=2)
            print(f"  [Saved: {updated} fetched, {reclassified} reclassified]", file=sys.stderr)

        # Rate limit
        time.sleep(0.5)

    # Write back
    if updated > 0:
        with open(sources_file, "w", encoding="utf-8") as f:
            json.dump(data, f, indent=2)

    # Summary
    print(f"\nComplete for {sources_file.stem}:", file=sys.stderr)
    print(f"  Fetched:       {updated}", file=sys.stderr)
    print(f"  Reclassified:  {reclassified}", file=sys.stderr)
    print(f"  No colors:     {len(no_colors)}", file=sys.stderr)
    print(f"  Failed:        {failed}", file=sys.stderr)

    if no_colors:
        print(f"\nRecipes with NO difficulty colors (likely removed, add to removed_recipes.json):", file=sys.stderr)
        for r in no_colors:
            print(f"  - spell {r['spell_id']}: {r['name']}", file=sys.stderr)

    if failed > 0:
        return 2

    return 0


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Fetch recipe data from Wowhead (single-pass: difficulty + source + trainer audit)"
    )
    parser.add_argument("--profession", required=True, help="Profession name")
    parser.add_argument(
        "--sources-dir",
        type=Path,
        default=Path("Data/Sources"),
        help="Base sources directory (expansion subfolder added automatically)",
    )
    parser.add_argument("--dry-run", action="store_true", help="Show what would be fetched")
    parser.add_argument("--spells", type=int, nargs="+", help="Specific spell IDs to fetch")
    parser.add_argument("--expansion", default="tbc", help="Wowhead expansion subdomain (default: tbc)")
    parser.add_argument("--force", action="store_true", help="Re-fetch all recipes even if already verified")
    args = parser.parse_args()

    # Map expansion subdomain to folder name
    exp_folder = {"classic": "Classic", "tbc": "TBC", "wotlk": "WotLK", "cata": "Cata"}.get(
        args.expansion.lower(), args.expansion.upper()
    )

    # Find sources file
    prof_name = args.profession.replace(" ", "")
    sources_file = args.sources_dir / exp_folder / f"{prof_name}.json"

    if not sources_file.exists():
        print(f"Sources file not found: {sources_file}", file=sys.stderr)
        print("Run extract_db2_sources.py first.", file=sys.stderr)
        return 1

    return process_profession(sources_file, args.dry_run, args.spells, args.expansion, args.force)


if __name__ == "__main__":
    sys.exit(main())
