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
import gzip
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


# Profession name/key -> Wowhead /classic/ profession-page slug
PROFESSION_SLUGS = {
    "alchemy": "alchemy", "blacksmithing": "blacksmithing", "enchanting": "enchanting",
    "engineering": "engineering", "leatherworking": "leatherworking", "tailoring": "tailoring",
    "cooking": "cooking", "firstaid": "first-aid", "mining": "mining",
}

# Secondary skills live under /spells/secondary-skills/<slug>, not /spells/professions/<slug>
SECONDARY_SKILL_SLUGS = {"cooking", "first-aid", "fishing"}

# Wowhead URL subdomain per --expansion value
WOWHEAD_SUBDOMAIN = {"sod": "classic", "classic": "classic", "tbc": "tbc",
                     "wotlk": "wotlk", "cata": "cata"}


def _fetch_page(url: str, retries: int = 3) -> str | None:
    """Fetch a web page (gzip-aware, retry on transient 403/503).

    Wowhead sits behind CloudFront, which 403s a bare User-Agent. A complete
    browser header set (Accept-Language + Referer + Sec-Fetch-* + UA) clears the
    WAF on the first request; retry/backoff alone does not.
    """
    headers = {
        "User-Agent": ("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) "
                       "AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15"),
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Language": "en-US,en;q=0.9",
        "Accept-Encoding": "gzip",
        "Referer": "https://www.wowhead.com/",
        "Sec-Fetch-Dest": "document",
        "Sec-Fetch-Mode": "navigate",
        "Sec-Fetch-Site": "same-origin",
        "Upgrade-Insecure-Requests": "1",
    }
    for attempt in range(retries):
        try:
            req = urllib.request.Request(url, headers=headers)
            with urllib.request.urlopen(req, timeout=30) as response:
                body = response.read()
                if (response.headers.get("Content-Encoding") or "") == "gzip":
                    body = gzip.decompress(body)
                return body.decode("utf-8")
        except urllib.error.HTTPError as e:
            if e.code in (403, 503) and attempt < retries - 1:
                time.sleep(2 * (attempt + 1))  # back off; Wowhead WAF cold-start
                continue
            print(f"  Error fetching {url}: {e}", file=sys.stderr)
            return None
        except (urllib.error.URLError, TimeoutError, OSError) as e:
            print(f"  Error fetching {url}: {e}", file=sys.stderr)
            return None
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


def _extract_listview_spells(content: str) -> dict[int, dict]:
    """Parse the embedded `var listviewspells = [ ... ];` array.

    Returns {spell_id: row_dict}. Each row carries (when present): colors
    [orange,yellow,green,gray], learnedat, reagents, creates, source, seasonId,
    phaseId, nskillup, quality. Non-craft profession-rank rows lack `colors`.
    """
    match = re.search(r"var listviewspells = (\[.*?\]);", content, re.DOTALL)
    if not match:
        return {}
    raw = match.group(1)
    for text in (raw, _fix_js_object(raw)):
        try:
            rows = json.loads(text)
            break
        except json.JSONDecodeError:
            rows = None
    if not rows:
        return {}
    out: dict[int, dict] = {}
    for row in rows:
        if isinstance(row, dict) and "id" in row:
            out[int(row["id"])] = row
    return out


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

    Policy: if trainable, always classify as TRAINER. REPUTATION stays
    authoritative (DB2 faction data). Beyond resolving PENDING sources, an
    over-confident DB2 QUEST guess is demoted when Wowhead's acquisition array
    contradicts it (CRAFTED=1 is ignored as evidence). Over-confident DB2 TRAINER
    guesses are NOT demoted here — they lack a recipe itemId; cross-bucket
    reconciliation and verify_trainer_sources.py handle those.

    Returns a new source dict with WOWHEAD certainty, or None if no change.
    """
    existing_source = recipe.get("source", {})
    if existing_source.get("certainty") == "CROSS" or \
       existing_source.get("reviewReason") == "cross-bucket-uncorroborated":
        return None  # reconcile's cross-bucket outputs are authoritative; do not overwrite
    existing_type = existing_source.get("type", "")
    existing_cert = existing_source.get("certainty", "")

    # Don't reclassify REPUTATION — DB2 faction data is authoritative.
    if existing_type == "REPUTATION":
        return None

    source_types = wh.get("source", [])
    has_training_cost = "trainingCost" in wh
    has_trainer_source = 6 in source_types

    # Policy: if trainable, always classify as TRAINER.
    if has_training_cost or has_trainer_source:
        new_source = {"type": "TRAINER", "certainty": "WOWHEAD"}
        if "trainingCost" in wh:
            new_source["trainingCost"] = wh["trainingCost"]
        return new_source

    # Reclassify when the source is still PENDING, or an over-confident DB2 QUEST.
    demotable = (existing_cert == "PENDING"
                 or (existing_type == "QUEST" and existing_cert == "DB2"))
    meaningful = [c for c in source_types if c != 1]  # CRAFTED is not acquisition
    if not (demotable and meaningful):
        return None

    item_id = existing_source.get("itemId")
    if 5 in source_types:  # VENDOR (needs cost)
        cost = existing_source.get("cost")
        if cost is None:
            print(f"  WARNING: cannot demote to VENDOR without cost "
                  f"(type={existing_type}, itemId={item_id}); left unchanged", file=sys.stderr)
            return None
        return {"type": "VENDOR", "certainty": "WOWHEAD", "itemId": item_id, "cost": cost}
    if 2 in source_types:  # DROP
        return {"type": "DROP", "certainty": "WOWHEAD", "itemId": item_id}
    if 4 in source_types:  # QUEST
        return {"type": "QUEST", "certainty": "WOWHEAD", "itemId": item_id}
    if 10 in source_types:  # STARTER
        return {"type": "STARTER", "certainty": "WOWHEAD"}
    if 7 in source_types:  # DISCOVERY
        return {"type": "DISCOVERY", "certainty": "WOWHEAD"}

    if existing_cert == "PENDING":
        print(f"  WARNING: PENDING recipe has unrecognized Wowhead sources: {source_types}", file=sys.stderr)
        return {"type": "UNKNOWN", "certainty": "WOWHEAD", "wowheadSources": source_types}
    return None


def _difficulty_from_colors(colors: list[int], expansion: str) -> dict:
    """Map a Wowhead colors array [orange,yellow,green,gray] to a difficulty dict."""
    return {
        "orange": colors[0], "yellow": colors[1], "green": colors[2], "gray": colors[3],
        "certainty": "WOWHEAD", "expansion": expansion,
    }


def process_profession_listview(sources_file, slug: str, expansion: str, dry_run: bool) -> int:
    """One-request-per-profession Wowhead pass.

    Fills difficulty + seasonId/phaseId + resolves source for every recipe in the
    Sources JSON using a single profession-listview page.
    """
    with open(sources_file, "r", encoding="utf-8") as f:
        data = json.load(f)

    subdomain = WOWHEAD_SUBDOMAIN.get(expansion, "classic")
    category = "secondary-skills" if slug in SECONDARY_SKILL_SLUGS else "professions"
    url = f"https://www.wowhead.com/{subdomain}/spells/{category}/{slug}"
    print(f"Fetching listview: {url}", file=sys.stderr)
    content = _fetch_page(url)
    if not content:
        print("  FAILED to fetch profession page", file=sys.stderr)
        return 2

    listview = _extract_listview_spells(content)
    print(f"  Listview rows: {len(listview)}", file=sys.stderr)
    if dry_run:
        print(f"  Dry run - {len(data['recipes'])} recipes in sources, "
              f"{sum(1 for sid in data['recipes'] if int(sid) in listview)} matched.",
              file=sys.stderr)
        return 0

    filled, missing, seasonal = 0, [], 0
    for spell_id, recipe in data["recipes"].items():
        row = listview.get(int(spell_id))
        if not row:
            missing.append(spell_id)
            continue
        colors = row.get("colors")
        if colors and len(colors) == 4:
            recipe["difficulty"] = _difficulty_from_colors(colors, expansion)
            filled += 1
        # Capture SoD flag + comprehensive wowhead data
        wh = recipe.setdefault("wowhead", {})
        for src, dst in (("learnedat", "learnedAt"), ("nskillup", "numSkillUps"),
                         ("quality", "quality"), ("reagents", "reagents"),
                         ("creates", "creates"), ("source", "source"),
                         ("trainingcost", "trainingCost")):
            if src in row:
                wh[dst] = row[src]
        wh["fetchedAt"] = date.today().isoformat()
        if row.get("seasonId"):
            recipe["seasonId"] = row["seasonId"]
            seasonal += 1
        if row.get("phaseId"):
            recipe["phaseId"] = row["phaseId"]
        new_source = _resolve_source(recipe, wh)
        if new_source:
            recipe["source"] = new_source

    with open(sources_file, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=2)

    print(f"  Filled difficulty: {filled}; seasonal(seasonId): {seasonal}; "
          f"no listview match: {len(missing)}", file=sys.stderr)
    if missing:
        print(f"  Unmatched spell ids (check removed_recipes / per-spell): {missing[:20]}",
              file=sys.stderr)

    # Residual: recipes still PENDING (listview lacked source[]) -> per-spell fallback.
    # generate_recipes.py raises on PENDING sources, so resolve them here.
    residual = [int(sid) for sid, r in data["recipes"].items()
                if r.get("source", {}).get("certainty") == "PENDING"]
    if residual:
        print(f"  Residual PENDING sources: {len(residual)} -> per-spell fallback", file=sys.stderr)
        process_profession(sources_file, False, residual, "classic", False)
    return 0


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
    exp_folder = {"sod": "SoD", "classic": "Classic", "tbc": "TBC",
                  "wotlk": "WotLK", "cata": "Cata"}.get(
        args.expansion.lower(), args.expansion.upper()
    )

    # Find sources file
    prof_name = args.profession.replace(" ", "")
    sources_file = args.sources_dir / exp_folder / f"{prof_name}.json"

    if not sources_file.exists():
        print(f"Sources file not found: {sources_file}", file=sys.stderr)
        print("Run extract_db2_sources.py first.", file=sys.stderr)
        return 1

    if args.expansion.lower() == "sod":
        slug = PROFESSION_SLUGS.get(prof_name.lower())
        if not slug:
            print(f"No Wowhead slug for profession: {args.profession}", file=sys.stderr)
            return 1
        return process_profession_listview(sources_file, slug, "sod", args.dry_run)

    return process_profession(sources_file, args.dry_run, args.spells, args.expansion, args.force)


if __name__ == "__main__":
    sys.exit(main())
