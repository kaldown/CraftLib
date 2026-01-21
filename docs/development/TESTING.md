# Testing Guide

## In-Game Testing

CraftLib is a WoW addon without automated tests. All testing is done in-game.

### Basic Verification

After making changes, run `/reload` and verify:

```lua
-- Check CraftLib loaded
/dump CraftLib:IsReady()
-- Expected: true

-- Check professions registered
/dump CraftLib:GetProfessions()
-- Expected: table with cooking, firstAid, etc.
```

### Testing Recipe Data

```lua
-- Get all recipes for a profession
/dump #CraftLib:GetRecipes("cooking")
-- Expected: number of recipes

-- Check specific recipe by spell ID
/dump CraftLib:GetRecipeBySpellId("cooking", 2538)
-- Expected: recipe table with name "Charred Wolf Meat"

-- Check recipe by item ID
/dump CraftLib:GetRecipeByItemId(2679)
-- Expected: recipe table
```

### Testing Reverse Lookup

```lua
-- Find recipes that produce an item
/run local r = CraftLib:GetRecipeByProduct(2679); if r then for _,e in ipairs(r) do print(e.recipe.name, e.professionKey, e.yield) end else print("nil") end

-- Test non-craftable item
/dump CraftLib:GetRecipeByProduct(12345)
-- Expected: nil
```

### Testing Difficulty Calculation

```lua
-- Get difficulty at specific skill level
/run local r = CraftLib:GetRecipeBySpellId("cooking", 2538); print(CraftLib:GetRecipeDifficulty(r, 1))
-- Expected: "orange"

/run local r = CraftLib:GetRecipeBySpellId("cooking", 2538); print(CraftLib:GetRecipeDifficulty(r, 100))
-- Expected: "gray"
```

## Testing with Consumer Addons

After verifying CraftLib works standalone, test with LazyProf:

1. Enable both CraftLib and LazyProf
2. Open a profession window
3. Verify LazyProf displays data correctly
4. Check for errors in BugSack

## Common Issues

### "CraftLib is nil"

- Check TOC file includes all necessary files
- Verify load order: Constants.lua before Init.lua

### Recipe count is wrong

- Check file is listed in TOC
- Verify `RegisterProfession()` is called at end of file

### Missing data in recipe

- Check all required fields are present
- Verify itemId vs spellId (common mistake)

## Error Reporting

If you encounter errors:

1. Install BugSack + BugGrabber
2. Reproduce the issue
3. Open BugSack (`/bugsack`)
4. Copy full error text including stack trace
