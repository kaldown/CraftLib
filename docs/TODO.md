# CraftLib TODO

## PRIORITY: Fix Difficulty Data (v0.2.2)

**Issue:** Orange (skill required) values were calculated using formula `2 * yellow - gray`, which is incorrect for some recipes.

**Progress:**
- ✅ First Aid - 15/16 recipes verified (Crystal Infused Bandage failed)
- ✅ Cooking - 116/116 recipes verified
- ⚠️ Engineering - 20/248 recipes verified (rate limited)
- ❌ Alchemy - sources extracted, difficulty not fetched
- ❌ Blacksmithing - sources extracted, difficulty not fetched
- ❌ Enchanting - sources extracted, difficulty not fetched
- ❌ Jewelcrafting - sources extracted, difficulty not fetched
- ❌ Leatherworking - sources extracted, difficulty not fetched
- ❌ Mining - sources extracted, difficulty not fetched
- ❌ Tailoring - sources extracted, difficulty not fetched

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
