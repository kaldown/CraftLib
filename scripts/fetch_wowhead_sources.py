#!/usr/bin/env python3
"""Fetch recipe sources and difficulty from Wowhead.

Reads Sources/{Profession}.json, fetches Wowhead data, updates the file.

Usage:
    # Fetch sources for PENDING items
    python fetch_wowhead_sources.py --profession FirstAid
    python fetch_wowhead_sources.py --profession FirstAid --dry-run
    python fetch_wowhead_sources.py --profession FirstAid --items 16112 16113

    # Fetch difficulty levels for all recipes
    python fetch_wowhead_sources.py --profession Engineering --difficulty
    python fetch_wowhead_sources.py --profession Engineering --difficulty --dry-run
    python fetch_wowhead_sources.py --profession Engineering --difficulty --spells 3922 3923

    # Audit VENDOR/DROP recipes for trainer misclassification
    python fetch_wowhead_sources.py --profession Engineering --audit-trainer
    python fetch_wowhead_sources.py --profession Engineering --audit-trainer --dry-run
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

# Wowhead source type mapping (from XML sourceType field)
# Based on research: 2=DROP, 4=QUEST, 5=VENDOR, 6=TRAINER
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
    # Quote unquoted keys: word characters followed by colon
    # Match keys that aren't already quoted (not preceded by ")
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
        # Try as-is first, then fix JS notation
        for text in [raw, _fix_js_object(raw)]:
            try:
                return json.loads(text)
            except json.JSONDecodeError:
                continue

    # Fallback: look for inline object assignment
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
    """Extract NPC trainer data from the taught-by-npc Listview.

    Wowhead renders trainer lists via:
        new Listview({template:'npc', id:'taught-by-npc', data:[{...},...]})

    Each NPC entry has:
        id: NPC ID
        name: NPC name
        react: [Alliance, Horde] - 1=friendly, null=unavailable
        tag: "Engineering Trainer" etc.
        location: [zoneId, ...]
    """
    # Find the taught-by-npc data array
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

        # Determine faction from react array: [Alliance, Horde]
        # 1 = friendly, null/missing = not available
        ally = react[0] if len(react) > 0 else None
        horde = react[1] if len(react) > 1 else None

        if ally and horde:
            faction = "Neutral"
        elif ally:
            faction = "Alliance"
        elif horde:
            faction = "Horde"
        else:
            faction = "Neutral"  # Default if both null

        entry = {
            "npcId": npc_id,
            "name": name,
            "faction": faction,
        }
        result.append(entry)

    return result


def fetch_wowhead_spell(spell_id: int, expansion: str = "classic") -> dict | None:
    """Fetch comprehensive spell data from Wowhead HTML page.

    Returns dict with all available data:
        difficulty: {orange, yellow, green, gray}
        wowhead: {source, trainingCost, learnedAt, numSkillUps, quality,
                  reagents, creates, taughtBy, fetchedAt}

    Returns None on complete failure (page not found).
    """
    url = f"https://www.wowhead.com/{expansion}/spell={spell_id}"
    content = _fetch_page(url)
    if not content:
        return None

    result = {}

    # Extract the g_spells data blob
    spell_data = _extract_spell_data(content, spell_id)

    if spell_data:
        # Difficulty (colors)
        colors = spell_data.get("colors")
        if colors and len(colors) == 4:
            result["orange"] = colors[0]
            result["yellow"] = colors[1]
            result["green"] = colors[2]
            result["gray"] = colors[3]

        # Wowhead comprehensive data
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
    else:
        # Fallback: regex extraction for colors (legacy approach)
        spell_id_pattern = rf'"id":{spell_id}[,\}}]'
        spell_id_match = re.search(spell_id_pattern, content)

        if spell_id_match:
            search_start = spell_id_match.start()
            remaining = content[search_start:search_start + 2000]
            colors_match = re.search(r'"colors":\[(\d+),(\d+),(\d+),(\d+)\]', remaining)
            if colors_match:
                result["orange"] = int(colors_match.group(1))
                result["yellow"] = int(colors_match.group(2))
                result["green"] = int(colors_match.group(3))
                result["gray"] = int(colors_match.group(4))

        if "orange" not in result:
            all_colors = re.findall(r'"colors":\[(\d+),(\d+),(\d+),(\d+)\]', content)
            if all_colors:
                last = all_colors[-1]
                result["orange"] = int(last[0])
                result["yellow"] = int(last[1])
                result["green"] = int(last[2])
                result["gray"] = int(last[3])

        if "orange" not in result:
            learnedat_match = re.search(r'"learnedat":(\d+)', content)
            if learnedat_match:
                result["orange"] = int(learnedat_match.group(1))
                result["yellow"] = None
                result["green"] = None
                result["gray"] = None

    # Extract taught-by NPC data (separate from g_spells blob)
    taught_by = _extract_taught_by_npcs(content)
    if taught_by:
        if "wowhead" not in result:
            result["wowhead"] = {"fetchedAt": date.today().isoformat()}
        result["wowhead"]["taughtBy"] = taught_by

    return result if result else None


def fetch_wowhead_item(item_id: int, expansion: str = "tbc") -> dict | None:
    """Fetch item data from Wowhead XML endpoint.

    Returns dict with source info or None on failure.
    """
    url = f"https://www.wowhead.com/{expansion}/item={item_id}&xml"

    try:
        req = urllib.request.Request(
            url,
            headers={"User-Agent": "CraftLib/1.0 (recipe source verification)"},
        )
        with urllib.request.urlopen(req, timeout=30) as response:
            content = response.read().decode("utf-8")
    except (urllib.error.URLError, TimeoutError, OSError) as e:
        print(f"  Error fetching {url}: {e}", file=sys.stderr)
        return None

    # Parse source from JSON embedded in XML
    # Look for: <json><![CDATA["key":value,...]]></json>
    # Note: Wowhead returns JSON object contents WITHOUT outer braces
    json_match = re.search(r'<json><!\[CDATA\[(.+?)\]\]></json>', content, re.DOTALL)
    if not json_match:
        print(f"  No JSON data found for item {item_id}", file=sys.stderr)
        return None

    try:
        # Wrap with braces since Wowhead returns object contents without them
        json_content = "{" + json_match.group(1) + "}"
        data = json.loads(json_content)
    except json.JSONDecodeError as e:
        print(f"  JSON parse error for item {item_id}: {e}", file=sys.stderr)
        return None

    # Extract source info
    source_type = data.get("source", [None])[0]
    source_name = WOWHEAD_SOURCE_TYPES.get(source_type, f"UNKNOWN-{source_type}")

    result = {
        "wowhead_source": source_type,
        "type": source_name,
        "name": data.get("name", f"Item-{item_id}"),
    }

    # Extract vendor info if available
    if "sourcemore" in data:
        vendors = []
        for src in data["sourcemore"]:
            if src.get("t") == 2:  # NPC vendor
                vendors.append({
                    "npcId": src.get("n"),
                    "name": src.get("name", ""),
                    "zone": src.get("z", ""),
                })
        if vendors:
            result["vendors"] = vendors

    return result


def process_pending_sources(sources_file: Path, dry_run: bool, specific_items: list[int] | None, expansion: str = "tbc") -> int:
    """Process PENDING sources in a sources file."""
    with open(sources_file, "r", encoding="utf-8") as f:
        data = json.load(f)

    pending_recipes = []
    for spell_id, recipe in data["recipes"].items():
        source = recipe.get("source", {})
        if source.get("certainty") != "PENDING":
            continue

        item_id = source.get("itemId")
        if not item_id:
            continue

        if specific_items and item_id not in specific_items:
            continue

        pending_recipes.append((spell_id, recipe, item_id))

    if not pending_recipes:
        print("No PENDING recipes to process.", file=sys.stderr)
        return 0

    print(f"Found {len(pending_recipes)} PENDING recipes to verify:", file=sys.stderr)
    for spell_id, recipe, item_id in pending_recipes:
        print(f"  - {recipe['name']} (spell {spell_id}, item {item_id})", file=sys.stderr)

    if dry_run:
        print("\nDry run - no changes made.", file=sys.stderr)
        return 0

    print("\nFetching from Wowhead...", file=sys.stderr)
    updated = 0
    failed = 0

    for spell_id, recipe, item_id in pending_recipes:
        print(f"  Fetching item {item_id} ({recipe['name']})...", file=sys.stderr, end=" ")

        wowhead_data = fetch_wowhead_item(item_id, expansion)
        if not wowhead_data:
            print("FAILED", file=sys.stderr)
            failed += 1
            continue

        source_type = wowhead_data["type"]
        if source_type in ("UNKNOWN", "CRAFTED", "STARTER"):
            print(f"SKIP (source={source_type})", file=sys.stderr)
            failed += 1
            continue

        # Map Wowhead source to our format
        if source_type == "VENDOR":
            new_source = {
                "type": "VENDOR",
                "certainty": "WOWHEAD",
                "itemId": item_id,
                "cost": recipe["source"].get("cost", 0),
            }
            if wowhead_data.get("vendors"):
                new_source["vendors"] = wowhead_data["vendors"]
        elif source_type == "DROP":
            new_source = {
                "type": "DROP",
                "certainty": "WOWHEAD",
                "itemId": item_id,
            }
        elif source_type == "QUEST":
            new_source = {
                "type": "QUEST",
                "certainty": "WOWHEAD",
                "itemId": item_id,
            }
        else:
            print(f"UNKNOWN ({source_type})", file=sys.stderr)
            failed += 1
            continue

        data["recipes"][spell_id]["source"] = new_source
        print(f"OK -> {source_type}", file=sys.stderr)
        updated += 1

        # Save progress every 10 items
        if updated % 10 == 0:
            with open(sources_file, "w", encoding="utf-8") as f:
                json.dump(data, f, indent=2)
            print(f"  [Saved progress: {updated} verified]", file=sys.stderr)

        # Rate limit
        time.sleep(0.5)

    # Write back
    if updated > 0:
        with open(sources_file, "w", encoding="utf-8") as f:
            json.dump(data, f, indent=2)
        print(f"\nUpdated {sources_file}: {updated} sources verified", file=sys.stderr)

    if failed > 0:
        print(f"  {failed} sources could not be verified", file=sys.stderr)
        return 2

    return 0


def process_difficulty(sources_file: Path, dry_run: bool, specific_spells: list[int] | None, expansion: str = "tbc", force: bool = False) -> int:
    """Fetch difficulty levels from Wowhead for all recipes.

    Also captures comprehensive wowhead data (source, trainingCost, etc.) from
    the same page fetch.
    """
    with open(sources_file, "r", encoding="utf-8") as f:
        data = json.load(f)

    recipes_to_fetch = []
    for spell_id, recipe in data["recipes"].items():
        difficulty = recipe.get("difficulty", {})

        # If specific spells requested, only process those (allows re-fetching)
        if specific_spells:
            if int(spell_id) not in specific_spells:
                continue
            # Allow re-fetching even if already verified
        elif force:
            # Force mode: re-fetch everything regardless of certainty
            pass
        else:
            # Skip if already verified from Wowhead (normal mode)
            if difficulty.get("certainty") == "WOWHEAD":
                continue

        recipes_to_fetch.append((spell_id, recipe))

    if not recipes_to_fetch:
        print("No recipes need difficulty verification.", file=sys.stderr)
        return 0

    print(f"Found {len(recipes_to_fetch)} recipes to fetch difficulty:", file=sys.stderr)
    if dry_run:
        for spell_id, recipe in recipes_to_fetch[:10]:
            print(f"  - {recipe['name']} (spell {spell_id})", file=sys.stderr)
        if len(recipes_to_fetch) > 10:
            print(f"  ... and {len(recipes_to_fetch) - 10} more", file=sys.stderr)
        print("\nDry run - no changes made.", file=sys.stderr)
        return 0

    print("\nFetching difficulty from Wowhead...", file=sys.stderr)
    updated = 0
    failed = 0

    for spell_id, recipe in recipes_to_fetch:
        print(f"  Fetching spell {spell_id} ({recipe['name']})...", file=sys.stderr, end=" ")

        wowhead_data = fetch_wowhead_spell(int(spell_id), expansion)
        if not wowhead_data or wowhead_data.get("yellow") is None:
            print("FAILED", file=sys.stderr)
            failed += 1
            continue

        data["recipes"][spell_id]["difficulty"] = {
            "orange": wowhead_data["orange"],
            "yellow": wowhead_data["yellow"],
            "green": wowhead_data["green"],
            "gray": wowhead_data["gray"],
            "certainty": "WOWHEAD",
            "expansion": expansion,
        }

        # Store comprehensive wowhead data if available
        if "wowhead" in wowhead_data:
            data["recipes"][spell_id]["wowhead"] = wowhead_data["wowhead"]

        print(f"OK -> {wowhead_data['orange']}/{wowhead_data['yellow']}/{wowhead_data['green']}/{wowhead_data['gray']}", file=sys.stderr)
        updated += 1

        # Save progress every 10 items
        if updated % 10 == 0:
            with open(sources_file, "w", encoding="utf-8") as f:
                json.dump(data, f, indent=2)
            print(f"  [Saved progress: {updated} verified]", file=sys.stderr)

        # Rate limit
        time.sleep(0.5)

    # Write back
    if updated > 0:
        with open(sources_file, "w", encoding="utf-8") as f:
            json.dump(data, f, indent=2)
        print(f"\nUpdated {sources_file}: {updated} difficulty levels verified", file=sys.stderr)

    if failed > 0:
        print(f"  {failed} recipes could not be verified", file=sys.stderr)
        return 2

    return 0


def process_audit_trainer(sources_file: Path, dry_run: bool, specific_spells: list[int] | None, expansion: str = "tbc", force: bool = False) -> int:
    """Audit VENDOR/DROP recipes for trainer misclassification.

    For each recipe currently marked as VENDOR or DROP, fetches the Wowhead
    spell page and checks for trainingcost. If present, the recipe is
    reclassified as TRAINER (policy: trainer is always preferred when available).

    Also captures comprehensive wowhead data for all audited recipes.
    """
    with open(sources_file, "r", encoding="utf-8") as f:
        data = json.load(f)

    recipes_to_audit = []
    for spell_id, recipe in data["recipes"].items():
        source = recipe.get("source", {})
        source_type = source.get("type", "")

        # Only audit VENDOR and DROP recipes
        if source_type not in ("VENDOR", "DROP", "PENDING"):
            continue

        # Skip if already has wowhead data (unless force)
        if not force and recipe.get("wowhead", {}).get("source"):
            continue

        if specific_spells and int(spell_id) not in specific_spells:
            continue

        recipes_to_audit.append((spell_id, recipe))

    if not recipes_to_audit:
        print("No recipes need trainer audit.", file=sys.stderr)
        return 0

    print(f"Found {len(recipes_to_audit)} VENDOR/DROP recipes to audit:", file=sys.stderr)
    if dry_run:
        for spell_id, recipe in recipes_to_audit[:20]:
            src = recipe.get("source", {})
            print(f"  - {recipe['name']} (spell {spell_id}, {src.get('type', '?')})", file=sys.stderr)
        if len(recipes_to_audit) > 20:
            print(f"  ... and {len(recipes_to_audit) - 20} more", file=sys.stderr)
        print("\nDry run - no changes made.", file=sys.stderr)
        return 0

    print("\nFetching spell data from Wowhead...", file=sys.stderr)
    updated = 0
    reclassified = 0
    failed = 0

    for spell_id, recipe in recipes_to_audit:
        source = recipe.get("source", {})
        old_type = source.get("type", "?")
        print(f"  Spell {spell_id} ({recipe['name']}, {old_type})...", file=sys.stderr, end=" ")

        wowhead_data = fetch_wowhead_spell(int(spell_id), expansion)
        if not wowhead_data:
            print("FAILED", file=sys.stderr)
            failed += 1
            continue

        wh = wowhead_data.get("wowhead", {})

        # Store wowhead data
        data["recipes"][spell_id]["wowhead"] = wh

        # Also update difficulty if we got it and don't have it yet
        if wowhead_data.get("yellow") is not None:
            existing_diff = recipe.get("difficulty", {})
            if existing_diff.get("certainty") != "WOWHEAD":
                data["recipes"][spell_id]["difficulty"] = {
                    "orange": wowhead_data["orange"],
                    "yellow": wowhead_data["yellow"],
                    "green": wowhead_data["green"],
                    "gray": wowhead_data["gray"],
                    "certainty": "WOWHEAD",
                    "expansion": expansion,
                }

        # Check if recipe is trainer-learnable
        has_training_cost = "trainingCost" in wh
        has_trainer_source = 6 in wh.get("source", [])

        if has_training_cost or has_trainer_source:
            # Reclassify to TRAINER
            training_cost = wh.get("trainingCost", 0)
            data["recipes"][spell_id]["source"] = {
                "type": "TRAINER",
                "certainty": "WOWHEAD",
                "trainingCost": training_cost,
            }
            print(f"TRAINER (cost={training_cost})", file=sys.stderr)
            reclassified += 1
        else:
            print(f"OK (stays {old_type})", file=sys.stderr)

        updated += 1

        # Save progress every 10 items
        if updated % 10 == 0:
            with open(sources_file, "w", encoding="utf-8") as f:
                json.dump(data, f, indent=2)
            print(f"  [Saved progress: {updated} audited, {reclassified} reclassified]", file=sys.stderr)

        # Rate limit
        time.sleep(0.5)

    # Write back
    if updated > 0:
        with open(sources_file, "w", encoding="utf-8") as f:
            json.dump(data, f, indent=2)

    print(f"\nAudit complete for {sources_file}:", file=sys.stderr)
    print(f"  Audited:      {updated}", file=sys.stderr)
    print(f"  Reclassified:  {reclassified} (VENDOR/DROP -> TRAINER)", file=sys.stderr)
    print(f"  Unchanged:    {updated - reclassified - failed}", file=sys.stderr)
    if failed > 0:
        print(f"  Failed:       {failed}", file=sys.stderr)
        return 2

    return 0


def main() -> int:
    parser = argparse.ArgumentParser(description="Fetch recipe sources from Wowhead")
    parser.add_argument("--profession", required=True, help="Profession name")
    parser.add_argument(
        "--sources-dir",
        type=Path,
        default=Path("Data/Sources"),
        help="Base sources directory (expansion subfolder added automatically)",
    )
    parser.add_argument("--dry-run", action="store_true", help="Show what would be fetched")
    parser.add_argument("--items", type=int, nargs="+", help="Specific item IDs to fetch (for sources)")
    parser.add_argument("--difficulty", action="store_true", help="Fetch difficulty levels instead of sources")
    parser.add_argument("--audit-trainer", action="store_true", help="Audit VENDOR/DROP recipes for trainer sources")
    parser.add_argument("--spells", type=int, nargs="+", help="Specific spell IDs to fetch")
    parser.add_argument("--expansion", default="tbc", help="Wowhead expansion subdomain (default: tbc)")
    parser.add_argument("--force", action="store_true", help="Re-fetch all recipes even if already verified")
    args = parser.parse_args()

    # Map expansion subdomain to folder name
    exp_folder = {"classic": "Classic", "tbc": "TBC", "wotlk": "WotLK", "cata": "Cata"}.get(
        args.expansion.lower(), args.expansion.upper()
    )

    # Find sources file (expansion-specific path)
    prof_name = args.profession.replace(" ", "")
    sources_file = args.sources_dir / exp_folder / f"{prof_name}.json"

    if not sources_file.exists():
        print(f"Sources file not found: {sources_file}", file=sys.stderr)
        print("Run extract_db2_sources.py first.", file=sys.stderr)
        return 1

    if args.audit_trainer:
        return process_audit_trainer(sources_file, args.dry_run, args.spells, args.expansion, args.force)
    elif args.difficulty:
        return process_difficulty(sources_file, args.dry_run, args.spells, args.expansion, args.force)
    else:
        return process_pending_sources(sources_file, args.dry_run, args.items, args.expansion)


if __name__ == "__main__":
    sys.exit(main())
