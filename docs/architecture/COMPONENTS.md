# CraftLib Components

## Directory Structure

```
CraftLib/
├── CraftLib.toc           # Addon manifest (load order)
├── Core/
│   ├── Constants.lua      # Shared constants
│   └── Init.lua           # Public API
├── Data/
│   └── TBC/               # TBC Classic data
│       ├── Cooking/
│       │   └── Recipes.lua
│       ├── FirstAid/
│       │   └── Recipes.lua
│       └── [Profession]/
│           └── Recipes.lua
└── docs/                  # Documentation
```

## Core/Constants.lua

**Purpose**: Define all shared constants used across the addon.

**Contents**:
- `EXPANSION` - Expansion identifiers (VANILLA=1, TBC=2, etc.)
- `SOURCE_TYPE` - Recipe source types (TRAINER, VENDOR, DROP, etc.)
- `PROFESSION_ID` - WoW profession spell IDs

**Usage**: `local C = CraftLib.Constants`

## Core/Init.lua

**Purpose**: Public API and internal data management.

**Key Tables**:
- `professions` - Registered profession data
- `items` - Item ID to recipe mapping
- `productIndex` - Reverse lookup (item ID to producing recipes)

**Public Functions**:
- See [SCHEMA.md](/SCHEMA.md) for complete API reference

**Registration Flow**:
```lua
-- Called by each profession data file
CraftLib:RegisterProfession("cooking", {
    id = C.PROFESSION_ID.COOKING,
    name = "Cooking",
    recipes = { ... }
})
```

## Data/[Expansion]/[Profession]/Recipes.lua

**Purpose**: Recipe data for a specific profession.

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
        skillRange = { orange, yellow, green, gray },
        reagents = { { itemId, name, count }, ... },
        source = { type = C.SOURCE_TYPE.TRAINER },
        expansion = C.EXPANSION.TBC,
        yield = 1,  -- optional, defaults to 1
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

## Load Order (TOC)

Files must load in this order:
1. `Core/Constants.lua` - Constants available first
2. `Core/Init.lua` - API ready for registration
3. `Data/**/*.lua` - Professions register themselves
