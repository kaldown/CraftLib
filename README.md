# CraftLib

[![CurseForge](https://img.shields.io/badge/CurseForge-CraftLib-orange)](https://www.curseforge.com/wow/addons/craftlib)
[![Wago](https://img.shields.io/badge/Wago-CraftLib-c1272d)](https://addons.wago.io/addons/craftlib)
[![License: All Rights Reserved](https://img.shields.io/badge/License-All_Rights_Reserved-red.svg)](LICENSE)
[![PayPal](https://img.shields.io/badge/Donate-PayPal-00457C?logo=paypal&logoColor=white)](https://www.paypal.com/donate/?hosted_button_id=FG4KES3HNPLVG)
[![Buy Me a Coffee](https://img.shields.io/badge/Buy_Me_A_Coffee-FFDD00?logo=buy-me-a-coffee&logoColor=black)](https://buymeacoffee.com/kaldown)

If you find this useful, consider supporting development via [PayPal](https://www.paypal.com/donate/?hosted_button_id=FG4KES3HNPLVG) or [Buy Me a Coffee](https://buymeacoffee.com/kaldown).

Other addons:
- [LazyProf](https://www.curseforge.com/wow/addons/lazyprof) - Profession leveling optimizer
- [VendorSniper](https://addons.wago.io/addons/vendorsniper) - Vendor restock sniper
- [Silencer](https://www.curseforge.com/wow/addons/silencer-whispers) - Whisper gatekeeper
- [PickMe](https://www.curseforge.com/wow/addons/pickme) - LFG listing browser
- [EyesOnMe](https://www.curseforge.com/wow/addons/eyesonme) - PvP targeting awareness

Comprehensive crafting recipe database and API for World of Warcraft addon developers.

## Features

- Complete recipe data with skill levels, reagents, and difficulty thresholds
- Source information for every recipe (trainers, vendors, quests, drops, reputation, discovery), or on WoW Forever an `unknown` marker where no source is established yet
- Fast lookups by spell ID or crafted item ID
- Skill-based filtering and difficulty calculation
- Per-expansion data: one install serves Classic Era / Vanilla, Season of Discovery, The Burning Crusade, Wrath of the Lich King, and WoW Forever - it detects the running client and loads the matching recipe set automatically

## Coverage

CraftLib bundles a separate, cumulative recipe set for each Classic-family client and registers the correct one automatically (no configuration):

| Client | Professions | Skill cap |
|--------|-------------|-----------|
| Classic Era / Vanilla | 9 | 300 |
| Season of Discovery | 9 | 300 |
| The Burning Crusade Classic | 10 (+ Jewelcrafting) | 375 |
| Wrath of the Lich King Classic | 11 (+ Inscription) | 450 |
| WoW Forever (1.60) | 7 (Engineering and Mining pending in-game confirmation) | 300 |

Professions: Alchemy, Blacksmithing, Enchanting, Engineering, Leatherworking, Tailoring, Cooking, First Aid, Mining - plus Jewelcrafting (TBC and later) and Inscription (WotLK). On the Classic clients every recipe carries Wowhead-verified difficulty thresholds and an acquisition source from the game data or Wowhead. The WoW Forever data is built without Wowhead: its thresholds come from the game data, the Classic data for recipes that did not change, the Warcraft Wiki and, once imported, in-game captures, and 295 of its 1,767 recipes carry the `unknown` source marker because no source could be established yet.

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
| `GetVendorBuyPrice(itemId)` | Per-unit vendor buy price (copper) for confirmed vendor-stocked reagents, or nil |
| `GetActiveProfile()` | Active client profile: `"VANILLA"`, `"TBC"`, `"WOTLK"`, `"SOD"`, or `"FOREVER"`; `nil` on an unsupported client |

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
python scripts/extract_db2_sources.py --bucket tbc --profession FirstAid
```

### Phase 2: Verify Sources and Difficulty from Wowhead

```bash
# Single-pass: fetches difficulty + source + trainer status from Wowhead
python scripts/fetch_wowhead_sources.py --bucket tbc --profession FirstAid
```

### Phase 3: Generate Recipes.lua

```bash
# Generate Lua from verified sources (fails if any PENDING)
python scripts/generate_recipes.py --bucket tbc --profession FirstAid
```

Verified sources are tracked under `Data/Sources/<Bucket>/*.json` for reproducibility. 55 removed/never-implemented recipes are filtered from the output (tracked in `Data/Sources/removed_recipes.json`). The pipeline is driven per client bucket by the Makefile - `make vanilla-all`, `make tbc-all`, `make wotlk-all`, and `make sod-all` run fetch, extract, Wowhead enrichment, the no-pending / no-unaligned gates and the audit from the bucket's own pinned game build, and only then generation; they stop at the first failing step, so no Lua file is rewritten unless the per-profession gates and the audit passed for the whole bucket (the generator's own checks still run one profession at a time, so a generator failure can leave earlier professions already rewritten). `make <bucket>-generate OUT=<dir>` regenerates offline from the tracked sources into `<dir>`; `OUT` is required, and `OUT=Data` rewrites the shipped files deliberately (the same applies to `make vendor-prices`). `make list-buckets` shows the buckets.

### WoW Forever bucket (maintainers)

The Forever bucket differs from the Classic ones: its recipe facts come from the pinned DB2 build `1.60.1.71037` (cached under `vendor/db2-parser/artifacts/1.60.1.71037/`), and what the game data lacks (acquisition source, orange threshold) comes from the Warcraft Wiki recipe tables and from in-game captures. Run `make forever-all` for the whole pipeline or `make forever-generate OUT=<dir>` to regenerate offline from the tracked sources.

- **Wiki pages**: `scripts/fetch_wiki_sources.py` reads one wiki page per profession through `api.php?action=parse`, waits at least 3 seconds between fetches, and caches the result in `Data/Sources/Forever/.wiki_cache/` (not tracked). Only facts are stored.
- **Aliases**: `Data/Sources/Forever/wiki_aliases.json` maps a spell id to the wiki row it should use when names differ or a row is ambiguous.
- **In-game captures**: the `/lpprobe` report from the client is saved to a file and imported with `python3 scripts/import_probe.py --bucket forever --input <file>`; it writes tracked `Data/Sources/Forever/ingame/<Profession>.json` (recipe list, trainer learn skills and prices), `Merchants.json` and `Currencies.json`. An in-game fact outranks the wiki, and a recipe absent from a captured recipe list is excluded as not in game. Trainer entries are matched by spell name: when several spells of a profession share the name (an old recipe next to its revised one), the entry decides none of them and each becomes a review, unless the recipe list marks the others as not in game. A recipe list whose profession is not one of the bucket's is refused (exit 2).
- **Review**: `Data/Sources/Forever/review/` and `Data/Sources/Forever/REVIEW.md` are generated; they list every excluded recipe with its reason, the per-profession coverage table, and the notes the resolver kept on shipped and excluded recipes (an in-game fact that disagrees with the wiki, a vendor price neither the game data nor the wiki has, a wiki row whose skill differs from the chosen orange). Do not edit them by hand.
- **Coverage gate and held_back**: a profession ships only when at least 75% of its in-game skill-up recipes are shipped and no run of more than 10 skill points in 1-299 is left uncovered. A profession that fails is listed in `held_back` in `scripts/buckets.py`; it is not written and not in `CraftLib.toc`. Engineering and Mining are held back at the moment; an in-game capture of their trainers and recipe lists releases them (remove the name from `held_back`, regenerate, add the files to the TOC).
- **Orange threshold precedence**: in-game trainer capture, then the teaching item's required skill, then the Vanilla/SoD bucket's verified value (only when yellow and gray agree), then the wiki skill; a recipe with none of these is excluded rather than guessed.

### Data Sources

- **DB2 Tables:** SpellName, SpellEffect, SpellReagents, ItemSparse, SkillLineAbility, ItemEffect, Faction; SkillLine is read only for the Forever bucket (teaching-item child lines); for WoW Forever also ItemXItemEffect (teaching items) and SpellTotems / TotemCategory (required tools)
- **Wowhead:** Source verification (VENDOR vs DROP) and difficulty thresholds for the Classic clients
- **Warcraft Wiki:** the WoW Forever per-profession recipe tables (acquisition source, learn skill, Merchant's Favor prices), read through the wiki API and cached locally
- **In-game captures:** WoW Forever trainer and recipe lists from the `/lpprobe` report (none imported yet)
- **Fetcher:** [db2-parser](https://github.com/kaldown/db2-parser) submodule

## Addons Using CraftLib

- [LazyProf](https://github.com/kaldown/LazyProf) - Profession leveling optimizer

## Supported Game Versions

One install serves every live Classic-family client - CraftLib detects which one you are on and registers the matching recipe data:

- Classic Era / Anniversary (Vanilla)
- Season of Discovery
- The Burning Crusade Classic
- Wrath of the Lich King Classic - including the Titan (3.80) seasonal WotLK client
- WoW Forever (1.60) - 1,767 recipes across seven professions; 1,472 (83%) have an established source, the other 295 (17%) carry the `unknown` source marker

Hardcore runs on the Classic Era client and is covered by the Vanilla data.

## License

All Rights Reserved - See [LICENSE](LICENSE) for details.
