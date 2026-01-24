# CraftLib TODO

## PRIORITY: Fix Difficulty Data (v0.2.2)

**Issue:** Orange (skill required) values were calculated using formula `2 * yellow - gray`, which is incorrect for some recipes (e.g., Silver Contact shows 80 but should be 90).

**Solution:** Fetch verified difficulty from Wowhead for all professions.

### Steps

```bash
cd /Users/kaldown/Projects/WoW/addons/LazyProf/Libs/CraftLib

# 1. Fetch difficulty for each profession with Sources JSON
python scripts/fetch_wowhead_sources.py --profession Engineering --difficulty
python scripts/fetch_wowhead_sources.py --profession Cooking --difficulty
python scripts/fetch_wowhead_sources.py --profession FirstAid --difficulty

# 2. Regenerate all recipe Lua files
python scripts/generate_recipes.py --version 2.5.5.65463 --expansion 2

# 3. Verify changes
git diff Data/TBC/*/Recipes.lua

# 4. Commit
git add Data/Sources/*.json Data/TBC/*/Recipes.lua
git commit -m "fix(data): use verified difficulty from Wowhead"

# 5. Update CHANGELOG.md, bump version, release
```

### Background

DB2 only provides yellow and gray values. Orange cannot be reliably calculated because some recipes have non-uniform gaps between difficulty colors.

See: `vendor/db2-parser/schema/SkillLineAbility.md`

---

*Delete this file after completing the task.*
