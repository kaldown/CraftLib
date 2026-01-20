-- Core/Constants.lua
-- CraftDB shared constants
local ADDON_NAME, CraftDB = ...

CraftDB.Constants = {
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
    },

    -- Recipe source types
    SOURCE_TYPE = {
        TRAINER = "trainer",
        VENDOR = "vendor",
        DROP = "drop",
        REPUTATION = "reputation",
        QUEST = "quest",
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
        -- Secondary
        COOKING = 2550,
        FIRST_AID = 3273,
        FISHING = 7620,
    },

    -- Skill difficulty colors
    DIFFICULTY = {
        ORANGE = "orange",  -- 100% skillup
        YELLOW = "yellow",  -- ~50% skillup
        GREEN = "green",    -- ~25% skillup
        GRAY = "gray",      -- 0% skillup
    },
}
