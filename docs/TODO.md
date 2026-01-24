# CraftLib TODO

## PRIORITY: Fix Difficulty Data (v0.2.2)

**Issue:** Orange (skill required) values were calculated using formula `2 * yellow - gray`, which is incorrect for some recipes.

**Progress:**
- ✅ Cooking - 116/116 (100%) - Complete
- ✅ Mining - 21/21 (100%) - Complete
- ✅ Engineering - 240/250 (96%) - 10 recipes don't exist on Wowhead (likely removed)
- ✅ Enchanting - 30/31 (96%) - 1 recipe (Arcane Dust) missing on Wowhead
- ✅ First Aid - 15/16 (93%) - Crystal Infused Bandage has no difficulty data on Wowhead
- ⚠️ Alchemy - 13/186 (6%) - Rate limited, needs more batches
- ❌ Blacksmithing - 0/385 - Not started (rate limited)
- ❌ Jewelcrafting - 0/261 - Not started (rate limited)
- ❌ Leatherworking - 0/379 - Not started (rate limited)
- ❌ Tailoring - 0/329 - Not started (rate limited)

### Remaining Steps

Wowhead rate limits requests (403 Forbidden after ~20 requests). Need to wait and retry:

```bash
cd /Users/kaldown/Projects/WoW/addons/LazyProf/Libs/CraftLib

# Wait a few hours, then fetch each profession with delays
python scripts/fetch_wowhead_sources.py --profession [Profession] --difficulty

# After all are fetched, regenerate
python scripts/generate_recipes.py --version 2.5.5.65463 --expansion 2
```

### Background

DB2 only provides yellow and gray values. Orange cannot be reliably calculated because some recipes have non-uniform gaps between difficulty colors.

---

*Delete this file after all professions are verified.*
