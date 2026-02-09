# CraftLib TODO

## ✅ COMPLETED: Fix Difficulty Data (v0.2.2)

**Issue:** Orange (skill required) values were calculated using formula `2 * yellow - gray`, which is incorrect for some recipes.

**Status: ALL PROFESSIONS VERIFIED (93-100%)**

| Profession | Verified | Notes |
|------------|----------|-------|
| Cooking | 116/116 (100%) | Complete |
| Mining | 21/21 (100%) | Complete |
| Leatherworking | 377/379 (99%) | 2 removed recipes |
| Jewelcrafting | 259/261 (99%) | 2 removed recipes |
| Alchemy | 182/186 (97%) | 4 removed recipes |
| Blacksmithing | 375/385 (97%) | 10 no Wowhead data |
| Enchanting | 30/31 (96%) | 1 removed recipe |
| Engineering | 240/250 (96%) | 10 removed recipes |
| Tailoring | 314/329 (95%) | 15 removed recipes |
| First Aid | 15/16 (93%) | 1 removed recipe |
| **TOTAL** | **1929/1974 (97.7%)** | |

Recipes.lua files regenerated with verified Wowhead difficulty data.

### Known Removed/Missing Recipes

See `Data/Sources/removed_recipes.json` for recipes that exist in DB2 but were removed or have no Wowhead data.

---

*Difficulty verification complete. This file can be archived or deleted.*
