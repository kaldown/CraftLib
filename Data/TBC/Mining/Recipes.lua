-- Data/TBC/Mining/Recipes.lua
-- Mining smelting recipes for TBC Classic (includes Vanilla recipes)
-- Sources: wowhead.com/tbc, in-game verification
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    --------------------------------------------------------------------------------
    -- Apprentice (1-75)
    --------------------------------------------------------------------------------

    -- Smelt Copper (1) - Learned automatically
    {
        id = 2657,
        name = "Smelt Copper",
        itemId = 2840, -- Copper Bar
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 25, green = 50, gray = 75 },
        reagents = {
            { itemId = 2770, name = "Copper Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
            note = "Learned automatically with Apprentice Mining",
        },
        expansion = C.EXPANSION.VANILLA,
    },

    --------------------------------------------------------------------------------
    -- Journeyman (75-150)
    --------------------------------------------------------------------------------

    -- Smelt Tin (65)
    {
        id = 3304,
        name = "Smelt Tin",
        itemId = 3576, -- Tin Bar
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 90, green = 115, gray = 140 },
        reagents = {
            { itemId = 2771, name = "Tin Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Bronze (65) - Alloy: Copper + Tin = 2 Bronze
    {
        id = 2659,
        name = "Smelt Bronze",
        itemId = 2841, -- Bronze Bar
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 90, green = 115, gray = 140 },
        yield = 2,
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
    -- Smelt Silver (75)
    {
        id = 2658,
        name = "Smelt Silver",
        itemId = 2842, -- Silver Bar
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 125, gray = 150 },
        reagents = {
            { itemId = 2775, name = "Silver Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },

    --------------------------------------------------------------------------------
    -- Expert (150-225)
    --------------------------------------------------------------------------------

    -- Smelt Iron (125)
    {
        id = 3307,
        name = "Smelt Iron",
        itemId = 3575, -- Iron Bar
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 175, gray = 200 },
        reagents = {
            { itemId = 2772, name = "Iron Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Gold (155)
    {
        id = 3308,
        name = "Smelt Gold",
        itemId = 3577, -- Gold Bar
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 180, green = 205, gray = 230 },
        reagents = {
            { itemId = 2776, name = "Gold Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Steel (165) - Alloy: Iron + Coal
    {
        id = 3569,
        name = "Smelt Steel",
        itemId = 3859, -- Steel Bar
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 190, green = 215, gray = 240 },
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
    -- Smelt Mithril (175)
    {
        id = 10097,
        name = "Smelt Mithril",
        itemId = 3860, -- Mithril Bar
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 200, green = 225, gray = 250 },
        reagents = {
            { itemId = 3858, name = "Mithril Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },

    --------------------------------------------------------------------------------
    -- Artisan (225-300)
    --------------------------------------------------------------------------------

    -- Smelt Truesilver (230)
    {
        id = 10098,
        name = "Smelt Truesilver",
        itemId = 6037, -- Truesilver Bar
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 255, green = 280, gray = 305 },
        reagents = {
            { itemId = 7911, name = "Truesilver Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Thorium (250)
    {
        id = 16153,
        name = "Smelt Thorium",
        itemId = 12359, -- Thorium Bar
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 275, green = 300, gray = 325 },
        reagents = {
            { itemId = 10620, name = "Thorium Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smelt Dark Iron (230) - Quest reward from BRD
    {
        id = 14891,
        name = "Smelt Dark Iron",
        itemId = 11371, -- Dark Iron Bar
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 255, green = 280, gray = 305 },
        reagents = {
            { itemId = 11370, name = "Dark Iron Ore", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            questId = 4083,
            questName = "The Spectral Chalice",
            location = "Blackrock Depths",
            note = "Requires Black Forge in BRD to smelt",
        },
        expansion = C.EXPANSION.VANILLA,
    },

    --------------------------------------------------------------------------------
    -- Master (300-375) - TBC
    --------------------------------------------------------------------------------

    -- Smelt Fel Iron (300)
    {
        id = 29356,
        name = "Smelt Fel Iron",
        itemId = 23445, -- Fel Iron Bar
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 325, green = 350, gray = 375 },
        reagents = {
            { itemId = 23424, name = "Fel Iron Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Smelt Adamantite (325)
    {
        id = 29358,
        name = "Smelt Adamantite",
        itemId = 23446, -- Adamantite Bar
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 337, green = 350, gray = 362 },
        reagents = {
            { itemId = 23425, name = "Adamantite Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Smelt Eternium (350) - 2 ore = 1 bar
    {
        id = 29359,
        name = "Smelt Eternium",
        itemId = 23447, -- Eternium Bar
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 23426, name = "Eternium Ore", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Smelt Felsteel (350) - Alloy
    {
        id = 29360,
        name = "Smelt Felsteel",
        itemId = 23448, -- Felsteel Bar
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 3 },
            { itemId = 23447, name = "Eternium Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Smelt Hardened Adamantite (375)
    {
        id = 29361,
        name = "Smelt Hardened Adamantite",
        itemId = 23573, -- Hardened Adamantite Bar
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Smelt Khorium (375)
    {
        id = 29686,
        name = "Smelt Khorium",
        itemId = 23449, -- Khorium Bar
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 23427, name = "Khorium Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
}

-- Register with CraftLib
CraftLib:RegisterProfession("mining", {
    id = C.PROFESSION_ID.MINING,
    name = "Mining",
    expansion = C.EXPANSION.TBC,
    milestones = { 75, 150, 225, 300, 375 },
    recipes = recipes,
})
