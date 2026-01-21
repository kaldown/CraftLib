# CraftLib Architecture Overview

## Purpose

CraftLib is a **standalone recipe database addon** that provides comprehensive crafting data for World of Warcraft. Other addons depend on CraftLib rather than maintaining their own recipe databases.

## System Design

```
┌─────────────────────────────────────────────────────────┐
│                    Consumer Addons                       │
│                 (LazyProf, others)                       │
│                         │                                │
│                         ▼                                │
│              ┌─────────────────────┐                    │
│              │    CraftLib API     │                    │
│              │   (_G.CraftLib)     │                    │
│              └─────────────────────┘                    │
│                         │                                │
│         ┌───────────────┼───────────────┐               │
│         ▼               ▼               ▼               │
│   ┌──────────┐   ┌──────────┐   ┌──────────┐          │
│   │Constants │   │  Init    │   │   Data   │          │
│   │  .lua    │   │  .lua    │   │  Files   │          │
│   └──────────┘   └──────────┘   └──────────┘          │
└─────────────────────────────────────────────────────────┘
```

## Deployment Model

- CraftLib installs to `Interface/AddOns/CraftLib/`
- Consumer addons declare `## Dependencies: CraftLib` in their TOC
- CraftLib exposes `_G.CraftLib` for global access
- No file syncing needed between projects

## Data Flow

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
- Future: `Data/Wrath/`, `Data/Classic/` as needed

## External Dependencies

None. CraftLib is fully standalone with no library dependencies.
