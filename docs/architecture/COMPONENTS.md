# CraftLib Components

## Directory Structure

```
CraftLib/
├── CraftLib.toc                          # Addon manifest (load order, metadata)
├── .pkgmeta                              # BigWigsMods packager config (release packaging)
├── Makefile                              # Build targets for data pipeline
├── icon.tga                              # Addon icon for WoW UI
├── LICENSE                               # MIT license
│
├── .github/
│   └── workflows/
│       └── release.yml                   # GitHub Actions: package + upload on tag push
│
├── Core/
│   ├── Constants.lua                     # Shared constants (expansions, source types, profession IDs, difficulty)
│   └── Init.lua                          # Public API, registration system, indexes
│
├── Data/
│   ├── Sources/                          # Intermediate verification data
│   │   ├── schema.json                   # JSON schema for verified source files
│   │   ├── removed_recipes.json          # 45 removed/never-implemented recipes (excluded from Lua)
│   │   └── TBC/                          # Per-expansion verified sources (gitignored)
│   │       ├── Alchemy.json              #   Verified source + difficulty per recipe
│   │       ├── Blacksmithing.json
│   │       ├── Cooking.json
│   │       ├── Enchanting.json
│   │       ├── Engineering.json
│   │       ├── FirstAid.json
│   │       ├── Jewelcrafting.json
│   │       ├── Leatherworking.json
│   │       ├── Mining.json
│   │       └── Tailoring.json
│   │
│   └── TBC/                              # Generated Lua recipe data (committed)
│       ├── Alchemy/Recipes.lua           # 182 recipes
│       ├── Blacksmithing/Recipes.lua     # 376 recipes
│       ├── Cooking/Recipes.lua           # 116 recipes
│       ├── Enchanting/Recipes.lua        # 30 recipes
│       ├── Engineering/Recipes.lua       # 240 recipes
│       ├── FirstAid/Recipes.lua          # 15 recipes
│       ├── Jewelcrafting/Recipes.lua     # 259 recipes
│       ├── Leatherworking/Recipes.lua    # 377 recipes
│       ├── Mining/Recipes.lua            # 21 recipes
│       └── Tailoring/Recipes.lua         # 314 recipes
│
├── scripts/                              # Python 3 data generation pipeline
│   ├── buckets.py                        # Bucket registry: builds, professions, per-bucket flags
│   ├── pipeline.py                       # Fail-fast driver behind the Makefile targets
│   ├── extract_db2_sources.py            # Phase 1: Extract sources from DB2 tables
│   ├── fetch_wowhead_sources.py          # Phase 2: Verify PENDING sources + fetch difficulty from Wowhead
│   ├── reconcile_cross_bucket.py         # Inherit a parent bucket's verified source (SoD from TBC)
│   ├── verify_trainer_sources.py         # Per-spell Wowhead check of remaining trainer guesses
│   ├── assert_no_pending.py              # Gate: no PENDING source left
│   ├── assert_no_unaligned.py            # Gate: no uncorroborated cross-bucket source left
│   ├── audit_sources.py                  # Offline audit of source classifications
│   ├── generate_recipes.py               # Phase 3: Generate Lua from verified sources
│   ├── db2.py, wowhead.py, pipeline_io.py  # Shared helpers (column contract, Wowhead, atomic writes)
│   └── tests/                            # pytest + Lua tests (`make test`)
│
├── vendor/
│   └── db2-parser/                       # Git submodule: DB2 data fetcher
│       ├── Makefile                      # Build target: fetch CSV data from wago.tools
│       ├── scripts/
│       │   ├── fetch.py                  # Download DB2 CSVs for a build version
│       │   ├── latest.py                 # Get latest build version for an expansion
│       │   └── validate.py               # Schema validation for downloaded CSVs
│       ├── schema/                       # Table documentation (10 tables)
│       │   ├── Faction.md
│       │   ├── Item.md
│       │   ├── ItemEffect.md
│       │   ├── ItemSparse.md
│       │   ├── SkillLine.md
│       │   ├── SkillLineAbility.md
│       │   ├── Spell.md
│       │   ├── SpellEffect.md
│       │   ├── SpellName.md
│       │   └── SpellReagents.md
│       └── artifacts/                    # Downloaded CSVs (gitignored)
│           └── {version}/                # e.g., 2.5.5.65463/
│
└── docs/
    ├── TODO.md                           # Difficulty verification status (historical)
    ├── architecture/
    │   ├── OVERVIEW.md                   # System design and data flow
    │   ├── COMPONENTS.md                 # This file
    │   └── DECISIONS.md                  # Architecture Decision Records (6 ADRs)
    └── development/
        ├── SETUP.md                      # Development environment setup
        ├── TESTING.md                    # In-game testing procedures
        ├── WORKFLOW.md                   # Git workflow and release process
        └── ADDING_PROFESSIONS.md         # Guide to adding new profession data
```

**Note:** `Data/Sources/TBC/*.json` files are gitignored (local development data). Only `schema.json` and `removed_recipes.json` are committed.

## Core/Constants.lua

**Purpose**: Define all shared constants used across the addon.

**Contents**:
- `EXPANSION` - Expansion identifiers (VANILLA=1 through TWW=11)
- `SOURCE_TYPE` - Recipe source types (TRAINER, VENDOR, DROP, REPUTATION, QUEST, DISCOVERY, WORLD_DROP)
- `PROFESSION_ID` - WoW profession spell IDs (10 crafting + 3 gathering)
- `DIFFICULTY` - Skill difficulty color names (ORANGE, YELLOW, GREEN, GRAY)

**Usage**: `local C = CraftLib.Constants`

## Core/Init.lua

**Purpose**: Public API, internal data management, and global access.

**Key Tables**:
- `professions` - Registered profession data (professionKey -> profession)
- `items` - Item ID to recipe mapping (for `GetRecipeByItemId`)
- `productIndex` - Reverse lookup: item ID to producing recipes (for `GetRecipeByProduct`)

**Public Functions**: See [SCHEMA.md](/SCHEMA.md) for complete API reference.

**Registration Flow**:
```lua
-- Called by each profession data file at load time
CraftLib:RegisterProfession("cooking", {
    id = C.PROFESSION_ID.COOKING,
    name = "Cooking",
    expansion = C.EXPANSION.TBC,
    milestones = { 75, 150, 225, 300, 375 },
    recipes = recipes,
})
```

**Global Access**: `_G.CraftLib = CraftLib` makes the API available to all addons.

**Load Behavior**: Prints version on `ADDON_LOADED` event.

## Data/[Expansion]/[Profession]/Recipes.lua

**Purpose**: Recipe data for a specific profession, generated by `scripts/generate_recipes.py`.

**Template**:
```lua
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    {
        id = SPELL_ID,
        name = "Recipe Name",
        itemId = CRAFTED_ITEM_ID,
        skillRequired = MIN_SKILL,
        skillRange = { orange = N, yellow = N, green = N, gray = N },
        reagents = { { itemId = N, name = "Name", count = N }, ... },
        source = { type = C.SOURCE_TYPE.TRAINER, ... },
        expansion = C.EXPANSION.TBC,
    },
}

CraftLib:RegisterProfession("professionKey", {
    id = C.PROFESSION_ID.PROFESSION_NAME,
    name = "Profession Name",
    expansion = C.EXPANSION.TBC,
    milestones = { 75, 150, 225, 300, 375 },
    recipes = recipes,
})
```

## Data/Sources/

**Purpose**: Intermediate verification data for the generation pipeline.

| File | Committed | Purpose |
|------|-----------|---------|
| `schema.json` | Yes | JSON schema definition for source files |
| `removed_recipes.json` | Yes | Tracks 45 recipes excluded from generated Lua |
| `TBC/*.json` | No (gitignored) | Per-profession verified source + difficulty data |

The per-profession JSON files are the source of truth for `generate_recipes.py`. They contain:
- Recipe sources with certainty level (DB2, WOWHEAD, or PENDING)
- Difficulty thresholds verified from Wowhead (orange/yellow/green/gray)

## scripts/

**Purpose**: Python 3 data generation pipeline. No pip dependencies (standard library only).

| Script | Phase | Purpose |
|--------|-------|---------|
| `extract_db2_sources.py` | 1 | Extract recipe sources from DB2 CSV tables. Auto-detects TRAINER, REPUTATION, QUEST; marks ambiguous items as PENDING. |
| `fetch_wowhead_sources.py` | 2 | Verify PENDING sources and fetch difficulty from Wowhead in one pass (profession listview or per-spell pages, per bucket). Rate-limited. |
| `reconcile_cross_bucket.py` | 2 | Inherit the parent bucket's verified non-trainer source for the same spell (SoD from TBC). |
| `verify_trainer_sources.py` | 2 | Resumable per-spell Wowhead check of the trainer guesses left after reconcile. |
| `assert_no_pending.py`, `assert_no_unaligned.py` | gate | Fail when a PENDING or uncorroborated source remains. |
| `audit_sources.py` | gate | Offline audit (`make audit`); hard findings fail the buckets that require it. |
| `generate_recipes.py` | 3 | Generate Lua data files from verified sources. Applies orange=0 threshold logic (ADR-005), filters removed recipes. |
| `pipeline.py` | - | Runs every stage of a bucket in order and stops at the first failure (`make <bucket>-all`, `make <bucket>-generate OUT=<dir>`). |

See [ADDING_PROFESSIONS.md](/docs/development/ADDING_PROFESSIONS.md) for the full pipeline workflow.

## vendor/db2-parser/

**Purpose**: Git submodule that fetches DB2 table data from wago.tools API.

Downloads CSV files for specific game build versions, used as input for the CraftLib data generation scripts. Contains its own schema documentation for the 10 DB2 tables used by CraftLib.

**Key command**: `make fetch-data` (or `make <bucket>-fetch`) fetches the CSVs of each bucket's pinned build; builds are pinned in `scripts/buckets.py`, never "latest".

## .github/workflows/release.yml

**Purpose**: Automated release workflow.

Triggers on tag push (`v*`). Uses [BigWigsMods/packager](https://github.com/BigWigsMods/packager) to build and upload to CurseForge, Wago, and GitHub Releases.

## .pkgmeta

**Purpose**: BigWigsMods packager configuration.

Defines what gets included in the release package. Excludes: `.github/`, `docs/`, `scripts/`, `vendor/`, `Data/Sources/`, all `*.md` files. Only the Core/ and Data/TBC/ Lua files ship in the release.

## Load Order (TOC)

Files must load in this order:
1. `Core/Constants.lua` - Constants available first
2. `Core/Init.lua` - API ready for registration
3. `Data/TBC/*/Recipes.lua` - Each profession registers itself
