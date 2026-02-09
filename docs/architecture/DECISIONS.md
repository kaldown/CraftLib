# Architecture Decision Records

## ADR-001: Standalone Addon vs Embedded Library

**Date**: 2026-01-20

**Status**: Accepted

**Context**: Recipe data could be embedded in each consuming addon or shared via a standalone library.

**Decision**: CraftLib is a standalone addon that other addons depend on.

**Rationale**:
- Single source of truth for recipe data
- Updates to recipe data benefit all consumers
- Reduces memory footprint (one copy of data)
- Clear API contract between data provider and consumers

**Consequences**:
- Users must install both CraftLib and consumer addons
- Version compatibility must be managed

---

## ADR-002: Expansion-Based Data Organization

**Date**: 2026-01-20

**Status**: Accepted

**Context**: Recipe data spans multiple WoW expansions with different content.

**Decision**: Organize data by expansion: `Data/TBC/`, future `Data/Classic/`, etc. Apply the same expansion-based organization to intermediate source files: `Data/Sources/TBC/`, `Data/Sources/Classic/`, etc.

**Rationale**:
- Clear separation for different game versions
- TBC data includes Vanilla recipes (TBC Classic plays both)
- Easy to add expansion-specific content
- Supports potential Classic Era / Season of Discovery variants
- Same recipe can have different difficulty values across expansions, so source verification data must also be per-expansion

**Consequences**:
- Some duplication if recipes exist across expansions
- Must decide which expansion "owns" shared recipes

---

## ADR-003: Reverse Lookup Index (productIndex)

**Date**: 2026-01-21

**Status**: Accepted

**Context**: LazyProf needs to compare "buy item" vs "craft item from materials" for cost optimization.

**Decision**: Build a reverse lookup index mapping item IDs to all recipes that produce them.

**Rationale**:
- Enables "craft vs buy" comparisons
- O(1) lookup performance
- Some items have multiple recipes (different professions)
- `yield` field tracks items produced per craft

**API**: `CraftLib:GetRecipeByProduct(itemId)` returns `{ recipe, professionKey, yield }[]`

**Consequences**:
- Additional memory for productIndex table
- Must maintain index during registration
- Consumers can now discover crafting alternatives

---

## ADR-004: Nil vs Empty Array Returns

**Date**: 2026-01-21

**Status**: Accepted

**Context**: API functions need consistent return values for "not found" cases.

**Decision**: Return `nil` for not found, not empty arrays.

**Rationale**:
- `if result then` is simpler than `if #result > 0 then`
- Consistent with WoW API patterns
- Clear semantic: nil = doesn't exist, {} = exists but empty

**Affected Functions**:
- `GetRecipeBySpellId()` - returns nil if not found
- `GetRecipeByItemId()` - returns nil if not found
- `GetRecipeByProduct()` - returns nil if not craftable

---

## ADR-005: orange=0 Recipe Skill Threshold at 75

**Date**: 2026-01-27

**Status**: Accepted

**Context**: Some Wowhead recipes have `orange = 0`, meaning "always 100% skillup until yellow threshold". This creates a problem: without special handling, late-game recipes like Flask of Fortification (yellow=390) would appear as candidates at skill level 1.

Three categories of orange=0 recipes exist:
1. **Early-game** (yellow <= 75): Starter recipes like Delicate Copper Wire
2. **Late-game** (yellow > 75): High-level recipes like Flasks and Transmutes
3. **Conversion** (yellow = 0, gray > 0): Material conversions like Large Prismatic Shard

**Decision**: Use 75 as the threshold to distinguish early-game from late-game:

```python
if orange > 0:
    skill_required = orange
elif yellow == 0:
    skill_required = gray     # Conversion recipe
elif yellow <= 75:
    skill_required = 1        # Early-game: available from start
else:
    skill_required = yellow   # Late-game: use yellow as requirement
```

**Rationale**:
- 75 is the first profession milestone (Apprentice to Journeyman)
- Recipes with yellow <= 75 are "starter" recipes meant for new characters
- This prevents Flask of Fortification appearing at skill 1

**Alternatives Considered**:

1. **Always use yellow for orange=0** - Rejected: Would make early recipes unavailable at skill 1
2. **Always use 1 for orange=0** - Rejected: Would show late-game recipes at skill 1
3. **Manual per-recipe overrides** - Rejected: Too much maintenance, error-prone
4. **Different threshold (50, 100)** - Rejected: 75 matches the profession milestone boundary

**Trade-offs Accepted**:
- Threshold is somewhat arbitrary (profession milestone alignment helps justify it)
- Some edge cases near 75 may feel "wrong" to users
- Conversion recipes use gray value which may not always be accurate

**Consequences**:
- `generate_recipes.py` implements this logic
- ~30 recipes across professions affected
- LazyProf pathfinder correctly filters candidates by skill level

---

## ADR-006: Filter Removed/Beta Recipes from Generated Lua

**Date**: 2026-01-28

**Status**: Accepted

**Context**: DB2 data includes 45 recipes that were:
- In Beta/PTR but removed before live
- Planned but never implemented
- Removed in patches

These recipes exist in DB2 but have no Wowhead difficulty data (indicating they don't exist in the live game). Examples include Crystal Infused Bandage (uses placeholder reagent `zzOLD[PH] Silithus PvP Dust [DEP]`).

**Decision**: Automatically filter recipes from generated Lua if they:
1. Belong to a profession with verified source data
2. Have no `difficulty` key in source JSON (no Wowhead data found)

Track filtered recipes in `Data/Sources/removed_recipes.json` for future review.

**Rationale**:
- Prevents invalid recipes from appearing in pathfinder
- Missing Wowhead data is a reliable signal for removed content
- JSON tracking file allows periodic re-verification

**Alternatives Considered**:

1. **Include all DB2 recipes** - Rejected: Would include non-existent recipes
2. **Manual removal list** - Rejected: Hard to maintain, easy to miss recipes
3. **Mark as "removed" in Lua** - Rejected: Consumers would need to filter, adds complexity
4. **Per-profession removal** - Rejected: Centralized tracking is easier to audit

**Trade-offs Accepted**:
- Some legitimate recipes with missing Wowhead data might be filtered
- Requires periodic review when TBC stabilizes
- 45 recipes currently filtered (2-3% per profession)

**Consequences**:
- `generate_recipes.py` skips recipes without difficulty data
- `removed_recipes.json` tracks filtered recipes with spell ID and name
- Recipe counts in README reflect filtered totals
- Clean data for pathfinder with no invalid suggestions
