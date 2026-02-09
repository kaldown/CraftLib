# CraftLib Architecture Overview

## Purpose

CraftLib is a **standalone recipe database addon** that provides comprehensive crafting data for World of Warcraft. Other addons depend on CraftLib rather than maintaining their own recipe databases.

## System Design

CraftLib has two distinct phases: a **build-time pipeline** that generates Lua data from external sources, and a **runtime system** that loads and serves that data to consumer addons.

### Build-Time: Data Generation Pipeline

```
wago.tools API               Wowhead
     │                          │
     │  db2-parser              │  fetch_wowhead_sources.py
     ▼                          ▼
DB2 CSVs ─────────────► Data/Sources/TBC/*.json  ◄── source_overrides.json
(artifacts/)              (verified sources +         (manual DROP
                           difficulty data)            classifications)
                               │
                               │  generate_recipes.py
                               │  (+ removed_recipes.json filter)
                               ▼
                         Data/TBC/*/Recipes.lua
                         (committed Lua files)
```

**Three-phase pipeline** (see [ADDING_PROFESSIONS.md](/docs/development/ADDING_PROFESSIONS.md)):

1. **Extract** (`extract_db2_sources.py`): Parse DB2 CSV tables to identify recipe sources. Auto-classifies TRAINER, REPUTATION, QUEST with certainty; marks ambiguous items as PENDING.
2. **Verify** (`fetch_wowhead_sources.py`): Resolve PENDING sources via Wowhead (VENDOR vs DROP). Fetch difficulty thresholds (orange/yellow/green/gray) which DB2 does not contain accurately.
3. **Generate** (`generate_recipes.py`): Produce Lua recipe files from verified sources. Applies orange=0 skill threshold logic (see ADR-005) and filters removed recipes (see ADR-006).

The intermediate `Data/Sources/TBC/*.json` files are gitignored (local development data). Only the final generated `Data/TBC/*/Recipes.lua` files are committed.

### Runtime: Addon Loading

```
┌───────────────────────────────────────────────────────┐
│                   Consumer Addons                      │
│                (LazyProf, others)                       │
│                        │                               │
│                        ▼                               │
│             ┌─────────────────────┐                   │
│             │    CraftLib API     │                   │
│             │   (_G.CraftLib)     │                   │
│             └─────────────────────┘                   │
│                        │                               │
│        ┌───────────────┼───────────────┐              │
│        ▼               ▼               ▼              │
│  ┌──────────┐   ┌──────────┐   ┌──────────┐         │
│  │Constants │   │  Init    │   │   Data   │         │
│  │  .lua    │   │  .lua    │   │  Files   │         │
│  └──────────┘   └──────────┘   └──────────┘         │
└───────────────────────────────────────────────────────┘
```

## Deployment Model

- CraftLib installs to `Interface/AddOns/CraftLib/`
- Consumer addons declare `## Dependencies: CraftLib` in their TOC
- CraftLib exposes `_G.CraftLib` for global access
- No file syncing needed between projects

## Runtime Data Flow

1. **Load Time**: WoW loads CraftLib files in TOC order
2. **Registration**: Each profession file calls `CraftLib:RegisterProfession()`
3. **Indexing**: Init.lua builds lookup tables (items, productIndex)
4. **Query Time**: Consumer addons call API functions to retrieve data

## Key Indexes

| Index | Purpose |
|-------|---------|
| `professions[key]` | All profession data by key |
| `items[itemId]` | Recipe lookup by crafted item ID |
| `productIndex[itemId]` | Reverse lookup - all recipes producing an item |

## Expansion Strategy

Data is organized by expansion to support different game versions:
- `Data/TBC/` - TBC Classic (includes Vanilla recipes)
- Future: `Data/Classic/`, `Data/WotLK/` as needed

Each expansion has its own `Data/Sources/{Expansion}/` directory for verified source JSON files, since the same recipe can have different difficulty values across expansions.

## External Dependencies

**Runtime**: None. CraftLib is fully standalone with no library dependencies.

**Build-time**: Python 3 (standard library only) for the data generation scripts. The `db2-parser` submodule in `vendor/` handles DB2 CSV fetching from wago.tools.
