-- Data/Vanilla/Tailoring/Recipes.lua
-- Tailoring recipes for Vanilla Classic
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Tailoring Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
}

CraftLib:RegisterProfession("tailoring", {
    id = C.PROFESSION_ID.TAILORING,
    name = "Tailoring",
    expansion = C.EXPANSION.VANILLA,
    profile = "VANILLA",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
