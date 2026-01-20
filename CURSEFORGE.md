# CurseForge Description

Copy this when uploading new versions.

---

## Short Description

```
Comprehensive crafting recipe database and API for addon developers. Contains recipe data, skill requirements, reagents, and source information.
```

---

## Main Description

```markdown
CraftDB is a standalone library addon providing a complete crafting recipe database for World of Warcraft addon developers.

> **This is a developer library** - It has no UI on its own. Other addons (like [LazyProf](https://www.curseforge.com/wow/addons/lazyprof)) use CraftDB for recipe data.

## What's Included

- **Complete recipe data** - Skill levels, reagents, difficulty thresholds
- **Source information** - Where every recipe comes from (trainers, vendors, quests, drops, reputation)
- **Clean API** - Simple query functions for easy integration
- **Fast lookups** - Query by spell ID or crafted item ID

## Profession Coverage

| Profession | Status |
|------------|--------|
| Cooking | Complete |
| First Aid | Complete |
| Alchemy | In Progress |
| Blacksmithing | In Progress |
| Enchanting | In Progress |
| Engineering | In Progress |
| Jewelcrafting | In Progress |
| Leatherworking | In Progress |
| Tailoring | In Progress |

## For Addon Developers

Add CraftDB as a dependency in your `.toc` file:

## Dependencies: CraftDB

### API Example

local recipes = CraftDB:GetRecipes("Cooking")
local available = CraftDB:GetAvailableRecipes("Cooking", 225)
local recipe = CraftDB:GetRecipeBySpellId("Cooking", 33359)
local difficulty = CraftDB:GetRecipeDifficulty(recipe, 300)

### Available Functions

- `CraftDB:IsReady()` - Check if database has loaded
- `CraftDB:GetProfessions()` - Get all registered professions
- `CraftDB:GetRecipes(key)` - Get all recipes for a profession
- `CraftDB:GetAvailableRecipes(key, skillLevel)` - Filter by skill level
- `CraftDB:GetRecipeBySpellId(key, spellId)` - Lookup by spell ID
- `CraftDB:GetRecipeByItemId(itemId)` - Lookup by crafted item ID
- `CraftDB:GetRecipeDifficulty(recipe, skillLevel)` - Get difficulty color

## Addons Using CraftDB

- [LazyProf](https://www.curseforge.com/wow/addons/lazyprof) - Profession leveling optimizer
```

---

## Changelog Template

```markdown
## v0.X.X

**New Data:**
- Profession 1: X recipes added

**Changes:**
- Item 1

**Fixes:**
- Fix 1
```

---

## Upload Checklist

1. Update version in `CraftDB.toc`
2. Update changelog above
3. Package: exclude `.git/`, `docs/`, `.idea/`
4. Upload to CurseForge
5. Tag release: `git tag v0.X.X && git push --tags`
