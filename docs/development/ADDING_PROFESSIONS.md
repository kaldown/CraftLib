# Adding a New Profession

## Overview

This guide walks through adding recipe data for a new profession to CraftLib using the verified sources pipeline.

> **Before you start:** Check `Data/Sources/removed_recipes.json` for known removed recipes, and review this guide's notes on Wowhead URL patterns and rate limiting.

## Data Pipeline

```
DB2 (wago.tools)          Wowhead
      ↓                      ↓
  extract_db2_sources.py     fetch_wowhead_sources.py
      ↓                      ↓
      └──────────┬───────────┘
                 ↓
    Data/Sources/TBC/[Profession].json
                 ↓
        generate_recipes.py
                 ↓
    Data/TBC/[Profession]/Recipes.lua
```

## Season of Discovery (SoD)

SoD data is generated **wholesale** from the latest `wow_classic_era` DB2 build (the Era build
*is* the live SoD data) plus Wowhead's `/classic/` profession listview. The whole flow is one
command:

```bash
make sod-all
```

This runs, for every profession: `extract_db2_sources.py --expansion sod` -> `fetch_wowhead_sources.py
--expansion sod` -> `generate_recipes.py --flavor sod`, writing `Data/SoD/<Profession>/Recipes.lua`.

Key differences from the TBC flow:

- **Pinned build:** `1.15.8.67156` (set via `SOD_VERSION` in the Makefile). Fetch it with
  `make sod-fetch`.
- **`--expansion sod` (fetcher):** a one-request-per-profession **listview** pass. A single
  Wowhead profession page embeds every recipe's 4-color difficulty array, so ~300 per-spell
  requests collapse to 1. Difficulty, `seasonId`/`phaseId` (the SoD-only flag), and source are
  filled in that one pass. Secondary skills (Cooking, First Aid) are fetched from Wowhead's
  `secondary-skills` category automatically.
- **`--flavor sod` (generator):** writes `Data/SoD/`, tags every recipe `C.EXPANSION.SOD`, emits
  `flavor = "SOD"`, and uses milestones `{ 75, 150, 225, 300 }` (cap 300, no 375).
- **Cross-validation:** the generator checks Wowhead yellow/gray against DB2
  `TrivialSkillLineRankLow`/`High` and logs `CROSS-CHECK MISMATCH` lines for review.
- **Not yet in the TOC:** `Data/SoD/` is intentionally **not** wired into `CraftLib.toc` yet.
  Runtime selection of the SoD bucket lands in a later stage; adding it now would merge SoD into
  the default dataset.

The rest of this guide covers the per-profession TBC flow.

## Step 1: Extract Sources from DB2

Run the extraction script to get initial sources from DB2 data:

```bash
python scripts/extract_db2_sources.py --version 2.5.5.65463 --profession [Profession]
```

This creates `Data/Sources/TBC/[Profession].json` with:
- **DB2 certain**: TRAINER, REPUTATION, QUEST (automatically detected)
- **PENDING**: Items that need Wowhead verification (could be VENDOR or DROP)

## Step 2: Verify Uncertain Sources

For any PENDING sources, fetch from Wowhead:

```bash
# Preview what will be fetched
python scripts/fetch_wowhead_sources.py --profession [Profession] --dry-run

# Fetch and verify
python scripts/fetch_wowhead_sources.py --profession [Profession]
```

## Step 3: Fetch Difficulty Levels

**IMPORTANT:** DB2 does not contain accurate difficulty (orange) values. You MUST fetch from Wowhead.
The fetcher is single-pass: the same `fetch_wowhead_sources.py` run that resolves sources (Step 2)
also fills difficulty, so no separate flag is needed - just use the correct `--expansion`.

```bash
# Preview
python scripts/fetch_wowhead_sources.py --profession [Profession] --dry-run

# Fetch (difficulty + source in one pass; use correct expansion!)
python scripts/fetch_wowhead_sources.py --profession [Profession] --expansion tbc
```

This adds verified difficulty to each recipe:
```json
"difficulty": {
  "orange": 30,
  "yellow": 45,
  "green": 52,
  "gray": 60,
  "certainty": "WOWHEAD"
}
```

### Why This Is Required

DB2 only provides `TrivialSkillLineRankLow` (yellow) and `TrivialSkillLineRankHigh` (gray).
The orange value (skill required to learn) cannot be reliably calculated - some recipes
have non-uniform gaps between difficulty colors.

See `vendor/db2-parser/schema/SkillLineAbility.md` for technical details.

## Step 3.5: Review Failed Recipes & Update Lessons Learned

**CRITICAL:** After EVERY Wowhead fetch session, do the following:

1. **Check for failed recipes** - Some recipes fail because they were removed/never implemented
2. **Research failures** - Check Wowhead comments to determine if recipe is removed vs rate limited
3. **Update `Data/Sources/removed_recipes.json`** - Add any newly discovered removed recipes
4. **Consider filtering** - Removed recipes should not be in final Recipes.lua

```bash
# Check which recipes are missing difficulty
python3 -c "
import json
d = json.load(open('Data/Sources/TBC/[Profession].json'))
for sid, r in d['recipes'].items():
    if r.get('difficulty', {}).get('certainty') != 'WOWHEAD':
        print(f\"{sid}: {r['name']}\")"
```

**Reference:**
- `Data/Sources/removed_recipes.json` - Known removed recipes per expansion
- Use `--expansion tbc` for TBC Wowhead URLs, `--expansion classic` for vanilla
- Wowhead rate limits after ~100 requests; wait 2-4 hours between batches

## Step 4: Commit Verified Sources

```bash
git add Data/Sources/TBC/[Profession].json
git commit -m "feat(data): verify [Profession] sources and difficulty"
```

## Step 5: Generate Recipes.lua

Generate the Lua file from verified sources:

```bash
python scripts/generate_recipes.py --version 2.5.5.65463 --profession [Profession]
```

**Notes:**
- Generation will fail if any PENDING sources remain
- If difficulty is not verified (certainty != "WOWHEAD"), script falls back to calculation (less accurate)

## Step 6: Add to TOC

Edit `CraftLib.toc`, add after existing data files:

```
Data/TBC/[Profession]/Recipes.lua
```

## Step 7: Test In-Game

```lua
/reload

-- Verify profession registered
/dump CraftLib:GetProfession("professionKey")

-- Check recipe count
/dump #CraftLib:GetRecipes("professionKey")

-- Verify specific recipe
/dump CraftLib:GetRecipeBySpellId("professionKey", SPELL_ID)
```

## Step 8: Update Documentation

1. **README.md**: Update profession coverage table
2. **CURSEFORGE.md**: Sync with README
3. **CHANGELOG.md**: Add entry under `[Unreleased]`

## Step 9: Commit

```bash
git add Data/TBC/[Profession]/ CraftLib.toc README.md CURSEFORGE.md CHANGELOG.md
git commit -m "feat(data): add [Profession] recipes for TBC"
```

## Common Mistakes

- Using item ID instead of spell ID for `id` field
- Forgetting to add file to TOC
- Missing reagents in list
- Incorrect skill ranges (always verify)
- Not using constants for source types
- **Marking vendor recipes as TRAINER** - Verify trainable recipes resolve to TRAINER in the Sources JSON
- Not specifying vendor locations for VENDOR sources
- **Skipping difficulty fetch** - DB2 does not have orange values; calculated values are inaccurate for some recipes
- **Relying on calculated difficulty** - Always fetch from Wowhead for accurate data
- **Using wrong Wowhead expansion URL** - Use `--expansion tbc` for TBC recipes, `--expansion classic` for vanilla
- **Including removed recipes** - DB2 contains beta/removed recipes; check Wowhead comments for "removed" or "never implemented"
- **Not updating removed recipes** - After every Wowhead session, add newly discovered removed recipes to `Data/Sources/removed_recipes.json`
