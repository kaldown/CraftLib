-- Data/SoD/Mining/Recipes.lua
-- Mining recipes for SoD Classic
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
        skillRange = { orange = 0, yellow = 25, green = 47, gray = 70 },
        reagents = {
            { itemId = 2770, name = "Copper Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Smelt Tin (75)
    {
        id = 3304,
        name = "Smelt Tin",
        itemId = 3576,
        skillRequired = 75,
        skillRange = { orange = 0, yellow = 0, green = 65, gray = 75 },
        reagents = {
            { itemId = 2771, name = "Tin Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Smelt Steel (165)
    {
        id = 3569,
        name = "Smelt Steel",
        itemId = 3859,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 165, green = 165, gray = 165 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 1 },
            { itemId = 3857, name = "Coal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Smelt Mithril (175)
    {
        id = 10097,
        name = "Smelt Mithril",
        itemId = 3860,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 175, gray = 175 },
        reagents = {
            { itemId = 3858, name = "Mithril Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Smelt Truesilver (230)
    {
        id = 10098,
        name = "Smelt Truesilver",
        itemId = 6037,
        skillRequired = 230,
        skillRange = { orange = 0, yellow = 230, green = 230, gray = 230 },
        reagents = {
            { itemId = 7911, name = "Truesilver Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Smelt Dark Iron (230)
    {
        id = 14891,
        name = "Smelt Dark Iron",
        itemId = 11371,
        skillRequired = 230,
        skillRange = { orange = 0, yellow = 230, green = 230, gray = 230 },
        reagents = {
            { itemId = 11370, name = "Dark Iron Ore", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Smelt Thorium (250)
    {
        id = 16153,
        name = "Smelt Thorium",
        itemId = 12359,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 250, green = 250, gray = 250 },
        reagents = {
            { itemId = 10620, name = "Thorium Ore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Smelt Elementium (310)
    {
        id = 22967,
        name = "Smelt Elementium",
        itemId = 17771,
        skillRequired = 310,
        skillRange = { orange = 0, yellow = 310, green = 315, gray = 320 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Smelt Obsidian-Infused Thorium Bar (315)
    {
        id = 1213638,
        name = "Smelt Obsidian-Infused Thorium Bar",
        itemId = 234003,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 2 },
            { itemId = 22203, name = "Large Obsidian Shard", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Mining Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
}

CraftLib:RegisterProfession("mining", {
    id = C.PROFESSION_ID.MINING,
    name = "Mining",
    expansion = C.EXPANSION.SOD,
    flavor = "SOD",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
