# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Recipes that can only be learned with a profession specialization now say so: `recipe.specialization = { spellId, name }` (for example Chimeric Boots needs Tribal Leatherworking), read from the teaching item in the game data. A profession lists the specializations its recipes need in `specializations`. See SCHEMA.md, "Specializations".
- Per client: WoW Forever 89 recipes (Leatherworking 45, Blacksmithing 41, Engineering 3); Season of Discovery 90 (Blacksmithing 45, Leatherworking 42, Engineering 3); TBC 12 (Tailoring 9, Engineering 3); WotLK 14 (Tailoring 9, Engineering 5). The Vanilla data names no teaching items, so it carries none.

### Known limits
- WoW Forever: 23 recipes are marked `specialization = { unknown = true }` because the game data has no entry for their teaching item: 14 Gnomish and Goblin schematics, 7 Blacksmithing plans (Bleakwood Hew, Blood Talon, Darkspear, Heavy Obsidian Belt, three Ironvine pieces) and 2 Leatherworking patterns (Onyxia Scale Breastplate, Dreamscale Breastplate). TBC: 3 (Don Julio's Heart, Leather Gauntlets of the Sun, Gloves of Immortal Dusk).
- Recipes taught by a trainer carry no specialization: the data has no teaching item to read it from.

## [0.12.0] - 2026-11-22

### Added
- WoW Forever: Engineering (233 recipes) and Mining (7 smelting recipes) are now included; all nine professions load on Forever.
- WoW Forever recipes now also draw on the game data's own marks for recipes learned automatically and on Wowhead's Forever guide tables. 1,961 recipes ship (was 1,767 in seven professions), 78.8% of the in-game recipes with a known source (was 71.2% across the same nine professions). Per profession, shipped and known-source share: Alchemy 166 (87.6%), Blacksmithing 382 (77.4%), Enchanting 228 (83.2%), Engineering 233 (67.9%), Leatherworking 434 (72.9%), Tailoring 361 (82.8%), Cooking 122 (89.0%), First Aid 28 (96.6%), Mining 7 (77.8%).
- Maintainer tooling: `scripts/fetch_wowhead_guides.py` (guide tables to `Data/Sources/Forever/guide_facts.json`, with an on-disk page cache and `--inspect`), a listview `--inspect` mode in `scripts/fetch_wowhead_sources.py`, and `OFFLINE=1`, `FORCE=1`, `PAGES=<dir>` for `make forever-all`.

### Changed
- WoW Forever: 246 recipes left over from Season of Discovery (their created items do not exist in the Forever game data) are no longer treated as in-game recipes; 82 of them were shipped in 0.11.0 (Leatherworking 40, Blacksmithing 22, Tailoring 18, Alchemy 2). Purification Potion, marked as never learned in the game data, is no longer shipped either.
- WoW Forever: 19 recipes the game teaches automatically (for example Rough Blasting Powder, Smelt Copper, Linen Cloak) are now `starter` recipes available from skill 1; 15 of them could not be shipped before and four were listed as trainer recipes.
- WoW Forever: 209 recipes sold for Merchant's Favor that the wiki only called "Vendor" now carry the currency price instead of a copper price taken from the item data.
- WoW Forever: on 12 trainer recipes whose Classic learn skill is lower than the one the Forever guides give (for example Runed Silver Rod 100 / 130), the later value is used until an in-game trainer capture settles it.
- WoW Forever: a recipe's `skillRange.orange` (the skill it is learned at) may now be above `yellow` for the few recipes learned after their yellow threshold (for example Smelt Tin: learned at 65, yellow 50). Such a recipe is yellow or green from the moment it is learned.
- The coverage check that decides whether a Forever profession ships no longer counts skill points at which the game has no skill-up recipe at all (smelting between 185 and 299).

### Known limits
- WoW Forever: 113 recipes that exist in game are still left out because a learn skill or a source could not be established: no wiki row (39), two recipes sharing one name (31), no source and no teaching item (21), a wiki learn skill above the yellow threshold (11), other (11). Each is listed with its reason in `Data/Sources/Forever/REVIEW.md`.
- WoW Forever: learn skills and sources taken from guide tables are not confirmed in game yet.

## [0.11.0] - 2026-11-22

### Added
- WoW Forever (1.60, interface 16001) recipe data: a dedicated Forever bucket, detected at runtime ahead of the Classic Era / Season of Discovery checks (Forever shares interface major 1 with Classic Era). Built from the pinned 1.60.1.71037 game data plus the Warcraft Wiki recipe tables. Shipped recipes and the share of the in-game recipes that carry a known (non-UNKNOWN) source:
  - Alchemy 169 (72.0%), Blacksmithing 387 (69.4%), Enchanting 221 (73.7%), Leatherworking 467 (68.1%), Tailoring 373 (76.2%), Cooking 122 (77.3%), First Aid 28 (79.3%) - 1,767 recipes in total.
  - Engineering and Mining are held back until an in-game capture confirms their trainer and smelting data; they are not loaded on Forever yet.
  - Recipes whose source could not be established ship with the new `unknown` source type; every excluded recipe and its reason is listed in `Data/Sources/Forever/REVIEW.md`.
  - Skill-range milestones for Forever (75/150/225/300) are unverified until confirmed in game.
- New source type `SOURCE_TYPE.UNKNOWN` ("unknown"): the source is not established, so the recipe is usable only when learned, owned or bought. It is never a cost claim. Only the Forever bucket emits it.
- `source.currency = { name, amount }` for recipes bought with a non-copper currency (Merchant's Favor); such a source has no `cost`, which means "not payable in copper", never free.
- `recipe.tools`: the tools or tool categories a recipe requires (Forever only for now), as `{ categoryId, name }` or `{ itemId, name }`.
- `EXPANSION.FOREVER` and profile `FOREVER` (`CraftLib:GetActiveProfile()` returns it on WoW Forever).
- Maintainer tooling for the Forever bucket: wiki fetch and parse (`scripts/fetch_wiki_sources.py`), resolver (`scripts/forever_resolve.py`), in-game capture import (`scripts/import_probe.py`) and the coverage report (`Data/Sources/Forever/REVIEW.md`).

### Changed
- An unrecognized game client now loads no recipe data and says so at login, instead of silently using another client's data. Supported clients (Classic Era / Anniversary 1.15, TBC 2.5, WotLK 3.3.5a and 3.4, Titan 3.80) are unaffected.

### Fixed
- Reading the addon version at login no longer assumes `C_AddOns` exists; clients without it use `GetAddOnMetadata`.

## [0.10.2] - 2026-06-30

### Fixed
- Corrected the WotLK 3.3.5a client interface from 30305 to 30300, so CraftLib is no longer flagged out of date on 3.3.5a realms.

## [0.10.1] - 2026-06-30

### Added

- Interface support for additional Wrath of the Lich King clients: the WotLK 3.4.5 client and the Titan (3.80) WotLK seasonal client now load CraftLib without an out-of-date warning. Titan uses the WotLK recipe data.

## [0.10.0] - 2026-06-30

### Added

- Per-expansion client profiles: one install now serves Classic Era / Vanilla, Season of Discovery, TBC, and WotLK Classic clients, each loading recipe data built from its own game version. Generalizes the previous Season-of-Discovery flavor selection into a four-way profile (Vanilla / TBC / WotLK / SoD) chosen automatically per client.
- WotLK Classic recipe data: a full Wrath of the Lich King bucket for all eleven professions, including Inscription, with the skill cap raised to 450. Glyphs report their true acquisition (learned via Inscription Research or the Book of Glyph Mastery) rather than as trainer-taught recipes.
- Classic Era / Vanilla recipe data: a dedicated cap-300 bucket for non-seasonal Era clients, with Season-of-Discovery-only recipes correctly excluded.
- Targets WotLK Classic (interface 30403) alongside Classic Era / Anniversary and TBC.

## [0.9.0] - 2026-06-27

### Added

- Vendor-reagent pricing: a curated, in-game-verified per-unit vendor BUY price table (`Data/<Flavor>/VendorPrices.lua`) for confirmed vendor-stocked crafting reagents (threads, vials, dyes, salt, spices, flux, coal), plus a `CraftLib:GetVendorBuyPrice(itemId)` query returning per-unit copper or nil. Prices are derived per-unit from game data (dividing the batch buy price by the vendor stack size) so they stay accurate across patches.
- Season of Discovery: nine Phase-8 recipes that were previously missing now appear with their true acquisition source - five quest-taught (the Specklefin Feast and Grand Lobster Banquet feasts, and the Teleport / Nitro Boosts / Magnetic Displacement tinkers) and four learned by discovery (the Grand Crusader, Grand Arcanist, Grand Sorceror, and Grand Inquisitor weapon enchants). Adds end-to-end support for the discovery source type.

## [0.8.1] - 2026-06-26

### Fixed

- Season of Discovery: more recipes that were wrongly shown as trainer-taught now report their real source - chiefly reputation recipes (with faction and standing), plus quest rewards, vendor plans (with cost), and world drops. Classic/TBC data is unchanged.

## [0.8.0] - 2026-06-26

### Fixed

- Season of Discovery: corrected recipe sources that were wrongly shown as trainer-taught. Drop, vendor, and quest recipes (e.g. Pattern: Fine Leather Boots) now report their real source. Classic/TBC data is unchanged.

### Added

- Source-classification audit and a resumable Wowhead verification pass in the data pipeline to prevent recurrence.

## [0.7.0] - 2026-06-25

### Added

- Season of Discovery Mining: smelting recipes (`Data/SoD/Mining/`) are now bundled, completing SoD profession coverage. 13 smelting recipes including the seasonal Smelt Obsidian-Infused Thorium Bar.

## [0.6.0] - 2026-06-24

### Added

- Season of Discovery support: a SoD client now registers the SoD recipe dataset (`Data/SoD/`) instead of the Vanilla/TBC set. Detection is by `C_Seasons.GetActiveSeason()`; non-matching datasets are skipped at load via a new flavor guard in `RegisterProfession`. New API: `CraftLib:GetActiveFlavor()`.

## [0.5.0] - 2026-02-23

### Added

- Enchantment recipes (Enchant Bracer, Enchant Boots, etc.) - previously only item-producing recipes (rods, wands, oils) were included
- Support for recipes without crafted items (`itemId` is now optional)
- 4 additional removed recipes (55 total): material conversions and seasonal event recipe

## [0.3.0] - 2026-02-11

### Added

- STARTER source type for auto-learned recipes (e.g., Herb Baked Egg)
- Training cost data for trainer-learned recipes
- DISCOVERY and WORLD_DROP source types reserved for future use

### Changed

- Pipeline rewrite: single-pass Wowhead fetch replaces three separate modes
- All 1,925 recipes now have Wowhead-verified source classifications
- Source reclassifications: ~200 recipes corrected from VENDOR/DROP to TRAINER where trainable in TBC
- Scripts fail loudly on missing data instead of silently defaulting to zero

### Removed

- 6 additional removed/unverifiable recipes (51 total filtered from DB2)
- `source_overrides.json` and `validate_sources.py` (obsolete)

## [0.2.12] - 2026-01-30

### Fixed

- Engineering difficulty data corrected from Wowhead TBC:
  - Steam Tonk Controller: yellow 295->275, green 305->280, gray 315->285
  - Thorium Shells: yellow 305->295, green 315->300, gray 325->305
- Enchanting "conversion" recipes (Large Prismatic Shard, Small Prismatic Shard, Void Shatter) now require correct skill level (335/375)
- Fixed orange=0, yellow=0 recipes using gray as skillRequired (prevents conversion recipes appearing at skill 1)

## [0.2.11] - 2026-01-28

### Fixed

- Improved orange=0 recipe handling with threshold-based skill requirements
- Early-game recipes (yellow ≤ 75) now correctly use skillRequired=1
- Late-game recipes (yellow > 75) use yellow value as skillRequired
- Fixes Jewelcrafting and Mining showing empty paths for unlearned professions
- Prevents high-level Alchemy flasks/transmutes from appearing at skill 1

## [0.2.10] - 2026-01-27

### Added

- Welcome message on load showing version (e.g., "CraftLib v0.2.10 loaded.")

## [0.2.7] - 2026-01-26

### Fixed

- Filtered 45 removed/placeholder recipes from generated Lua files
- Recipes without Wowhead-verified difficulty are now excluded (never implemented or removed from game)
- Examples: Crystal Infused Bandage, Stormcloth set, Goblin Radio, Explosive Arrow

## [0.2.6] - 2026-01-25

### Fixed

- Fixed Wowhead fetch script parsing bug that captured wrong difficulty data
- Script now looks for spell-specific data instead of first match on page
- Re-fetched corrupted recipes: Fel Iron Bomb, Adamantite Grenade, Cooking TBC recipes, Netherweave Bandages
- Added --spells flag to allow re-fetching specific recipes even if already verified

## [0.2.5] - 2026-01-25

### Fixed

- Specialty recipes with orange=0 (e.g., Dimensional Ripper - Area 52) now use the correct skillRequired value
- Generator now uses first non-zero threshold (yellow/green/gray) when orange=0
- Fixes pathfinder suggesting high-level specialty items at low skill levels

## [0.2.4] - 2026-01-24

### Fixed

- All 10 professions now have Wowhead-verified difficulty values (93-100% coverage)
- Removed calculated orange values that were incorrect for some recipes
- Total: 1929/1974 recipes (97.7%) verified from Wowhead

## [0.2.3] - 2026-01-24

### Added

- Automated releases via GitHub Actions (CurseForge, Wago.io, GitHub Releases)

## [0.2.2] - 2026-01-24

### Fixed

- First Aid skillRequired values verified from Wowhead (e.g., Runecloth Bandage: 200→260)
- Cooking skillRequired values verified from Wowhead (116 recipes)

## [0.2.1] - 2026-01-23

### Added
- Icon display in WoW addon list (IconTexture in TOC)

## [0.2.0] - 2026-01-23

### Added

- Automated recipe generation from DB2 data (`scripts/generate_recipes.py`)
- `make update-data` command for one-step data refresh
- Full skillRange values extracted from DB2 (no more manual curation)
- Source detection: trainer, vendor, drop, reputation
- `GetRecipeByProduct(itemId)` API - Reverse lookup to find all recipes that produce a given item
- `yield` field in recipe schema - Number of items produced per craft (defaults to 1)
- Mining profession (smelting recipes) - Vanilla and TBC ore-to-bar conversions
- Engineering profession - Complete with ~100 recipes covering Vanilla and TBC, including Gnomish and Goblin specializations
- `scripts/validate_sources.py` - Validation script to detect suspicious recipe sources
- `scripts/extract_db2_sources.py` - Extract certain sources (TRAINER, REPUTATION, QUEST) from DB2
- `scripts/fetch_wowhead_sources.py` - Verify uncertain sources (VENDOR vs DROP) via Wowhead
- Makefile targets: `extract-sources`, `verify-sources`, `update-profession`

### Changed

- Recipe data now generated from DB2 instead of manual curation
- Recipe source detection now uses verified data instead of heuristics
- First Aid and Cooking sources verified against Wowhead
- Cooking recipes corrected: 99 recipes changed from TRAINER to accurate sources (VENDOR/QUEST/DROP)

### Fixed

- First Aid recipe sources corrected: Heavy Silk Bandage, Mageweave Bandage, etc. now correctly marked as VENDOR
- Cooking recipe sources corrected: All 116 recipes now have accurate source types

## [0.1.0] - 2026-01-21

### Added

- Crafting recipe database API for WoW addon developers
- First Aid recipes for TBC
- Cooking recipes for TBC
- Vendor NPCs with IDs, names, locations, and faction info
- Quest details with IDs and names
- Training costs where applicable
- Project README with features, API usage, and data structure
- SCHEMA.md documenting data structure and source object schema
- CurseForge description template for uploads

### Fixed

- Crab Cake spell ID (was 2542, now 2544)
- Converted trainer-sourced fish recipes to vendor-sourced (Brilliant Smallfish, Slitherskin Mackerel, etc.)

### Changed

- Moved SCHEMA.md from docs/ to root for public access

[Unreleased]: https://github.com/kaldown/CraftLib/compare/v0.3.0...HEAD
[0.3.0]: https://github.com/kaldown/CraftLib/compare/v0.2.12...v0.3.0
[0.2.12]: https://github.com/kaldown/CraftLib/compare/v0.2.11...v0.2.12
[0.2.11]: https://github.com/kaldown/CraftLib/compare/v0.2.10...v0.2.11
[0.2.10]: https://github.com/kaldown/CraftLib/compare/v0.2.7...v0.2.10
[0.2.7]: https://github.com/kaldown/CraftLib/compare/v0.2.6...v0.2.7
[0.2.6]: https://github.com/kaldown/CraftLib/compare/v0.2.5...v0.2.6
[0.2.5]: https://github.com/kaldown/CraftLib/compare/v0.2.4...v0.2.5
[0.2.4]: https://github.com/kaldown/CraftLib/compare/v0.2.3...v0.2.4
[0.2.3]: https://github.com/kaldown/CraftLib/compare/v0.2.2...v0.2.3
[0.2.2]: https://github.com/kaldown/CraftLib/compare/v0.2.1...v0.2.2
[0.2.1]: https://github.com/kaldown/CraftLib/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/kaldown/CraftLib/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/kaldown/CraftLib/releases/tag/v0.1.0
