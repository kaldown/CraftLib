-- Data/Forever/Mining/Recipes.lua
-- Mining recipes for WoW Forever
-- Generated from DB2 data, Wowhead guide tables and the Warcraft Wiki recipe tables
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
            type = C.SOURCE_TYPE.STARTER,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Smelt Bronze (65)
    {
        id = 2659,
        name = "Smelt Bronze",
        itemId = 2841,
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 65, green = 90, gray = 115 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 1 },
            { itemId = 3576, name = "Tin Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Smelt Tin (65)
    {
        id = 3304,
        name = "Smelt Tin",
        itemId = 3576,
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 50, green = 62, gray = 75 },
        reagents = {
            { itemId = 2771, name = "Tin Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Smelt Silver (75)
    {
        id = 2658,
        name = "Smelt Silver",
        itemId = 2842,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 112, gray = 125 },
        reagents = {
            { itemId = 2775, name = "Silver Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Smelt Iron (125)
    {
        id = 3307,
        name = "Smelt Iron",
        itemId = 3575,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 130, green = 135, gray = 140 },
        reagents = {
            { itemId = 2772, name = "Iron Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Smelt Gold (155)
    {
        id = 3308,
        name = "Smelt Gold",
        itemId = 3577,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 170, green = 177, gray = 185 },
        reagents = {
            { itemId = 2776, name = "Gold Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Smelt Heavy Thorium (300)
    {
        id = 1306126,
        name = "Smelt Heavy Thorium",
        itemId = 251291,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 300, green = 307, gray = 315 },
        reagents = {
            { itemId = 248815, name = "Heavy Thorium Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
}

CraftLib:RegisterProfession("mining", {
    id = C.PROFESSION_ID.MINING,
    name = "Mining",
    expansion = C.EXPANSION.FOREVER,
    profile = "FOREVER",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
