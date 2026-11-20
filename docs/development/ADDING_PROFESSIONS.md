# Adding a New Profession

## Overview

This guide walks through adding recipe data for a new profession to CraftLib using the verified sources pipeline.

> **Before you start:** Check `Data/Sources/removed_recipes.json` for known removed recipes, and review this guide's notes on Wowhead URL patterns and rate limiting.

> **Runbook note:** the per-script command examples in `vendor/db2-parser/DATA_PIPELINE.md` predate the
> `--bucket` flag (they still show `--expansion`). Until that runbook is updated, use the commands in
> this guide, `make help`, or each script's `--help`.

## Step 0: Register the Profession

Every pipeline stage and the Makefile read the bucket registry in `scripts/buckets.py`, so a new
profession is registered there first:

1. If the profession is new to CraftLib, add a `Profession(...)` entry to `PROFESSIONS`
   (folder, key, display name, `PROFESSION_ID` constant name, skill line id), and its constant to
   `PROFESSION_ID` in `Core/Constants.lua`. For Wowhead enrichment it also needs a slug in
   `PROFESSION_SLUGS` in `scripts/wowhead.py`.
2. Add its folder name to the `professions` tuple of each bucket that should carry it.
3. Add `Data/<Bucket>/<Profession>/Recipes.lua` to `CraftLib.toc` (Step 6) and commit the bucket's
   `Data/Sources/<Bucket>/<Profession>.json` and generated Lua.

`scripts/tests/test_consistency.py` checks the registry against `Core/Constants.lua`, `CraftLib.toc`
and the `Data/` tree, so `make test` fails until all of these agree.

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

SoD data is generated **wholesale** from the bucket's pinned `wow_classic_era` DB2 build (the
`build` in `scripts/buckets.py`; the Era build *is* the live SoD data) plus Wowhead's `/classic/`
profession listview. The whole flow is one command:

```bash
make sod-all
```

This runs, for every profession of the bucket: `extract_db2_sources.py --bucket sod` -> `reconcile_cross_bucket.py` ->
`fetch_wowhead_sources.py` -> `verify_trainer_sources.py` -> the `assert_no_pending.py` / `assert_no_unaligned.py` gates;
then the audit; then `generate_recipes.py` for every profession, writing `Data/SoD/<Profession>/Recipes.lua`; then vendor
prices. The driver (`scripts/pipeline.py`) stops at the first failing step, so no Lua file is rewritten unless every gate
and the audit passed. Use `make sod-all PROFESSION=Tailoring` for one profession and
`ARGS="--steps assert-no-pending,generate"` for a subset; `make sod-generate OUT=<dir>` is the offline regeneration
(`OUT` is required; `OUT=Data` rewrites the shipped files deliberately).

Key differences from the TBC flow:

- **Pinned build:** `1.15.8.67156` (the bucket's `build` in `scripts/buckets.py`). Fetch it with
  `make sod-fetch`.
- **SoD enrichment (`fetch_wowhead_sources.py --bucket sod`):** a one-request-per-profession **listview** pass. A single
  Wowhead profession page embeds every recipe's 4-color difficulty array, so ~300 per-spell
  requests collapse to 1. Difficulty, `seasonId`/`phaseId` (the SoD-only flag), and source are
  filled in that one pass. Secondary skills (Cooking, First Aid) are fetched from Wowhead's
  `secondary-skills` category automatically.
- **SoD generation (`generate_recipes.py --bucket sod`):** writes `Data/SoD/`, tags every recipe `C.EXPANSION.SOD`, emits
  `profile = "SOD"` (the runtime load guard), and uses milestones `{ 75, 150, 225, 300 }` (cap 300, no 375).
- **Cross-validation:** the generator checks Wowhead yellow/gray against DB2
  `TrivialSkillLineRankLow`/`High` and logs `CROSS-CHECK MISMATCH` lines for review.
- **Loaded from the TOC like every bucket:** `Data/SoD/` is listed in `CraftLib.toc`; at runtime the
  profile guard in `RegisterProfession` registers it only on a Season of Discovery client.

The rest of this guide covers the per-profession TBC flow.

## Step 1: Extract Sources from DB2

Run the extraction script to get initial sources from DB2 data:

```bash
python scripts/extract_db2_sources.py --bucket tbc --profession [Profession]
```

This creates `Data/Sources/TBC/[Profession].json` with:
- **DB2 certain**: TRAINER, REPUTATION, QUEST (automatically detected)
- **PENDING**: Items that need Wowhead verification (could be VENDOR or DROP)

## Step 2: Verify Uncertain Sources

For any PENDING sources, fetch from Wowhead:

```bash
# Preview what will be fetched
python scripts/fetch_wowhead_sources.py --bucket tbc --profession [Profession] --dry-run

# Fetch and verify
python scripts/fetch_wowhead_sources.py --bucket tbc --profession [Profession]
```

## Step 3: Fetch Difficulty Levels

**IMPORTANT:** DB2 does not contain accurate difficulty (orange) values. You MUST fetch from Wowhead.
The fetcher is single-pass: the same `fetch_wowhead_sources.py` run that resolves sources (Step 2)
also fills difficulty, so no separate flag is needed - just use the correct `--bucket`.

```bash
# Preview
python scripts/fetch_wowhead_sources.py --bucket tbc --profession [Profession] --dry-run

# Fetch (difficulty + source in one pass; use the correct bucket!)
python scripts/fetch_wowhead_sources.py --bucket tbc --profession [Profession]
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
- The bucket (`--bucket tbc`, `vanilla`, ...) selects the Wowhead URL path; never mix buckets
- Wowhead rate limits after ~100 requests; wait 2-4 hours between batches

## Step 4: Commit Verified Sources

```bash
git add Data/Sources/TBC/[Profession].json
git commit -m "feat(data): verify [Profession] sources and difficulty"
```

## Step 5: Generate Recipes.lua

Generate the Lua file from verified sources:

```bash
python scripts/generate_recipes.py --bucket tbc --profession [Profession]
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
- **Using the wrong bucket** - pass `--bucket tbc` for TBC recipes, `--bucket vanilla` for Vanilla; the bucket picks the Wowhead URL path
- **Including removed recipes** - DB2 contains beta/removed recipes; check Wowhead comments for "removed" or "never implemented"
- **Not updating removed recipes** - After every Wowhead session, add newly discovered removed recipes to `Data/Sources/removed_recipes.json`
