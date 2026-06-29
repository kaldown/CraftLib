-- Core/Constants.lua
-- CraftLib shared constants
local ADDON_NAME, CraftLib = ...

CraftLib.Constants = {
    -- Game expansions
    EXPANSION = {
        VANILLA = 1,
        TBC = 2,
        WOTLK = 3,
        CATA = 4,
        MOP = 5,
        WOD = 6,
        LEGION = 7,
        BFA = 8,
        SHADOWLANDS = 9,
        DRAGONFLIGHT = 10,
        TWW = 11,
        SOD = 12,  -- Season of Discovery (parallel ruleset; selected by flavor, not ordinal)
    },

    -- Client lineage the load-guard keys on (distinct from per-recipe expansion metadata).
    -- DEFAULT = Vanilla/TBC/WotLK continuous progression; SOD = parallel Season of Discovery ruleset.
    FLAVOR = {
        DEFAULT = "DEFAULT",
        SOD = "SOD",
    },

    -- Client PROFILE = lineage + expansion tier. Generalizes FLAVOR so one install
    -- serves Vanilla/TBC/WotLK/SoD clients at once; the RegisterProfession load-guard
    -- keys on this. DEFAULT (above) is retained only as a back-compat alias for FLAVOR.
    PROFILE = {
        VANILLA = "VANILLA",
        TBC = "TBC",
        WOTLK = "WOTLK",
        SOD = "SOD",
    },

    -- Recipe source types
    SOURCE_TYPE = {
        TRAINER = "trainer",
        VENDOR = "vendor",
        DROP = "drop",
        REPUTATION = "reputation",
        QUEST = "quest",
        STARTER = "starter",
        DISCOVERY = "discovery",
        WORLD_DROP = "world_drop",
    },

    -- Profession IDs (spell IDs)
    PROFESSION_ID = {
        -- Primary
        ALCHEMY = 2259,
        BLACKSMITHING = 2018,
        ENCHANTING = 7411,
        ENGINEERING = 4036,
        HERBALISM = 2366,
        JEWELCRAFTING = 25229,
        LEATHERWORKING = 2108,
        MINING = 2575,
        SKINNING = 8613,
        TAILORING = 3908,
        INSCRIPTION = 45357,  -- Apprentice Inscription (WotLK); verify vs SpellName.csv (Task 0.2)
        -- Secondary
        COOKING = 2550,
        FIRST_AID = 3273,
        FISHING = 7620,
    },

    -- Skill difficulty colors (probability is continuous, not fixed per color)
    DIFFICULTY = {
        ORANGE = "orange",  -- 100% skillup
        YELLOW = "yellow",  -- Skillup chance decreasing
        GREEN = "green",    -- Skillup chance low
        GRAY = "gray",      -- 0% skillup
    },
}
