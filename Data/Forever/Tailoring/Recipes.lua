-- Data/Forever/Tailoring/Recipes.lua
-- Tailoring recipes for Forever Classic
-- Generated from DB2 data and the Warcraft Wiki recipe tables
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    -- White Linen Shirt (1)
    {
        id = 2393,
        name = "White Linen Shirt",
        itemId = 2576,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 35, green = 47, gray = 60 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 1 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 2324, name = "Bleach", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Linen Bag (5)
    {
        id = 3755,
        name = "Linen Bag",
        itemId = 4238,
        skillRequired = 5,
        skillRange = { orange = 5, yellow = 30, green = 47, gray = 65 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Linen Reagent Bag (5)
    {
        id = 1257013,
        name = "Linen Reagent Bag",
        itemId = 253664,
        skillRequired = 5,
        skillRange = { orange = 5, yellow = 30, green = 47, gray = 65 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253665,
            cost = 150,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brown Linen Vest (10)
    {
        id = 2385,
        name = "Brown Linen Vest",
        itemId = 2568,
        skillRequired = 10,
        skillRange = { orange = 10, yellow = 45, green = 57, gray = 70 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 1 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Linen Belt (15)
    {
        id = 8776,
        name = "Linen Belt",
        itemId = 7026,
        skillRequired = 15,
        skillRange = { orange = 15, yellow = 50, green = 67, gray = 85 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 1 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Simple Linen Boots (20)
    {
        id = 12045,
        name = "Simple Linen Boots",
        itemId = 10046,
        skillRequired = 20,
        skillRange = { orange = 20, yellow = 50, green = 67, gray = 85 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 2 },
            { itemId = 2318, name = "Light Leather", count = 1 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Linen Robe (25)
    {
        id = 2389,
        name = "Red Linen Robe",
        itemId = 2572,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 50, green = 67, gray = 85 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
            { itemId = 2604, name = "Red Dye", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2598,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Linen Shirt (25)
    {
        id = 2392,
        name = "Red Linen Shirt",
        itemId = 2575,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 50, green = 67, gray = 85 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 2604, name = "Red Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Linen Shirt (25)
    {
        id = 2394,
        name = "Blue Linen Shirt",
        itemId = 2577,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 50, green = 67, gray = 85 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Linen Gloves (25)
    {
        id = 3840,
        name = "Heavy Linen Gloves",
        itemId = 4307,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 50, green = 67, gray = 85 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brown Linen Pants (25)
    {
        id = 3914,
        name = "Brown Linen Pants",
        itemId = 4343,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 50, green = 67, gray = 85 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brown Linen Robe (25)
    {
        id = 7623,
        name = "Brown Linen Robe",
        itemId = 6238,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 50, green = 67, gray = 85 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- White Linen Robe (25)
    {
        id = 7624,
        name = "White Linen Robe",
        itemId = 6241,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 50, green = 67, gray = 85 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 2324, name = "Bleach", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Simple Dress (25)
    {
        id = 8465,
        name = "Simple Dress",
        itemId = 6786,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 50, green = 67, gray = 85 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 1 },
            { itemId = 2324, name = "Bleach", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Reinforced Linen Cape (35)
    {
        id = 2397,
        name = "Reinforced Linen Cape",
        itemId = 2580,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 60, green = 77, gray = 95 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Linen Bracers (35)
    {
        id = 3841,
        name = "Green Linen Bracers",
        itemId = 4308,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 60, green = 77, gray = 95 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Linen Vest (35)
    {
        id = 7629,
        name = "Red Linen Vest",
        itemId = 6239,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 60, green = 77, gray = 95 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 2604, name = "Red Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6271,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Linen Vest (35)
    {
        id = 7630,
        name = "Blue Linen Vest",
        itemId = 6240,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 60, green = 77, gray = 95 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6270,
            cost = 200,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Linen Boots (40)
    {
        id = 2386,
        name = "Linen Boots",
        itemId = 2569,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 65, green = 82, gray = 100 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 2318, name = "Light Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Barbaric Linen Vest (40)
    {
        id = 2395,
        name = "Barbaric Linen Vest",
        itemId = 2578,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 65, green = 82, gray = 100 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 4 },
            { itemId = 2318, name = "Light Leather", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Linen Shirt (40)
    {
        id = 2396,
        name = "Green Linen Shirt",
        itemId = 2579,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 65, green = 82, gray = 100 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Handstitched Linen Britches (45)
    {
        id = 3842,
        name = "Handstitched Linen Britches",
        itemId = 4309,
        skillRequired = 45,
        skillRange = { orange = 45, yellow = 70, green = 87, gray = 105 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Linen Robe (45)
    {
        id = 7633,
        name = "Blue Linen Robe",
        itemId = 6242,
        skillRequired = 45,
        skillRange = { orange = 45, yellow = 70, green = 87, gray = 105 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
            { itemId = 6260, name = "Blue Dye", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6272,
            cost = 300,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Woolen Bag (50)
    {
        id = 3757,
        name = "Woolen Bag",
        itemId = 4240,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 75, green = 92, gray = 110 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Linen Bag (50)
    {
        id = 6686,
        name = "Red Linen Bag",
        itemId = 5762,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 75, green = 92, gray = 110 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 2604, name = "Red Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5771,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Simple Kilt (50)
    {
        id = 12046,
        name = "Simple Kilt",
        itemId = 10047,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 75, green = 92, gray = 110 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Stormsewn Cuffs (50)
    {
        id = 1301440,
        name = "Cloudy Stormsewn Cuffs",
        itemId = 277011,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 55, green = 57, gray = 60 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276947,
            cost = 950,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Stormsewn Cord (50)
    {
        id = 1301442,
        name = "Cloudy Stormsewn Cord",
        itemId = 277013,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 55, green = 57, gray = 60 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276949,
            cost = 950,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Stormsewn Cuffs (50)
    {
        id = 1301464,
        name = "Azure Stormsewn Cuffs",
        itemId = 277035,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 55, green = 57, gray = 60 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276971,
            cost = 950,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Stormsewn Cord (50)
    {
        id = 1301466,
        name = "Azure Stormsewn Cord",
        itemId = 277037,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 55, green = 57, gray = 60 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276973,
            cost = 950,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Woolen Cape (55)
    {
        id = 2402,
        name = "Woolen Cape",
        itemId = 2584,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 80, green = 97, gray = 115 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bolt of Woolen Cloth (55)
    {
        id = 2964,
        name = "Bolt of Woolen Cloth",
        itemId = 2997,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 70, green = 77, gray = 85 },
        reagents = {
            { itemId = 2592, name = "Wool Cloth", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Soft-soled Linen Boots (55)
    {
        id = 3845,
        name = "Soft-soled Linen Boots",
        itemId = 4312,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 80, green = 97, gray = 115 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 5 },
            { itemId = 2318, name = "Light Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Stormsewn Handwraps (55)
    {
        id = 1301441,
        name = "Cloudy Stormsewn Handwraps",
        itemId = 277012,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 60, green = 62, gray = 65 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276948,
            cost = 1100,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Stormsewn Shoes (55)
    {
        id = 1301444,
        name = "Cloudy Stormsewn Shoes",
        itemId = 277015,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 60, green = 62, gray = 65 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276951,
            cost = 1100,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Stormsewn Handwraps (55)
    {
        id = 1301465,
        name = "Azure Stormsewn Handwraps",
        itemId = 277036,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 60, green = 62, gray = 65 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276972,
            cost = 1100,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Stormsewn Shoes (55)
    {
        id = 1301469,
        name = "Azure Stormsewn Shoes",
        itemId = 277039,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 60, green = 62, gray = 65 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276975,
            cost = 1100,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Woolen Vest (60)
    {
        id = 2399,
        name = "Green Woolen Vest",
        itemId = 2582,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 85, green = 102, gray = 120 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Woolen Gloves (60)
    {
        id = 3843,
        name = "Heavy Woolen Gloves",
        itemId = 4310,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 85, green = 102, gray = 120 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pristine Boots (60)
    {
        id = 1257370,
        name = "Pristine Boots",
        itemId = 253889,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 85, green = 102, gray = 120 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253890,
            cost = 1500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Silky Boots (60)
    {
        id = 1257371,
        name = "Silky Boots",
        itemId = 253891,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 85, green = 102, gray = 120 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 2 },
            { itemId = 3182, name = "Spider's Silk", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253892,
            cost = 1500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flame Boots (60)
    {
        id = 1257372,
        name = "Flame Boots",
        itemId = 253893,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 85, green = 102, gray = 120 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 2 },
            { itemId = 6371, name = "Fire Oil", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253894,
            cost = 1500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadow Boots (60)
    {
        id = 1257373,
        name = "Shadow Boots",
        itemId = 253895,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 85, green = 102, gray = 120 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 2 },
            { itemId = 1210, name = "Shadowgem", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253896,
            cost = 1500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pearly Boots (60)
    {
        id = 1257374,
        name = "Pearly Boots",
        itemId = 253897,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 85, green = 102, gray = 120 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 2 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253898,
            cost = 1500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shining Boots (60)
    {
        id = 1257375,
        name = "Shining Boots",
        itemId = 253899,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 85, green = 102, gray = 120 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 2 },
            { itemId = 249391, name = "Pyrite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253900,
            cost = 1500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Stormsewn Vest (60)
    {
        id = 1301439,
        name = "Cloudy Stormsewn Vest",
        itemId = 277010,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 65, green = 67, gray = 70 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 5 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Honored",
            itemId = 276946,
            cost = 1250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Stormsewn Leggings (60)
    {
        id = 1301443,
        name = "Cloudy Stormsewn Leggings",
        itemId = 277014,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 65, green = 67, gray = 70 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 5 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Honored",
            itemId = 276950,
            cost = 1250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Stormsewn Vest (60)
    {
        id = 1301463,
        name = "Azure Stormsewn Vest",
        itemId = 277034,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 65, green = 67, gray = 70 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 5 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Honored",
            itemId = 276970,
            cost = 1250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Stormsewn Leggings (60)
    {
        id = 1301468,
        name = "Azure Stormsewn Leggings",
        itemId = 277038,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 65, green = 67, gray = 70 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 5 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Honored",
            itemId = 276974,
            cost = 1250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Woolen Boots (70)
    {
        id = 2401,
        name = "Woolen Boots",
        itemId = 2583,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 95, green = 112, gray = 130 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 2318, name = "Light Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pearl-clasped Cloak (70)
    {
        id = 6521,
        name = "Pearl-clasped Cloak",
        itemId = 5542,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 95, green = 112, gray = 130 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Colorful Kilt (70)
    {
        id = 12047,
        name = "Colorful Kilt",
        itemId = 10048,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 95, green = 112, gray = 130 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 5 },
            { itemId = 2604, name = "Red Dye", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10316,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Woolen Reagent Bag (70)
    {
        id = 1257017,
        name = "Woolen Reagent Bag",
        itemId = 253667,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 75, green = 92, gray = 110 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 249409, name = "Cerulean Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253668,
            cost = 250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Woolen Bag (75)
    {
        id = 3758,
        name = "Green Woolen Bag",
        itemId = 4241,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 117, gray = 135 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 5 },
            { itemId = 2605, name = "Green Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4292,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Woolen Boots (75)
    {
        id = 3847,
        name = "Red Woolen Boots",
        itemId = 4313,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 97, gray = 115 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 4 },
            { itemId = 2318, name = "Light Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 2604, name = "Red Dye", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4345,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Overalls (75)
    {
        id = 7639,
        name = "Blue Overalls",
        itemId = 6263,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 117, gray = 135 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 6260, name = "Blue Dye", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6274,
            cost = 400,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pristine Gloves (75)
    {
        id = 1257382,
        name = "Pristine Gloves",
        itemId = 253913,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 117, gray = 135 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253914,
            cost = 1875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Silky Gloves (75)
    {
        id = 1257383,
        name = "Silky Gloves",
        itemId = 253915,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 117, gray = 135 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 3182, name = "Spider's Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253916,
            cost = 1875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flame Gloves (75)
    {
        id = 1257384,
        name = "Flame Gloves",
        itemId = 253917,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 117, gray = 135 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 6371, name = "Fire Oil", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253918,
            cost = 1875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadow Gloves (75)
    {
        id = 1257385,
        name = "Shadow Gloves",
        itemId = 253919,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 117, gray = 135 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 1210, name = "Shadowgem", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253920,
            cost = 1875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pearly Gloves (75)
    {
        id = 1257386,
        name = "Pearly Gloves",
        itemId = 253921,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 117, gray = 135 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253922,
            cost = 1875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shining Gloves (75)
    {
        id = 1257387,
        name = "Shining Gloves",
        itemId = 253923,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 117, gray = 135 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 249391, name = "Pyrite", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253924,
            cost = 1875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gray Woolen Robe (80)
    {
        id = 2403,
        name = "Gray Woolen Robe",
        itemId = 2585,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 105, green = 122, gray = 140 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2601,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gray Woolen Shirt (80)
    {
        id = 2406,
        name = "Gray Woolen Shirt",
        itemId = 2587,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 90, green = 100, gray = 110 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Woolen Cloak (80)
    {
        id = 3844,
        name = "Heavy Woolen Cloak",
        itemId = 4311,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 105, green = 122, gray = 140 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4346,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Double-stitched Woolen Shoulders (85)
    {
        id = 3848,
        name = "Double-stitched Woolen Shoulders",
        itemId = 4314,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 127, gray = 145 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Woolen Pants (85)
    {
        id = 3850,
        name = "Heavy Woolen Pants",
        itemId = 4316,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 127, gray = 145 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 5 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stylish Red Shirt (85)
    {
        id = 3866,
        name = "Stylish Red Shirt",
        itemId = 4330,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 127, gray = 145 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- White Woolen Dress (85)
    {
        id = 8467,
        name = "White Woolen Dress",
        itemId = 6787,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 127, gray = 145 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2324, name = "Bleach", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pristine Sash (85)
    {
        id = 1257388,
        name = "Pristine Sash",
        itemId = 253925,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 127, gray = 145 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253926,
            cost = 2125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Silky Sash (85)
    {
        id = 1257389,
        name = "Silky Sash",
        itemId = 253927,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 127, gray = 145 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 3182, name = "Spider's Silk", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253928,
            cost = 2125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flame Sash (85)
    {
        id = 1257390,
        name = "Flame Sash",
        itemId = 253929,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 127, gray = 145 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 6371, name = "Fire Oil", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253930,
            cost = 2125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadow Sash (85)
    {
        id = 1257391,
        name = "Shadow Sash",
        itemId = 253931,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 127, gray = 145 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 1210, name = "Shadowgem", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253932,
            cost = 2125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pearly Sash (85)
    {
        id = 1257392,
        name = "Pearly Sash",
        itemId = 253933,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 127, gray = 145 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253934,
            cost = 2125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shining Sash (85)
    {
        id = 1257393,
        name = "Shining Sash",
        itemId = 253935,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 127, gray = 145 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 249391, name = "Pyrite", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253936,
            cost = 2125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Woolen Bag (90)
    {
        id = 6688,
        name = "Red Woolen Bag",
        itemId = 5763,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 115, green = 132, gray = 150 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 5 },
            { itemId = 2604, name = "Red Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5772,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Greater Adept's Robe (90)
    {
        id = 7643,
        name = "Greater Adept's Robe",
        itemId = 6264,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 115, green = 132, gray = 150 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 5 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 2604, name = "Red Dye", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6275,
            cost = 800,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Reinforced Woolen Shoulders (95)
    {
        id = 3849,
        name = "Reinforced Woolen Shoulders",
        itemId = 4315,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 120, green = 137, gray = 155 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 6 },
            { itemId = 2319, name = "Medium Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4347,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stylish Blue Shirt (95)
    {
        id = 7892,
        name = "Stylish Blue Shirt",
        itemId = 6384,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 120, green = 137, gray = 155 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 4 },
            { itemId = 6260, name = "Blue Dye", count = 2 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6390,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stylish Green Shirt (95)
    {
        id = 7893,
        name = "Stylish Green Shirt",
        itemId = 6385,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 120, green = 137, gray = 155 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 4 },
            { itemId = 2605, name = "Green Dye", count = 2 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6391,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bolt of Silk Cloth (100)
    {
        id = 3839,
        name = "Bolt of Silk Cloth",
        itemId = 4305,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 110, green = 115, gray = 120 },
        reagents = {
            { itemId = 4306, name = "Silk Cloth", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Phoenix Pants (100)
    {
        id = 3851,
        name = "Phoenix Pants",
        itemId = 4317,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 142, gray = 160 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 6 },
            { itemId = 5500, name = "Iridescent Pearl", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4349,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spidersilk Boots (100)
    {
        id = 3855,
        name = "Spidersilk Boots",
        itemId = 4320,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 142, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 2 },
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 3182, name = "Spider's Silk", count = 4 },
            { itemId = 5500, name = "Iridescent Pearl", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Phoenix Gloves (100)
    {
        id = 3868,
        name = "Phoenix Gloves",
        itemId = 4331,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 142, gray = 160 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 4 },
            { itemId = 5500, name = "Iridescent Pearl", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
            { itemId = 2324, name = "Bleach", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4348,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pristine Circlet (100)
    {
        id = 1257400,
        name = "Pristine Circlet",
        itemId = 253949,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 142, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 10 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
            { itemId = 2842, name = "Silver Bar", count = 1 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253950,
            cost = 2500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Silky Circlet (100)
    {
        id = 1257401,
        name = "Silky Circlet",
        itemId = 253951,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 142, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 10 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 3182, name = "Spider's Silk", count = 4 },
            { itemId = 2842, name = "Silver Bar", count = 1 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253952,
            cost = 2500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flame Circlet (100)
    {
        id = 1257402,
        name = "Flame Circlet",
        itemId = 253953,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 142, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 10 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 6371, name = "Fire Oil", count = 4 },
            { itemId = 2842, name = "Silver Bar", count = 1 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253954,
            cost = 2500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadow Circlet (100)
    {
        id = 1257403,
        name = "Shadow Circlet",
        itemId = 253955,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 142, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 10 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 1210, name = "Shadowgem", count = 4 },
            { itemId = 2842, name = "Silver Bar", count = 1 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253956,
            cost = 2500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pearly Circlet (100)
    {
        id = 1257404,
        name = "Pearly Circlet",
        itemId = 253957,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 142, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 10 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 4 },
            { itemId = 2842, name = "Silver Bar", count = 1 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253958,
            cost = 2500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shining Circlet (100)
    {
        id = 1257405,
        name = "Shining Circlet",
        itemId = 253959,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 142, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 10 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 249391, name = "Pyrite", count = 4 },
            { itemId = 2842, name = "Silver Bar", count = 1 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253960,
            cost = 2500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gloves of Meditation (105)
    {
        id = 3852,
        name = "Gloves of Meditation",
        itemId = 4318,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 125, green = 140, gray = 155 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 3383, name = "Elixir of Wisdom", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bright Yellow Shirt (110)
    {
        id = 3869,
        name = "Bright Yellow Shirt",
        itemId = 4332,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 120, green = 125, gray = 130 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 1 },
            { itemId = 4341, name = "Yellow Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14627,
            cost = 800,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Wizard's Robe (110)
    {
        id = 6690,
        name = "Lesser Wizard's Robe",
        itemId = 5766,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 130, green = 145, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 3182, name = "Spider's Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pristine Gown (110)
    {
        id = 1257406,
        name = "Pristine Gown",
        itemId = 253961,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 130, green = 145, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 12 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 6 },
            { itemId = 249427, name = "Pristine Leather", count = 6 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253962,
            cost = 2750,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Silky Gown (110)
    {
        id = 1257407,
        name = "Silky Gown",
        itemId = 253963,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 130, green = 145, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 12 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 6 },
            { itemId = 3182, name = "Spider's Silk", count = 6 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253964,
            cost = 2750,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flame Gown (110)
    {
        id = 1257408,
        name = "Flame Gown",
        itemId = 253965,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 130, green = 145, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 12 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 6 },
            { itemId = 6371, name = "Fire Oil", count = 6 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253966,
            cost = 2750,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadow Gown (110)
    {
        id = 1257409,
        name = "Shadow Gown",
        itemId = 253967,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 130, green = 145, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 12 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 6 },
            { itemId = 1210, name = "Shadowgem", count = 6 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253968,
            cost = 2750,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pearly Gown (110)
    {
        id = 1257410,
        name = "Pearly Gown",
        itemId = 253969,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 130, green = 145, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 12 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 6 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 6 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253970,
            cost = 2750,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shining Gown (110)
    {
        id = 1257411,
        name = "Shining Gown",
        itemId = 253971,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 130, green = 145, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 12 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 6 },
            { itemId = 249391, name = "Pyrite", count = 6 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253972,
            cost = 2750,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spider Silk Slippers (115)
    {
        id = 3856,
        name = "Spider Silk Slippers",
        itemId = 4321,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 135, green = 147, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 3182, name = "Spider's Silk", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4350,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Silk Pants (115)
    {
        id = 8758,
        name = "Azure Silk Pants",
        itemId = 7046,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 135, green = 150, gray = 165 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 6260, name = "Blue Dye", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Silk Gloves (120)
    {
        id = 3854,
        name = "Azure Silk Gloves",
        itemId = 4319,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 140, green = 155, gray = 170 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 4234, name = "Heavy Leather", count = 2 },
            { itemId = 6260, name = "Blue Dye", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7114,
            cost = 1000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dark Silk Shirt (120)
    {
        id = 3870,
        name = "Dark Silk Shirt",
        itemId = 4333,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 130, green = 135, gray = 140 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 2 },
            { itemId = 4340, name = "Gray Dye", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6401,
            cost = 1100,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Silk Hood (120)
    {
        id = 8760,
        name = "Azure Silk Hood",
        itemId = 7048,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 130, green = 135, gray = 140 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 2 },
            { itemId = 6260, name = "Blue Dye", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hands of Darkness (120)
    {
        id = 8780,
        name = "Hands of Darkness",
        itemId = 7047,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 140, green = 155, gray = 170 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 4234, name = "Heavy Leather", count = 2 },
            { itemId = 6048, name = "Shadow Protection Potion", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7092,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Small Silk Pack (125)
    {
        id = 3813,
        name = "Small Silk Pack",
        itemId = 4245,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 145, green = 160, gray = 175 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 4234, name = "Heavy Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Silk Vest (125)
    {
        id = 3859,
        name = "Azure Silk Vest",
        itemId = 4324,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 145, green = 160, gray = 175 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 6260, name = "Blue Dye", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Robes of Arcana (125)
    {
        id = 6692,
        name = "Robes of Arcana",
        itemId = 5770,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 145, green = 160, gray = 175 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 3182, name = "Spider's Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5773,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- White Swashbuckler's Shirt (125)
    {
        id = 8483,
        name = "White Swashbuckler's Shirt",
        itemId = 6795,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 135, green = 140, gray = 145 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 2324, name = "Bleach", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Silk Headband (125)
    {
        id = 8762,
        name = "Silk Headband",
        itemId = 7050,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 135, green = 140, gray = 145 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Truefaith Gloves (125)
    {
        id = 8782,
        name = "Truefaith Gloves",
        itemId = 7049,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 145, green = 160, gray = 175 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 4234, name = "Heavy Leather", count = 2 },
            { itemId = 929, name = "Healing Potion", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7091,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Phoenix Bindings (125)
    {
        id = 428424,
        name = "Phoenix Bindings",
        itemId = 210781,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 6 },
            { itemId = 814, name = "Flask of Oil", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 211247,
            cost = 75000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Silk Reagent Bag (125)
    {
        id = 1257412,
        name = "Silk Reagent Bag",
        itemId = 253973,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 135, green = 137, gray = 140 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 4234, name = "Heavy Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 253974,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pristine Leggings (125)
    {
        id = 1257419,
        name = "Pristine Leggings",
        itemId = 253987,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 145, green = 160, gray = 175 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 14 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 249409, name = "Cerulean Dye", count = 8 },
            { itemId = 249427, name = "Pristine Leather", count = 8 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253988,
            cost = 3125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Silky Leggings (125)
    {
        id = 1257420,
        name = "Silky Leggings",
        itemId = 253989,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 145, green = 160, gray = 175 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 14 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 249409, name = "Cerulean Dye", count = 8 },
            { itemId = 3182, name = "Spider's Silk", count = 8 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253990,
            cost = 3125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flame Leggings (125)
    {
        id = 1257421,
        name = "Flame Leggings",
        itemId = 253991,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 145, green = 160, gray = 175 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 14 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 249409, name = "Cerulean Dye", count = 8 },
            { itemId = 6371, name = "Fire Oil", count = 8 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253992,
            cost = 3125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadow Leggings (125)
    {
        id = 1257422,
        name = "Shadow Leggings",
        itemId = 253993,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 145, green = 160, gray = 175 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 14 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 249409, name = "Cerulean Dye", count = 8 },
            { itemId = 1210, name = "Shadowgem", count = 8 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253994,
            cost = 3125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pearly Leggings (125)
    {
        id = 1257423,
        name = "Pearly Leggings",
        itemId = 253995,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 145, green = 160, gray = 175 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 14 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 249409, name = "Cerulean Dye", count = 8 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 8 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253996,
            cost = 3125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shining Leggings (125)
    {
        id = 1257424,
        name = "Shining Leggings",
        itemId = 253997,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 145, green = 160, gray = 175 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 14 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 249409, name = "Cerulean Dye", count = 8 },
            { itemId = 249391, name = "Pyrite", count = 8 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 253998,
            cost = 3125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchanter's Cowl (130)
    {
        id = 3857,
        name = "Enchanter's Cowl",
        itemId = 4322,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 150, green = 165, gray = 180 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 4337, name = "Thick Spider's Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14630,
            cost = 1000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Silk Armor (130)
    {
        id = 8784,
        name = "Green Silk Armor",
        itemId = 7065,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 150, green = 165, gray = 180 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 2605, name = "Green Dye", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7090,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadow Hood (135)
    {
        id = 3858,
        name = "Shadow Hood",
        itemId = 4323,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 155, green = 170, gray = 185 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
            { itemId = 3824, name = "Shadow Oil", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4351,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Formal White Shirt (135)
    {
        id = 3871,
        name = "Formal White Shirt",
        itemId = 4334,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 145, green = 150, gray = 155 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 2324, name = "Bleach", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Boots of the Enchanter (140)
    {
        id = 3860,
        name = "Boots of the Enchanter",
        itemId = 4325,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 160, green = 175, gray = 190 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
            { itemId = 4337, name = "Thick Spider's Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4352,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bolt of Mageweave (140)
    {
        id = 3865,
        name = "Bolt of Mageweave",
        itemId = 4339,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 145, green = 147, gray = 150 },
        reagents = {
            { itemId = 4338, name = "Mageweave Cloth", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Silk Pack (140)
    {
        id = 6693,
        name = "Green Silk Pack",
        itemId = 5764,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 160, green = 175, gray = 190 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 4234, name = "Heavy Leather", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5774,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Swashbuckler's Shirt (140)
    {
        id = 8489,
        name = "Red Swashbuckler's Shirt",
        itemId = 6796,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 150, green = 155, gray = 160 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Silk Belt (140)
    {
        id = 8766,
        name = "Azure Silk Belt",
        itemId = 7052,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 160, green = 175, gray = 190 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 7070, name = "Elemental Water", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Silk Cloak (140)
    {
        id = 8786,
        name = "Azure Silk Cloak",
        itemId = 7053,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 160, green = 175, gray = 190 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 6260, name = "Blue Dye", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7089,
            cost = 1500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tuxedo Pants (140)
    {
        id = 12089,
        name = "Tuxedo Pants",
        itemId = 10035,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 205, green = 210, gray = 215 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10323,
            cost = 4500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- White Wedding Dress (140)
    {
        id = 12091,
        name = "White Wedding Dress",
        itemId = 10040,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 145, green = 150, gray = 155 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 5 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 2324, name = "Bleach", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10325,
            cost = 10000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tuxedo Jacket (140)
    {
        id = 12093,
        name = "Tuxedo Jacket",
        itemId = 10036,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 155, green = 170, gray = 185 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 5 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10326,
            cost = 5000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthen Leggings (140)
    {
        id = 1257425,
        name = "Earthen Leggings",
        itemId = 253999,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 160, green = 175, gray = 190 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 7067, name = "Elemental Earth", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spider Belt (145)
    {
        id = 3863,
        name = "Spider Belt",
        itemId = 4328,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 165, green = 180, gray = 195 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 4337, name = "Thick Spider's Silk", count = 2 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4353,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Silken Shoulders (145)
    {
        id = 8774,
        name = "Green Silken Shoulders",
        itemId = 7057,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 165, green = 180, gray = 195 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Crimson Silk Cloak (145)
    {
        id = 8789,
        name = "Crimson Silk Cloak",
        itemId = 7056,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 165, green = 180, gray = 195 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 6371, name = "Fire Oil", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7087,
            cost = 1200,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthen Silk Slippers (145)
    {
        id = 1257432,
        name = "Earthen Silk Slippers",
        itemId = 254013,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 165, green = 180, gray = 195 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 7067, name = "Elemental Earth", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254014,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Rich Purple Silk Shirt (150)
    {
        id = 3872,
        name = "Rich Purple Silk Shirt",
        itemId = 4335,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 160, green = 165, gray = 170 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 4342, name = "Purple Dye", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4354,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Silk Pack (150)
    {
        id = 6695,
        name = "Black Silk Pack",
        itemId = 5765,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 185, gray = 200 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 6 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5775,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Crimson Silk Vest (150)
    {
        id = 8791,
        name = "Crimson Silk Vest",
        itemId = 7058,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 180, gray = 190 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Invoker's Cord (150)
    {
        id = 435841,
        name = "Invoker's Cord",
        itemId = 215366,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 185, gray = 200 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 1210, name = "Shadowgem", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 215369,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Invoker's Mantle (150)
    {
        id = 435848,
        name = "Invoker's Mantle",
        itemId = 215365,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 185, gray = 200 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 4340, name = "Gray Dye", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 215370,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthen Silk Hood (150)
    {
        id = 1257433,
        name = "Earthen Silk Hood",
        itemId = 254015,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 185, gray = 200 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 7067, name = "Elemental Earth", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254016,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Robe of Power (155)
    {
        id = 8770,
        name = "Robe of Power",
        itemId = 7054,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 190, gray = 205 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 2 },
            { itemId = 7067, name = "Elemental Earth", count = 2 },
            { itemId = 7070, name = "Elemental Water", count = 2 },
            { itemId = 7068, name = "Elemental Fire", count = 2 },
            { itemId = 7069, name = "Elemental Air", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Crimson Silk Shoulders (155)
    {
        id = 8793,
        name = "Crimson Silk Shoulders",
        itemId = 7059,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 190, gray = 205 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 6371, name = "Fire Oil", count = 2 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7084,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Shoulders (155)
    {
        id = 8795,
        name = "Azure Shoulders",
        itemId = 7060,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 190, gray = 205 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 6 },
            { itemId = 7072, name = "Naga Scale", count = 2 },
            { itemId = 6260, name = "Blue Dye", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7085,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Holiday Shirt (155)
    {
        id = 21945,
        name = "Green Holiday Shirt",
        itemId = 17723,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 165, green = 170, gray = 175 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 2605, name = "Green Dye", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 17724,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthen Silk Belt (160)
    {
        id = 8797,
        name = "Earthen Silk Belt",
        itemId = 7061,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 195, gray = 210 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 7067, name = "Elemental Earth", count = 4 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7086,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Crimson Silk Pantaloons (160)
    {
        id = 8799,
        name = "Crimson Silk Pantaloons",
        itemId = 7062,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 190, gray = 200 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthen Silk Gloves (160)
    {
        id = 1257434,
        name = "Earthen Silk Gloves",
        itemId = 254017,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 195, gray = 210 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 7067, name = "Elemental Earth", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254018,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Icy Cloak (165)
    {
        id = 3862,
        name = "Icy Cloak",
        itemId = 4327,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 200, gray = 215 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 3829, name = "Frost Oil", count = 1 },
            { itemId = 4337, name = "Thick Spider's Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 4355,
            cost = 1500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Star Belt (165)
    {
        id = 3864,
        name = "Star Belt",
        itemId = 4329,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 200, gray = 215 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 3864, name = "Citrine", count = 1 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4356,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Swashbuckler's Shirt (165)
    {
        id = 3873,
        name = "Black Swashbuckler's Shirt",
        itemId = 4336,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 175, green = 180, gray = 185 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10728,
            cost = 1500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchanter's Cowl (165)
    {
        id = 439102,
        name = "Enchanter's Cowl",
        itemId = 217257,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 200, gray = 215 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 4337, name = "Thick Spider's Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 217258,
            cost = 1000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthen Silk Cuffs (165)
    {
        id = 1257435,
        name = "Earthen Silk Cuffs",
        itemId = 254019,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 200, gray = 215 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 7067, name = "Elemental Earth", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 254020,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gilded Handwraps (165)
    {
        id = 1257436,
        name = "Gilded Handwraps",
        itemId = 254021,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 200, gray = 215 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 12 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 1 },
            { itemId = 3577, name = "Gold Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254022,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Frothing Handwraps (165)
    {
        id = 1257437,
        name = "Frothing Handwraps",
        itemId = 254023,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 200, gray = 215 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 12 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 1 },
            { itemId = 7079, name = "Globe of Water", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254024,
            cost = 4125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Fiery Handwraps (165)
    {
        id = 1257438,
        name = "Fiery Handwraps",
        itemId = 254025,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 200, gray = 215 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 12 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 1 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254026,
            cost = 4125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Handwraps (165)
    {
        id = 1257439,
        name = "Black Handwraps",
        itemId = 254027,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 200, gray = 215 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 12 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 1 },
            { itemId = 7971, name = "Black Pearl", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254028,
            cost = 4125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Golden Handwraps (165)
    {
        id = 1257440,
        name = "Golden Handwraps",
        itemId = 254029,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 200, gray = 215 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 12 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 1 },
            { itemId = 13926, name = "Golden Pearl", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254030,
            cost = 4125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Radiant Handwraps (165)
    {
        id = 1257441,
        name = "Radiant Handwraps",
        itemId = 254031,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 200, gray = 215 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 12 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 1 },
            { itemId = 11178, name = "Large Radiant Shard", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254032,
            cost = 4125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Crimson Silk Robe (170)
    {
        id = 8802,
        name = "Crimson Silk Robe",
        itemId = 7063,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 185, green = 200, gray = 215 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 8 },
            { itemId = 7068, name = "Elemental Fire", count = 4 },
            { itemId = 3827, name = "Mana Potion", count = 2 },
            { itemId = 2604, name = "Red Dye", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7088,
            cost = 5000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthen Silk Shoulders (170)
    {
        id = 1257442,
        name = "Earthen Silk Shoulders",
        itemId = 254033,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 185, green = 200, gray = 215 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 6 },
            { itemId = 7067, name = "Elemental Earth", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 254034,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Crimson Silk Gloves (175)
    {
        id = 8804,
        name = "Crimson Silk Gloves",
        itemId = 7064,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 190, green = 205, gray = 220 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 6 },
            { itemId = 7068, name = "Elemental Fire", count = 2 },
            { itemId = 6371, name = "Fire Oil", count = 2 },
            { itemId = 4304, name = "Thick Leather", count = 2 },
            { itemId = 2604, name = "Red Dye", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Mageweave Robe (175)
    {
        id = 12050,
        name = "Black Mageweave Robe",
        itemId = 10001,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 190, green = 205, gray = 220 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadoweave Pants (175)
    {
        id = 12052,
        name = "Shadoweave Pants",
        itemId = 10002,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 190, green = 205, gray = 220 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 10285, name = "Shadow Silk", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Boots of the Enchanter (175)
    {
        id = 439097,
        name = "Boots of the Enchanter",
        itemId = 217253,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 210, gray = 225 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
            { itemId = 4337, name = "Thick Spider's Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 217254,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Stormsewn Cowl (175)
    {
        id = 1301532,
        name = "Cloudy Stormsewn Cowl",
        itemId = 277046,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 185, green = 187, gray = 190 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 7 },
            { itemId = 11134, name = "Lesser Mystic Essence", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
            { itemId = 2324, name = "Bleach", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2787,
            factionName = "Earthen Ring",
            level = "Friendly",
            itemId = 276982,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Stormsewn Epaulets (175)
    {
        id = 1301533,
        name = "Cloudy Stormsewn Epaulets",
        itemId = 277047,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 185, green = 187, gray = 190 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
            { itemId = 2324, name = "Bleach", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2787,
            factionName = "Earthen Ring",
            level = "Friendly",
            itemId = 276983,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Stormsewn Cowl (175)
    {
        id = 1301540,
        name = "Azure Stormsewn Cowl",
        itemId = 277054,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 185, green = 187, gray = 190 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 7 },
            { itemId = 11134, name = "Lesser Mystic Essence", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2740,
            factionName = "Kirin Tor",
            level = "Friendly",
            itemId = 276990,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Stormsewn Epaulets (175)
    {
        id = 1301541,
        name = "Azure Stormsewn Epaulets",
        itemId = 277055,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 185, green = 187, gray = 190 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2740,
            factionName = "Kirin Tor",
            level = "Friendly",
            itemId = 276991,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Mageweave Gloves (180)
    {
        id = 12053,
        name = "Black Mageweave Gloves",
        itemId = 10003,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 195, green = 210, gray = 225 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadoweave Robe (180)
    {
        id = 12055,
        name = "Shadoweave Robe",
        itemId = 10004,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 195, green = 210, gray = 225 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 10285, name = "Shadow Silk", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Mageweave Vest (180)
    {
        id = 12056,
        name = "Red Mageweave Vest",
        itemId = 10007,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 195, green = 210, gray = 225 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10300,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- White Bandit Mask (180)
    {
        id = 12059,
        name = "White Bandit Mask",
        itemId = 10008,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 185, green = 190, gray = 195 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 1 },
            { itemId = 2324, name = "Bleach", count = 1 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10301,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Mageweave Pants (180)
    {
        id = 12060,
        name = "Red Mageweave Pants",
        itemId = 10009,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 195, green = 210, gray = 225 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10302,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Orange Mageweave Shirt (180)
    {
        id = 12061,
        name = "Orange Mageweave Shirt",
        itemId = 10056,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 185, green = 190, gray = 195 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 1 },
            { itemId = 6261, name = "Orange Dye", count = 1 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Orange Martial Shirt (185)
    {
        id = 12064,
        name = "Orange Martial Shirt",
        itemId = 10052,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 190, green = 195, gray = 200 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 2 },
            { itemId = 6261, name = "Orange Dye", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10311,
            cost = 3000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mageweave Bag (190)
    {
        id = 12065,
        name = "Mageweave Bag",
        itemId = 10050,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 205, green = 220, gray = 235 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Mageweave Gloves (190)
    {
        id = 12066,
        name = "Red Mageweave Gloves",
        itemId = 10018,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 205, green = 220, gray = 235 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10312,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dreamweave Gloves (190)
    {
        id = 12067,
        name = "Dreamweave Gloves",
        itemId = 10019,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 205, green = 220, gray = 235 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 8153, name = "Wildvine", count = 4 },
            { itemId = 10286, name = "Heart of the Wild", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cindercloth Robe (190)
    {
        id = 12069,
        name = "Cindercloth Robe",
        itemId = 10042,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 205, green = 220, gray = 235 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 5 },
            { itemId = 7077, name = "Heart of Fire", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dreamweave Vest (190)
    {
        id = 12070,
        name = "Dreamweave Vest",
        itemId = 10021,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 205, green = 220, gray = 235 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 6 },
            { itemId = 8153, name = "Wildvine", count = 6 },
            { itemId = 10286, name = "Heart of the Wild", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadoweave Gloves (190)
    {
        id = 12071,
        name = "Shadoweave Gloves",
        itemId = 10023,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 205, green = 220, gray = 235 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 5 },
            { itemId = 10285, name = "Shadow Silk", count = 5 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Mageweave Headband (190)
    {
        id = 12072,
        name = "Black Mageweave Headband",
        itemId = 10024,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 205, green = 220, gray = 235 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Mageweave Boots (190)
    {
        id = 12073,
        name = "Black Mageweave Boots",
        itemId = 10026,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 205, green = 220, gray = 235 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 4304, name = "Thick Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Mageweave Shoulders (190)
    {
        id = 12074,
        name = "Black Mageweave Shoulders",
        itemId = 10027,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 205, green = 220, gray = 235 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lavender Mageweave Shirt (190)
    {
        id = 12075,
        name = "Lavender Mageweave Shirt",
        itemId = 10054,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 195, green = 200, gray = 205 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 2 },
            { itemId = 4342, name = "Purple Dye", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10314,
            cost = 4000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchanted Mageweave Pouch (190)
    {
        id = 27658,
        name = "Enchanted Mageweave Pouch",
        itemId = 22246,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 205, green = 220, gray = 235 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 11137, name = "Vision Dust", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22307,
            cost = 6000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Crimson Silk Shoulders (190)
    {
        id = 439093,
        name = "Crimson Silk Shoulders",
        itemId = 217250,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 225, gray = 240 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 6371, name = "Fire Oil", count = 2 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 217251,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mageweave Reagent Bag (190)
    {
        id = 1257443,
        name = "Mageweave Reagent Bag",
        itemId = 254035,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 205, green = 210, gray = 215 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 249430, name = "Magenta Dye", count = 1 },
            { itemId = 249409, name = "Cerulean Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254036,
            cost = 4750,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadoweave Shoulders (195)
    {
        id = 12076,
        name = "Shadoweave Shoulders",
        itemId = 10028,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 210, green = 225, gray = 240 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 5 },
            { itemId = 10285, name = "Shadow Silk", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Simple Black Dress (195)
    {
        id = 12077,
        name = "Simple Black Dress",
        itemId = 10053,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 200, green = 205, gray = 210 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
            { itemId = 2324, name = "Bleach", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Mageweave Shoulders (195)
    {
        id = 12078,
        name = "Red Mageweave Shoulders",
        itemId = 10029,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 210, green = 225, gray = 240 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10315,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Mageweave Bag (195)
    {
        id = 12079,
        name = "Red Mageweave Bag",
        itemId = 10051,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 210, green = 225, gray = 240 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 5 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pink Mageweave Shirt (195)
    {
        id = 12080,
        name = "Pink Mageweave Shirt",
        itemId = 10055,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 200, green = 205, gray = 210 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 10290, name = "Pink Dye", count = 1 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10317,
            cost = 4000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthen Silk Belt (195)
    {
        id = 439091,
        name = "Earthen Silk Belt",
        itemId = 217248,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 230, gray = 245 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 7067, name = "Elemental Earth", count = 4 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 217249,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Nethergeld Shoulders (195)
    {
        id = 1257450,
        name = "Nethergeld Shoulders",
        itemId = 254049,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 210, green = 225, gray = 240 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 16 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 3577, name = "Gold Bar", count = 8 },
            { itemId = 11175, name = "Greater Nether Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254050,
            cost = 4875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Netherfroth Shoulders (195)
    {
        id = 1257451,
        name = "Netherfroth Shoulders",
        itemId = 254051,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 210, green = 225, gray = 240 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 16 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 7079, name = "Globe of Water", count = 8 },
            { itemId = 11175, name = "Greater Nether Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254052,
            cost = 4875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Netherflame Shoulders (195)
    {
        id = 1257452,
        name = "Netherflame Shoulders",
        itemId = 254053,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 210, green = 225, gray = 240 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 16 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 7077, name = "Heart of Fire", count = 8 },
            { itemId = 11175, name = "Greater Nether Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254054,
            cost = 4875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Netherpearl Shoulders (195)
    {
        id = 1257453,
        name = "Netherpearl Shoulders",
        itemId = 254055,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 210, green = 225, gray = 240 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 16 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 7971, name = "Black Pearl", count = 8 },
            { itemId = 11175, name = "Greater Nether Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254056,
            cost = 4875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Nethershine Shoulders (195)
    {
        id = 1257454,
        name = "Nethershine Shoulders",
        itemId = 254057,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 210, green = 225, gray = 240 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 16 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 13926, name = "Golden Pearl", count = 8 },
            { itemId = 11175, name = "Greater Nether Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254058,
            cost = 4875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Netherlight Shoulders (195)
    {
        id = 1257455,
        name = "Netherlight Shoulders",
        itemId = 254059,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 210, green = 225, gray = 240 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 16 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
            { itemId = 11178, name = "Large Radiant Shard", count = 8 },
            { itemId = 11175, name = "Greater Nether Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254060,
            cost = 4875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Admiral's Hat (200)
    {
        id = 12081,
        name = "Admiral's Hat",
        itemId = 10030,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 215, green = 230, gray = 245 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 4589, name = "Long Elegant Feather", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10318,
            cost = 7000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadoweave Boots (200)
    {
        id = 12082,
        name = "Shadoweave Boots",
        itemId = 10031,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 215, green = 230, gray = 245 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 6 },
            { itemId = 10285, name = "Shadow Silk", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 4304, name = "Thick Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Mageweave Headband (200)
    {
        id = 12084,
        name = "Red Mageweave Headband",
        itemId = 10033,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 215, green = 230, gray = 245 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10320,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tuxedo Shirt (200)
    {
        id = 12085,
        name = "Tuxedo Shirt",
        itemId = 10034,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 205, green = 210, gray = 215 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10321,
            cost = 4500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadoweave Mask (200)
    {
        id = 12086,
        name = "Shadoweave Mask",
        itemId = 10025,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 215, green = 230, gray = 245 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 2 },
            { itemId = 10285, name = "Shadow Silk", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 10463,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cindercloth Boots (200)
    {
        id = 12088,
        name = "Cindercloth Boots",
        itemId = 10044,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 215, green = 230, gray = 245 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 5 },
            { itemId = 7077, name = "Heart of Fire", count = 1 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 4304, name = "Thick Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hyperconductive Arcano-Filament (200)
    {
        id = 435827,
        name = "Hyperconductive Arcano-Filament",
        itemId = 213379,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 2 },
            { itemId = 213378, name = "Unstable Microfilament", count = 5 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 215368,
            cost = 25000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dreamweave Circlet (205)
    {
        id = 12092,
        name = "Dreamweave Circlet",
        itemId = 10041,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 8 },
            { itemId = 8153, name = "Wildvine", count = 4 },
            { itemId = 10286, name = "Heart of the Wild", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
            { itemId = 1529, name = "Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bolt of Runecloth (205)
    {
        id = 18401,
        name = "Bolt of Runecloth",
        itemId = 14048,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 210, green = 212, gray = 215 },
        reagents = {
            { itemId = 14047, name = "Runecloth", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Festival Dress (205)
    {
        id = 26403,
        name = "Festival Dress",
        itemId = 21154,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 4625, name = "Firebloom", count = 2 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 21722,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Festival Suit (205)
    {
        id = 26407,
        name = "Festival Suit",
        itemId = 21542,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 4625, name = "Firebloom", count = 2 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 21723,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Crimson Silk Robe (205)
    {
        id = 439085,
        name = "Crimson Silk Robe",
        itemId = 217245,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 8 },
            { itemId = 7068, name = "Elemental Fire", count = 4 },
            { itemId = 3827, name = "Mana Potion", count = 2 },
            { itemId = 2604, name = "Red Dye", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 217244,
            cost = 5000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Nethergeld Cuffs (205)
    {
        id = 1257456,
        name = "Nethergeld Cuffs",
        itemId = 254061,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 18 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 249430, name = "Magenta Dye", count = 6 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 3577, name = "Gold Bar", count = 10 },
            { itemId = 11175, name = "Greater Nether Essence", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254062,
            cost = 5125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Netherfroth Cuffs (205)
    {
        id = 1257457,
        name = "Netherfroth Cuffs",
        itemId = 254063,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 18 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 249430, name = "Magenta Dye", count = 6 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 7079, name = "Globe of Water", count = 10 },
            { itemId = 11175, name = "Greater Nether Essence", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254064,
            cost = 5125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Netherflame Cuffs (205)
    {
        id = 1257458,
        name = "Netherflame Cuffs",
        itemId = 254065,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 18 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 249430, name = "Magenta Dye", count = 6 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 7077, name = "Heart of Fire", count = 10 },
            { itemId = 11175, name = "Greater Nether Essence", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254066,
            cost = 5125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Netherpearl Cuffs (205)
    {
        id = 1257459,
        name = "Netherpearl Cuffs",
        itemId = 254067,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 18 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 249430, name = "Magenta Dye", count = 6 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 7971, name = "Black Pearl", count = 10 },
            { itemId = 11175, name = "Greater Nether Essence", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254068,
            cost = 5125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Nethershine Cuffs (205)
    {
        id = 1257460,
        name = "Nethershine Cuffs",
        itemId = 254069,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 18 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 249430, name = "Magenta Dye", count = 6 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 13926, name = "Golden Pearl", count = 10 },
            { itemId = 11175, name = "Greater Nether Essence", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254070,
            cost = 5125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Netherlight Cuffs (205)
    {
        id = 1257461,
        name = "Netherlight Cuffs",
        itemId = 254071,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 18 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 249430, name = "Magenta Dye", count = 6 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 11178, name = "Large Radiant Shard", count = 10 },
            { itemId = 11175, name = "Greater Nether Essence", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254072,
            cost = 5125,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runecloth Belt (210)
    {
        id = 18402,
        name = "Runecloth Belt",
        itemId = 13856,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 240, gray = 255 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Frostweave Tunic (210)
    {
        id = 18403,
        name = "Frostweave Tunic",
        itemId = 13869,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 240, gray = 255 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 7079, name = "Globe of Water", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14466,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Frostweave Robe (210)
    {
        id = 18404,
        name = "Frostweave Robe",
        itemId = 13868,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 240, gray = 255 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 7079, name = "Globe of Water", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14467,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runecloth Bag (215)
    {
        id = 18405,
        name = "Runecloth Bag",
        itemId = 14046,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 8170, name = "Rugged Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14468,
            cost = 12000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runecloth Robe (215)
    {
        id = 18406,
        name = "Runecloth Robe",
        itemId = 13858,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14469,
            cost = 12000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runecloth Tunic (215)
    {
        id = 18407,
        name = "Runecloth Tunic",
        itemId = 13857,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14470,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cindercloth Vest (215)
    {
        id = 18408,
        name = "Cindercloth Vest",
        itemId = 14042,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 7077, name = "Heart of Fire", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14471,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Frostweave Gloves (215)
    {
        id = 18411,
        name = "Frostweave Gloves",
        itemId = 13870,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 3 },
            { itemId = 7080, name = "Essence of Water", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14474,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Soul Pouch (215)
    {
        id = 26085,
        name = "Soul Pouch",
        itemId = 21340,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 7972, name = "Ichor of Undeath", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 21358,
            cost = 12000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ghostweave Cord (215)
    {
        id = 1257462,
        name = "Ghostweave Cord",
        itemId = 254073,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 9210, name = "Ghost Dye", count = 1 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254074,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthenweave Gloves (215)
    {
        id = 1257463,
        name = "Earthenweave Gloves",
        itemId = 254075,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 7076, name = "Essence of Earth", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254076,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthenweave Cord (215)
    {
        id = 1257464,
        name = "Earthenweave Cord",
        itemId = 254077,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 7076, name = "Essence of Earth", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254078,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runecloth Reagent Bag (215)
    {
        id = 1257465,
        name = "Runecloth Reagent Bag",
        itemId = 254079,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 8170, name = "Rugged Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 249431, name = "Viridian Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254080,
            cost = 5375,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gilded Waistcord (215)
    {
        id = 1257466,
        name = "Gilded Waistcord",
        itemId = 254081,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 8 },
            { itemId = 249409, name = "Cerulean Dye", count = 5 },
            { itemId = 3577, name = "Gold Bar", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254082,
            cost = 5375,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Frothing Waistcord (215)
    {
        id = 1257467,
        name = "Frothing Waistcord",
        itemId = 254083,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 8 },
            { itemId = 249409, name = "Cerulean Dye", count = 5 },
            { itemId = 7079, name = "Globe of Water", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254084,
            cost = 5375,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Fiery Waistcord (215)
    {
        id = 1257468,
        name = "Fiery Waistcord",
        itemId = 254085,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 8 },
            { itemId = 249409, name = "Cerulean Dye", count = 5 },
            { itemId = 7077, name = "Heart of Fire", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254086,
            cost = 5375,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Waistcord (215)
    {
        id = 1257469,
        name = "Black Waistcord",
        itemId = 254087,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 8 },
            { itemId = 249409, name = "Cerulean Dye", count = 5 },
            { itemId = 7971, name = "Black Pearl", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254088,
            cost = 5375,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Golden Waistcord (215)
    {
        id = 1257470,
        name = "Golden Waistcord",
        itemId = 254089,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 8 },
            { itemId = 249409, name = "Cerulean Dye", count = 5 },
            { itemId = 13926, name = "Golden Pearl", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254090,
            cost = 5375,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Radiant Waistcord (215)
    {
        id = 1257471,
        name = "Radiant Waistcord",
        itemId = 254091,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 8 },
            { itemId = 249409, name = "Cerulean Dye", count = 5 },
            { itemId = 11178, name = "Large Radiant Shard", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254092,
            cost = 5375,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runecloth Cloak (220)
    {
        id = 18409,
        name = "Runecloth Cloak",
        itemId = 13860,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 255, gray = 270 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14472,
            cost = 12000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ghostweave Belt (220)
    {
        id = 18410,
        name = "Ghostweave Belt",
        itemId = 14143,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 235, green = 250, gray = 265 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 3 },
            { itemId = 9210, name = "Ghost Dye", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14473,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cindercloth Gloves (225)
    {
        id = 18412,
        name = "Cindercloth Gloves",
        itemId = 14043,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 255, gray = 270 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 7077, name = "Heart of Fire", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14476,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ghostweave Gloves (225)
    {
        id = 18413,
        name = "Ghostweave Gloves",
        itemId = 14142,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 255, gray = 270 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 9210, name = "Ghost Dye", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14477,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brightcloth Robe (225)
    {
        id = 18414,
        name = "Brightcloth Robe",
        itemId = 14100,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 255, gray = 270 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14478,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brightcloth Gloves (225)
    {
        id = 18415,
        name = "Brightcloth Gloves",
        itemId = 14101,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 255, gray = 270 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14479,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ghostweave Vest (225)
    {
        id = 18416,
        name = "Ghostweave Vest",
        itemId = 14141,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 255, gray = 270 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 9210, name = "Ghost Dye", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14480,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthenweave Boots (225)
    {
        id = 1257472,
        name = "Earthenweave Boots",
        itemId = 254093,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 255, gray = 270 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 7076, name = "Essence of Earth", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254094,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runecloth Gloves (230)
    {
        id = 18417,
        name = "Runecloth Gloves",
        itemId = 13863,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 245, green = 260, gray = 275 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14481,
            cost = 16000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cindercloth Cloak (230)
    {
        id = 18418,
        name = "Cindercloth Cloak",
        itemId = 14044,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 245, green = 260, gray = 275 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 7078, name = "Essence of Fire", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14482,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Felcloth Pants (230)
    {
        id = 18419,
        name = "Felcloth Pants",
        itemId = 14107,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 245, green = 260, gray = 275 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 14256, name = "Felcloth", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14483,
            cost = 16000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brightcloth Cloak (230)
    {
        id = 18420,
        name = "Brightcloth Cloak",
        itemId = 14103,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 245, green = 260, gray = 275 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14484,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wizardweave Leggings (230)
    {
        id = 18421,
        name = "Wizardweave Leggings",
        itemId = 14132,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 245, green = 260, gray = 275 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 11176, name = "Dream Dust", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14485,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mooncloth (230)
    {
        id = 18560,
        name = "Mooncloth",
        itemId = 14342,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 270, green = 285, gray = 300 },
        reagents = {
            { itemId = 14256, name = "Felcloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14526,
            cost = 20000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchanted Runecloth Bag (230)
    {
        id = 27659,
        name = "Enchanted Runecloth Bag",
        itemId = 22248,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 245, green = 260, gray = 275 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22308,
            cost = 20000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cenarion Herb Bag (230)
    {
        id = 27724,
        name = "Cenarion Herb Bag",
        itemId = 22251,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 245, green = 260, gray = 275 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 8831, name = "Purple Lotus", count = 10 },
            { itemId = 11040, name = "Morrowgrain", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Friendly",
            itemId = 22310,
            cost = 20000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloak of Fire (235)
    {
        id = 18422,
        name = "Cloak of Fire",
        itemId = 14134,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 7078, name = "Essence of Fire", count = 4 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
            { itemId = 7068, name = "Elemental Fire", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14486,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runecloth Boots (235)
    {
        id = 18423,
        name = "Runecloth Boots",
        itemId = 13864,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14488,
            cost = 20000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Frostweave Pants (235)
    {
        id = 18424,
        name = "Frostweave Pants",
        itemId = 13871,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 7080, name = "Essence of Water", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14489,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cindercloth Pants (235)
    {
        id = 18434,
        name = "Cindercloth Pants",
        itemId = 14045,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 7078, name = "Essence of Fire", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14490,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gilded Sandals (235)
    {
        id = 1257479,
        name = "Gilded Sandals",
        itemId = 254107,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 10 },
            { itemId = 249409, name = "Cerulean Dye", count = 6 },
            { itemId = 3577, name = "Gold Bar", count = 14 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254108,
            cost = 5875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Frothing Sandals (235)
    {
        id = 1257480,
        name = "Frothing Sandals",
        itemId = 254109,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 10 },
            { itemId = 249409, name = "Cerulean Dye", count = 6 },
            { itemId = 7079, name = "Globe of Water", count = 14 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254110,
            cost = 5875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Fiery Sandals (235)
    {
        id = 1257481,
        name = "Fiery Sandals",
        itemId = 254111,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 10 },
            { itemId = 249409, name = "Cerulean Dye", count = 6 },
            { itemId = 7077, name = "Heart of Fire", count = 14 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254112,
            cost = 5875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Sandals (235)
    {
        id = 1257482,
        name = "Black Sandals",
        itemId = 254113,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 10 },
            { itemId = 249409, name = "Cerulean Dye", count = 6 },
            { itemId = 7971, name = "Black Pearl", count = 14 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254114,
            cost = 5875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Golden Sandals (235)
    {
        id = 1257483,
        name = "Golden Sandals",
        itemId = 254115,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 10 },
            { itemId = 249409, name = "Cerulean Dye", count = 6 },
            { itemId = 13926, name = "Golden Pearl", count = 14 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254116,
            cost = 5875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Radiant Sandals (235)
    {
        id = 1257484,
        name = "Radiant Sandals",
        itemId = 254117,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 10 },
            { itemId = 249409, name = "Cerulean Dye", count = 6 },
            { itemId = 11178, name = "Large Radiant Shard", count = 14 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254118,
            cost = 5875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Felcloth Boots (240)
    {
        id = 18437,
        name = "Felcloth Boots",
        itemId = 14108,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 255, green = 270, gray = 285 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14256, name = "Felcloth", count = 4 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14492,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runecloth Pants (240)
    {
        id = 18438,
        name = "Runecloth Pants",
        itemId = 13865,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 255, green = 270, gray = 285 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14491,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthenweave Mantle (240)
    {
        id = 1257485,
        name = "Earthenweave Mantle",
        itemId = 254119,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 255, green = 270, gray = 285 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 7076, name = "Essence of Earth", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254120,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Robe of Winter Night (245)
    {
        id = 18436,
        name = "Robe of Winter Night",
        itemId = 14136,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 260, green = 275, gray = 290 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
            { itemId = 14256, name = "Felcloth", count = 12 },
            { itemId = 12808, name = "Essence of Undeath", count = 4 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14493,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brightcloth Pants (245)
    {
        id = 18439,
        name = "Brightcloth Pants",
        itemId = 14104,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 260, green = 275, gray = 290 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 3577, name = "Gold Bar", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14494,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mooncloth Leggings (245)
    {
        id = 18440,
        name = "Mooncloth Leggings",
        itemId = 14137,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 270, green = 285, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14497,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ghostweave Pants (245)
    {
        id = 18441,
        name = "Ghostweave Pants",
        itemId = 14144,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 260, green = 275, gray = 290 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 9210, name = "Ghost Dye", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14495,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Felcloth Hood (245)
    {
        id = 18442,
        name = "Felcloth Hood",
        itemId = 14111,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 260, green = 275, gray = 290 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 14256, name = "Felcloth", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14496,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthenweave Leggings (245)
    {
        id = 1257488,
        name = "Earthenweave Leggings",
        itemId = 254125,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 260, green = 275, gray = 290 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 7076, name = "Essence of Earth", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254126,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runecloth Headband (250)
    {
        id = 18444,
        name = "Runecloth Headband",
        itemId = 13866,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 265, green = 280, gray = 295 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14498,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Winter Clothes (250)
    {
        id = 44950,
        name = "Green Winter Clothes",
        itemId = 34087,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 250, green = 252, gray = 255 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 1 },
            { itemId = 2605, name = "Green Dye", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 34261,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Winter Clothes (250)
    {
        id = 44958,
        name = "Red Winter Clothes",
        itemId = 34085,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 250, green = 252, gray = 255 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 1 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 34319,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Scarlet Augur's Cuffs (250)
    {
        id = 1224610,
        name = "Scarlet Augur's Cuffs",
        itemId = 238267,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 260, green = 282, gray = 305 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238301,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Scarlet Augur's Strap (250)
    {
        id = 1224612,
        name = "Scarlet Augur's Strap",
        itemId = 238269,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 260, green = 282, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238303,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Crusader's Knapsack (250)
    {
        id = 1227723,
        name = "Crusader's Knapsack",
        itemId = 239147,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 260, green = 262, gray = 265 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 14 },
            { itemId = 2604, name = "Red Dye", count = 8 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 239149,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthenweave Vest (250)
    {
        id = 1257486,
        name = "Earthenweave Vest",
        itemId = 254121,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 265, green = 280, gray = 295 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 7076, name = "Essence of Earth", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254122,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runecloth Cuffs (250)
    {
        id = 1257487,
        name = "Runecloth Cuffs",
        itemId = 254123,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 265, green = 280, gray = 295 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 254124,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ghostweave Mantle (250)
    {
        id = 1257489,
        name = "Ghostweave Mantle",
        itemId = 254127,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 265, green = 280, gray = 295 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 9210, name = "Ghost Dye", count = 3 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254128,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mooncloth Bag (255)
    {
        id = 18445,
        name = "Mooncloth Bag",
        itemId = 14155,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 270, green = 285, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14342, name = "Mooncloth", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 249431, name = "Viridian Dye", count = 10 },
            { itemId = 249430, name = "Magenta Dye", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14499,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wizardweave Robe (255)
    {
        id = 18446,
        name = "Wizardweave Robe",
        itemId = 14128,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 270, green = 285, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 11176, name = "Dream Dust", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wisdom of the Timbermaw (255)
    {
        id = 23662,
        name = "Wisdom of the Timbermaw",
        itemId = 19047,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 270, green = 285, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 7076, name = "Essence of Earth", count = 3 },
            { itemId = 12803, name = "Living Essence", count = 3 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 576,
            factionName = "Timbermaw Hold",
            level = "Honored",
            itemId = 19215,
            cost = 22000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Argent Boots (255)
    {
        id = 23664,
        name = "Argent Boots",
        itemId = 19056,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 270, green = 285, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 13926, name = "Golden Pearl", count = 2 },
            { itemId = 12809, name = "Guardian Stone", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Honored",
            itemId = 19216,
            cost = 22000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Big Bag of Enchantment (255)
    {
        id = 27660,
        name = "Big Bag of Enchantment",
        itemId = 22249,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 270, green = 285, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 22309,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Satchel of Cenarius (255)
    {
        id = 27725,
        name = "Satchel of Cenarius",
        itemId = 22252,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 270, green = 285, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 13468, name = "Black Lotus", count = 1 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Revered",
            itemId = 22312,
            cost = 50000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ghostweave Boots (255)
    {
        id = 1257490,
        name = "Ghostweave Boots",
        itemId = 254129,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 265, green = 280, gray = 295 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 9210, name = "Ghost Dye", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254130,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthenweave Cuffs (255)
    {
        id = 1257491,
        name = "Earthenweave Cuffs",
        itemId = 254131,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 270, green = 285, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 7076, name = "Essence of Earth", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254132,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mooncloth Reagent Bag (255)
    {
        id = 1257492,
        name = "Mooncloth Reagent Bag",
        itemId = 254133,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 270, green = 285, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14342, name = "Mooncloth", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 249431, name = "Viridian Dye", count = 10 },
            { itemId = 249430, name = "Magenta Dye", count = 1 },
            { itemId = 249409, name = "Cerulean Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254134,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runecloth Shoulders (260)
    {
        id = 18449,
        name = "Runecloth Shoulders",
        itemId = 13867,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 275, green = 290, gray = 305 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 7 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14504,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wizardweave Turban (260)
    {
        id = 18450,
        name = "Wizardweave Turban",
        itemId = 14130,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 275, green = 290, gray = 305 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 11176, name = "Dream Dust", count = 4 },
            { itemId = 7910, name = "Star Ruby", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14505,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Felcloth Robe (260)
    {
        id = 18451,
        name = "Felcloth Robe",
        itemId = 14106,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 275, green = 290, gray = 305 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 14256, name = "Felcloth", count = 8 },
            { itemId = 12662, name = "Demonic Rune", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14506,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Scarlet Augur's Mitts (260)
    {
        id = 1224611,
        name = "Scarlet Augur's Mitts",
        itemId = 238268,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 270, green = 287, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238302,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Scarlet Augur's Soles (260)
    {
        id = 1224614,
        name = "Scarlet Augur's Soles",
        itemId = 238271,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 270, green = 287, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238305,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ghostweave Hood (260)
    {
        id = 1257493,
        name = "Ghostweave Hood",
        itemId = 254135,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 275, green = 290, gray = 305 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 9210, name = "Ghost Dye", count = 3 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254136,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthenweave Crown (260)
    {
        id = 1257494,
        name = "Earthenweave Crown",
        itemId = 254137,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 275, green = 290, gray = 305 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 7076, name = "Essence of Earth", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254138,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Felcloth Shoulders (265)
    {
        id = 18453,
        name = "Felcloth Shoulders",
        itemId = 14112,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 280, green = 295, gray = 310 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 7 },
            { itemId = 14256, name = "Felcloth", count = 6 },
            { itemId = 12662, name = "Demonic Rune", count = 4 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14508,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mooncloth Vest (270)
    {
        id = 18447,
        name = "Mooncloth Vest",
        itemId = 14138,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 285, green = 300, gray = 315 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14501,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Scarlet Augur's Leggings (270)
    {
        id = 1224613,
        name = "Scarlet Augur's Leggings",
        itemId = 238270,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 280, green = 292, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238304,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mooncloth Shoulders (275)
    {
        id = 18448,
        name = "Mooncloth Shoulders",
        itemId = 14139,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 305, gray = 320 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 14342, name = "Mooncloth", count = 5 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14507,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mooncloth Robe (275)
    {
        id = 22902,
        name = "Mooncloth Robe",
        itemId = 18486,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 305, gray = 320 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 13926, name = "Golden Pearl", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18487,
            cost = 40000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mooncloth Circlet (280)
    {
        id = 18452,
        name = "Mooncloth Circlet",
        itemId = 14140,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 295, green = 310, gray = 325 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14342, name = "Mooncloth", count = 6 },
            { itemId = 12800, name = "Azerothian Diamond", count = 1 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14509,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Felcloth Gloves (280)
    {
        id = 22867,
        name = "Felcloth Gloves",
        itemId = 18407,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 295, green = 310, gray = 325 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
            { itemId = 14256, name = "Felcloth", count = 20 },
            { itemId = 12662, name = "Demonic Rune", count = 6 },
            { itemId = 12808, name = "Essence of Undeath", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18415,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Inferno Gloves (280)
    {
        id = 22868,
        name = "Inferno Gloves",
        itemId = 18408,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 295, green = 310, gray = 325 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
            { itemId = 7078, name = "Essence of Fire", count = 10 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18416,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mooncloth Gloves (280)
    {
        id = 22869,
        name = "Mooncloth Gloves",
        itemId = 18409,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 295, green = 310, gray = 325 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
            { itemId = 14342, name = "Mooncloth", count = 6 },
            { itemId = 13926, name = "Golden Pearl", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18417,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloak of Warding (280)
    {
        id = 22870,
        name = "Cloak of Warding",
        itemId = 18413,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 295, green = 310, gray = 325 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
            { itemId = 12809, name = "Guardian Stone", count = 4 },
            { itemId = 12360, name = "Arcanite Bar", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18418,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Scarlet Augur's Hood (280)
    {
        id = 1224607,
        name = "Scarlet Augur's Hood",
        itemId = 238264,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238298,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Scarlet Augur's Mantle (280)
    {
        id = 1224608,
        name = "Scarlet Augur's Mantle",
        itemId = 238265,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238299,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Scarlet Augur's Vestments (280)
    {
        id = 1224609,
        name = "Scarlet Augur's Vestments",
        itemId = 238266,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238300,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mooncloth Boots (285)
    {
        id = 19435,
        name = "Mooncloth Boots",
        itemId = 15802,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 285, green = 300, gray = 315 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 7971, name = "Black Pearl", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runed Stygian Leggings (285)
    {
        id = 24901,
        name = "Runed Stygian Leggings",
        itemId = 20538,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 300, green = 315, gray = 330 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 20520, name = "Dark Rune", count = 8 },
            { itemId = 14256, name = "Felcloth", count = 6 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20546,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runed Stygian Belt (285)
    {
        id = 24902,
        name = "Runed Stygian Belt",
        itemId = 20539,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 300, green = 315, gray = 330 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 2 },
            { itemId = 20520, name = "Dark Rune", count = 6 },
            { itemId = 14256, name = "Felcloth", count = 2 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20548,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runed Stygian Boots (285)
    {
        id = 24903,
        name = "Runed Stygian Boots",
        itemId = 20537,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 300, green = 315, gray = 330 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 20520, name = "Dark Rune", count = 6 },
            { itemId = 14256, name = "Felcloth", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20547,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Venomspew Gloves (285)
    {
        id = 1297120,
        name = "Venomspew Gloves",
        itemId = 275604,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 290, green = 292, gray = 295 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 1 },
            { itemId = 7082, name = "Essence of Air", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Friendly",
            itemId = 275580,
            cost = 75000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Swarmtender's Gloves (285)
    {
        id = 1297123,
        name = "Swarmtender's Gloves",
        itemId = 275607,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 290, green = 292, gray = 295 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 1 },
            { itemId = 7080, name = "Essence of Water", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Friendly",
            itemId = 275583,
            cost = 75000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mantle of the Timbermaw (290)
    {
        id = 23663,
        name = "Mantle of the Timbermaw",
        itemId = 19050,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 319, gray = 334 },
        reagents = {
            { itemId = 14342, name = "Mooncloth", count = 5 },
            { itemId = 7076, name = "Essence of Earth", count = 5 },
            { itemId = 12803, name = "Living Essence", count = 5 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 576,
            factionName = "Timbermaw Hold",
            level = "Revered",
            itemId = 19218,
            cost = 40000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Argent Shoulders (290)
    {
        id = 23665,
        name = "Argent Shoulders",
        itemId = 19059,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 320, gray = 335 },
        reagents = {
            { itemId = 14342, name = "Mooncloth", count = 5 },
            { itemId = 12809, name = "Guardian Stone", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Revered",
            itemId = 19217,
            cost = 40000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Incandescent Mooncloth Leggings (290)
    {
        id = 461752,
        name = "Incandescent Mooncloth Leggings",
        itemId = 227864,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 320, gray = 335 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 228318,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Crimson Dawnwoven Bag (290)
    {
        id = 1227724,
        name = "Crimson Dawnwoven Bag",
        itemId = 239148,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 300, green = 302, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 24 },
            { itemId = 2604, name = "Red Dye", count = 4 },
            { itemId = 12808, name = "Essence of Undeath", count = 2 },
            { itemId = 12811, name = "Righteous Orb", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 239150,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Venomspew Cord (290)
    {
        id = 1297121,
        name = "Venomspew Cord",
        itemId = 275605,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 1 },
            { itemId = 7082, name = "Essence of Air", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Honored",
            itemId = 275581,
            cost = 75000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Swarmtender's Cord (290)
    {
        id = 1297124,
        name = "Swarmtender's Cord",
        itemId = 275608,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 1 },
            { itemId = 7080, name = "Essence of Water", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Honored",
            itemId = 275584,
            cost = 75000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gloves of Spell Mastery (295)
    {
        id = 18454,
        name = "Gloves of Spell Mastery",
        itemId = 14146,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 310, green = 325, gray = 340 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
            { itemId = 14342, name = "Mooncloth", count = 8 },
            { itemId = 9210, name = "Ghost Dye", count = 8 },
            { itemId = 13926, name = "Golden Pearl", count = 4 },
            { itemId = 12364, name = "Huge Emerald", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
            { itemId = 249431, name = "Viridian Dye", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14511,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Truefaith Vestments (295)
    {
        id = 18456,
        name = "Truefaith Vestments",
        itemId = 14154,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 310, green = 325, gray = 340 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
            { itemId = 14342, name = "Mooncloth", count = 8 },
            { itemId = 12811, name = "Righteous Orb", count = 2 },
            { itemId = 13926, name = "Golden Pearl", count = 2 },
            { itemId = 9210, name = "Ghost Dye", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
            { itemId = 249431, name = "Viridian Dye", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14512,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Robe of the Archmage (295)
    {
        id = 18457,
        name = "Robe of the Archmage",
        itemId = 14152,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 310, green = 325, gray = 340 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
            { itemId = 7078, name = "Essence of Fire", count = 8 },
            { itemId = 7082, name = "Essence of Air", count = 8 },
            { itemId = 7076, name = "Essence of Earth", count = 8 },
            { itemId = 7080, name = "Essence of Water", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
            { itemId = 249431, name = "Viridian Dye", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14513,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Robe of the Void (295)
    {
        id = 18458,
        name = "Robe of the Void",
        itemId = 14153,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 310, green = 325, gray = 340 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
            { itemId = 12662, name = "Demonic Rune", count = 20 },
            { itemId = 14256, name = "Felcloth", count = 40 },
            { itemId = 7078, name = "Essence of Fire", count = 8 },
            { itemId = 12808, name = "Essence of Undeath", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
            { itemId = 249431, name = "Viridian Dye", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14514,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Belt of the Archmage (295)
    {
        id = 22866,
        name = "Belt of the Archmage",
        itemId = 18405,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 310, green = 325, gray = 340 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 16 },
            { itemId = 9210, name = "Ghost Dye", count = 8 },
            { itemId = 14342, name = "Mooncloth", count = 8 },
            { itemId = 7080, name = "Essence of Water", count = 10 },
            { itemId = 7078, name = "Essence of Fire", count = 10 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
            { itemId = 249431, name = "Viridian Dye", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18414,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Venomspew Footpads (295)
    {
        id = 1297122,
        name = "Venomspew Footpads",
        itemId = 275606,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 1 },
            { itemId = 7082, name = "Essence of Air", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Honored",
            itemId = 275582,
            cost = 75000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Swarmtender's Footpads (295)
    {
        id = 1297125,
        name = "Swarmtender's Footpads",
        itemId = 275609,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 1 },
            { itemId = 7080, name = "Essence of Water", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Honored",
            itemId = 275585,
            cost = 75000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flarecore Mantle (300)
    {
        id = 20848,
        name = "Flarecore Mantle",
        itemId = 16980,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
            { itemId = 17010, name = "Fiery Core", count = 4 },
            { itemId = 17011, name = "Lava Core", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Honored",
            itemId = 17017,
            cost = 180000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flarecore Gloves (300)
    {
        id = 20849,
        name = "Flarecore Gloves",
        itemId = 16979,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 17010, name = "Fiery Core", count = 6 },
            { itemId = 7078, name = "Essence of Fire", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Friendly",
            itemId = 17018,
            cost = 80000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flarecore Wraps (300)
    {
        id = 22759,
        name = "Flarecore Wraps",
        itemId = 18263,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 335, gray = 350 },
        reagents = {
            { itemId = 14342, name = "Mooncloth", count = 6 },
            { itemId = 17010, name = "Fiery Core", count = 8 },
            { itemId = 7078, name = "Essence of Fire", count = 2 },
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18265,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flarecore Robe (300)
    {
        id = 23666,
        name = "Flarecore Robe",
        itemId = 19156,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14342, name = "Mooncloth", count = 10 },
            { itemId = 17010, name = "Fiery Core", count = 2 },
            { itemId = 17011, name = "Lava Core", count = 3 },
            { itemId = 7078, name = "Essence of Fire", count = 6 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Honored",
            itemId = 19219,
            cost = 60000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flarecore Leggings (300)
    {
        id = 23667,
        name = "Flarecore Leggings",
        itemId = 19165,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14342, name = "Mooncloth", count = 8 },
            { itemId = 17010, name = "Fiery Core", count = 5 },
            { itemId = 17011, name = "Lava Core", count = 3 },
            { itemId = 7078, name = "Essence of Fire", count = 10 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Revered",
            itemId = 19220,
            cost = 90000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bloodvine Vest (300)
    {
        id = 24091,
        name = "Bloodvine Vest",
        itemId = 19682,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14342, name = "Mooncloth", count = 3 },
            { itemId = 19726, name = "Bloodvine", count = 5 },
            { itemId = 12804, name = "Powerful Mojo", count = 4 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Revered",
            itemId = 19764,
            cost = 50000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bloodvine Leggings (300)
    {
        id = 24092,
        name = "Bloodvine Leggings",
        itemId = 19683,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 19726, name = "Bloodvine", count = 4 },
            { itemId = 12804, name = "Powerful Mojo", count = 4 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Honored",
            itemId = 19765,
            cost = 50000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bloodvine Boots (300)
    {
        id = 24093,
        name = "Bloodvine Boots",
        itemId = 19684,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14342, name = "Mooncloth", count = 3 },
            { itemId = 19726, name = "Bloodvine", count = 3 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Friendly",
            itemId = 19766,
            cost = 50000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Core Felcloth Bag (300)
    {
        id = 26087,
        name = "Core Felcloth Bag",
        itemId = 21342,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14256, name = "Felcloth", count = 20 },
            { itemId = 17012, name = "Core Leather", count = 16 },
            { itemId = 19726, name = "Bloodvine", count = 8 },
            { itemId = 7078, name = "Essence of Fire", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 21371,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gaea's Embrace (300)
    {
        id = 28210,
        name = "Gaea's Embrace",
        itemId = 22660,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 19726, name = "Bloodvine", count = 1 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Revered",
            itemId = 22683,
            cost = 90000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Sylvan Vest (300)
    {
        id = 28480,
        name = "Sylvan Vest",
        itemId = 22756,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 19726, name = "Bloodvine", count = 2 },
            { itemId = 12803, name = "Living Essence", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Revered",
            itemId = 22774,
            cost = 50000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Sylvan Crown (300)
    {
        id = 28481,
        name = "Sylvan Crown",
        itemId = 22757,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 12803, name = "Living Essence", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Honored",
            itemId = 22773,
            cost = 50000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Sylvan Shoulders (300)
    {
        id = 28482,
        name = "Sylvan Shoulders",
        itemId = 22758,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 2 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Friendly",
            itemId = 22772,
            cost = 50000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Incandescent Mooncloth Robe (300)
    {
        id = 461708,
        name = "Incandescent Mooncloth Robe",
        itemId = 227861,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 13926, name = "Golden Pearl", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 228303,
            cost = 40000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Leather-Reinforced Runecloth Bag (300)
    {
        id = 461727,
        name = "Leather-Reinforced Runecloth Bag",
        itemId = 227844,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 8170, name = "Rugged Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 228121,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Incandescent Mooncloth Vest (300)
    {
        id = 461747,
        name = "Incandescent Mooncloth Vest",
        itemId = 227860,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 228316,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Incandescent Mooncloth Circlet (300)
    {
        id = 461750,
        name = "Incandescent Mooncloth Circlet",
        itemId = 227863,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14342, name = "Mooncloth", count = 6 },
            { itemId = 12800, name = "Azerothian Diamond", count = 1 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 228317,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Embroidered Belt of the Archmage (300)
    {
        id = 462282,
        name = "Embroidered Belt of the Archmage",
        itemId = 228476,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 16 },
            { itemId = 9210, name = "Ghost Dye", count = 10 },
            { itemId = 14342, name = "Mooncloth", count = 10 },
            { itemId = 7080, name = "Essence of Water", count = 12 },
            { itemId = 7078, name = "Essence of Fire", count = 12 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 228477,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bottomless Reagent Bag (300)
    {
        id = 1257495,
        name = "Bottomless Reagent Bag",
        itemId = 254139,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 14342, name = "Mooncloth", count = 12 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 5 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 5 },
            { itemId = 249429, name = "Pristine Scale", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 254140,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Manaflare Pants (300)
    {
        id = 1292941,
        name = "Manaflare Pants",
        itemId = 273904,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 5 },
            { itemId = 14342, name = "Mooncloth", count = 3 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 22 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273972,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Manaflare Gloves (300)
    {
        id = 1292942,
        name = "Manaflare Gloves",
        itemId = 273905,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 16 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273973,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Manaflare Mantle (300)
    {
        id = 1292943,
        name = "Manaflare Mantle",
        itemId = 273906,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 16 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273974,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Manaflare Boots (300)
    {
        id = 1292944,
        name = "Manaflare Boots",
        itemId = 273907,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 16 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273975,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pants of Conviction (300)
    {
        id = 1292957,
        name = "Pants of Conviction",
        itemId = 273920,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 5 },
            { itemId = 14342, name = "Mooncloth", count = 3 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 22 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273988,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gloves of Conviction (300)
    {
        id = 1292958,
        name = "Gloves of Conviction",
        itemId = 273921,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 16 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273989,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mantle of Conviction (300)
    {
        id = 1292959,
        name = "Mantle of Conviction",
        itemId = 273922,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 16 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273990,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Treads of Conviction (300)
    {
        id = 1292960,
        name = "Treads of Conviction",
        itemId = 273923,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 16 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273991,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Leggings of Conviction (300)
    {
        id = 1292961,
        name = "Leggings of Conviction",
        itemId = 273924,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 5 },
            { itemId = 14342, name = "Mooncloth", count = 3 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 22 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273992,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Handguards of Conviction (300)
    {
        id = 1292962,
        name = "Handguards of Conviction",
        itemId = 273925,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 16 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273993,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pauldrons of Conviction (300)
    {
        id = 1292963,
        name = "Pauldrons of Conviction",
        itemId = 273926,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 16 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273994,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Boots of Conviction (300)
    {
        id = 1292964,
        name = "Boots of Conviction",
        itemId = 273927,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 16 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273995,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Demonheart Leggings (300)
    {
        id = 1292977,
        name = "Demonheart Leggings",
        itemId = 273940,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 5 },
            { itemId = 14342, name = "Mooncloth", count = 3 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 22 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274008,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Demonheart Gloves (300)
    {
        id = 1292978,
        name = "Demonheart Gloves",
        itemId = 273941,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 16 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274009,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Demonheart Spaulders (300)
    {
        id = 1292979,
        name = "Demonheart Spaulders",
        itemId = 273942,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 16 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274010,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Demonheart Boots (300)
    {
        id = 1292980,
        name = "Demonheart Boots",
        itemId = 273943,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 16 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274011,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Robes of Fiery Devastation (300)
    {
        id = 1306540,
        name = "Robes of Fiery Devastation",
        itemId = 279266,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 14342, name = "Mooncloth", count = 3 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 9 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279315,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mana-infused Cord (300)
    {
        id = 1306541,
        name = "Mana-infused Cord",
        itemId = 279267,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 2 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 7 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279316,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Rime-encrusted Boots (300)
    {
        id = 1306542,
        name = "Rime-encrusted Boots",
        itemId = 279268,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 2 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 7 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279317,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Fel Cape (300)
    {
        id = 1306543,
        name = "Fel Cape",
        itemId = 279269,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 1 },
            { itemId = 14342, name = "Mooncloth", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279318,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloak of Earth and Sky (300)
    {
        id = 1306544,
        name = "Cloak of Earth and Sky",
        itemId = 279270,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 1 },
            { itemId = 14342, name = "Mooncloth", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279319,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Felblood Soul Bag (300)
    {
        id = 1306545,
        name = "Felblood Soul Bag",
        itemId = 279271,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 14256, name = "Felcloth", count = 8 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279320,
        },
        expansion = C.EXPANSION.FOREVER,
    },
}

CraftLib:RegisterProfession("tailoring", {
    id = C.PROFESSION_ID.TAILORING,
    name = "Tailoring",
    expansion = C.EXPANSION.FOREVER,
    profile = "FOREVER",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
