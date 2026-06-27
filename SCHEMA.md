# CraftLib Schema Documentation

CraftLib provides a comprehensive crafting recipe database for WoW addons.

## Quick Start

```lua
-- Check if CraftLib is available
if CraftLib and CraftLib:IsReady() then
    local recipes = CraftLib:GetRecipes("firstAid")
    for _, recipe in ipairs(recipes) do
        print(recipe.name, recipe.skillRequired)
    end
end
```

## API Reference

### Query Functions

| Function | Returns | Description |
|----------|---------|-------------|
| `CraftLib:IsReady()` | boolean | Check if CraftLib has loaded data |
| `CraftLib:GetProfessions()` | table | All registered professions |
| `CraftLib:GetProfession(key)` | table/nil | Single profession by key |
| `CraftLib:GetRecipes(key)` | table | All recipes for a profession |
| `CraftLib:GetAvailableRecipes(key, level)` | table | Recipes available at skill level |
| `CraftLib:GetRecipeBySpellId(key, id)` | table/nil | Find recipe by spell ID |
| `CraftLib:GetRecipeByItemId(itemId)` | table/nil | Find recipe by crafted item ID |
| `CraftLib:GetRecipeByProduct(itemId)` | table/nil | Find all recipes that produce an item |
| `CraftLib:GetRecipeDifficulty(recipe, level)` | string | "orange"/"yellow"/"green"/"gray" |
| `CraftLib:GetVendorBuyPrice(itemId)` | number/nil | Per-unit vendor BUY price (copper), or nil |

### Vendor Buy Prices

`CraftLib:GetVendorBuyPrice(itemId)` returns the per-unit vendor BUY price in copper for a
confirmed vendor-stocked crafting reagent (thread, vials, dyes, salt, spices, flux, coal), or
`nil` for everything else. The return is `nil` and never `0` or `{}` (ADR-004 nil-not-zero): a
`0` would read downstream as "free" and corrupt a cost calculation, so absence is signalled by
`nil`, meaning "not a confirmed vendor reagent - price it some other way".

How the table is built (build-time, not shipped):

- Membership is a curated, in-game-verified allowlist in `Data/Sources/vendor_reagents.json`.
  `BuyPrice > 0` is NOT a vendor-stock signal - roughly 73% of all items carry an intrinsic
  buy price (including world-drop cloth, gathered herbs, mined ore and smelted bars), so
  vendor-buyability is determined ONLY by allowlist membership.
- The per-unit price is derived from game data as `round(BuyPrice / VendorStackCount)`. DB2
  `BuyPrice` is the price for one vendor-stack BATCH (vials sell in stacks of 5), so the raw
  value is divided by the stack size to get a true per-unit cost.
- The generated table ships as `Data/<Flavor>/VendorPrices.lua` and is registered via the
  internal `CraftLib:RegisterVendorPrices({ flavor, prices })`, which is flavor-guarded exactly
  like `RegisterProfession` (the SoD file carries `flavor = "SOD"`; the DEFAULT/TBC file omits
  it). Prices are the undiscounted base values; a consumer with live merchant data (reputation
  or faction discounts) should prefer that over this fallback.

### Profession Keys

| Key | Profession |
|-----|------------|
| `alchemy` | Alchemy |
| `blacksmithing` | Blacksmithing |
| `cooking` | Cooking |
| `enchanting` | Enchanting |
| `engineering` | Engineering |
| `firstAid` | First Aid |
| `jewelcrafting` | Jewelcrafting |
| `leatherworking` | Leatherworking |
| `mining` | Mining (smelting recipes) |
| `tailoring` | Tailoring |

## Data Schema

### Profession Object

```lua
{
    id = 3273,                    -- Profession spell ID
    name = "First Aid",           -- Display name
    expansion = 2,                -- Highest expansion in data (see EXPANSION constants)
    milestones = { 75, 150, ... },-- Skill cap breakpoints
    recipes = { ... },            -- Array of Recipe objects
}
```

### Recipe Object

```lua
{
    -- Required fields
    id = 3275,                    -- Spell ID (unique identifier)
    name = "Linen Bandage",       -- Recipe name
    itemId = 1251,                -- Crafted item ID (nil for enchantments)
    skillRequired = 1,            -- Minimum skill to learn
    skillRange = {                -- Difficulty thresholds
        orange = 1,               -- 100% skillup below this level
        yellow = 30,              -- Skillup chance decreasing (see note)
        green = 45,               -- Skillup chance low (see note)
        gray = 55,                -- 0% skillup at and above
    },
    reagents = {                  -- Array of Reagent objects
        { itemId = 2589, name = "Linen Cloth", count = 1 },
    },
    source = { ... },             -- How to obtain recipe (see Source Object below)
    expansion = 1,                -- Which expansion added this
}
```

> **Note:** `itemId` is `nil` for enchanting recipes that apply effects to gear rather than creating items. Consumer addons should handle `recipe.itemId` being `nil`.

### Source Object

The `source` field describes how to obtain a recipe. Structure varies by type:

**Trainer Source:**
```lua
{
    type = "trainer",
    npcName = "Any Cooking Trainer",  -- Generic trainer name
    trainingCost = 5000,              -- Cost in copper (optional, nil if unknown)
}
```

**Vendor Source:**
```lua
{
    type = "vendor",
    itemId = 6325,                    -- Recipe item ID sold by vendor
    cost = 3400,                      -- Cost in copper
}
```

**Quest Source:**
```lua
{
    type = "quest",
    itemId = 16112,                   -- Recipe item ID (quest reward)
}
```

**Drop Source:**
```lua
{
    type = "drop",
    itemId = 16045,                   -- Recipe item ID (world drop)
}
```

**Starter Source:**
```lua
{
    type = "starter",                     -- Auto-learned when profession is trained
}
```

**Reputation Source:**
```lua
{
    type = "reputation",
    factionId = 1234,                 -- Faction ID
    factionName = "Faction Name",     -- Display name
    level = "Revered",                -- Friendly, Honored, Revered, Exalted
    itemId = 6325,                    -- Recipe item ID
    cost = 3400,                      -- Cost in copper
}
```

### Reagent Object

```lua
{
    itemId = 2589,                -- Item ID (required)
    name = "Linen Cloth",         -- Display name (optional, for readability)
    count = 1,                    -- Quantity required
}
```

## Constants

Access via `CraftLib.Constants`:

```lua
-- Expansions
CraftLib.Constants.EXPANSION.VANILLA  -- 1
CraftLib.Constants.EXPANSION.TBC      -- 2
CraftLib.Constants.EXPANSION.WOTLK    -- 3
-- ... etc

-- Source types
CraftLib.Constants.SOURCE_TYPE.TRAINER
CraftLib.Constants.SOURCE_TYPE.VENDOR
CraftLib.Constants.SOURCE_TYPE.DROP
CraftLib.Constants.SOURCE_TYPE.REPUTATION
CraftLib.Constants.SOURCE_TYPE.QUEST
CraftLib.Constants.SOURCE_TYPE.STARTER
CraftLib.Constants.SOURCE_TYPE.DISCOVERY  -- reserved
CraftLib.Constants.SOURCE_TYPE.WORLD_DROP -- reserved

-- Profession IDs
CraftLib.Constants.PROFESSION_ID.FIRST_AID  -- 3273
CraftLib.Constants.PROFESSION_ID.COOKING    -- 2550
-- ... etc
```

## Example: Calculate Material Cost

```lua
local function GetRecipeMaterials(professionKey, spellId)
    local recipe = CraftLib:GetRecipeBySpellId(professionKey, spellId)
    if not recipe then return nil end

    local materials = {}
    for _, reagent in ipairs(recipe.reagents) do
        materials[reagent.itemId] = reagent.count
    end
    return materials
end
```

## Example: Find Cheapest Recipe at Skill Level

```lua
local function FindOrangeRecipes(professionKey, skillLevel)
    local recipes = CraftLib:GetAvailableRecipes(professionKey, skillLevel)
    local orange = {}

    for _, recipe in ipairs(recipes) do
        if CraftLib:GetRecipeDifficulty(recipe, skillLevel) == "orange" then
            table.insert(orange, recipe)
        end
    end

    return orange
end
```

## Example: Find Craftable Alternatives (Reverse Lookup)

```lua
-- Check if an item can be crafted instead of bought
local function GetCraftableAlternatives(itemId)
    local results = CraftLib:GetRecipeByProduct(itemId)
    if not results then return nil end

    -- results is an array of { recipe, professionKey, yield }
    for _, entry in ipairs(results) do
        print(string.format(
            "%s can be crafted via %s (yields %d)",
            entry.recipe.name,
            entry.professionKey,
            entry.yield
        ))
    end

    return results
end
```

## Difficulty Note

The `skillRange` thresholds define color boundaries, not fixed probabilities. The actual skillup formula is continuous:

```
chance = (gray - currentSkill) / (gray - yellow)
```

- **Orange** (below yellow): 100% skillup
- **Yellow** (yellow to green): Chance decreases from 100% to ~50%
- **Green** (green to gray): Chance decreases from ~50% to 0%
- **Gray** (at or above gray): 0% skillup

CraftLib provides the raw threshold values. Consumer addons (like LazyProf) implement the probability formula.
