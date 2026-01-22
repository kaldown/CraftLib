-- Data/TBC/Mining/Recipes.lua
-- Mining recipes for TBC Classic
-- Generated from DB2 data
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    -- Smelt Copper (1)
    {
        id = 2657,
        name = "Smelt Copper",
        itemId = 2840,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 25, green = 47, gray = 70 },
        reagents = {
            { itemId = 2770, name = "Copper Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Silver (1)
    {
        id = 2658,
        name = "Smelt Silver",
        itemId = 2842,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 115, green = 122, gray = 130 },
        reagents = {
            { itemId = 2775, name = "Silver Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Bronze (1)
    {
        id = 2659,
        name = "Smelt Bronze",
        itemId = 2841,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 65, green = 90, gray = 115 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 1 },
            { itemId = 3576, name = "Tin Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Tin (1)
    {
        id = 3304,
        name = "Smelt Tin",
        itemId = 3576,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 65, green = 70, gray = 75 },
        reagents = {
            { itemId = 2771, name = "Tin Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Iron (1)
    {
        id = 3307,
        name = "Smelt Iron",
        itemId = 3575,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 130, green = 145, gray = 160 },
        reagents = {
            { itemId = 2772, name = "Iron Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Gold (1)
    {
        id = 3308,
        name = "Smelt Gold",
        itemId = 3577,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 170, green = 177, gray = 185 },
        reagents = {
            { itemId = 2776, name = "Gold Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Steel (1)
    {
        id = 3569,
        name = "Smelt Steel",
        itemId = 3859,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 165, green = 165, gray = 165 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 1 },
            { itemId = 3857, name = "Coal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Mithril (1)
    {
        id = 10097,
        name = "Smelt Mithril",
        itemId = 3860,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 175, green = 202, gray = 230 },
        reagents = {
            { itemId = 3858, name = "Mithril Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Truesilver (1)
    {
        id = 10098,
        name = "Smelt Truesilver",
        itemId = 6037,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 235, green = 242, gray = 250 },
        reagents = {
            { itemId = 7911, name = "Truesilver Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Dark Iron (1)
    {
        id = 14891,
        name = "Smelt Dark Iron",
        itemId = 11371,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 300, green = 305, gray = 310 },
        reagents = {
            { itemId = 11370, name = "Dark Iron Ore", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Thorium (1)
    {
        id = 16153,
        name = "Smelt Thorium",
        itemId = 12359,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 250, green = 270, gray = 290 },
        reagents = {
            { itemId = 10620, name = "Thorium Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Elementium (1)
    {
        id = 22967,
        name = "Smelt Elementium",
        itemId = 17771,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 350, green = 362, gray = 375 },
        reagents = {
            { itemId = 18562, name = "Elementium Ore", count = 1 },
            { itemId = 12360, name = "Arcanite Bar", count = 10 },
            { itemId = 17010, name = "Fiery Core", count = 1 },
            { itemId = 18567, name = "Elemental Flux", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Fel Iron (1)
    {
        id = 29356,
        name = "Smelt Fel Iron",
        itemId = 23445,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 300, green = 307, gray = 315 },
        reagents = {
            { itemId = 23424, name = "Fel Iron Ore", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Adamantite (1)
    {
        id = 29358,
        name = "Smelt Adamantite",
        itemId = 23446,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 325, green = 332, gray = 340 },
        reagents = {
            { itemId = 23425, name = "Adamantite Ore", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Eternium (1)
    {
        id = 29359,
        name = "Smelt Eternium",
        itemId = 23447,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 350, green = 357, gray = 365 },
        reagents = {
            { itemId = 23427, name = "Eternium Ore", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Felsteel (1)
    {
        id = 29360,
        name = "Smelt Felsteel",
        itemId = 23448,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 355, green = 367, gray = 380 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 3 },
            { itemId = 23447, name = "Eternium Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Khorium (1)
    {
        id = 29361,
        name = "Smelt Khorium",
        itemId = 23449,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 375, green = 375, gray = 375 },
        reagents = {
            { itemId = 23426, name = "Khorium Ore", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Hardened Adamantite (1)
    {
        id = 29686,
        name = "Smelt Hardened Adamantite",
        itemId = 23573,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 375, green = 375, gray = 375 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Earth Shatter (1)
    {
        id = 35750,
        name = "Earth Shatter",
        itemId = 22573,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 300, green = 300, gray = 300 },
        reagents = {
            { itemId = 22452, name = "Primal Earth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fire Sunder (1)
    {
        id = 35751,
        name = "Fire Sunder",
        itemId = 22574,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 300, green = 300, gray = 300 },
        reagents = {
            { itemId = 21884, name = "Primal Fire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Hardened Khorium (1)
    {
        id = 46353,
        name = "Smelt Hardened Khorium",
        itemId = 35128,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 375, green = 375, gray = 375 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 3 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 35273,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
}

CraftLib:RegisterProfession("mining", {
    id = C.PROFESSION_ID.MINING,
    name = "Mining",
    expansion = C.EXPANSION.VANILLA,
    milestones = { 75, 150, 225, 300, 375 },
    recipes = recipes,
})
