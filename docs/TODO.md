# CraftLib TODO

## Review: DISCOVERY source type for world-object recipes

Some recipes are learned by interacting with game objects in the world, not from trainers/vendors/drops. Currently classified as DROP or VENDOR because the schematic item exists in DB2, but the actual in-game acquisition is different.

**Known examples:**
- Field Repair Bot 74A (Engineering, spell 22704) - learned from object near Blade's Edge Mountains, requires 300 Engineering
- Minor Recombobulator (Engineering, spell 3952) - learned from object in Gnomeregan
- Some Tailoring specialization recipes learned from world interaction

**Current state:** These use DROP/VENDOR. DISCOVERY exists in Constants.lua but no recipes use it yet. Low priority — revisit if users report incorrect source info.

---

## Resolved

### Fix Difficulty Data (v0.2.2 - v0.2.12)

All 10 professions verified from Wowhead (100% coverage). 51 removed/never-implemented recipes filtered. See `Data/Sources/removed_recipes.json`.
