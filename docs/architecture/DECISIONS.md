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

**Decision**: Organize data by expansion: `Data/TBC/`, `Data/Wrath/`, etc.

**Rationale**:
- Clear separation for different game versions
- TBC data includes Vanilla recipes (TBC Classic plays both)
- Easy to add expansion-specific content
- Supports potential Classic Era / Season of Discovery variants

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
