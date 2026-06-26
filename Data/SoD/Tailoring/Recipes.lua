-- Data/SoD/Tailoring/Recipes.lua
-- Tailoring recipes for SoD Classic
-- Generated from DB2 data
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    -- Linen Cloak (1)
    {
        id = 2387,
        name = "Linen Cloak",
        itemId = 2570,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 35, green = 47, gray = 60 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 1 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
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
            trainingCost = 25,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bolt of Linen Cloth (1)
    {
        id = 2963,
        name = "Bolt of Linen Cloth",
        itemId = 2996,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 25, green = 37, gray = 50 },
        reagents = {
            { itemId = 2589, name = "Linen Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Brown Linen Shirt (1)
    {
        id = 3915,
        name = "Brown Linen Shirt",
        itemId = 4344,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 35, green = 47, gray = 60 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 1 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Simple Linen Pants (1)
    {
        id = 12044,
        name = "Simple Linen Pants",
        itemId = 10045,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 35, green = 47, gray = 60 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 1 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Brown Linen Pants (30)
    {
        id = 3914,
        name = "Brown Linen Pants",
        itemId = 4343,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 55, green = 72, gray = 90 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Brown Linen Robe (30)
    {
        id = 7623,
        name = "Brown Linen Robe",
        itemId = 6238,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 55, green = 72, gray = 90 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- White Linen Robe (30)
    {
        id = 7624,
        name = "White Linen Robe",
        itemId = 6241,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 55, green = 72, gray = 90 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 2324, name = "Bleach", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Linen Gloves (35)
    {
        id = 3840,
        name = "Heavy Linen Gloves",
        itemId = 4307,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 60, green = 77, gray = 95 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Linen Robe (40)
    {
        id = 2389,
        name = "Red Linen Robe",
        itemId = 2572,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 65, green = 82, gray = 100 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
            { itemId = 2604, name = "Red Dye", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2598,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Linen Shirt (40)
    {
        id = 2392,
        name = "Red Linen Shirt",
        itemId = 2575,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 65, green = 82, gray = 100 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 2604, name = "Red Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blue Linen Shirt (40)
    {
        id = 2394,
        name = "Blue Linen Shirt",
        itemId = 2577,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 65, green = 82, gray = 100 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Simple Dress (40)
    {
        id = 8465,
        name = "Simple Dress",
        itemId = 6786,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 65, green = 82, gray = 100 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 1 },
            { itemId = 2324, name = "Bleach", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Linen Bag (45)
    {
        id = 3755,
        name = "Linen Bag",
        itemId = 4238,
        skillRequired = 45,
        skillRange = { orange = 45, yellow = 70, green = 87, gray = 105 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Linen Vest (55)
    {
        id = 7629,
        name = "Red Linen Vest",
        itemId = 6239,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 80, green = 97, gray = 115 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 2604, name = "Red Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6271,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blue Linen Vest (55)
    {
        id = 7630,
        name = "Blue Linen Vest",
        itemId = 6240,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 80, green = 97, gray = 115 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Reinforced Linen Cape (60)
    {
        id = 2397,
        name = "Reinforced Linen Cape",
        itemId = 2580,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 85, green = 102, gray = 120 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Linen Bracers (60)
    {
        id = 3841,
        name = "Green Linen Bracers",
        itemId = 4308,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 85, green = 102, gray = 120 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Linen Boots (65)
    {
        id = 2386,
        name = "Linen Boots",
        itemId = 2569,
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 90, green = 107, gray = 125 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 2318, name = "Light Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Barbaric Linen Vest (70)
    {
        id = 2395,
        name = "Barbaric Linen Vest",
        itemId = 2578,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 95, green = 112, gray = 130 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 4 },
            { itemId = 2318, name = "Light Leather", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Linen Shirt (70)
    {
        id = 2396,
        name = "Green Linen Shirt",
        itemId = 2579,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 95, green = 112, gray = 130 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Handstitched Linen Britches (70)
    {
        id = 3842,
        name = "Handstitched Linen Britches",
        itemId = 4309,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 95, green = 112, gray = 130 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Linen Bag (70)
    {
        id = 6686,
        name = "Red Linen Bag",
        itemId = 5762,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 95, green = 112, gray = 130 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 2604, name = "Red Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5771,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blue Linen Robe (70)
    {
        id = 7633,
        name = "Blue Linen Robe",
        itemId = 6242,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 95, green = 112, gray = 130 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Woolen Cape (75)
    {
        id = 2402,
        name = "Woolen Cape",
        itemId = 2584,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 117, gray = 135 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bolt of Woolen Cloth (75)
    {
        id = 2964,
        name = "Bolt of Woolen Cloth",
        itemId = 2997,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 90, green = 97, gray = 105 },
        reagents = {
            { itemId = 2592, name = "Wool Cloth", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Simple Kilt (75)
    {
        id = 12046,
        name = "Simple Kilt",
        itemId = 10047,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 117, gray = 135 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Woolen Bag (80)
    {
        id = 3757,
        name = "Woolen Bag",
        itemId = 4240,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 105, green = 122, gray = 140 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Soft-soled Linen Boots (80)
    {
        id = 3845,
        name = "Soft-soled Linen Boots",
        itemId = 4312,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 105, green = 122, gray = 140 },
        reagents = {
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 5 },
            { itemId = 2318, name = "Light Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Woolen Vest (85)
    {
        id = 2399,
        name = "Green Woolen Vest",
        itemId = 2582,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 127, gray = 145 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Woolen Gloves (85)
    {
        id = 3843,
        name = "Heavy Woolen Gloves",
        itemId = 4310,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 127, gray = 145 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Pearl-clasped Cloak (90)
    {
        id = 6521,
        name = "Pearl-clasped Cloak",
        itemId = 5542,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 115, green = 132, gray = 150 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Woolen Boots (95)
    {
        id = 2401,
        name = "Woolen Boots",
        itemId = 2583,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 120, green = 137, gray = 155 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 2318, name = "Light Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Woolen Bag (95)
    {
        id = 3758,
        name = "Green Woolen Bag",
        itemId = 4241,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 120, green = 137, gray = 155 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 4 },
            { itemId = 2605, name = "Green Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4292,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Woolen Boots (95)
    {
        id = 3847,
        name = "Red Woolen Boots",
        itemId = 4313,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 120, green = 137, gray = 155 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Gray Woolen Shirt (100)
    {
        id = 2406,
        name = "Gray Woolen Shirt",
        itemId = 2587,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 110, green = 120, gray = 130 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Woolen Cloak (100)
    {
        id = 3844,
        name = "Heavy Woolen Cloak",
        itemId = 4311,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 142, gray = 160 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4346,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blue Overalls (100)
    {
        id = 7639,
        name = "Blue Overalls",
        itemId = 6263,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 142, gray = 160 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Gray Woolen Robe (105)
    {
        id = 2403,
        name = "Gray Woolen Robe",
        itemId = 2585,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 130, green = 147, gray = 165 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2601,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Double-stitched Woolen Shoulders (110)
    {
        id = 3848,
        name = "Double-stitched Woolen Shoulders",
        itemId = 4314,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 152, gray = 170 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Woolen Pants (110)
    {
        id = 3850,
        name = "Heavy Woolen Pants",
        itemId = 4316,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 152, gray = 170 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 5 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Stylish Red Shirt (110)
    {
        id = 3866,
        name = "Stylish Red Shirt",
        itemId = 4330,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 152, gray = 170 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- White Woolen Dress (110)
    {
        id = 8467,
        name = "White Woolen Dress",
        itemId = 6787,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 152, gray = 170 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 3 },
            { itemId = 2324, name = "Bleach", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Woolen Bag (115)
    {
        id = 6688,
        name = "Red Woolen Bag",
        itemId = 5763,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 140, green = 157, gray = 175 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 4 },
            { itemId = 2604, name = "Red Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5772,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Greater Adept's Robe (115)
    {
        id = 7643,
        name = "Greater Adept's Robe",
        itemId = 6264,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 140, green = 157, gray = 175 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Reinforced Woolen Shoulders (120)
    {
        id = 3849,
        name = "Reinforced Woolen Shoulders",
        itemId = 4315,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 162, gray = 180 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 6 },
            { itemId = 2319, name = "Medium Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4347,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Stylish Blue Shirt (120)
    {
        id = 7892,
        name = "Stylish Blue Shirt",
        itemId = 6384,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 162, gray = 180 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Stylish Green Shirt (120)
    {
        id = 7893,
        name = "Stylish Green Shirt",
        itemId = 6385,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 162, gray = 180 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Colorful Kilt (120)
    {
        id = 12047,
        name = "Colorful Kilt",
        itemId = 10048,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 162, gray = 180 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 5 },
            { itemId = 2604, name = "Red Dye", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10316,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bolt of Silk Cloth (125)
    {
        id = 3839,
        name = "Bolt of Silk Cloth",
        itemId = 4305,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 135, green = 140, gray = 145 },
        reagents = {
            { itemId = 4306, name = "Silk Cloth", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Phoenix Pants (125)
    {
        id = 3851,
        name = "Phoenix Pants",
        itemId = 4317,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 167, gray = 185 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 6 },
            { itemId = 5500, name = "Iridescent Pearl", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4349,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Spidersilk Boots (125)
    {
        id = 3855,
        name = "Spidersilk Boots",
        itemId = 4320,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 167, gray = 185 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 2 },
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 3182, name = "Spider's Silk", count = 4 },
            { itemId = 5500, name = "Iridescent Pearl", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Phoenix Gloves (125)
    {
        id = 3868,
        name = "Phoenix Gloves",
        itemId = 4331,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 167, gray = 185 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Phoenix Bindings (125)
    {
        id = 428424,
        name = "Phoenix Bindings",
        itemId = 210781,
        skillRequired = 125,
        skillRange = { orange = 0, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 6 },
            { itemId = 814, name = "Flask of Oil", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Gloves of Meditation (130)
    {
        id = 3852,
        name = "Gloves of Meditation",
        itemId = 4318,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 150, green = 165, gray = 180 },
        reagents = {
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 3383, name = "Elixir of Wisdom", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bright Yellow Shirt (135)
    {
        id = 3869,
        name = "Bright Yellow Shirt",
        itemId = 4332,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 145, green = 150, gray = 155 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Lesser Wizard's Robe (135)
    {
        id = 6690,
        name = "Lesser Wizard's Robe",
        itemId = 5766,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 155, green = 170, gray = 185 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 3182, name = "Spider's Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Spider Silk Slippers (140)
    {
        id = 3856,
        name = "Spider Silk Slippers",
        itemId = 4321,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 160, green = 175, gray = 190 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 3182, name = "Spider's Silk", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4350,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Azure Silk Pants (140)
    {
        id = 8758,
        name = "Azure Silk Pants",
        itemId = 7046,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 160, green = 175, gray = 190 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 6260, name = "Blue Dye", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 600,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Azure Silk Gloves (145)
    {
        id = 3854,
        name = "Azure Silk Gloves",
        itemId = 4319,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 165, green = 180, gray = 195 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Azure Silk Hood (145)
    {
        id = 8760,
        name = "Azure Silk Hood",
        itemId = 7048,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 155, green = 160, gray = 165 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 2 },
            { itemId = 6260, name = "Blue Dye", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 600,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Hands of Darkness (145)
    {
        id = 8780,
        name = "Hands of Darkness",
        itemId = 7047,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 165, green = 180, gray = 195 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Small Silk Pack (150)
    {
        id = 3813,
        name = "Small Silk Pack",
        itemId = 4245,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 185, gray = 200 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 4234, name = "Heavy Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 800,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Azure Silk Vest (150)
    {
        id = 3859,
        name = "Azure Silk Vest",
        itemId = 4324,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 185, gray = 200 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 6260, name = "Blue Dye", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Robes of Arcana (150)
    {
        id = 6692,
        name = "Robes of Arcana",
        itemId = 5770,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 185, gray = 200 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 3182, name = "Spider's Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5773,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Truefaith Gloves (150)
    {
        id = 8782,
        name = "Truefaith Gloves",
        itemId = 7049,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 185, gray = 200 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Extraplanar Spidersilk Boots (150)
    {
        id = 429351,
        name = "Extraplanar Spidersilk Boots",
        itemId = 210795,
        skillRequired = 150,
        skillRange = { orange = 0, yellow = 150, green = 167, gray = 185 },
        reagents = {
            { itemId = 211422, name = "Shard of the Void", count = 1 },
            { itemId = 4320, name = "Spidersilk Boots", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Silk Shirt (155)
    {
        id = 3870,
        name = "Dark Silk Shirt",
        itemId = 4333,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 165, green = 170, gray = 175 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- White Swashbuckler's Shirt (160)
    {
        id = 8483,
        name = "White Swashbuckler's Shirt",
        itemId = 6795,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 170, green = 175, gray = 180 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 2324, name = "Bleach", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 450,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Silk Headband (160)
    {
        id = 8762,
        name = "Silk Headband",
        itemId = 7050,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 170, green = 175, gray = 180 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 675,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Enchanter's Cowl (165)
    {
        id = 3857,
        name = "Enchanter's Cowl",
        itemId = 4322,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 200, gray = 215 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Green Silk Armor (165)
    {
        id = 8784,
        name = "Green Silk Armor",
        itemId = 7065,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 200, gray = 215 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 2605, name = "Green Dye", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7090,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shadow Hood (170)
    {
        id = 3858,
        name = "Shadow Hood",
        itemId = 4323,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 190, green = 205, gray = 220 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
            { itemId = 3824, name = "Shadow Oil", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4351,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Formal White Shirt (170)
    {
        id = 3871,
        name = "Formal White Shirt",
        itemId = 4334,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 180, green = 185, gray = 190 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 2324, name = "Bleach", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 450,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Earthen Vest (170)
    {
        id = 8764,
        name = "Earthen Vest",
        itemId = 7051,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 190, green = 205, gray = 220 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 7067, name = "Elemental Earth", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 810,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Invoker's Cord (170)
    {
        id = 435841,
        name = "Invoker's Cord",
        itemId = 215366,
        skillRequired = 170,
        skillRange = { orange = 0, yellow = 170, green = 185, gray = 200 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 1210, name = "Shadowgem", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Invoker's Mantle (170)
    {
        id = 435848,
        name = "Invoker's Mantle",
        itemId = 215365,
        skillRequired = 170,
        skillRange = { orange = 0, yellow = 170, green = 185, gray = 200 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 4340, name = "Gray Dye", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Earthen Vest (170)
    {
        id = 439100,
        name = "Earthen Vest",
        itemId = 217256,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 190, green = 205, gray = 220 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 7067, name = "Elemental Earth", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 900,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Boots of the Enchanter (175)
    {
        id = 3860,
        name = "Boots of the Enchanter",
        itemId = 4325,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 210, gray = 225 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
            { itemId = 4337, name = "Thick Spider's Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4352,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bolt of Mageweave (175)
    {
        id = 3865,
        name = "Bolt of Mageweave",
        itemId = 4339,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 180, green = 182, gray = 185 },
        reagents = {
            { itemId = 4338, name = "Mageweave Cloth", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Silk Pack (175)
    {
        id = 6693,
        name = "Green Silk Pack",
        itemId = 5764,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 210, gray = 225 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 4234, name = "Heavy Leather", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5774,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Swashbuckler's Shirt (175)
    {
        id = 8489,
        name = "Red Swashbuckler's Shirt",
        itemId = 6796,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 185, green = 190, gray = 195 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 675,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Azure Silk Belt (175)
    {
        id = 8766,
        name = "Azure Silk Belt",
        itemId = 7052,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 210, gray = 225 },
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
            trainingCost = 900,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Crimson Silk Belt (175)
    {
        id = 8772,
        name = "Crimson Silk Belt",
        itemId = 7055,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 210, gray = 225 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 900,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Azure Silk Cloak (175)
    {
        id = 8786,
        name = "Azure Silk Cloak",
        itemId = 7053,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 210, gray = 225 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Crimson Silk Belt (175)
    {
        id = 439098,
        name = "Crimson Silk Belt",
        itemId = 217255,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 210, gray = 225 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Spider Belt (180)
    {
        id = 3863,
        name = "Spider Belt",
        itemId = 4328,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 200, green = 215, gray = 230 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 4337, name = "Thick Spider's Silk", count = 2 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4353,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Silken Shoulders (180)
    {
        id = 8774,
        name = "Green Silken Shoulders",
        itemId = 7057,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 200, green = 215, gray = 230 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 900,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Crimson Silk Cloak (180)
    {
        id = 8789,
        name = "Crimson Silk Cloak",
        itemId = 7056,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 200, green = 215, gray = 230 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Long Silken Cloak (185)
    {
        id = 3861,
        name = "Long Silken Cloak",
        itemId = 4326,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 220, gray = 235 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 3827, name = "Mana Potion", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 900,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rich Purple Silk Shirt (185)
    {
        id = 3872,
        name = "Rich Purple Silk Shirt",
        itemId = 4335,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 195, green = 200, gray = 205 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 4342, name = "Purple Dye", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4354,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Silk Pack (185)
    {
        id = 6695,
        name = "Black Silk Pack",
        itemId = 5765,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 220, gray = 235 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5775,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Crimson Silk Vest (185)
    {
        id = 8791,
        name = "Crimson Silk Vest",
        itemId = 7058,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 215, gray = 225 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 2250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Long Silken Cloak (185)
    {
        id = 439094,
        name = "Long Silken Cloak",
        itemId = 217252,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 220, gray = 235 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 3827, name = "Mana Potion", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Enchanter's Cowl (185)
    {
        id = 439102,
        name = "Enchanter's Cowl",
        itemId = 217257,
        skillRequired = 185,
        skillRange = { orange = 0, yellow = 185, green = 200, gray = 215 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 4337, name = "Thick Spider's Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Robe of Power (190)
    {
        id = 8770,
        name = "Robe of Power",
        itemId = 7054,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 225, gray = 240 },
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
            trainingCost = 900,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Crimson Silk Shoulders (190)
    {
        id = 8793,
        name = "Crimson Silk Shoulders",
        itemId = 7059,
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
            itemId = 7084,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Azure Shoulders (190)
    {
        id = 8795,
        name = "Azure Shoulders",
        itemId = 7060,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 225, gray = 240 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Green Holiday Shirt (190)
    {
        id = 21945,
        name = "Green Holiday Shirt",
        itemId = 17723,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 200, green = 205, gray = 210 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 2605, name = "Green Dye", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 17724,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Earthen Silk Belt (195)
    {
        id = 8797,
        name = "Earthen Silk Belt",
        itemId = 7061,
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
            itemId = 7086,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Crimson Silk Pantaloons (195)
    {
        id = 8799,
        name = "Crimson Silk Pantaloons",
        itemId = 7062,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 225, gray = 235 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 2700,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Boots of the Enchanter (195)
    {
        id = 439097,
        name = "Boots of the Enchanter",
        itemId = 217253,
        skillRequired = 195,
        skillRange = { orange = 0, yellow = 195, green = 210, gray = 225 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
            { itemId = 4337, name = "Thick Spider's Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Icy Cloak (200)
    {
        id = 3862,
        name = "Icy Cloak",
        itemId = 4327,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 235, gray = 250 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Star Belt (200)
    {
        id = 3864,
        name = "Star Belt",
        itemId = 4329,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 235, gray = 250 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Black Swashbuckler's Shirt (200)
    {
        id = 3873,
        name = "Black Swashbuckler's Shirt",
        itemId = 4336,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 210, green = 215, gray = 220 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Hyperconductive Arcano-Filament (200)
    {
        id = 435827,
        name = "Hyperconductive Arcano-Filament",
        itemId = 213379,
        skillRequired = 200,
        skillRange = { orange = 0, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 2 },
            { itemId = 213378, name = "Unstable Microfilament", count = 5 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Crimson Silk Robe (205)
    {
        id = 8802,
        name = "Crimson Silk Robe",
        itemId = 7063,
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
            itemId = 7088,
            cost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Mageweave Vest (205)
    {
        id = 12048,
        name = "Black Mageweave Vest",
        itemId = 9998,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 3600,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Mageweave Leggings (205)
    {
        id = 12049,
        name = "Black Mageweave Leggings",
        itemId = 9999,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 3600,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Mageweave Vest (205)
    {
        id = 439086,
        name = "Black Mageweave Vest",
        itemId = 217246,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Mageweave Leggings (205)
    {
        id = 439088,
        name = "Black Mageweave Leggings",
        itemId = 217247,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Crimson Silk Gloves (210)
    {
        id = 8804,
        name = "Crimson Silk Gloves",
        itemId = 7064,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 240, gray = 255 },
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
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Mageweave Robe (210)
    {
        id = 12050,
        name = "Black Mageweave Robe",
        itemId = 10001,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 240, gray = 255 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 3600,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shadoweave Pants (210)
    {
        id = 12052,
        name = "Shadoweave Pants",
        itemId = 10002,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 240, gray = 255 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 10285, name = "Shadow Silk", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Crimson Silk Shoulders (210)
    {
        id = 439093,
        name = "Crimson Silk Shoulders",
        itemId = 217250,
        skillRequired = 210,
        skillRange = { orange = 0, yellow = 210, green = 225, gray = 240 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 6371, name = "Fire Oil", count = 2 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Mageweave Gloves (215)
    {
        id = 12053,
        name = "Black Mageweave Gloves",
        itemId = 10003,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shadoweave Robe (215)
    {
        id = 12055,
        name = "Shadoweave Robe",
        itemId = 10004,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 10285, name = "Shadow Silk", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 4950,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Mageweave Vest (215)
    {
        id = 12056,
        name = "Red Mageweave Vest",
        itemId = 10007,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10300,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- White Bandit Mask (215)
    {
        id = 12059,
        name = "White Bandit Mask",
        itemId = 10008,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 220, green = 225, gray = 230 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 1 },
            { itemId = 2324, name = "Bleach", count = 1 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10301,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Mageweave Pants (215)
    {
        id = 12060,
        name = "Red Mageweave Pants",
        itemId = 10009,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 245, gray = 260 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10302,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Orange Mageweave Shirt (215)
    {
        id = 12061,
        name = "Orange Mageweave Shirt",
        itemId = 10056,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 220, green = 225, gray = 230 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 1 },
            { itemId = 6261, name = "Orange Dye", count = 1 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 2250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Earthen Silk Belt (215)
    {
        id = 439091,
        name = "Earthen Silk Belt",
        itemId = 217248,
        skillRequired = 215,
        skillRange = { orange = 0, yellow = 215, green = 230, gray = 245 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 5 },
            { itemId = 7067, name = "Elemental Earth", count = 4 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Orange Martial Shirt (220)
    {
        id = 12064,
        name = "Orange Martial Shirt",
        itemId = 10052,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 225, green = 230, gray = 235 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Crimson Silk Robe (220)
    {
        id = 439085,
        name = "Crimson Silk Robe",
        itemId = 217245,
        skillRequired = 220,
        skillRange = { orange = 0, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 8 },
            { itemId = 7068, name = "Elemental Fire", count = 4 },
            { itemId = 3827, name = "Mana Potion", count = 2 },
            { itemId = 2604, name = "Red Dye", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mageweave Bag (225)
    {
        id = 12065,
        name = "Mageweave Bag",
        itemId = 10050,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 255, gray = 270 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Mageweave Gloves (225)
    {
        id = 12066,
        name = "Red Mageweave Gloves",
        itemId = 10018,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 255, gray = 270 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10312,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dreamweave Gloves (225)
    {
        id = 12067,
        name = "Dreamweave Gloves",
        itemId = 10019,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 255, gray = 270 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 8153, name = "Wildvine", count = 4 },
            { itemId = 10286, name = "Heart of the Wild", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Cindercloth Robe (225)
    {
        id = 12069,
        name = "Cindercloth Robe",
        itemId = 10042,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 255, gray = 270 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 5 },
            { itemId = 7077, name = "Heart of Fire", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dreamweave Vest (225)
    {
        id = 12070,
        name = "Dreamweave Vest",
        itemId = 10021,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 255, gray = 270 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 6 },
            { itemId = 8153, name = "Wildvine", count = 6 },
            { itemId = 10286, name = "Heart of the Wild", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shadoweave Gloves (225)
    {
        id = 12071,
        name = "Shadoweave Gloves",
        itemId = 10023,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 255, gray = 270 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 5 },
            { itemId = 10285, name = "Shadow Silk", count = 5 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 5400,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Enchanted Mageweave Pouch (225)
    {
        id = 27658,
        name = "Enchanted Mageweave Pouch",
        itemId = 22246,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 255, gray = 270 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Gneuro-Linked Arcano-Filament Monocle (225)
    {
        id = 435610,
        name = "Gneuro-Linked Arcano-Filament Monocle",
        itemId = 215111,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 213379, name = "Hyperconductive Arcano-Filament", count = 5 },
            { itemId = 213369, name = "Faintly Glowing Leather", count = 1 },
            { itemId = 213372, name = "Insulating Gniodine", count = 1 },
            { itemId = 11137, name = "Vision Dust", count = 10 },
            { itemId = 4339, name = "Bolt of Mageweave", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Mageweave Headband (230)
    {
        id = 12072,
        name = "Black Mageweave Headband",
        itemId = 10024,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 245, green = 260, gray = 275 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 6000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Mageweave Boots (230)
    {
        id = 12073,
        name = "Black Mageweave Boots",
        itemId = 10026,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 245, green = 260, gray = 275 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 4304, name = "Thick Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 6000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Mageweave Shoulders (230)
    {
        id = 12074,
        name = "Black Mageweave Shoulders",
        itemId = 10027,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 245, green = 260, gray = 275 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 6000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Lavender Mageweave Shirt (230)
    {
        id = 12075,
        name = "Lavender Mageweave Shirt",
        itemId = 10054,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 235, green = 240, gray = 245 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Shadoweave Shoulders (235)
    {
        id = 12076,
        name = "Shadoweave Shoulders",
        itemId = 10028,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 5 },
            { itemId = 10285, name = "Shadow Silk", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 5850,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Simple Black Dress (235)
    {
        id = 12077,
        name = "Simple Black Dress",
        itemId = 10053,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 240, green = 245, gray = 250 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 3 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
            { itemId = 2324, name = "Bleach", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Mageweave Shoulders (235)
    {
        id = 12078,
        name = "Red Mageweave Shoulders",
        itemId = 10029,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10315,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Mageweave Bag (235)
    {
        id = 12079,
        name = "Red Mageweave Bag",
        itemId = 10051,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 6500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Pink Mageweave Shirt (235)
    {
        id = 12080,
        name = "Pink Mageweave Shirt",
        itemId = 10055,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 240, green = 245, gray = 250 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Admiral's Hat (240)
    {
        id = 12081,
        name = "Admiral's Hat",
        itemId = 10030,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 255, green = 270, gray = 285 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Shadoweave Boots (240)
    {
        id = 12082,
        name = "Shadoweave Boots",
        itemId = 10031,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 255, green = 270, gray = 285 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 6 },
            { itemId = 10285, name = "Shadow Silk", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 4304, name = "Thick Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 6300,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Mageweave Headband (240)
    {
        id = 12084,
        name = "Red Mageweave Headband",
        itemId = 10033,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 255, green = 270, gray = 285 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 2604, name = "Red Dye", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10320,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tuxedo Shirt (240)
    {
        id = 12085,
        name = "Tuxedo Shirt",
        itemId = 10034,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 245, green = 250, gray = 255 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10321,
            cost = 4500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shadoweave Mask (245)
    {
        id = 12086,
        name = "Shadoweave Mask",
        itemId = 10025,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 260, green = 275, gray = 290 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 2 },
            { itemId = 10285, name = "Shadow Silk", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 10463,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Cindercloth Boots (245)
    {
        id = 12088,
        name = "Cindercloth Boots",
        itemId = 10044,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 260, green = 275, gray = 290 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 5 },
            { itemId = 7077, name = "Heart of Fire", count = 1 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
            { itemId = 4304, name = "Thick Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 7500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tuxedo Pants (245)
    {
        id = 12089,
        name = "Tuxedo Pants",
        itemId = 10035,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10323,
            cost = 4500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- White Wedding Dress (250)
    {
        id = 12091,
        name = "White Wedding Dress",
        itemId = 10040,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 255, green = 260, gray = 265 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Dreamweave Circlet (250)
    {
        id = 12092,
        name = "Dreamweave Circlet",
        itemId = 10041,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 265, green = 280, gray = 295 },
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
            trainingCost = 7500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tuxedo Jacket (250)
    {
        id = 12093,
        name = "Tuxedo Jacket",
        itemId = 10036,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 265, green = 280, gray = 295 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 5 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10326,
            cost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bolt of Runecloth (250)
    {
        id = 18401,
        name = "Bolt of Runecloth",
        itemId = 14048,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 255, green = 257, gray = 260 },
        reagents = {
            { itemId = 14047, name = "Runecloth", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mooncloth (250)
    {
        id = 18560,
        name = "Mooncloth",
        itemId = 14342,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 290, green = 305, gray = 320 },
        reagents = {
            { itemId = 14256, name = "Felcloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14526,
            cost = 20000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Festive Red Dress (250)
    {
        id = 26403,
        name = "Festive Red Dress",
        itemId = 21154,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 265, green = 280, gray = 295 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Festive Red Pant Suit (250)
    {
        id = 26407,
        name = "Festive Red Pant Suit",
        itemId = 21542,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 265, green = 280, gray = 295 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Fractured Mind Pauldrons (250)
    {
        id = 446193,
        name = "Fractured Mind Pauldrons",
        itemId = 220750,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 14256, name = "Felcloth", count = 8 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mantle of Insanity (250)
    {
        id = 446194,
        name = "Mantle of Insanity",
        itemId = 220749,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shoulderpads of the Deranged (250)
    {
        id = 446195,
        name = "Shoulderpads of the Deranged",
        itemId = 220751,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 14256, name = "Felcloth", count = 6 },
            { itemId = 7080, name = "Essence of Water", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runecloth Belt (255)
    {
        id = 18402,
        name = "Runecloth Belt",
        itemId = 13856,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 270, green = 285, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frostweave Tunic (255)
    {
        id = 18403,
        name = "Frostweave Tunic",
        itemId = 13869,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 270, green = 285, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 7079, name = "Globe of Water", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frostweave Robe (255)
    {
        id = 18404,
        name = "Frostweave Robe",
        itemId = 13868,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 270, green = 285, gray = 300 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 7079, name = "Globe of Water", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14467,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runecloth Bag (260)
    {
        id = 18405,
        name = "Runecloth Bag",
        itemId = 14046,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 275, green = 290, gray = 305 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 8170, name = "Rugged Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14468,
            cost = 12000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runecloth Robe (260)
    {
        id = 18406,
        name = "Runecloth Robe",
        itemId = 13858,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 275, green = 290, gray = 305 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runecloth Tunic (260)
    {
        id = 18407,
        name = "Runecloth Tunic",
        itemId = 13857,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 275, green = 290, gray = 305 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Cindercloth Vest (260)
    {
        id = 18408,
        name = "Cindercloth Vest",
        itemId = 14042,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 275, green = 290, gray = 305 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 7077, name = "Heart of Fire", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14471,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Soul Pouch (260)
    {
        id = 26085,
        name = "Soul Pouch",
        itemId = 21340,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 275, green = 290, gray = 305 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Augur's Cuffs (260)
    {
        id = 1224610,
        name = "Scarlet Augur's Cuffs",
        itemId = 238267,
        skillRequired = 260,
        skillRange = { orange = 0, yellow = 260, green = 282, gray = 305 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238301,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Augur's Strap (260)
    {
        id = 1224612,
        name = "Scarlet Augur's Strap",
        itemId = 238269,
        skillRequired = 260,
        skillRange = { orange = 0, yellow = 260, green = 282, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238303,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Crusader's Knapsack (260)
    {
        id = 1227723,
        name = "Crusader's Knapsack",
        itemId = 239147,
        skillRequired = 260,
        skillRange = { orange = 0, yellow = 260, green = 262, gray = 265 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 14 },
            { itemId = 2604, name = "Red Dye", count = 8 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 239149,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runecloth Cloak (265)
    {
        id = 18409,
        name = "Runecloth Cloak",
        itemId = 13860,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 280, green = 295, gray = 310 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ghostweave Belt (265)
    {
        id = 18410,
        name = "Ghostweave Belt",
        itemId = 14143,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 280, green = 295, gray = 310 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 3 },
            { itemId = 9210, name = "Ghost Dye", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frostweave Gloves (265)
    {
        id = 18411,
        name = "Frostweave Gloves",
        itemId = 13870,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 280, green = 295, gray = 310 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 3 },
            { itemId = 7080, name = "Essence of Water", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Cindercloth Gloves (270)
    {
        id = 18412,
        name = "Cindercloth Gloves",
        itemId = 14043,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 285, green = 300, gray = 315 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 7077, name = "Heart of Fire", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14476,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ghostweave Gloves (270)
    {
        id = 18413,
        name = "Ghostweave Gloves",
        itemId = 14142,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 285, green = 300, gray = 315 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 9210, name = "Ghost Dye", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Brightcloth Robe (270)
    {
        id = 18414,
        name = "Brightcloth Robe",
        itemId = 14100,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 285, green = 300, gray = 315 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Brightcloth Gloves (270)
    {
        id = 18415,
        name = "Brightcloth Gloves",
        itemId = 14101,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 285, green = 300, gray = 315 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Augur's Mitts (270)
    {
        id = 1224611,
        name = "Scarlet Augur's Mitts",
        itemId = 238268,
        skillRequired = 270,
        skillRange = { orange = 0, yellow = 270, green = 287, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238302,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Augur's Soles (270)
    {
        id = 1224614,
        name = "Scarlet Augur's Soles",
        itemId = 238271,
        skillRequired = 270,
        skillRange = { orange = 0, yellow = 270, green = 287, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238305,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ghostweave Vest (275)
    {
        id = 18416,
        name = "Ghostweave Vest",
        itemId = 14141,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 305, gray = 320 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 9210, name = "Ghost Dye", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runecloth Gloves (275)
    {
        id = 18417,
        name = "Runecloth Gloves",
        itemId = 13863,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 305, gray = 320 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Cindercloth Cloak (275)
    {
        id = 18418,
        name = "Cindercloth Cloak",
        itemId = 14044,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 305, gray = 320 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 7078, name = "Essence of Fire", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14482,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Felcloth Pants (275)
    {
        id = 18419,
        name = "Felcloth Pants",
        itemId = 14107,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 305, gray = 320 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Brightcloth Cloak (275)
    {
        id = 18420,
        name = "Brightcloth Cloak",
        itemId = 14103,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 305, gray = 320 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wizardweave Leggings (275)
    {
        id = 18421,
        name = "Wizardweave Leggings",
        itemId = 14132,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 305, gray = 320 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 11176, name = "Dream Dust", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Cloak of Fire (275)
    {
        id = 18422,
        name = "Cloak of Fire",
        itemId = 14134,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 305, gray = 320 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Enchanted Runecloth Bag (275)
    {
        id = 27659,
        name = "Enchanted Runecloth Bag",
        itemId = 22248,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 305, gray = 320 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Cenarion Herb Bag (275)
    {
        id = 27724,
        name = "Cenarion Herb Bag",
        itemId = 22251,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 305, gray = 320 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 8831, name = "Purple Lotus", count = 10 },
            { itemId = 11040, name = "Morrowgrain", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runecloth Boots (280)
    {
        id = 18423,
        name = "Runecloth Boots",
        itemId = 13864,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 295, green = 310, gray = 325 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frostweave Pants (280)
    {
        id = 18424,
        name = "Frostweave Pants",
        itemId = 13871,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 295, green = 310, gray = 325 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 7080, name = "Essence of Water", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Cindercloth Pants (280)
    {
        id = 18434,
        name = "Cindercloth Pants",
        itemId = 14045,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 295, green = 310, gray = 325 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 7078, name = "Essence of Fire", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14490,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Augur's Leggings (280)
    {
        id = 1224613,
        name = "Scarlet Augur's Leggings",
        itemId = 238270,
        skillRequired = 280,
        skillRange = { orange = 0, yellow = 280, green = 292, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238304,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Robe of Winter Night (285)
    {
        id = 18436,
        name = "Robe of Winter Night",
        itemId = 14136,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 300, green = 315, gray = 330 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Felcloth Boots (285)
    {
        id = 18437,
        name = "Felcloth Boots",
        itemId = 14108,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 300, green = 315, gray = 330 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14256, name = "Felcloth", count = 4 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runecloth Pants (285)
    {
        id = 18438,
        name = "Runecloth Pants",
        itemId = 13865,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 300, green = 315, gray = 330 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Gordok Ogre Suit (285)
    {
        id = 22813,
        name = "Gordok Ogre Suit",
        itemId = 18258,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 290, gray = 295 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 18240, name = "Ogre Tannin", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Felcloth Bag (285)
    {
        id = 26086,
        name = "Felcloth Bag",
        itemId = 21341,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 300, green = 315, gray = 330 },
        reagents = {
            { itemId = 14256, name = "Felcloth", count = 12 },
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
            { itemId = 20520, name = "Dark Rune", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Synthetic Gordok Ogre Suit (285)
    {
        id = 461692,
        name = "Synthetic Gordok Ogre Suit",
        itemId = 227855,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 290, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 2 },
            { itemId = 18240, name = "Ogre Tannin", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Augur's Hood (285)
    {
        id = 1224607,
        name = "Scarlet Augur's Hood",
        itemId = 238264,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 2 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238298,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Augur's Mantle (285)
    {
        id = 1224608,
        name = "Scarlet Augur's Mantle",
        itemId = 238265,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238299,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Augur's Vestaments (285)
    {
        id = 1224609,
        name = "Scarlet Augur's Vestaments",
        itemId = 238266,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238300,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Brightcloth Pants (290)
    {
        id = 18439,
        name = "Brightcloth Pants",
        itemId = 14104,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 320, gray = 335 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Mooncloth Leggings (290)
    {
        id = 18440,
        name = "Mooncloth Leggings",
        itemId = 14137,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 320, gray = 335 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14497,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ghostweave Pants (290)
    {
        id = 18441,
        name = "Ghostweave Pants",
        itemId = 14144,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 320, gray = 335 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 9210, name = "Ghost Dye", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Felcloth Hood (290)
    {
        id = 18442,
        name = "Felcloth Hood",
        itemId = 14111,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 320, gray = 335 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 14256, name = "Felcloth", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mooncloth Boots (290)
    {
        id = 19435,
        name = "Mooncloth Boots",
        itemId = 15802,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 295, green = 310, gray = 325 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 7971, name = "Black Pearl", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wisdom of the Timbermaw (290)
    {
        id = 23662,
        name = "Wisdom of the Timbermaw",
        itemId = 19047,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 320, gray = 335 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 7076, name = "Essence of Earth", count = 3 },
            { itemId = 12803, name = "Living Essence", count = 3 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Argent Boots (290)
    {
        id = 23664,
        name = "Argent Boots",
        itemId = 19056,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 320, gray = 335 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 13926, name = "Golden Pearl", count = 2 },
            { itemId = 12809, name = "Guardian Stone", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runecloth Headband (295)
    {
        id = 18444,
        name = "Runecloth Headband",
        itemId = 13866,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 310, green = 325, gray = 340 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mooncloth Bag (300)
    {
        id = 18445,
        name = "Mooncloth Bag",
        itemId = 14155,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14342, name = "Mooncloth", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14499,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wizardweave Robe (300)
    {
        id = 18446,
        name = "Wizardweave Robe",
        itemId = 14128,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 11176, name = "Dream Dust", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mooncloth Vest (300)
    {
        id = 18447,
        name = "Mooncloth Vest",
        itemId = 14138,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14501,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mooncloth Shoulders (300)
    {
        id = 18448,
        name = "Mooncloth Shoulders",
        itemId = 14139,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 14342, name = "Mooncloth", count = 5 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14507,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runecloth Shoulders (300)
    {
        id = 18449,
        name = "Runecloth Shoulders",
        itemId = 13867,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 7 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wizardweave Turban (300)
    {
        id = 18450,
        name = "Wizardweave Turban",
        itemId = 14130,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 11176, name = "Dream Dust", count = 4 },
            { itemId = 7910, name = "Star Ruby", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Felcloth Robe (300)
    {
        id = 18451,
        name = "Felcloth Robe",
        itemId = 14106,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 14256, name = "Felcloth", count = 8 },
            { itemId = 12662, name = "Demonic Rune", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mooncloth Circlet (300)
    {
        id = 18452,
        name = "Mooncloth Circlet",
        itemId = 14140,
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
            itemId = 14509,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Felcloth Shoulders (300)
    {
        id = 18453,
        name = "Felcloth Shoulders",
        itemId = 14112,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 7 },
            { itemId = 14256, name = "Felcloth", count = 6 },
            { itemId = 12662, name = "Demonic Rune", count = 4 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Gloves of Spell Mastery (300)
    {
        id = 18454,
        name = "Gloves of Spell Mastery",
        itemId = 14146,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 10 },
            { itemId = 14342, name = "Mooncloth", count = 10 },
            { itemId = 9210, name = "Ghost Dye", count = 10 },
            { itemId = 13926, name = "Golden Pearl", count = 6 },
            { itemId = 12364, name = "Huge Emerald", count = 6 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14511,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bottomless Bag (300)
    {
        id = 18455,
        name = "Bottomless Bag",
        itemId = 14156,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 14342, name = "Mooncloth", count = 12 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 2 },
            { itemId = 17012, name = "Core Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14510,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Truefaith Vestments (300)
    {
        id = 18456,
        name = "Truefaith Vestments",
        itemId = 14154,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
            { itemId = 14342, name = "Mooncloth", count = 10 },
            { itemId = 12811, name = "Righteous Orb", count = 4 },
            { itemId = 13926, name = "Golden Pearl", count = 4 },
            { itemId = 9210, name = "Ghost Dye", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14512,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Robe of the Archmage (300)
    {
        id = 18457,
        name = "Robe of the Archmage",
        itemId = 14152,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
            { itemId = 7078, name = "Essence of Fire", count = 10 },
            { itemId = 7082, name = "Essence of Air", count = 10 },
            { itemId = 7076, name = "Essence of Earth", count = 10 },
            { itemId = 7080, name = "Essence of Water", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14513,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Robe of the Void (300)
    {
        id = 18458,
        name = "Robe of the Void",
        itemId = 14153,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 12 },
            { itemId = 12662, name = "Demonic Rune", count = 20 },
            { itemId = 14256, name = "Felcloth", count = 40 },
            { itemId = 7078, name = "Essence of Fire", count = 12 },
            { itemId = 12808, name = "Essence of Undeath", count = 12 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14514,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 17017,
            cost = 180000,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 17018,
            cost = 80000,
        },
        expansion = C.EXPANSION.SOD,
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
        expansion = C.EXPANSION.SOD,
    },
    -- Belt of the Archmage (300)
    {
        id = 22866,
        name = "Belt of the Archmage",
        itemId = 18405,
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
            itemId = 18414,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Felcloth Gloves (300)
    {
        id = 22867,
        name = "Felcloth Gloves",
        itemId = 18407,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Inferno Gloves (300)
    {
        id = 22868,
        name = "Inferno Gloves",
        itemId = 18408,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Mooncloth Gloves (300)
    {
        id = 22869,
        name = "Mooncloth Gloves",
        itemId = 18409,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Cloak of Warding (300)
    {
        id = 22870,
        name = "Cloak of Warding",
        itemId = 18413,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Mooncloth Robe (300)
    {
        id = 22902,
        name = "Mooncloth Robe",
        itemId = 18486,
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
            itemId = 18487,
            cost = 40000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mantle of the Timbermaw (300)
    {
        id = 23663,
        name = "Mantle of the Timbermaw",
        itemId = 19050,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14342, name = "Mooncloth", count = 5 },
            { itemId = 7076, name = "Essence of Earth", count = 5 },
            { itemId = 12803, name = "Living Essence", count = 5 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Argent Shoulders (300)
    {
        id = 23665,
        name = "Argent Shoulders",
        itemId = 19059,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14342, name = "Mooncloth", count = 5 },
            { itemId = 12809, name = "Guardian Stone", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19219,
            cost = 60000,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19220,
            cost = 90000,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runed Stygian Leggings (300)
    {
        id = 24901,
        name = "Runed Stygian Leggings",
        itemId = 20538,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Runed Stygian Belt (300)
    {
        id = 24902,
        name = "Runed Stygian Belt",
        itemId = 20539,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Runed Stygian Boots (300)
    {
        id = 24903,
        name = "Runed Stygian Boots",
        itemId = 20537,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
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
        expansion = C.EXPANSION.SOD,
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
        expansion = C.EXPANSION.SOD,
    },
    -- Big Bag of Enchantment (300)
    {
        id = 27660,
        name = "Big Bag of Enchantment",
        itemId = 22249,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
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
        expansion = C.EXPANSION.SOD,
    },
    -- Satchel of Cenarius (300)
    {
        id = 27725,
        name = "Satchel of Cenarius",
        itemId = 22252,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 13468, name = "Black Lotus", count = 1 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Glacial Gloves (300)
    {
        id = 28205,
        name = "Glacial Gloves",
        itemId = 22654,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 22682, name = "Frozen Rune", count = 5 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Glacial Vest (300)
    {
        id = 28207,
        name = "Glacial Vest",
        itemId = 22652,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 22682, name = "Frozen Rune", count = 7 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 7080, name = "Essence of Water", count = 6 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Glacial Cloak (300)
    {
        id = 28208,
        name = "Glacial Cloak",
        itemId = 22658,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 22682, name = "Frozen Rune", count = 5 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Glacial Wrists (300)
    {
        id = 28209,
        name = "Glacial Wrists",
        itemId = 22655,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 22682, name = "Frozen Rune", count = 4 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 2 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Crimson Dawnwoven Bag (300)
    {
        id = 1227724,
        name = "Crimson Dawnwoven Bag",
        itemId = 239148,
        skillRequired = 300,
        skillRange = { orange = 0, yellow = 300, green = 302, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 24 },
            { itemId = 2604, name = "Red Dye", count = 4 },
            { itemId = 12808, name = "Essence of Undeath", count = 2 },
            { itemId = 12811, name = "Righteous Orb", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 239150,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Incandescent Mooncloth Leggings (305)
    {
        id = 461752,
        name = "Incandescent Mooncloth Leggings",
        itemId = 227864,
        skillRequired = 305,
        skillRange = { orange = 0, yellow = 305, green = 320, gray = 335 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Incandescent Mooncloth Robe (315)
    {
        id = 461708,
        name = "Incandescent Mooncloth Robe",
        itemId = 227861,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 13926, name = "Golden Pearl", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Leather-Reinforced Runecloth Bag (315)
    {
        id = 461727,
        name = "Leather-Reinforced Runecloth Bag",
        itemId = 227844,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 5 },
            { itemId = 8170, name = "Rugged Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Incandescent Mooncloth Vest (315)
    {
        id = 461747,
        name = "Incandescent Mooncloth Vest",
        itemId = 227860,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 6 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Incandescent Mooncloth Circlet (315)
    {
        id = 461750,
        name = "Incandescent Mooncloth Circlet",
        itemId = 227863,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14342, name = "Mooncloth", count = 6 },
            { itemId = 12800, name = "Azerothian Diamond", count = 1 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Embroidered Belt of the Archmage (315)
    {
        id = 462282,
        name = "Embroidered Belt of the Archmage",
        itemId = 228476,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bottomless Bag (315)
    {
        id = 463972,
        name = "Bottomless Bag",
        itemId = 228994,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 14342, name = "Mooncloth", count = 12 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 2 },
            { itemId = 17012, name = "Core Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Vampiric Cowl (315)
    {
        id = 1213527,
        name = "Vampiric Cowl",
        itemId = 233826,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 234009, name = "Bolt of Qiraji Silk", count = 15 },
            { itemId = 14342, name = "Mooncloth", count = 8 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Vampiric Shawl (315)
    {
        id = 1213530,
        name = "Vampiric Shawl",
        itemId = 233833,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 234009, name = "Bolt of Qiraji Silk", count = 15 },
            { itemId = 14342, name = "Mooncloth", count = 8 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Vampiric Robe (315)
    {
        id = 1213532,
        name = "Vampiric Robe",
        itemId = 233837,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 234009, name = "Bolt of Qiraji Silk", count = 25 },
            { itemId = 14342, name = "Mooncloth", count = 12 },
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Sylvan Shoulders (315)
    {
        id = 1213740,
        name = "Sylvan Shoulders",
        itemId = 234312,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
            { itemId = 19726, name = "Bloodvine", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Sylvan Crown (315)
    {
        id = 1213742,
        name = "Sylvan Crown",
        itemId = 234315,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 12803, name = "Living Essence", count = 3 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 3 },
            { itemId = 19726, name = "Bloodvine", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Sylvan Vest (315)
    {
        id = 1213744,
        name = "Sylvan Vest",
        itemId = 234317,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 19726, name = "Bloodvine", count = 3 },
            { itemId = 12803, name = "Living Essence", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 3 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bolt of Qiraji Silk (315)
    {
        id = 1214173,
        name = "Bolt of Qiraji Silk",
        itemId = 234009,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 234008, name = "Qiraji Silk", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Glacial Vest (315)
    {
        id = 1223760,
        name = "Glacial Vest",
        itemId = 236694,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 7 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 7080, name = "Essence of Water", count = 6 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Glacial Cloak (315)
    {
        id = 1223762,
        name = "Glacial Cloak",
        itemId = 236690,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 5 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Glacial Gloves (315)
    {
        id = 1223764,
        name = "Glacial Gloves",
        itemId = 236692,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 5 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Glacial Wrists (315)
    {
        id = 1223766,
        name = "Glacial Wrists",
        itemId = 236693,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 4 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 2 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frosty Vest (315)
    {
        id = 1223768,
        name = "Frosty Vest",
        itemId = 236706,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 7 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 8 },
            { itemId = 7080, name = "Essence of Water", count = 6 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frosty Gloves (315)
    {
        id = 1223770,
        name = "Frosty Gloves",
        itemId = 236705,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 5 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 4 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frosty Wrists (315)
    {
        id = 1223772,
        name = "Frosty Wrists",
        itemId = 236704,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 330, gray = 345 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 4 },
            { itemId = 14048, name = "Bolt of Runecloth", count = 2 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Qiraji Silk Scarf (320)
    {
        id = 1213534,
        name = "Qiraji Silk Scarf",
        itemId = 233956,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 234009, name = "Bolt of Qiraji Silk", count = 9 },
            { itemId = 234007, name = "Spiked Silithid Chitin", count = 8 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Qiraji Silk Cape (320)
    {
        id = 1213536,
        name = "Qiraji Silk Cape",
        itemId = 233958,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 234009, name = "Bolt of Qiraji Silk", count = 9 },
            { itemId = 234007, name = "Spiked Silithid Chitin", count = 8 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Qiraji Silk Cloak (320)
    {
        id = 1213538,
        name = "Qiraji Silk Cloak",
        itemId = 233959,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 234009, name = "Bolt of Qiraji Silk", count = 9 },
            { itemId = 234007, name = "Spiked Silithid Chitin", count = 8 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Qiraji Silk Drape (320)
    {
        id = 1213540,
        name = "Qiraji Silk Drape",
        itemId = 233960,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 234009, name = "Bolt of Qiraji Silk", count = 9 },
            { itemId = 234007, name = "Spiked Silithid Chitin", count = 8 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dreamscale Bracers (320)
    {
        id = 1214306,
        name = "Dreamscale Bracers",
        itemId = 234484,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 30 },
            { itemId = 20381, name = "Dreamscale", count = 4 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dreamscale Mitts (320)
    {
        id = 1214307,
        name = "Dreamscale Mitts",
        itemId = 234485,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 14048, name = "Bolt of Runecloth", count = 30 },
            { itemId = 20381, name = "Dreamscale", count = 5 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 14342, name = "Mooncloth", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
}

CraftLib:RegisterProfession("tailoring", {
    id = C.PROFESSION_ID.TAILORING,
    name = "Tailoring",
    expansion = C.EXPANSION.SOD,
    flavor = "SOD",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
