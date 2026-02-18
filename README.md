# CraftLib

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

Comprehensive crafting recipe database and API for World of Warcraft addon developers.

## Features

- Complete recipe data with skill levels, reagents, and difficulty thresholds
- Source information for every recipe (trainers, vendors, quests, drops, reputation)
- Fast lookups by spell ID or crafted item ID
- Skill-based filtering and difficulty calculation

## Profession Coverage

All 10 professions are complete with Wowhead-verified difficulty data:

| Profession | Recipes | Coverage |
|------------|---------|----------|
| Alchemy | 182 | Complete |
| Blacksmithing | 375 | Complete |
| Cooking | 116 | Complete |
| Enchanting | 30 | Complete |
| Engineering | 239 | Complete |
| First Aid | 15 | Complete |
| Jewelcrafting | 257 | Complete |
| Leatherworking | 376 | Complete |
| Mining | 21 | Complete (smelting) |
| Tailoring | 314 | Complete |

## Usage

Add CraftLib as a dependency in your `.toc` file:

```
## Dependencies: CraftLib
```

### API

```lua
-- Check if database is ready
if CraftLib:IsReady() then
    -- Get all recipes for a profession
    local recipes = CraftLib:GetRecipes("cooking")

    -- Filter by skill level
    local available = CraftLib:GetAvailableRecipes("cooking", 225)

    -- Look up by spell ID
    local recipe = CraftLib:GetRecipeBySpellId("cooking", 33359)

    -- Look up by crafted item ID
    local recipe = CraftLib:GetRecipeByItemId(27667)

    -- Find all recipes that produce an item (reverse lookup)
    local producers = CraftLib:GetRecipeByProduct(27667)

    -- Get difficulty color (orange/yellow/green/gray)
    local difficulty = CraftLib:GetRecipeDifficulty(recipe, 300)
end
```

### Available Functions

| Function | Description |
|----------|-------------|
| `IsReady()` | Check if database has loaded |
| `GetProfessions()` | Get all registered professions |
| `GetProfession(key)` | Get a specific profession |
| `GetRecipes(key)` | Get all recipes for a profession |
| `GetAvailableRecipes(key, skillLevel)` | Filter recipes by skill level |
| `GetRecipeBySpellId(key, spellId)` | Look up recipe by spell ID |
| `GetRecipeByItemId(itemId)` | Look up recipe by crafted item ID |
| `GetRecipeByProduct(itemId)` | Find all recipes that produce an item |
| `GetRecipeDifficulty(recipe, skillLevel)` | Get difficulty color |

## Recipe Data Structure

Each recipe contains:

| Field | Description |
|-------|-------------|
| `id` | Spell ID |
| `name` | Recipe name |
| `itemId` | Crafted item ID |
| `skillRequired` | Minimum skill to learn and craft |
| `skillRange` | Difficulty thresholds `{orange, yellow, green, gray}` |
| `reagents` | List of `{itemId, name, count}` |
| `source` | How to obtain (trainer, vendor, quest, drop, reputation) |
| `expansion` | Which expansion the recipe belongs to |

## Data Generation

CraftLib recipe data uses a three-phase pipeline for verified source accuracy:

### Phase 1: Extract from DB2

```bash
# Extract certain sources (TRAINER, REPUTATION, QUEST) from DB2
python scripts/extract_db2_sources.py --version 2.5.5.65463 --profession FirstAid
```

### Phase 2: Verify Sources and Difficulty from Wowhead

```bash
# Single-pass: fetches difficulty + source + trainer status from Wowhead
python scripts/fetch_wowhead_sources.py --profession FirstAid
```

### Phase 3: Generate Recipes.lua

```bash
# Generate Lua from verified sources (fails if any PENDING)
python scripts/generate_recipes.py --version 2.5.5.65463 --profession FirstAid
```

Verified sources are stored in `Data/Sources/TBC/*.json` (gitignored). 51 removed/never-implemented recipes are filtered from the output (tracked in `Data/Sources/removed_recipes.json`).

### Data Sources

- **DB2 Tables:** Spell, SpellName, SpellEffect, SpellReagents, Item, ItemSparse, SkillLine, SkillLineAbility, ItemEffect, Faction
- **Wowhead:** Source verification (VENDOR vs DROP) and difficulty thresholds
- **Fetcher:** [db2-parser](https://github.com/kaldown/db2-parser) submodule

## Addons Using CraftLib

- [LazyProf](https://github.com/kaldown/LazyProf) - Profession leveling optimizer

## Supported Game Versions

- Classic Era
- Season of Discovery
- Anniversary
- Hardcore

## License

MIT - See [LICENSE](LICENSE) for details.
