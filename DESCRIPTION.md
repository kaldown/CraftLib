[![CurseForge](https://img.shields.io/badge/CurseForge-CraftLib-orange)](https://www.curseforge.com/wow/addons/craftlib)
[![Wago](https://img.shields.io/badge/Wago-CraftLib-c1272d)](https://addons.wago.io/addons/craftlib)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PayPal](https://img.shields.io/badge/Donate-PayPal-00457C?logo=paypal&logoColor=white)](https://www.paypal.com/donate/?hosted_button_id=FG4KES3HNPLVG)

If you find this useful, consider [supporting development](https://www.paypal.com/donate/?hosted_button_id=FG4KES3HNPLVG).

Other addons:
- [LazyProf](https://www.curseforge.com/wow/addons/lazyprof) - Profession leveling optimizer
- [VendorSniper](https://www.curseforge.com/wow/addons/vendorsniper) - Vendor restock sniper
- [Silencer](https://www.curseforge.com/wow/addons/silencer-whispers) - Whisper gatekeeper
- [PickMe](https://www.curseforge.com/wow/addons/pickme) - LFG listing browser
- [EyesOnMe](https://www.curseforge.com/wow/addons/eyesonme) - PvP targeting awareness

---

CraftLib is a standalone library addon providing a complete crafting recipe database for World of Warcraft addon developers.

> **This is a developer library** - It has no UI on its own. Other addons (like [LazyProf](https://www.curseforge.com/wow/addons/lazyprof)) use CraftLib for recipe data.

## What's Included

- **Complete recipe data** - Skill levels, reagents, difficulty thresholds
- **Source information** - Where every recipe comes from (trainers, vendors, quests, drops, reputation)
- **Clean API** - Simple query functions for easy integration
- **Fast lookups** - Query by spell ID or crafted item ID

## Profession Coverage

See the [up-to-date profession coverage list on GitHub](https://github.com/kaldown/CraftLib#profession-coverage).

## For Addon Developers

Add CraftLib as a dependency in your `.toc` file:

```
## Dependencies: CraftLib
```

### API Example

```lua
local recipes = CraftLib:GetRecipes("cooking")
local available = CraftLib:GetAvailableRecipes("cooking", 225)
local recipe = CraftLib:GetRecipeBySpellId("cooking", 33359)
local difficulty = CraftLib:GetRecipeDifficulty(recipe, 300)
```

### Available Functions

- `CraftLib:IsReady()` - Check if database has loaded
- `CraftLib:GetProfessions()` - Get all registered professions
- `CraftLib:GetRecipes(key)` - Get all recipes for a profession
- `CraftLib:GetAvailableRecipes(key, skillLevel)` - Filter by skill level
- `CraftLib:GetRecipeBySpellId(key, spellId)` - Lookup by spell ID
- `CraftLib:GetRecipeByItemId(itemId)` - Lookup by crafted item ID
- `CraftLib:GetRecipeByProduct(itemId)` - Find all recipes that produce an item
- `CraftLib:GetRecipeDifficulty(recipe, skillLevel)` - Get difficulty color

## Supported Game Versions

- Classic Era
- Season of Discovery
- Anniversary
- Hardcore

## Addons Using CraftLib

- [LazyProf](https://www.curseforge.com/wow/addons/lazyprof) - Profession leveling optimizer
