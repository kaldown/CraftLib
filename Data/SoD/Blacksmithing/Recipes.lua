-- Data/SoD/Blacksmithing/Recipes.lua
-- Blacksmithing recipes for SoD Classic
-- Generated from DB2 data
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    -- Rough Sharpening Stone (1)
    {
        id = 2660,
        name = "Rough Sharpening Stone",
        itemId = 2862,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 15, green = 35, gray = 55 },
        reagents = {
            { itemId = 2835, name = "Rough Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Copper Chain Pants (1)
    {
        id = 2662,
        name = "Copper Chain Pants",
        itemId = 2852,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 50, green = 70, gray = 90 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Copper Bracers (1)
    {
        id = 2663,
        name = "Copper Bracers",
        itemId = 2853,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 20, green = 40, gray = 60 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rough Weightstone (1)
    {
        id = 3115,
        name = "Rough Weightstone",
        itemId = 3239,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 15, green = 35, gray = 55 },
        reagents = {
            { itemId = 2835, name = "Rough Stone", count = 1 },
            { itemId = 2589, name = "Linen Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rough Copper Vest (1)
    {
        id = 12260,
        name = "Rough Copper Vest",
        itemId = 10421,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 15, green = 35, gray = 55 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Copper Mace (15)
    {
        id = 2737,
        name = "Copper Mace",
        itemId = 2844,
        skillRequired = 15,
        skillRange = { orange = 15, yellow = 55, green = 75, gray = 95 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 6 },
            { itemId = 2880, name = "Weak Flux", count = 1 },
            { itemId = 2589, name = "Linen Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Copper Axe (20)
    {
        id = 2738,
        name = "Copper Axe",
        itemId = 2845,
        skillRequired = 20,
        skillRange = { orange = 20, yellow = 60, green = 80, gray = 100 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 6 },
            { itemId = 2880, name = "Weak Flux", count = 1 },
            { itemId = 2589, name = "Linen Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Copper Chain Boots (20)
    {
        id = 3319,
        name = "Copper Chain Boots",
        itemId = 3469,
        skillRequired = 20,
        skillRange = { orange = 20, yellow = 60, green = 80, gray = 100 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Copper Shortsword (25)
    {
        id = 2739,
        name = "Copper Shortsword",
        itemId = 2847,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 65, green = 85, gray = 105 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 6 },
            { itemId = 2880, name = "Weak Flux", count = 1 },
            { itemId = 2589, name = "Linen Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rough Grinding Stone (25)
    {
        id = 3320,
        name = "Rough Grinding Stone",
        itemId = 3470,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 45, green = 65, gray = 85 },
        reagents = {
            { itemId = 2835, name = "Rough Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Copper Dagger (30)
    {
        id = 8880,
        name = "Copper Dagger",
        itemId = 7166,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 70, green = 90, gray = 110 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 6 },
            { itemId = 2880, name = "Weak Flux", count = 1 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 1 },
            { itemId = 2318, name = "Light Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Copper Claymore (30)
    {
        id = 9983,
        name = "Copper Claymore",
        itemId = 7955,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 70, green = 90, gray = 110 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 10 },
            { itemId = 2880, name = "Weak Flux", count = 2 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 1 },
            { itemId = 2318, name = "Light Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Copper Chain Belt (35)
    {
        id = 2661,
        name = "Copper Chain Belt",
        itemId = 2851,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 75, green = 95, gray = 115 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Copper Battle Axe (35)
    {
        id = 3293,
        name = "Copper Battle Axe",
        itemId = 3488,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 75, green = 95, gray = 115 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 12 },
            { itemId = 2880, name = "Weak Flux", count = 2 },
            { itemId = 774, name = "Malachite", count = 2 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 2 },
            { itemId = 2318, name = "Light Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Copper Chain Vest (35)
    {
        id = 3321,
        name = "Copper Chain Vest",
        itemId = 3471,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 75, green = 95, gray = 115 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 8 },
            { itemId = 774, name = "Malachite", count = 1 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3609,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runed Copper Gauntlets (40)
    {
        id = 3323,
        name = "Runed Copper Gauntlets",
        itemId = 3472,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 80, green = 100, gray = 120 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 8 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runed Copper Pants (45)
    {
        id = 3324,
        name = "Runed Copper Pants",
        itemId = 3473,
        skillRequired = 45,
        skillRange = { orange = 45, yellow = 85, green = 105, gray = 125 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Gemmed Copper Gauntlets (60)
    {
        id = 3325,
        name = "Gemmed Copper Gauntlets",
        itemId = 3474,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 100, green = 120, gray = 140 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 8 },
            { itemId = 818, name = "Tigerseye", count = 1 },
            { itemId = 774, name = "Malachite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3610,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Coarse Sharpening Stone (65)
    {
        id = 2665,
        name = "Coarse Sharpening Stone",
        itemId = 2863,
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 65, green = 72, gray = 80 },
        reagents = {
            { itemId = 2836, name = "Coarse Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Coarse Weightstone (65)
    {
        id = 3116,
        name = "Coarse Weightstone",
        itemId = 3240,
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 65, green = 72, gray = 80 },
        reagents = {
            { itemId = 2836, name = "Coarse Stone", count = 1 },
            { itemId = 2592, name = "Wool Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Copper Maul (65)
    {
        id = 7408,
        name = "Heavy Copper Maul",
        itemId = 6214,
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 105, green = 125, gray = 145 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 12 },
            { itemId = 2880, name = "Weak Flux", count = 2 },
            { itemId = 2318, name = "Light Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runed Copper Belt (70)
    {
        id = 2666,
        name = "Runed Copper Belt",
        itemId = 2857,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 110, green = 130, gray = 150 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Thick War Axe (70)
    {
        id = 3294,
        name = "Thick War Axe",
        itemId = 3489,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 110, green = 130, gray = 150 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 10 },
            { itemId = 2880, name = "Weak Flux", count = 2 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 2 },
            { itemId = 2318, name = "Light Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Coarse Grinding Stone (75)
    {
        id = 3326,
        name = "Coarse Grinding Stone",
        itemId = 3478,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 75, green = 87, gray = 100 },
        reagents = {
            { itemId = 2836, name = "Coarse Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runed Copper Breastplate (80)
    {
        id = 2667,
        name = "Runed Copper Breastplate",
        itemId = 2864,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 12 },
            { itemId = 1210, name = "Shadowgem", count = 1 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2881,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runed Copper Bracers (90)
    {
        id = 2664,
        name = "Runed Copper Bracers",
        itemId = 2854,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 115, green = 127, gray = 140 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 10 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Copper Broadsword (95)
    {
        id = 3292,
        name = "Heavy Copper Broadsword",
        itemId = 3487,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 135, green = 155, gray = 175 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 14 },
            { itemId = 2880, name = "Weak Flux", count = 2 },
            { itemId = 818, name = "Tigerseye", count = 2 },
            { itemId = 2319, name = "Medium Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rough Bronze Boots (95)
    {
        id = 7817,
        name = "Rough Bronze Boots",
        itemId = 6350,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 125, green = 140, gray = 155 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 6 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Silver Rod (100)
    {
        id = 7818,
        name = "Silver Rod",
        itemId = 6338,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 105, green = 107, gray = 110 },
        reagents = {
            { itemId = 2842, name = "Silver Bar", count = 1 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ironforge Breastplate (100)
    {
        id = 8367,
        name = "Ironforge Breastplate",
        itemId = 6731,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 16 },
            { itemId = 818, name = "Tigerseye", count = 2 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 6735,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Silver Skeleton Key (100)
    {
        id = 19666,
        name = "Silver Skeleton Key",
        itemId = 15869,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 100, green = 110, gray = 120 },
        reagents = {
            { itemId = 2842, name = "Silver Bar", count = 1 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blackfathom Sharpening Stone (100)
    {
        id = 430397,
        name = "Blackfathom Sharpening Stone",
        itemId = 211845,
        skillRequired = 100,
        skillRange = { orange = 0, yellow = 100, green = 110, gray = 120 },
        reagents = {
            { itemId = 2863, name = "Coarse Sharpening Stone", count = 1 },
            { itemId = 10938, name = "Lesser Magic Essence", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rough Bronze Leggings (105)
    {
        id = 2668,
        name = "Rough Bronze Leggings",
        itemId = 2865,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 145, green = 160, gray = 175 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rough Bronze Cuirass (105)
    {
        id = 2670,
        name = "Rough Bronze Cuirass",
        itemId = 2866,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 145, green = 160, gray = 175 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 7 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Big Bronze Knife (105)
    {
        id = 3491,
        name = "Big Bronze Knife",
        itemId = 3848,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 135, green = 150, gray = 165 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 6 },
            { itemId = 2880, name = "Weak Flux", count = 4 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 2 },
            { itemId = 818, name = "Tigerseye", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 600,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bronze Mace (110)
    {
        id = 2740,
        name = "Bronze Mace",
        itemId = 2848,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 140, green = 155, gray = 170 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 6 },
            { itemId = 2880, name = "Weak Flux", count = 4 },
            { itemId = 2319, name = "Medium Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rough Bronze Shoulders (110)
    {
        id = 3328,
        name = "Rough Bronze Shoulders",
        itemId = 3480,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 140, green = 155, gray = 170 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 5 },
            { itemId = 1210, name = "Shadowgem", count = 1 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Pearl-handled Dagger (110)
    {
        id = 6517,
        name = "Pearl-handled Dagger",
        itemId = 5540,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 140, green = 155, gray = 170 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 6 },
            { itemId = 3466, name = "Strong Flux", count = 1 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 2 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 800,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bronze Axe (115)
    {
        id = 2741,
        name = "Bronze Axe",
        itemId = 2849,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 145, green = 160, gray = 175 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 7 },
            { itemId = 2880, name = "Weak Flux", count = 4 },
            { itemId = 2319, name = "Medium Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Patterned Bronze Bracers (120)
    {
        id = 2672,
        name = "Patterned Bronze Bracers",
        itemId = 2868,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 150, green = 165, gray = 180 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 5 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bronze Shortsword (120)
    {
        id = 2742,
        name = "Bronze Shortsword",
        itemId = 2850,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 150, green = 165, gray = 180 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 5 },
            { itemId = 2880, name = "Weak Flux", count = 4 },
            { itemId = 2319, name = "Medium Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Sharpening Stone (125)
    {
        id = 2674,
        name = "Heavy Sharpening Stone",
        itemId = 2871,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 132, gray = 140 },
        reagents = {
            { itemId = 2838, name = "Heavy Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Weightstone (125)
    {
        id = 3117,
        name = "Heavy Weightstone",
        itemId = 3241,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 132, gray = 140 },
        reagents = {
            { itemId = 2838, name = "Heavy Stone", count = 1 },
            { itemId = 2592, name = "Wool Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Deadly Bronze Poniard (125)
    {
        id = 3295,
        name = "Deadly Bronze Poniard",
        itemId = 3490,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 155, green = 170, gray = 185 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 4 },
            { itemId = 3466, name = "Strong Flux", count = 1 },
            { itemId = 2459, name = "Swiftness Potion", count = 1 },
            { itemId = 1210, name = "Shadowgem", count = 2 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
            { itemId = 2319, name = "Medium Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2883,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Silvered Bronze Shoulders (125)
    {
        id = 3330,
        name = "Silvered Bronze Shoulders",
        itemId = 3481,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 155, green = 170, gray = 185 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 8 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2882,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Grinding Stone (125)
    {
        id = 3337,
        name = "Heavy Grinding Stone",
        itemId = 3486,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 2838, name = "Heavy Stone", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bronze Warhammer (125)
    {
        id = 9985,
        name = "Bronze Warhammer",
        itemId = 7956,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 155, green = 170, gray = 185 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 8 },
            { itemId = 3466, name = "Strong Flux", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Silvered Bronze Breastplate (130)
    {
        id = 2673,
        name = "Silvered Bronze Breastplate",
        itemId = 2869,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 160, green = 175, gray = 190 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 10 },
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
            { itemId = 1705, name = "Lesser Moonstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5578,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Bronze Mace (130)
    {
        id = 3296,
        name = "Heavy Bronze Mace",
        itemId = 3491,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 160, green = 175, gray = 190 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 8 },
            { itemId = 3466, name = "Strong Flux", count = 1 },
            { itemId = 1206, name = "Moss Agate", count = 1 },
            { itemId = 1210, name = "Shadowgem", count = 1 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
            { itemId = 2319, name = "Medium Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Silvered Bronze Boots (130)
    {
        id = 3331,
        name = "Silvered Bronze Boots",
        itemId = 3482,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 160, green = 175, gray = 190 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 6 },
            { itemId = 2842, name = "Silver Bar", count = 1 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bronze Greatsword (130)
    {
        id = 9986,
        name = "Bronze Greatsword",
        itemId = 7957,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 160, green = 175, gray = 190 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 12 },
            { itemId = 3466, name = "Strong Flux", count = 2 },
            { itemId = 2319, name = "Medium Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Silvered Bronze Gauntlets (135)
    {
        id = 3333,
        name = "Silvered Bronze Gauntlets",
        itemId = 3483,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 165, green = 180, gray = 195 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 8 },
            { itemId = 2842, name = "Silver Bar", count = 1 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bronze Battle Axe (135)
    {
        id = 9987,
        name = "Bronze Battle Axe",
        itemId = 7958,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 165, green = 180, gray = 195 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 14 },
            { itemId = 3466, name = "Strong Flux", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Iridescent Hammer (140)
    {
        id = 6518,
        name = "Iridescent Hammer",
        itemId = 5541,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 170, green = 185, gray = 200 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 10 },
            { itemId = 3466, name = "Strong Flux", count = 1 },
            { itemId = 5500, name = "Iridescent Pearl", count = 1 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
            { itemId = 2319, name = "Medium Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5543,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mantle of the Second War (140)
    {
        id = 427061,
        name = "Mantle of the Second War",
        itemId = 210773,
        skillRequired = 140,
        skillRange = { orange = 0, yellow = 140, green = 150, gray = 160 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 20 },
            { itemId = 1206, name = "Moss Agate", count = 2 },
            { itemId = 1705, name = "Lesser Moonstone", count = 2 },
            { itemId = 5500, name = "Iridescent Pearl", count = 2 },
            { itemId = 2842, name = "Silver Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shining Silver Breastplate (145)
    {
        id = 2675,
        name = "Shining Silver Breastplate",
        itemId = 2870,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 175, green = 190, gray = 205 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 20 },
            { itemId = 1206, name = "Moss Agate", count = 2 },
            { itemId = 1705, name = "Lesser Moonstone", count = 2 },
            { itemId = 5500, name = "Iridescent Pearl", count = 2 },
            { itemId = 2842, name = "Silver Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mighty Iron Hammer (145)
    {
        id = 3297,
        name = "Mighty Iron Hammer",
        itemId = 3492,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 175, green = 190, gray = 205 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 6 },
            { itemId = 3466, name = "Strong Flux", count = 2 },
            { itemId = 3391, name = "Elixir of Ogre's Strength", count = 1 },
            { itemId = 1705, name = "Lesser Moonstone", count = 2 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
            { itemId = 2319, name = "Medium Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3608,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Iron Boots (145)
    {
        id = 3334,
        name = "Green Iron Boots",
        itemId = 3484,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 175, green = 190, gray = 205 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 4 },
            { itemId = 1705, name = "Lesser Moonstone", count = 2 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3611,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Iron Gauntlets (150)
    {
        id = 3336,
        name = "Green Iron Gauntlets",
        itemId = 3485,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 180, green = 195, gray = 210 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 4 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 2 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3612,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Iron Shield Spike (150)
    {
        id = 7221,
        name = "Iron Shield Spike",
        itemId = 6042,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 180, green = 195, gray = 210 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 6 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6044,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Iron Buckle (150)
    {
        id = 8768,
        name = "Iron Buckle",
        itemId = 7071,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 150, green = 152, gray = 155 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Rod (150)
    {
        id = 14379,
        name = "Golden Rod",
        itemId = 11128,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 155, green = 157, gray = 160 },
        reagents = {
            { itemId = 3577, name = "Gold Bar", count = 1 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Skeleton Key (150)
    {
        id = 19667,
        name = "Golden Skeleton Key",
        itemId = 15870,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 150, green = 160, gray = 170 },
        reagents = {
            { itemId = 3577, name = "Gold Bar", count = 1 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Solid Iron Maul (155)
    {
        id = 3494,
        name = "Solid Iron Maul",
        itemId = 3851,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 180, green = 192, gray = 205 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 8 },
            { itemId = 3466, name = "Strong Flux", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 1 },
            { itemId = 2842, name = "Silver Bar", count = 4 },
            { itemId = 4234, name = "Heavy Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10858,
            cost = 3000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Iron Leggings (155)
    {
        id = 3506,
        name = "Green Iron Leggings",
        itemId = 3842,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 180, green = 192, gray = 205 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 8 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 1 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Silvered Bronze Leggings (155)
    {
        id = 12259,
        name = "Silvered Bronze Leggings",
        itemId = 10423,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 180, green = 192, gray = 205 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 12 },
            { itemId = 2842, name = "Silver Bar", count = 4 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10424,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Hardened Iron Shortsword (160)
    {
        id = 3492,
        name = "Hardened Iron Shortsword",
        itemId = 3849,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 185, green = 197, gray = 210 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 6 },
            { itemId = 3466, name = "Strong Flux", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 1 },
            { itemId = 1705, name = "Lesser Moonstone", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12162,
            cost = 3000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Iron Shoulders (160)
    {
        id = 3504,
        name = "Green Iron Shoulders",
        itemId = 3840,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 185, green = 197, gray = 210 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 7 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 1 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3870,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Barbaric Iron Shoulders (160)
    {
        id = 9811,
        name = "Barbaric Iron Shoulders",
        itemId = 7913,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 185, green = 197, gray = 210 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 8 },
            { itemId = 5635, name = "Sharp Claw", count = 4 },
            { itemId = 1210, name = "Shadowgem", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 7978,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Barbaric Iron Breastplate (160)
    {
        id = 9813,
        name = "Barbaric Iron Breastplate",
        itemId = 7914,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 185, green = 197, gray = 210 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 20 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 7979,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Iron Bracers (165)
    {
        id = 3501,
        name = "Green Iron Bracers",
        itemId = 3835,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 190, green = 202, gray = 215 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 6 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Iron Counterweight (165)
    {
        id = 7222,
        name = "Iron Counterweight",
        itemId = 6043,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 190, green = 202, gray = 215 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 4 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
            { itemId = 1705, name = "Lesser Moonstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6045,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Iron Destroyer (170)
    {
        id = 3495,
        name = "Golden Iron Destroyer",
        itemId = 3852,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 195, green = 207, gray = 220 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 10 },
            { itemId = 3577, name = "Gold Bar", count = 4 },
            { itemId = 1705, name = "Lesser Moonstone", count = 2 },
            { itemId = 3466, name = "Strong Flux", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3867,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Iron Helm (170)
    {
        id = 3502,
        name = "Green Iron Helm",
        itemId = 3836,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 195, green = 207, gray = 220 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 12 },
            { itemId = 3864, name = "Citrine", count = 1 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 1250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Scale Leggings (170)
    {
        id = 3507,
        name = "Golden Scale Leggings",
        itemId = 3843,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 195, green = 207, gray = 220 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 10 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3872,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Jade Serpentblade (175)
    {
        id = 3493,
        name = "Jade Serpentblade",
        itemId = 3850,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 200, green = 212, gray = 225 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 8 },
            { itemId = 3466, name = "Strong Flux", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
            { itemId = 1529, name = "Jade", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3866,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Scale Shoulders (175)
    {
        id = 3505,
        name = "Golden Scale Shoulders",
        itemId = 3841,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 200, green = 212, gray = 225 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 6 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3871,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Barbaric Iron Helm (175)
    {
        id = 9814,
        name = "Barbaric Iron Helm",
        itemId = 7915,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 200, green = 212, gray = 225 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 10 },
            { itemId = 5637, name = "Large Fang", count = 2 },
            { itemId = 5635, name = "Sharp Claw", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 7980,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shifting Silver Breastplate (175)
    {
        id = 429348,
        name = "Shifting Silver Breastplate",
        itemId = 210794,
        skillRequired = 175,
        skillRange = { orange = 0, yellow = 175, green = 190, gray = 205 },
        reagents = {
            { itemId = 2870, name = "Shining Silver Breastplate", count = 1 },
            { itemId = 211422, name = "Shard of the Void", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Moonsteel Broadsword (180)
    {
        id = 3496,
        name = "Moonsteel Broadsword",
        itemId = 3853,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 205, green = 217, gray = 230 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 8 },
            { itemId = 3466, name = "Strong Flux", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
            { itemId = 1705, name = "Lesser Moonstone", count = 3 },
            { itemId = 4234, name = "Heavy Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12163,
            cost = 4400,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Iron Hauberk (180)
    {
        id = 3508,
        name = "Green Iron Hauberk",
        itemId = 3844,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 205, green = 217, gray = 230 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 20 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 4 },
            { itemId = 1529, name = "Jade", count = 2 },
            { itemId = 1206, name = "Moss Agate", count = 2 },
            { itemId = 4255, name = "Green Leather Armor", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 7500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Barbaric Iron Boots (180)
    {
        id = 9818,
        name = "Barbaric Iron Boots",
        itemId = 7916,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 205, green = 217, gray = 230 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 12 },
            { itemId = 5637, name = "Large Fang", count = 4 },
            { itemId = 818, name = "Tigerseye", count = 4 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 7981,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Glinting Steel Dagger (180)
    {
        id = 15972,
        name = "Glinting Steel Dagger",
        itemId = 12259,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 205, green = 217, gray = 230 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 10 },
            { itemId = 3466, name = "Strong Flux", count = 2 },
            { itemId = 1206, name = "Moss Agate", count = 1 },
            { itemId = 7067, name = "Elemental Earth", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 7500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Massive Iron Axe (185)
    {
        id = 3498,
        name = "Massive Iron Axe",
        itemId = 3855,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 210, green = 222, gray = 235 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 14 },
            { itemId = 3466, name = "Strong Flux", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
            { itemId = 3577, name = "Gold Bar", count = 4 },
            { itemId = 4234, name = "Heavy Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12164,
            cost = 4400,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Polished Steel Boots (185)
    {
        id = 3513,
        name = "Polished Steel Boots",
        itemId = 3846,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 210, green = 222, gray = 235 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 8 },
            { itemId = 3864, name = "Citrine", count = 1 },
            { itemId = 1705, name = "Lesser Moonstone", count = 1 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3874,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Scale Bracers (185)
    {
        id = 7223,
        name = "Golden Scale Bracers",
        itemId = 6040,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 210, green = 222, gray = 235 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 5 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Barbaric Iron Gloves (185)
    {
        id = 9820,
        name = "Barbaric Iron Gloves",
        itemId = 7917,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 210, green = 222, gray = 235 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 14 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 3 },
            { itemId = 5637, name = "Large Fang", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 7982,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Scale Coif (190)
    {
        id = 3503,
        name = "Golden Scale Coif",
        itemId = 3837,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 215, green = 227, gray = 240 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 8 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6047,
            cost = 4400,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Steel Weapon Chain (190)
    {
        id = 7224,
        name = "Steel Weapon Chain",
        itemId = 6041,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 215, green = 227, gray = 240 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 8 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6046,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Searing Golden Blade (190)
    {
        id = 15973,
        name = "Searing Golden Blade",
        itemId = 12260,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 215, green = 227, gray = 240 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 10 },
            { itemId = 3577, name = "Gold Bar", count = 4 },
            { itemId = 7068, name = "Elemental Fire", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12261,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Edge of Winter (190)
    {
        id = 21913,
        name = "Edge of Winter",
        itemId = 17704,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 215, green = 227, gray = 240 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 10 },
            { itemId = 3829, name = "Frost Oil", count = 1 },
            { itemId = 7070, name = "Elemental Water", count = 2 },
            { itemId = 7069, name = "Elemental Air", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 17706,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Scale Cuirass (195)
    {
        id = 3511,
        name = "Golden Scale Cuirass",
        itemId = 3845,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 220, green = 232, gray = 245 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 12 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 4 },
            { itemId = 1529, name = "Jade", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3873,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Scale Leggings (195)
    {
        id = 439132,
        name = "Golden Scale Leggings",
        itemId = 217285,
        skillRequired = 195,
        skillRange = { orange = 0, yellow = 195, green = 207, gray = 220 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 10 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frost Tiger Blade (200)
    {
        id = 3497,
        name = "Frost Tiger Blade",
        itemId = 3854,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 225, green = 237, gray = 250 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 8 },
            { itemId = 3466, name = "Strong Flux", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
            { itemId = 1529, name = "Jade", count = 2 },
            { itemId = 3829, name = "Frost Oil", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3868,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shadow Crescent Axe (200)
    {
        id = 3500,
        name = "Shadow Crescent Axe",
        itemId = 3856,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 225, green = 237, gray = 250 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 10 },
            { itemId = 3466, name = "Strong Flux", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 3 },
            { itemId = 3864, name = "Citrine", count = 2 },
            { itemId = 3824, name = "Shadow Oil", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3869,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Scale Boots (200)
    {
        id = 3515,
        name = "Golden Scale Boots",
        itemId = 3847,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 225, green = 237, gray = 250 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 10 },
            { itemId = 3577, name = "Gold Bar", count = 4 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 4 },
            { itemId = 3864, name = "Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3875,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Steel Breastplate (200)
    {
        id = 9916,
        name = "Steel Breastplate",
        itemId = 7963,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 225, green = 237, gray = 250 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 16 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Solid Sharpening Stone (200)
    {
        id = 9918,
        name = "Solid Sharpening Stone",
        itemId = 7964,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 200, green = 205, gray = 210 },
        reagents = {
            { itemId = 7912, name = "Solid Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Solid Grinding Stone (200)
    {
        id = 9920,
        name = "Solid Grinding Stone",
        itemId = 7966,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 200, green = 205, gray = 210 },
        reagents = {
            { itemId = 7912, name = "Solid Stone", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Solid Weightstone (200)
    {
        id = 9921,
        name = "Solid Weightstone",
        itemId = 7965,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 200, green = 205, gray = 210 },
        reagents = {
            { itemId = 7912, name = "Solid Stone", count = 1 },
            { itemId = 4306, name = "Silk Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Inlaid Mithril Cylinder (200)
    {
        id = 11454,
        name = "Inlaid Mithril Cylinder",
        itemId = 9060,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 225, green = 237, gray = 250 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 5 },
            { itemId = 3577, name = "Gold Bar", count = 1 },
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10713,
            cost = 2000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Truesilver Rod (200)
    {
        id = 14380,
        name = "Truesilver Rod",
        itemId = 11144,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 205, green = 207, gray = 210 },
        reagents = {
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Truesilver Skeleton Key (200)
    {
        id = 19668,
        name = "Truesilver Skeleton Key",
        itemId = 15871,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Low-Background Truesilver Plates (200)
    {
        id = 435910,
        name = "Low-Background Truesilver Plates",
        itemId = 213376,
        skillRequired = 200,
        skillRange = { orange = 0, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
            { itemId = 213373, name = "Reflective Scrapmetal", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Scale Shoulders (200)
    {
        id = 439130,
        name = "Golden Scale Shoulders",
        itemId = 217283,
        skillRequired = 200,
        skillRange = { orange = 0, yellow = 200, green = 212, gray = 225 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 6 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Mithril Shoulder (205)
    {
        id = 9926,
        name = "Heavy Mithril Shoulder",
        itemId = 7918,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 8 },
            { itemId = 4234, name = "Heavy Leather", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Mithril Gauntlet (205)
    {
        id = 9928,
        name = "Heavy Mithril Gauntlet",
        itemId = 7919,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 6 },
            { itemId = 4338, name = "Mageweave Cloth", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Scale Gauntlets (205)
    {
        id = 11643,
        name = "Golden Scale Gauntlets",
        itemId = 9366,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 10 },
            { itemId = 3577, name = "Gold Bar", count = 4 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 4 },
            { itemId = 3864, name = "Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 9367,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Moonsteel Broadsword (205)
    {
        id = 439128,
        name = "Moonsteel Broadsword",
        itemId = 217281,
        skillRequired = 205,
        skillRange = { orange = 0, yellow = 205, green = 217, gray = 230 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 8 },
            { itemId = 3466, name = "Strong Flux", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
            { itemId = 1705, name = "Lesser Moonstone", count = 3 },
            { itemId = 4234, name = "Heavy Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mithril Scale Pants (210)
    {
        id = 9931,
        name = "Mithril Scale Pants",
        itemId = 7920,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Mithril Pants (210)
    {
        id = 9933,
        name = "Heavy Mithril Pants",
        itemId = 7921,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 10 },
            { itemId = 1705, name = "Lesser Moonstone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7975,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Mithril Axe (210)
    {
        id = 9993,
        name = "Heavy Mithril Axe",
        itemId = 7941,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 235, green = 247, gray = 260 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 12 },
            { itemId = 3864, name = "Citrine", count = 2 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Steel Plate Helm (215)
    {
        id = 9935,
        name = "Steel Plate Helm",
        itemId = 7922,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 235, green = 245, gray = 255 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 14 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mithril Scale Bracers (215)
    {
        id = 9937,
        name = "Mithril Scale Bracers",
        itemId = 7924,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 235, green = 245, gray = 255 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 8 },
            { itemId = 3864, name = "Citrine", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7995,
            cost = 6000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mithril Shield Spike (215)
    {
        id = 9939,
        name = "Mithril Shield Spike",
        itemId = 7967,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 235, green = 245, gray = 255 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 4 },
            { itemId = 6037, name = "Truesilver Bar", count = 2 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7976,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Scale Coif (215)
    {
        id = 439126,
        name = "Golden Scale Coif",
        itemId = 217279,
        skillRequired = 215,
        skillRange = { orange = 0, yellow = 215, green = 227, gray = 240 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 8 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ornate Mithril Pants (220)
    {
        id = 9945,
        name = "Ornate Mithril Pants",
        itemId = 7926,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 250, gray = 260 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 12 },
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
            { itemId = 7909, name = "Aquamarine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 7983,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ornate Mithril Gloves (220)
    {
        id = 9950,
        name = "Ornate Mithril Gloves",
        itemId = 7927,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 250, gray = 260 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 10 },
            { itemId = 4338, name = "Mageweave Cloth", count = 6 },
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 7984,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blue Glittering Axe (220)
    {
        id = 9995,
        name = "Blue Glittering Axe",
        itemId = 7942,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 245, green = 257, gray = 270 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 16 },
            { itemId = 7909, name = "Aquamarine", count = 2 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
            { itemId = 4304, name = "Thick Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7992,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Scale Cuirass (220)
    {
        id = 439124,
        name = "Golden Scale Cuirass",
        itemId = 217277,
        skillRequired = 220,
        skillRange = { orange = 0, yellow = 220, green = 232, gray = 245 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 12 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 4 },
            { itemId = 1529, name = "Jade", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ornate Mithril Shoulders (225)
    {
        id = 9952,
        name = "Ornate Mithril Shoulders",
        itemId = 7928,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 12 },
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
            { itemId = 4304, name = "Thick Leather", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 7985,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Truesilver Gauntlets (225)
    {
        id = 9954,
        name = "Truesilver Gauntlets",
        itemId = 7938,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 10 },
            { itemId = 6037, name = "Truesilver Bar", count = 8 },
            { itemId = 7909, name = "Aquamarine", count = 3 },
            { itemId = 3864, name = "Citrine", count = 3 },
            { itemId = 5966, name = "Guardian Gloves", count = 1 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 9000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wicked Mithril Blade (225)
    {
        id = 9997,
        name = "Wicked Mithril Blade",
        itemId = 7943,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 250, green = 262, gray = 275 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 14 },
            { itemId = 6037, name = "Truesilver Bar", count = 4 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
            { itemId = 4304, name = "Thick Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8029,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Reflective Truesilver Braincage (225)
    {
        id = 435906,
        name = "Reflective Truesilver Braincage",
        itemId = 215167,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 25 },
            { itemId = 213376, name = "Low-Background Truesilver Plates", count = 4 },
            { itemId = 213379, name = "Hyperconductive Arcano-Filament", count = 2 },
            { itemId = 213383, name = "Polished Truesilver Gears", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tempered Interference-Negating Helmet (225)
    {
        id = 435908,
        name = "Tempered Interference-Negating Helmet",
        itemId = 215161,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 25 },
            { itemId = 213376, name = "Low-Background Truesilver Plates", count = 4 },
            { itemId = 213379, name = "Hyperconductive Arcano-Filament", count = 1 },
            { itemId = 213369, name = "Faintly Glowing Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Scale Gauntlets (225)
    {
        id = 439120,
        name = "Golden Scale Gauntlets",
        itemId = 217273,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 10 },
            { itemId = 3577, name = "Gold Bar", count = 4 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 4 },
            { itemId = 3864, name = "Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Scale Boots (225)
    {
        id = 439122,
        name = "Golden Scale Boots",
        itemId = 217275,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 237, gray = 250 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 10 },
            { itemId = 3577, name = "Gold Bar", count = 4 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 4 },
            { itemId = 3864, name = "Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Orcish War Leggings (230)
    {
        id = 9957,
        name = "Orcish War Leggings",
        itemId = 7929,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 260, gray = 270 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 12 },
            { itemId = 7067, name = "Elemental Earth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 7994,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Mithril Breastplate (230)
    {
        id = 9959,
        name = "Heavy Mithril Breastplate",
        itemId = 7930,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 260, gray = 270 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 16 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mithril Coif (230)
    {
        id = 9961,
        name = "Mithril Coif",
        itemId = 7931,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 260, gray = 270 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 10 },
            { itemId = 4338, name = "Mageweave Cloth", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Big Black Mace (230)
    {
        id = 10001,
        name = "Big Black Mace",
        itemId = 7945,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 255, green = 267, gray = 280 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 16 },
            { itemId = 7971, name = "Black Pearl", count = 1 },
            { itemId = 1210, name = "Shadowgem", count = 4 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
            { itemId = 4304, name = "Thick Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mithril Spurs (235)
    {
        id = 9964,
        name = "Mithril Spurs",
        itemId = 7969,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 4 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7989,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mithril Scale Shoulders (235)
    {
        id = 9966,
        name = "Mithril Scale Shoulders",
        itemId = 7932,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 14 },
            { itemId = 4304, name = "Thick Leather", count = 4 },
            { itemId = 3864, name = "Citrine", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7991,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Mithril Boots (235)
    {
        id = 9968,
        name = "Heavy Mithril Boots",
        itemId = 7933,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 14 },
            { itemId = 4304, name = "Thick Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- The Shatterer (235)
    {
        id = 10003,
        name = "The Shatterer",
        itemId = 7954,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 260, green = 272, gray = 285 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 24 },
            { itemId = 7075, name = "Core of Earth", count = 4 },
            { itemId = 6037, name = "Truesilver Bar", count = 6 },
            { itemId = 3864, name = "Citrine", count = 5 },
            { itemId = 1529, name = "Jade", count = 5 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 4 },
            { itemId = 4304, name = "Thick Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 13500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ornate Mithril Breastplate (240)
    {
        id = 9972,
        name = "Ornate Mithril Breastplate",
        itemId = 7935,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 16 },
            { itemId = 6037, name = "Truesilver Bar", count = 6 },
            { itemId = 7077, name = "Heart of Fire", count = 1 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 7986,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dazzling Mithril Rapier (240)
    {
        id = 10005,
        name = "Dazzling Mithril Rapier",
        itemId = 7944,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 265, green = 277, gray = 290 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 14 },
            { itemId = 7909, name = "Aquamarine", count = 1 },
            { itemId = 1705, name = "Lesser Moonstone", count = 2 },
            { itemId = 1206, name = "Moss Agate", count = 2 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
            { itemId = 4338, name = "Mageweave Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7993,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Mithril Helm (245)
    {
        id = 9970,
        name = "Heavy Mithril Helm",
        itemId = 7934,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 14 },
            { itemId = 7909, name = "Aquamarine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7990,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Truesilver Breastplate (245)
    {
        id = 9974,
        name = "Truesilver Breastplate",
        itemId = 7939,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 275, gray = 285 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 12 },
            { itemId = 6037, name = "Truesilver Bar", count = 24 },
            { itemId = 7910, name = "Star Ruby", count = 4 },
            { itemId = 7971, name = "Black Pearl", count = 4 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 9000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ornate Mithril Boots (245)
    {
        id = 9979,
        name = "Ornate Mithril Boots",
        itemId = 7936,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 275, gray = 285 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 14 },
            { itemId = 6037, name = "Truesilver Bar", count = 2 },
            { itemId = 4304, name = "Thick Leather", count = 4 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
            { itemId = 7909, name = "Aquamarine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 7988,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ornate Mithril Helm (245)
    {
        id = 9980,
        name = "Ornate Mithril Helm",
        itemId = 7937,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 275, gray = 285 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 16 },
            { itemId = 6037, name = "Truesilver Bar", count = 2 },
            { itemId = 7971, name = "Black Pearl", count = 1 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 7987,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Phantom Blade (245)
    {
        id = 10007,
        name = "Phantom Blade",
        itemId = 7961,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 270, green = 282, gray = 295 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 28 },
            { itemId = 7081, name = "Breath of Wind", count = 6 },
            { itemId = 6037, name = "Truesilver Bar", count = 8 },
            { itemId = 3823, name = "Lesser Invisibility Potion", count = 2 },
            { itemId = 7909, name = "Aquamarine", count = 6 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 4 },
            { itemId = 4304, name = "Thick Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 13500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runed Mithril Hammer (245)
    {
        id = 10009,
        name = "Runed Mithril Hammer",
        itemId = 7946,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 270, green = 282, gray = 295 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 18 },
            { itemId = 7075, name = "Core of Earth", count = 2 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
            { itemId = 4304, name = "Thick Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8028,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blight (250)
    {
        id = 10011,
        name = "Blight",
        itemId = 7959,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 275, green = 287, gray = 300 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 28 },
            { itemId = 7972, name = "Ichor of Undeath", count = 10 },
            { itemId = 6037, name = "Truesilver Bar", count = 10 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 6 },
            { itemId = 4304, name = "Thick Leather", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 13500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dense Grinding Stone (250)
    {
        id = 16639,
        name = "Dense Grinding Stone",
        itemId = 12644,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 255, green = 257, gray = 260 },
        reagents = {
            { itemId = 12365, name = "Dense Stone", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dense Weightstone (250)
    {
        id = 16640,
        name = "Dense Weightstone",
        itemId = 12643,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 255, green = 257, gray = 260 },
        reagents = {
            { itemId = 12365, name = "Dense Stone", count = 1 },
            { itemId = 14047, name = "Runecloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dense Sharpening Stone (250)
    {
        id = 16641,
        name = "Dense Sharpening Stone",
        itemId = 12404,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 255, green = 257, gray = 260 },
        reagents = {
            { itemId = 12365, name = "Dense Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Thorium Armor (250)
    {
        id = 16642,
        name = "Thorium Armor",
        itemId = 12405,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 16 },
            { itemId = 12361, name = "Blue Sapphire", count = 1 },
            { itemId = 11188, name = "Yellow Power Crystal", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12682,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Thorium Belt (250)
    {
        id = 16643,
        name = "Thorium Belt",
        itemId = 12406,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 12 },
            { itemId = 11186, name = "Red Power Crystal", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12683,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shoulderplates of Dread (250)
    {
        id = 446179,
        name = "Shoulderplates of Dread",
        itemId = 220738,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fearmonger's Shoulderguards (250)
    {
        id = 446188,
        name = "Fearmonger's Shoulderguards",
        itemId = 220740,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Baleful Pauldrons (250)
    {
        id = 446191,
        name = "Baleful Pauldrons",
        itemId = 220739,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ebon Shiv (255)
    {
        id = 10013,
        name = "Ebon Shiv",
        itemId = 7947,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 280, green = 292, gray = 305 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 12 },
            { itemId = 6037, name = "Truesilver Bar", count = 6 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
            { itemId = 4304, name = "Thick Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 8030,
            cost = 10000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Thorium Bracers (255)
    {
        id = 16644,
        name = "Thorium Bracers",
        itemId = 12408,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 12 },
            { itemId = 11184, name = "Blue Power Crystal", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12684,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Truesilver Champion (260)
    {
        id = 10015,
        name = "Truesilver Champion",
        itemId = 7960,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 285, green = 297, gray = 310 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 30 },
            { itemId = 6037, name = "Truesilver Bar", count = 16 },
            { itemId = 7910, name = "Star Ruby", count = 6 },
            { itemId = 7081, name = "Breath of Wind", count = 4 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 8 },
            { itemId = 4304, name = "Thick Leather", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 13500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Radiant Belt (260)
    {
        id = 16645,
        name = "Radiant Belt",
        itemId = 12416,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 10 },
            { itemId = 7077, name = "Heart of Fire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12685,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Soldier's Protectors (260)
    {
        id = 1224635,
        name = "Scarlet Soldier's Protectors",
        itemId = 238291,
        skillRequired = 260,
        skillRange = { orange = 0, yellow = 260, green = 282, gray = 305 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 16 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238325,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Soldier's Waistguard (260)
    {
        id = 1224637,
        name = "Scarlet Soldier's Waistguard",
        itemId = 238293,
        skillRequired = 260,
        skillRange = { orange = 0, yellow = 260, green = 282, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 12359, name = "Thorium Bar", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238327,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Iron Pulverizer (265)
    {
        id = 15292,
        name = "Dark Iron Pulverizer",
        itemId = 11608,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 18 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11610,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Imperial Plate Shoulders (265)
    {
        id = 16646,
        name = "Imperial Plate Shoulders",
        itemId = 12428,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 24 },
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 3864, name = "Citrine", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12687,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Imperial Plate Belt (265)
    {
        id = 16647,
        name = "Imperial Plate Belt",
        itemId = 12424,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 22 },
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 7909, name = "Aquamarine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12688,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Iron Mail (270)
    {
        id = 15293,
        name = "Dark Iron Mail",
        itemId = 11606,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 10 },
            { itemId = 7077, name = "Heart of Fire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11614,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Radiant Breastplate (270)
    {
        id = 16648,
        name = "Radiant Breastplate",
        itemId = 12415,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 18 },
            { itemId = 7077, name = "Heart of Fire", count = 2 },
            { itemId = 7910, name = "Star Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12689,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Imperial Plate Bracers (270)
    {
        id = 16649,
        name = "Imperial Plate Bracers",
        itemId = 12425,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 7910, name = "Star Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12690,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wildthorn Mail (270)
    {
        id = 16650,
        name = "Wildthorn Mail",
        itemId = 12624,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 40 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 2 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 8153, name = "Wildvine", count = 4 },
            { itemId = 12364, name = "Huge Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12691,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Soldier's Grips (270)
    {
        id = 1224636,
        name = "Scarlet Soldier's Grips",
        itemId = 238292,
        skillRequired = 270,
        skillRange = { orange = 0, yellow = 270, green = 287, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 12359, name = "Thorium Bar", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238326,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Soldier's Stompers (270)
    {
        id = 1224639,
        name = "Scarlet Soldier's Stompers",
        itemId = 238295,
        skillRequired = 270,
        skillRange = { orange = 0, yellow = 270, green = 287, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 12359, name = "Thorium Bar", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238329,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Iron Sunderer (275)
    {
        id = 15294,
        name = "Dark Iron Sunderer",
        itemId = 11607,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 26 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11611,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Thorium Shield Spike (275)
    {
        id = 16651,
        name = "Thorium Shield Spike",
        itemId = 12645,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 4 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 4 },
            { itemId = 7076, name = "Essence of Earth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12692,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ornate Thorium Handaxe (275)
    {
        id = 16969,
        name = "Ornate Thorium Handaxe",
        itemId = 12773,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 300, green = 312, gray = 325 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 12799, name = "Large Opal", count = 2 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12819,
            cost = 16000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dawn's Edge (275)
    {
        id = 16970,
        name = "Dawn's Edge",
        itemId = 12774,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 300, green = 312, gray = 325 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 30 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 4 },
            { itemId = 7910, name = "Star Ruby", count = 4 },
            { itemId = 12361, name = "Blue Sapphire", count = 4 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12821,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Arcanite Skeleton Key (275)
    {
        id = 19669,
        name = "Arcanite Skeleton Key",
        itemId = 15872,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 280, gray = 285 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 1 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Arcanite Rod (275)
    {
        id = 20201,
        name = "Arcanite Rod",
        itemId = 16206,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 280, gray = 285 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 3 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Iron Shoulders (280)
    {
        id = 15295,
        name = "Dark Iron Shoulders",
        itemId = 11605,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 6 },
            { itemId = 7077, name = "Heart of Fire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11615,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Thorium Boots (280)
    {
        id = 16652,
        name = "Thorium Boots",
        itemId = 12409,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 11185, name = "Green Power Crystal", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12693,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Thorium Helm (280)
    {
        id = 16653,
        name = "Thorium Helm",
        itemId = 12410,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 24 },
            { itemId = 7910, name = "Star Ruby", count = 1 },
            { itemId = 11188, name = "Yellow Power Crystal", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12694,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Huge Thorium Battleaxe (280)
    {
        id = 16971,
        name = "Huge Thorium Battleaxe",
        itemId = 12775,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 305, green = 317, gray = 330 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 40 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 6 },
            { itemId = 8170, name = "Rugged Leather", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12823,
            cost = 20000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Enchanted Battlehammer (280)
    {
        id = 16973,
        name = "Enchanted Battlehammer",
        itemId = 12776,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 305, green = 317, gray = 330 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 6 },
            { itemId = 12364, name = "Huge Emerald", count = 2 },
            { itemId = 12804, name = "Powerful Mojo", count = 4 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12824,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blazing Rapier (280)
    {
        id = 16978,
        name = "Blazing Rapier",
        itemId = 12777,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 305, green = 317, gray = 330 },
        reagents = {
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 10 },
            { itemId = 7078, name = "Essence of Fire", count = 4 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
            { itemId = 12800, name = "Azerothian Diamond", count = 2 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12825,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Soldier's Legplates (280)
    {
        id = 1224638,
        name = "Scarlet Soldier's Legplates",
        itemId = 238294,
        skillRequired = 280,
        skillRange = { orange = 0, yellow = 280, green = 292, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 12359, name = "Thorium Bar", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238328,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Iron Plate (285)
    {
        id = 15296,
        name = "Dark Iron Plate",
        itemId = 11604,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 20 },
            { itemId = 7077, name = "Heart of Fire", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11612,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Radiant Gloves (285)
    {
        id = 16654,
        name = "Radiant Gloves",
        itemId = 12418,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 18 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12695,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Demon Forged Breastplate (285)
    {
        id = 16667,
        name = "Demon Forged Breastplate",
        itemId = 12628,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 40 },
            { itemId = 12662, name = "Demonic Rune", count = 10 },
            { itemId = 12361, name = "Blue Sapphire", count = 4 },
            { itemId = 7910, name = "Star Ruby", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12696,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Serenity (285)
    {
        id = 16983,
        name = "Serenity",
        itemId = 12781,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 310, green = 322, gray = 335 },
        reagents = {
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 6 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 12804, name = "Powerful Mojo", count = 4 },
            { itemId = 12799, name = "Large Opal", count = 2 },
            { itemId = 12361, name = "Blue Sapphire", count = 2 },
            { itemId = 12364, name = "Huge Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12827,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Soldier's Helmet (285)
    {
        id = 1224631,
        name = "Scarlet Soldier's Helmet",
        itemId = 238288,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 2 },
            { itemId = 12359, name = "Thorium Bar", count = 24 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238322,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Soldier's Spaulders (285)
    {
        id = 1224632,
        name = "Scarlet Soldier's Spaulders",
        itemId = 238289,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 12359, name = "Thorium Bar", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238323,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Soldier's Chestplate (285)
    {
        id = 1224633,
        name = "Scarlet Soldier's Chestplate",
        itemId = 238290,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 12359, name = "Thorium Bar", count = 24 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238324,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fiery Plate Gauntlets (290)
    {
        id = 16655,
        name = "Fiery Plate Gauntlets",
        itemId = 12631,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 6 },
            { itemId = 7078, name = "Essence of Fire", count = 2 },
            { itemId = 7910, name = "Star Ruby", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12699,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Radiant Boots (290)
    {
        id = 16656,
        name = "Radiant Boots",
        itemId = 12419,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 14 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12697,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dawnbringer Shoulders (290)
    {
        id = 16660,
        name = "Dawnbringer Shoulders",
        itemId = 12625,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 12360, name = "Arcanite Bar", count = 4 },
            { itemId = 12364, name = "Huge Emerald", count = 2 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12698,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Volcanic Hammer (290)
    {
        id = 16984,
        name = "Volcanic Hammer",
        itemId = 12792,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 315, green = 327, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 30 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
            { itemId = 7910, name = "Star Ruby", count = 4 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12828,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Corruption (290)
    {
        id = 16985,
        name = "Corruption",
        itemId = 12782,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 315, green = 327, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 40 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 12662, name = "Demonic Rune", count = 16 },
            { itemId = 12808, name = "Essence of Undeath", count = 8 },
            { itemId = 12361, name = "Blue Sapphire", count = 2 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12830,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Timbermaw Belt (290)
    {
        id = 23628,
        name = "Heavy Timbermaw Belt",
        itemId = 19043,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 12 },
            { itemId = 7076, name = "Essence of Earth", count = 3 },
            { itemId = 12803, name = "Living Essence", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 576,
            factionName = "Timbermaw Hold",
            level = "Honored",
            itemId = 19202,
            cost = 22000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Girdle of the Dawn (290)
    {
        id = 23632,
        name = "Girdle of the Dawn",
        itemId = 19051,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 8 },
            { itemId = 6037, name = "Truesilver Bar", count = 6 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Honored",
            itemId = 19203,
            cost = 22000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Imperial Plate Boots (295)
    {
        id = 16657,
        name = "Imperial Plate Boots",
        itemId = 12426,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 34 },
            { itemId = 7910, name = "Star Ruby", count = 1 },
            { itemId = 7909, name = "Aquamarine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12700,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Imperial Plate Helm (295)
    {
        id = 16658,
        name = "Imperial Plate Helm",
        itemId = 12427,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 34 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12701,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Radiant Circlet (295)
    {
        id = 16659,
        name = "Radiant Circlet",
        itemId = 12417,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 18 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12702,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Radiant Circlet (295)
    {
        id = 16659,
        name = "Radiant Circlet",
        itemId = 12417,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 18 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12702,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Storm Gauntlets (295)
    {
        id = 16661,
        name = "Storm Gauntlets",
        itemId = 12632,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 4 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
            { itemId = 12361, name = "Blue Sapphire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12703,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fiery Chain Girdle (295)
    {
        id = 20872,
        name = "Fiery Chain Girdle",
        itemId = 16989,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 6 },
            { itemId = 17010, name = "Fiery Core", count = 3 },
            { itemId = 17011, name = "Lava Core", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 17049,
            cost = 90000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Iron Bracers (295)
    {
        id = 20874,
        name = "Dark Iron Bracers",
        itemId = 17014,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 4 },
            { itemId = 17010, name = "Fiery Core", count = 2 },
            { itemId = 17011, name = "Lava Core", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 17051,
            cost = 70000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Thorium Leggings (300)
    {
        id = 16662,
        name = "Thorium Leggings",
        itemId = 12414,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 26 },
            { itemId = 11186, name = "Red Power Crystal", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12704,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Imperial Plate Chest (300)
    {
        id = 16663,
        name = "Imperial Plate Chest",
        itemId = 12422,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 40 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12705,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runic Plate Shoulders (300)
    {
        id = 16664,
        name = "Runic Plate Shoulders",
        itemId = 12610,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 3577, name = "Gold Bar", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12706,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runic Plate Boots (300)
    {
        id = 16665,
        name = "Runic Plate Boots",
        itemId = 12611,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 2842, name = "Silver Bar", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12707,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Whitesoul Helm (300)
    {
        id = 16724,
        name = "Whitesoul Helm",
        itemId = 12633,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 4 },
            { itemId = 6037, name = "Truesilver Bar", count = 6 },
            { itemId = 3577, name = "Gold Bar", count = 6 },
            { itemId = 12800, name = "Azerothian Diamond", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12711,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Radiant Leggings (300)
    {
        id = 16725,
        name = "Radiant Leggings",
        itemId = 12420,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12713,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runic Plate Helm (300)
    {
        id = 16726,
        name = "Runic Plate Helm",
        itemId = 12612,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 30 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 6037, name = "Truesilver Bar", count = 2 },
            { itemId = 12364, name = "Huge Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12714,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Helm of the Great Chief (300)
    {
        id = 16728,
        name = "Helm of the Great Chief",
        itemId = 12636,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 40 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 4 },
            { itemId = 8168, name = "Jet Black Feather", count = 60 },
            { itemId = 12799, name = "Large Opal", count = 6 },
            { itemId = 12364, name = "Huge Emerald", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12716,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Lionheart Helm (300)
    {
        id = 16729,
        name = "Lionheart Helm",
        itemId = 12640,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 80 },
            { itemId = 12360, name = "Arcanite Bar", count = 12 },
            { itemId = 8146, name = "Wicked Claw", count = 40 },
            { itemId = 12361, name = "Blue Sapphire", count = 10 },
            { itemId = 12800, name = "Azerothian Diamond", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12717,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Imperial Plate Leggings (300)
    {
        id = 16730,
        name = "Imperial Plate Leggings",
        itemId = 12429,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 44 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12715,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runic Breastplate (300)
    {
        id = 16731,
        name = "Runic Breastplate",
        itemId = 12613,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 40 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 7910, name = "Star Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12718,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runic Plate Leggings (300)
    {
        id = 16732,
        name = "Runic Plate Leggings",
        itemId = 12614,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 40 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 7910, name = "Star Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12719,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Stronghold Gauntlets (300)
    {
        id = 16741,
        name = "Stronghold Gauntlets",
        itemId = 12639,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 15 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 20 },
            { itemId = 7076, name = "Essence of Earth", count = 10 },
            { itemId = 12361, name = "Blue Sapphire", count = 4 },
            { itemId = 12799, name = "Large Opal", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12720,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Enchanted Thorium Helm (300)
    {
        id = 16742,
        name = "Enchanted Thorium Helm",
        itemId = 12620,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 6 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 16 },
            { itemId = 7076, name = "Essence of Earth", count = 6 },
            { itemId = 12799, name = "Large Opal", count = 2 },
            { itemId = 12800, name = "Azerothian Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12725,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Enchanted Thorium Leggings (300)
    {
        id = 16744,
        name = "Enchanted Thorium Leggings",
        itemId = 12619,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 10 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 20 },
            { itemId = 7080, name = "Essence of Water", count = 6 },
            { itemId = 12361, name = "Blue Sapphire", count = 2 },
            { itemId = 12364, name = "Huge Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12726,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Enchanted Thorium Breastplate (300)
    {
        id = 16745,
        name = "Enchanted Thorium Breastplate",
        itemId = 12618,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 8 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 24 },
            { itemId = 7076, name = "Essence of Earth", count = 4 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
            { itemId = 12364, name = "Huge Emerald", count = 2 },
            { itemId = 12800, name = "Azerothian Diamond", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 12727,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Invulnerable Mail (300)
    {
        id = 16746,
        name = "Invulnerable Mail",
        itemId = 12641,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 30 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 30 },
            { itemId = 12364, name = "Huge Emerald", count = 6 },
            { itemId = 12800, name = "Azerothian Diamond", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12728,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Hammer of the Titans (300)
    {
        id = 16988,
        name = "Hammer of the Titans",
        itemId = 12796,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 50 },
            { itemId = 12360, name = "Arcanite Bar", count = 15 },
            { itemId = 12809, name = "Guardian Stone", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
            { itemId = 7076, name = "Essence of Earth", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12833,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Arcanite Champion (300)
    {
        id = 16990,
        name = "Arcanite Champion",
        itemId = 12790,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 15 },
            { itemId = 12800, name = "Azerothian Diamond", count = 8 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 12799, name = "Large Opal", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12834,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Annihilator (300)
    {
        id = 16991,
        name = "Annihilator",
        itemId = 12798,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 40 },
            { itemId = 12360, name = "Arcanite Bar", count = 12 },
            { itemId = 12808, name = "Essence of Undeath", count = 10 },
            { itemId = 12364, name = "Huge Emerald", count = 8 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 2 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12835,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frostguard (300)
    {
        id = 16992,
        name = "Frostguard",
        itemId = 12797,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 18 },
            { itemId = 12361, name = "Blue Sapphire", count = 8 },
            { itemId = 12800, name = "Azerothian Diamond", count = 8 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 2 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12836,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Masterwork Stormhammer (300)
    {
        id = 16993,
        name = "Masterwork Stormhammer",
        itemId = 12794,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 20 },
            { itemId = 12364, name = "Huge Emerald", count = 8 },
            { itemId = 12799, name = "Large Opal", count = 8 },
            { itemId = 7076, name = "Essence of Earth", count = 6 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12837,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Arcanite Reaper (300)
    {
        id = 16994,
        name = "Arcanite Reaper",
        itemId = 12784,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 20 },
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12838,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heartseeker (300)
    {
        id = 16995,
        name = "Heartseeker",
        itemId = 12783,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 10 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 10 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 7910, name = "Star Ruby", count = 6 },
            { itemId = 12800, name = "Azerothian Diamond", count = 6 },
            { itemId = 12799, name = "Large Opal", count = 6 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12839,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fiery Chain Shoulders (300)
    {
        id = 20873,
        name = "Fiery Chain Shoulders",
        itemId = 16988,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 16 },
            { itemId = 17010, name = "Fiery Core", count = 4 },
            { itemId = 17011, name = "Lava Core", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 17053,
            cost = 200000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Iron Leggings (300)
    {
        id = 20876,
        name = "Dark Iron Leggings",
        itemId = 17013,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 16 },
            { itemId = 17010, name = "Fiery Core", count = 4 },
            { itemId = 17011, name = "Lava Core", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 17052,
            cost = 180000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Iron Reaver (300)
    {
        id = 20890,
        name = "Dark Iron Reaver",
        itemId = 17015,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 16 },
            { itemId = 17010, name = "Fiery Core", count = 12 },
            { itemId = 11382, name = "Blood of the Mountain", count = 2 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 17059,
            cost = 220000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Iron Destroyer (300)
    {
        id = 20897,
        name = "Dark Iron Destroyer",
        itemId = 17016,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 18 },
            { itemId = 17011, name = "Lava Core", count = 12 },
            { itemId = 11382, name = "Blood of the Mountain", count = 2 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 17060,
            cost = 220000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Sulfuron Hammer (300)
    {
        id = 21161,
        name = "Sulfuron Hammer",
        itemId = 17193,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 325, green = 337, gray = 350 },
        reagents = {
            { itemId = 17203, name = "Sulfuron Ingot", count = 8 },
            { itemId = 11371, name = "Dark Iron Bar", count = 20 },
            { itemId = 12360, name = "Arcanite Bar", count = 50 },
            { itemId = 7078, name = "Essence of Fire", count = 25 },
            { itemId = 11382, name = "Blood of the Mountain", count = 10 },
            { itemId = 17011, name = "Lava Core", count = 10 },
            { itemId = 17010, name = "Fiery Core", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 18592,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elemental Sharpening Stone (300)
    {
        id = 22757,
        name = "Elemental Sharpening Stone",
        itemId = 18262,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 7067, name = "Elemental Earth", count = 2 },
            { itemId = 12365, name = "Dense Stone", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18264,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Timbermaw Boots (300)
    {
        id = 23629,
        name = "Heavy Timbermaw Boots",
        itemId = 19048,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 4 },
            { itemId = 7076, name = "Essence of Earth", count = 6 },
            { itemId = 12803, name = "Living Essence", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 576,
            factionName = "Timbermaw Hold",
            level = "Revered",
            itemId = 19204,
            cost = 40000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Gloves of the Dawn (300)
    {
        id = 23633,
        name = "Gloves of the Dawn",
        itemId = 19057,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 6037, name = "Truesilver Bar", count = 10 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Revered",
            itemId = 19205,
            cost = 40000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Iron Helm (300)
    {
        id = 23636,
        name = "Dark Iron Helm",
        itemId = 19148,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17011, name = "Lava Core", count = 4 },
            { itemId = 17010, name = "Fiery Core", count = 2 },
            { itemId = 11371, name = "Dark Iron Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19206,
            cost = 60000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Iron Gauntlets (300)
    {
        id = 23637,
        name = "Dark Iron Gauntlets",
        itemId = 19164,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17011, name = "Lava Core", count = 3 },
            { itemId = 17010, name = "Fiery Core", count = 5 },
            { itemId = 17012, name = "Core Leather", count = 4 },
            { itemId = 11371, name = "Dark Iron Bar", count = 4 },
            { itemId = 11382, name = "Blood of the Mountain", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19207,
            cost = 80000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Amnesty (300)
    {
        id = 23638,
        name = "Black Amnesty",
        itemId = 19166,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17011, name = "Lava Core", count = 3 },
            { itemId = 17010, name = "Fiery Core", count = 6 },
            { itemId = 12360, name = "Arcanite Bar", count = 12 },
            { itemId = 11382, name = "Blood of the Mountain", count = 1 },
            { itemId = 11371, name = "Dark Iron Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19208,
            cost = 70000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blackfury (300)
    {
        id = 23639,
        name = "Blackfury",
        itemId = 19167,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17011, name = "Lava Core", count = 5 },
            { itemId = 17010, name = "Fiery Core", count = 2 },
            { itemId = 12360, name = "Arcanite Bar", count = 16 },
            { itemId = 11371, name = "Dark Iron Bar", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19209,
            cost = 70000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ebon Hand (300)
    {
        id = 23650,
        name = "Ebon Hand",
        itemId = 19170,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17011, name = "Lava Core", count = 4 },
            { itemId = 17010, name = "Fiery Core", count = 7 },
            { itemId = 12360, name = "Arcanite Bar", count = 12 },
            { itemId = 11371, name = "Dark Iron Bar", count = 8 },
            { itemId = 12800, name = "Azerothian Diamond", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19210,
            cost = 120000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blackguard (300)
    {
        id = 23652,
        name = "Blackguard",
        itemId = 19168,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17011, name = "Lava Core", count = 6 },
            { itemId = 17010, name = "Fiery Core", count = 6 },
            { itemId = 12360, name = "Arcanite Bar", count = 10 },
            { itemId = 11371, name = "Dark Iron Bar", count = 6 },
            { itemId = 12809, name = "Guardian Stone", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19211,
            cost = 120000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Nightfall (300)
    {
        id = 23653,
        name = "Nightfall",
        itemId = 19169,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17011, name = "Lava Core", count = 8 },
            { itemId = 17010, name = "Fiery Core", count = 5 },
            { itemId = 12360, name = "Arcanite Bar", count = 10 },
            { itemId = 11371, name = "Dark Iron Bar", count = 12 },
            { itemId = 12364, name = "Huge Emerald", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19212,
            cost = 120000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bloodsoul Breastplate (300)
    {
        id = 24136,
        name = "Bloodsoul Breastplate",
        itemId = 19690,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 19774, name = "Souldarite", count = 10 },
            { itemId = 19726, name = "Bloodvine", count = 2 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Revered",
            itemId = 19776,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bloodsoul Shoulders (300)
    {
        id = 24137,
        name = "Bloodsoul Shoulders",
        itemId = 19691,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 16 },
            { itemId = 19774, name = "Souldarite", count = 8 },
            { itemId = 19726, name = "Bloodvine", count = 2 },
            { itemId = 7910, name = "Star Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Honored",
            itemId = 19777,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bloodsoul Gauntlets (300)
    {
        id = 24138,
        name = "Bloodsoul Gauntlets",
        itemId = 19692,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 12 },
            { itemId = 19774, name = "Souldarite", count = 6 },
            { itemId = 19726, name = "Bloodvine", count = 2 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Friendly",
            itemId = 19778,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Darksoul Breastplate (300)
    {
        id = 24139,
        name = "Darksoul Breastplate",
        itemId = 19693,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 19774, name = "Souldarite", count = 14 },
            { itemId = 12799, name = "Large Opal", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Revered",
            itemId = 19779,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Darksoul Leggings (300)
    {
        id = 24140,
        name = "Darksoul Leggings",
        itemId = 19694,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 18 },
            { itemId = 19774, name = "Souldarite", count = 12 },
            { itemId = 12799, name = "Large Opal", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Honored",
            itemId = 19780,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Darksoul Shoulders (300)
    {
        id = 24141,
        name = "Darksoul Shoulders",
        itemId = 19695,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 16 },
            { itemId = 19774, name = "Souldarite", count = 10 },
            { itemId = 12799, name = "Large Opal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Friendly",
            itemId = 19781,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Iron Boots (300)
    {
        id = 24399,
        name = "Dark Iron Boots",
        itemId = 20039,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17011, name = "Lava Core", count = 3 },
            { itemId = 17010, name = "Fiery Core", count = 3 },
            { itemId = 17012, name = "Core Leather", count = 4 },
            { itemId = 11371, name = "Dark Iron Bar", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20040,
            cost = 80000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Darkrune Gauntlets (300)
    {
        id = 24912,
        name = "Darkrune Gauntlets",
        itemId = 20549,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 12 },
            { itemId = 20520, name = "Dark Rune", count = 6 },
            { itemId = 6037, name = "Truesilver Bar", count = 6 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20553,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Darkrune Helm (300)
    {
        id = 24913,
        name = "Darkrune Helm",
        itemId = 20551,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 16 },
            { itemId = 20520, name = "Dark Rune", count = 8 },
            { itemId = 6037, name = "Truesilver Bar", count = 8 },
            { itemId = 11754, name = "Black Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20555,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Darkrune Breastplate (300)
    {
        id = 24914,
        name = "Darkrune Breastplate",
        itemId = 20550,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 20520, name = "Dark Rune", count = 10 },
            { itemId = 6037, name = "Truesilver Bar", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20554,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Obsidian Belt (300)
    {
        id = 27585,
        name = "Heavy Obsidian Belt",
        itemId = 22197,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22202, name = "Small Obsidian Shard", count = 14 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 4 },
            { itemId = 7076, name = "Essence of Earth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Friendly",
            itemId = 22209,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Jagged Obsidian Shield (300)
    {
        id = 27586,
        name = "Jagged Obsidian Shield",
        itemId = 22198,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22203, name = "Large Obsidian Shard", count = 8 },
            { itemId = 22202, name = "Small Obsidian Shard", count = 24 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 8 },
            { itemId = 7076, name = "Essence of Earth", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Revered",
            itemId = 22219,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Thick Obsidian Breastplate (300)
    {
        id = 27587,
        name = "Thick Obsidian Breastplate",
        itemId = 22196,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22203, name = "Large Obsidian Shard", count = 18 },
            { itemId = 22202, name = "Small Obsidian Shard", count = 40 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 12 },
            { itemId = 7076, name = "Essence of Earth", count = 10 },
            { itemId = 12364, name = "Huge Emerald", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 22222,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Light Obsidian Belt (300)
    {
        id = 27588,
        name = "Light Obsidian Belt",
        itemId = 22195,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22202, name = "Small Obsidian Shard", count = 14 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Honored",
            itemId = 22214,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Grasp of the Destroyer (300)
    {
        id = 27589,
        name = "Black Grasp of the Destroyer",
        itemId = 22194,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22203, name = "Large Obsidian Shard", count = 8 },
            { itemId = 22202, name = "Small Obsidian Shard", count = 24 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 13512, name = "Flask of Supreme Power", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 22220,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Mail Tunic (300)
    {
        id = 27590,
        name = "Obsidian Mail Tunic",
        itemId = 22191,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22203, name = "Large Obsidian Shard", count = 15 },
            { itemId = 22202, name = "Small Obsidian Shard", count = 36 },
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 12809, name = "Guardian Stone", count = 10 },
            { itemId = 12800, name = "Azerothian Diamond", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Exalted",
            itemId = 22221,
            cost = 80000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Titanic Leggings (300)
    {
        id = 27829,
        name = "Titanic Leggings",
        itemId = 22385,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 12 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 20 },
            { itemId = 7076, name = "Essence of Earth", count = 10 },
            { itemId = 13510, name = "Flask of the Titans", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 22388,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Persuader (300)
    {
        id = 27830,
        name = "Persuader",
        itemId = 22384,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 15 },
            { itemId = 11371, name = "Dark Iron Bar", count = 10 },
            { itemId = 12808, name = "Essence of Undeath", count = 20 },
            { itemId = 20520, name = "Dark Rune", count = 20 },
            { itemId = 15417, name = "Devilsaur Leather", count = 10 },
            { itemId = 12753, name = "Skin of Shadow", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 22390,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Sageblade (300)
    {
        id = 27832,
        name = "Sageblade",
        itemId = 22383,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 12 },
            { itemId = 20725, name = "Nexus Crystal", count = 2 },
            { itemId = 13512, name = "Flask of Supreme Power", count = 2 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 22389,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Icebane Breastplate (300)
    {
        id = 28242,
        name = "Icebane Breastplate",
        itemId = 22669,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22682, name = "Frozen Rune", count = 7 },
            { itemId = 12359, name = "Thorium Bar", count = 16 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Exalted",
            itemId = 22703,
            cost = 150000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Icebane Gauntlets (300)
    {
        id = 28243,
        name = "Icebane Gauntlets",
        itemId = 22670,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22682, name = "Frozen Rune", count = 5 },
            { itemId = 12359, name = "Thorium Bar", count = 12 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Revered",
            itemId = 22704,
            cost = 150000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Icebane Bracers (300)
    {
        id = 28244,
        name = "Icebane Bracers",
        itemId = 22671,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22682, name = "Frozen Rune", count = 4 },
            { itemId = 12359, name = "Thorium Bar", count = 12 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 749,
            factionName = "Hydraxian Waterlords",
            level = "Revered",
            itemId = 22705,
            cost = 150000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ironvine Breastplate (300)
    {
        id = 28461,
        name = "Ironvine Breastplate",
        itemId = 22762,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 12 },
            { itemId = 19726, name = "Bloodvine", count = 2 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 12803, name = "Living Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Revered",
            itemId = 22766,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ironvine Gloves (300)
    {
        id = 28462,
        name = "Ironvine Gloves",
        itemId = 22763,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 8 },
            { itemId = 19726, name = "Bloodvine", count = 1 },
            { itemId = 12803, name = "Living Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Honored",
            itemId = 22767,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ironvine Belt (300)
    {
        id = 28463,
        name = "Ironvine Belt",
        itemId = 22764,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 6 },
            { itemId = 12803, name = "Living Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Friendly",
            itemId = 22768,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tempered Dark Iron Plate (305)
    {
        id = 461667,
        name = "Tempered Dark Iron Plate",
        itemId = 227871,
        skillRequired = 305,
        skillRange = { orange = 0, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 20 },
            { itemId = 7077, name = "Heart of Fire", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Finely-Enchanted Battlehammer (305)
    {
        id = 461733,
        name = "Finely-Enchanted Battlehammer",
        itemId = 227880,
        skillRequired = 305,
        skillRange = { orange = 0, yellow = 305, green = 317, gray = 330 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 6 },
            { itemId = 12364, name = "Huge Emerald", count = 2 },
            { itemId = 12804, name = "Powerful Mojo", count = 4 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fiery Plate Gauntlets of the Hidden Technique (310)
    {
        id = 461651,
        name = "Fiery Plate Gauntlets of the Hidden Technique",
        itemId = 227865,
        skillRequired = 310,
        skillRange = { orange = 0, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 6 },
            { itemId = 7078, name = "Essence of Fire", count = 2 },
            { itemId = 7910, name = "Star Ruby", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tranquility (310)
    {
        id = 461718,
        name = "Tranquility",
        itemId = 227881,
        skillRequired = 310,
        skillRange = { orange = 0, yellow = 310, green = 322, gray = 335 },
        reagents = {
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 6 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 12804, name = "Powerful Mojo", count = 4 },
            { itemId = 12799, name = "Large Opal", count = 2 },
            { itemId = 12361, name = "Blue Sapphire", count = 2 },
            { itemId = 12364, name = "Huge Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Desecration (315)
    {
        id = 461714,
        name = "Desecration",
        itemId = 227857,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 327, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 40 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 12662, name = "Demonic Rune", count = 16 },
            { itemId = 12808, name = "Essence of Undeath", count = 8 },
            { itemId = 12361, name = "Blue Sapphire", count = 2 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tempest Gauntlets (315)
    {
        id = 461737,
        name = "Tempest Gauntlets",
        itemId = 227870,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 4 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
            { itemId = 12361, name = "Blue Sapphire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Grinding Stone (315)
    {
        id = 1213643,
        name = "Obsidian Grinding Stone",
        itemId = 234004,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 22202, name = "Small Obsidian Shard", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Skyrider's Masterwork Stormhammer (320)
    {
        id = 461647,
        name = "Skyrider's Masterwork Stormhammer",
        itemId = 227886,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12794, name = "Masterwork Stormhammer", count = 1 },
            { itemId = 18262, name = "Elemental Sharpening Stone", count = 10 },
            { itemId = 12360, name = "Arcanite Bar", count = 15 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Refined Arcanite Champion (320)
    {
        id = 461669,
        name = "Refined Arcanite Champion",
        itemId = 228125,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12790, name = "Arcanite Champion", count = 1 },
            { itemId = 18262, name = "Elemental Sharpening Stone", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Stronger-hold Gauntlets (320)
    {
        id = 461671,
        name = "Stronger-hold Gauntlets",
        itemId = 227885,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 15 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 20 },
            { itemId = 7076, name = "Essence of Earth", count = 10 },
            { itemId = 12361, name = "Blue Sapphire", count = 4 },
            { itemId = 12799, name = "Large Opal", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Refined Arcanite Reaper (320)
    {
        id = 461675,
        name = "Refined Arcanite Reaper",
        itemId = 227845,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12784, name = "Arcanite Reaper", count = 1 },
            { itemId = 18262, name = "Elemental Sharpening Stone", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Refined Hammer of the Titans (320)
    {
        id = 461712,
        name = "Refined Hammer of the Titans",
        itemId = 228230,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12796, name = "Hammer of the Titans", count = 1 },
            { itemId = 18262, name = "Elemental Sharpening Stone", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Deadly Heartseeker (320)
    {
        id = 461716,
        name = "Deadly Heartseeker",
        itemId = 227884,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 10 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 10 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 7910, name = "Star Ruby", count = 6 },
            { itemId = 12800, name = "Azerothian Diamond", count = 6 },
            { itemId = 12799, name = "Large Opal", count = 6 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Hardened Frostguard (320)
    {
        id = 461730,
        name = "Hardened Frostguard",
        itemId = 227887,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12797, name = "Frostguard", count = 1 },
            { itemId = 18262, name = "Elemental Sharpening Stone", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Invincible Mail (320)
    {
        id = 461735,
        name = "Invincible Mail",
        itemId = 227876,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 30 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 30 },
            { itemId = 12364, name = "Huge Emerald", count = 6 },
            { itemId = 12800, name = "Azerothian Diamond", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Warcrest of the Great Chief (320)
    {
        id = 461739,
        name = "Warcrest of the Great Chief",
        itemId = 227872,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 40 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 4 },
            { itemId = 8168, name = "Jet Black Feather", count = 60 },
            { itemId = 12799, name = "Large Opal", count = 6 },
            { itemId = 12364, name = "Huge Emerald", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Sageblade of the Archmagus (320)
    {
        id = 461743,
        name = "Sageblade of the Archmagus",
        itemId = 227850,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 12 },
            { itemId = 20725, name = "Nexus Crystal", count = 2 },
            { itemId = 13512, name = "Flask of Supreme Power", count = 2 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Razorspike Headcage (320)
    {
        id = 1213481,
        name = "Razorspike Headcage",
        itemId = 233795,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 15 },
            { itemId = 234003, name = "Obsidian-Infused Thorium Bar", count = 3 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 8146, name = "Wicked Claw", count = 10 },
            { itemId = 234006, name = "Monstrous Silithid Chitin", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Razorspike Shoulderplate (320)
    {
        id = 1213484,
        name = "Razorspike Shoulderplate",
        itemId = 233793,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 15 },
            { itemId = 234003, name = "Obsidian-Infused Thorium Bar", count = 3 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 8146, name = "Wicked Claw", count = 10 },
            { itemId = 234006, name = "Monstrous Silithid Chitin", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Razorspike Battleplate (320)
    {
        id = 1213490,
        name = "Razorspike Battleplate",
        itemId = 233492,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 20 },
            { itemId = 234003, name = "Obsidian-Infused Thorium Bar", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 8146, name = "Wicked Claw", count = 10 },
            { itemId = 234006, name = "Monstrous Silithid Chitin", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Reaver (320)
    {
        id = 1213492,
        name = "Obsidian Reaver",
        itemId = 233491,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 40 },
            { itemId = 234003, name = "Obsidian-Infused Thorium Bar", count = 10 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 234004, name = "Obsidian Grinding Stone", count = 6 },
            { itemId = 20873, name = "Alabaster Idol", count = 4 },
            { itemId = 20882, name = "Idol of War", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Reaver (320)
    {
        id = 1213492,
        name = "Obsidian Reaver",
        itemId = 233491,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 40 },
            { itemId = 234003, name = "Obsidian-Infused Thorium Bar", count = 10 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 234004, name = "Obsidian Grinding Stone", count = 6 },
            { itemId = 20873, name = "Alabaster Idol", count = 4 },
            { itemId = 20882, name = "Idol of War", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Champion (320)
    {
        id = 1213498,
        name = "Obsidian Champion",
        itemId = 233490,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 40 },
            { itemId = 234003, name = "Obsidian-Infused Thorium Bar", count = 10 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 234004, name = "Obsidian Grinding Stone", count = 6 },
            { itemId = 20872, name = "Vermillion Idol", count = 4 },
            { itemId = 20879, name = "Idol of Life", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Destroyer (320)
    {
        id = 1213500,
        name = "Obsidian Destroyer",
        itemId = 233796,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 40 },
            { itemId = 234003, name = "Obsidian-Infused Thorium Bar", count = 10 },
            { itemId = 234004, name = "Obsidian Grinding Stone", count = 8 },
            { itemId = 20873, name = "Alabaster Idol", count = 4 },
            { itemId = 20872, name = "Vermillion Idol", count = 4 },
            { itemId = 20875, name = "Idol of Night", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Stormhammer (320)
    {
        id = 1213502,
        name = "Obsidian Stormhammer",
        itemId = 233797,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 30 },
            { itemId = 234003, name = "Obsidian-Infused Thorium Bar", count = 8 },
            { itemId = 12810, name = "Enchanted Leather", count = 5 },
            { itemId = 234004, name = "Obsidian Grinding Stone", count = 6 },
            { itemId = 20871, name = "Obsidian Idol", count = 3 },
            { itemId = 20878, name = "Idol of Rebirth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Sageblade (320)
    {
        id = 1213504,
        name = "Obsidian Sageblade",
        itemId = 233798,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 30 },
            { itemId = 234003, name = "Obsidian-Infused Thorium Bar", count = 8 },
            { itemId = 20725, name = "Nexus Crystal", count = 3 },
            { itemId = 234004, name = "Obsidian Grinding Stone", count = 3 },
            { itemId = 20871, name = "Obsidian Idol", count = 3 },
            { itemId = 20877, name = "Idol of the Sage", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Defender (320)
    {
        id = 1213506,
        name = "Obsidian Defender",
        itemId = 233801,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 30 },
            { itemId = 234003, name = "Obsidian-Infused Thorium Bar", count = 8 },
            { itemId = 234004, name = "Obsidian Grinding Stone", count = 6 },
            { itemId = 20872, name = "Vermillion Idol", count = 3 },
            { itemId = 20871, name = "Obsidian Idol", count = 3 },
            { itemId = 20874, name = "Idol of the Sun", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ironvine Belt (320)
    {
        id = 1213709,
        name = "Ironvine Belt",
        itemId = 234288,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 8 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 19726, name = "Bloodvine", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ironvine Gloves (320)
    {
        id = 1213711,
        name = "Ironvine Gloves",
        itemId = 234290,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 12 },
            { itemId = 19726, name = "Bloodvine", count = 4 },
            { itemId = 12803, name = "Living Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ironvine Breastplate (320)
    {
        id = 1213715,
        name = "Ironvine Breastplate",
        itemId = 234292,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 14 },
            { itemId = 19726, name = "Bloodvine", count = 8 },
            { itemId = 12360, name = "Arcanite Bar", count = 8 },
            { itemId = 12803, name = "Living Essence", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Obsidian Belt (320)
    {
        id = 1213746,
        name = "Heavy Obsidian Belt",
        itemId = 234319,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22202, name = "Small Obsidian Shard", count = 14 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 4 },
            { itemId = 7076, name = "Essence of Earth", count = 2 },
            { itemId = 19726, name = "Bloodvine", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Light Obsidian Belt (320)
    {
        id = 1213748,
        name = "Light Obsidian Belt",
        itemId = 234321,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22202, name = "Small Obsidian Shard", count = 14 },
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
            { itemId = 19726, name = "Bloodvine", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Heartseeker (320)
    {
        id = 1214137,
        name = "Obsidian Heartseeker",
        itemId = 234428,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 30 },
            { itemId = 234003, name = "Obsidian-Infused Thorium Bar", count = 8 },
            { itemId = 234004, name = "Obsidian Grinding Stone", count = 6 },
            { itemId = 20871, name = "Obsidian Idol", count = 3 },
            { itemId = 20867, name = "Onyx Idol", count = 3 },
            { itemId = 20876, name = "Idol of Death", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Grasp of the Destroyer (320)
    {
        id = 1214257,
        name = "Black Grasp of the Destroyer",
        itemId = 234086,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22203, name = "Large Obsidian Shard", count = 8 },
            { itemId = 22202, name = "Small Obsidian Shard", count = 24 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 13512, name = "Flask of Supreme Power", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Jagged Obsidian Shield (320)
    {
        id = 1214270,
        name = "Jagged Obsidian Shield",
        itemId = 234459,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22203, name = "Large Obsidian Shard", count = 8 },
            { itemId = 22202, name = "Small Obsidian Shard", count = 24 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 8 },
            { itemId = 7076, name = "Essence of Earth", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Mail Tunic (320)
    {
        id = 1214274,
        name = "Obsidian Mail Tunic",
        itemId = 234460,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22203, name = "Large Obsidian Shard", count = 15 },
            { itemId = 22202, name = "Small Obsidian Shard", count = 36 },
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 12809, name = "Guardian Stone", count = 10 },
            { itemId = 12800, name = "Azerothian Diamond", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dreamscale Visor (320)
    {
        id = 1214309,
        name = "Dreamscale Visor",
        itemId = 234487,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 20 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 8146, name = "Wicked Claw", count = 8 },
            { itemId = 20381, name = "Dreamscale", count = 8 },
            { itemId = 12803, name = "Living Essence", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Thick Obsidian Breastplate (320)
    {
        id = 1215507,
        name = "Thick Obsidian Breastplate",
        itemId = 235040,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22203, name = "Large Obsidian Shard", count = 18 },
            { itemId = 22202, name = "Small Obsidian Shard", count = 40 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 12 },
            { itemId = 7076, name = "Essence of Earth", count = 10 },
            { itemId = 12364, name = "Huge Emerald", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Icebane Breastplate (320)
    {
        id = 1223787,
        name = "Icebane Breastplate",
        itemId = 236695,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 7 },
            { itemId = 12359, name = "Thorium Bar", count = 16 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Icebane Gauntlets (320)
    {
        id = 1223789,
        name = "Icebane Gauntlets",
        itemId = 236697,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 5 },
            { itemId = 12359, name = "Thorium Bar", count = 12 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Icebane Bracers (320)
    {
        id = 1223791,
        name = "Icebane Bracers",
        itemId = 236696,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 4 },
            { itemId = 12359, name = "Thorium Bar", count = 12 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Sulfuron Hammer (325)
    {
        id = 460460,
        name = "Sulfuron Hammer",
        itemId = 227684,
        skillRequired = 325,
        skillRange = { orange = 0, yellow = 325, green = 337, gray = 350 },
        reagents = {
            { itemId = 17203, name = "Sulfuron Ingot", count = 8 },
            { itemId = 11371, name = "Dark Iron Bar", count = 20 },
            { itemId = 12360, name = "Arcanite Bar", count = 50 },
            { itemId = 7078, name = "Essence of Fire", count = 25 },
            { itemId = 11382, name = "Blood of the Mountain", count = 10 },
            { itemId = 17011, name = "Lava Core", count = 10 },
            { itemId = 17010, name = "Fiery Core", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
}

CraftLib:RegisterProfession("blacksmithing", {
    id = C.PROFESSION_ID.BLACKSMITHING,
    name = "Blacksmithing",
    expansion = C.EXPANSION.SOD,
    flavor = "SOD",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
