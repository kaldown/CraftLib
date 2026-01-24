-- Data/TBC/Blacksmithing/Recipes.lua
-- Blacksmithing recipes for TBC Classic
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
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 3470, name = "Rough Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3609,
            cost = 100,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Copper Longsword (35)
    {
        id = 43549,
        name = "Heavy Copper Longsword",
        itemId = 33791,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 75, green = 95, gray = 115 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 10 },
            { itemId = 818, name = "Tigerseye", count = 1 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 33792,
            cost = 100,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3610,
            cost = 200,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ironforge Chain (70)
    {
        id = 8366,
        name = "Ironforge Chain",
        itemId = 6730,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 110, green = 130, gray = 150 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 12 },
            { itemId = 774, name = "Malachite", count = 2 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6734,
            cost = 250,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 2881,
            cost = 600,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6735,
            cost = 600,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Thick Bronze Darts (100)
    {
        id = 34979,
        name = "Thick Bronze Darts",
        itemId = 29201,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 130, green = 145, gray = 160 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 6 },
            { itemId = 3470, name = "Rough Grinding Stone", count = 2 },
            { itemId = 2319, name = "Medium Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 3478, name = "Coarse Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Rough Bronze Bracers (115)
    {
        id = 2671,
        name = "Rough Bronze Bracers",
        itemId = 2867,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 145, green = 160, gray = 175 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 5577,
            cost = 1200,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 2883,
            cost = 1500,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 2882,
            cost = 1200,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 5578,
            cost = 1200,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 5543,
            cost = 1800,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ironforge Gauntlets (140)
    {
        id = 8368,
        name = "Ironforge Gauntlets",
        itemId = 6733,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 170, green = 185, gray = 200 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 8 },
            { itemId = 1210, name = "Shadowgem", count = 3 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6736,
            cost = 1800,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3608,
            cost = 2000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Green Iron Boots (145)
    {
        id = 3334,
        name = "Green Iron Boots",
        itemId = 3484,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 175, green = 190, gray = 205 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 6 },
            { itemId = 3478, name = "Coarse Grinding Stone", count = 2 },
            { itemId = 2605, name = "Green Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3611,
            cost = 2000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3612,
            cost = 2000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6044,
            cost = 1800,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10424,
            cost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3870,
            cost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7978,
            cost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7979,
            cost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6045,
            cost = 2600,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3867,
            cost = 3800,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3872,
            cost = 3200,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3866,
            cost = 4000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3871,
            cost = 3400,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7980,
            cost = 3400,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7981,
            cost = 4400,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3874,
            cost = 4400,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7982,
            cost = 4400,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6046,
            cost = 3800,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12261,
            cost = 3800,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 17706,
            cost = 3800,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3873,
            cost = 4400,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3868,
            cost = 5000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3869,
            cost = 5000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 3875,
            cost = 5000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Whirling Steel Axes (200)
    {
        id = 34981,
        name = "Whirling Steel Axes",
        itemId = 29202,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 5 },
            { itemId = 7069, name = "Elemental Air", count = 2 },
            { itemId = 3486, name = "Heavy Grinding Stone", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9367,
            cost = 5000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7975,
            cost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7995,
            cost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7976,
            cost = 8000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Mithril Scale Gloves (220)
    {
        id = 9942,
        name = "Mithril Scale Gloves",
        itemId = 7925,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 250, gray = 260 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 8 },
            { itemId = 4234, name = "Heavy Leather", count = 6 },
            { itemId = 4338, name = "Mageweave Cloth", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7977,
            cost = 8000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7983,
            cost = 8000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7984,
            cost = 8000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7992,
            cost = 8000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ornate Mithril Shoulder (225)
    {
        id = 9952,
        name = "Ornate Mithril Shoulder",
        itemId = 7928,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 12 },
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
            { itemId = 4304, name = "Thick Leather", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7985,
            cost = 8000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 8029,
            cost = 8000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7994,
            cost = 8000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7989,
            cost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7991,
            cost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7986,
            cost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7993,
            cost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7990,
            cost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 6037, name = "Truesilver Bar", count = 12 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
            { itemId = 7971, name = "Black Pearl", count = 2 },
            { itemId = 7966, name = "Solid Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7988,
            cost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 7966, name = "Solid Grinding Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7987,
            cost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 8028,
            cost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12682,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12683,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12684,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12685,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Thorium Greatsword (260)
    {
        id = 16960,
        name = "Thorium Greatsword",
        itemId = 12764,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 285, green = 297, gray = 310 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 16 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12816,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Earthforged Leggings (260)
    {
        id = 36122,
        name = "Earthforged Leggings",
        itemId = 30069,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 16 },
            { itemId = 7075, name = "Core of Earth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Windforged Leggings (260)
    {
        id = 36124,
        name = "Windforged Leggings",
        itemId = 30070,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 16 },
            { itemId = 7081, name = "Breath of Wind", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Light Earthforged Blade (260)
    {
        id = 36125,
        name = "Light Earthforged Blade",
        itemId = 30071,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 12 },
            { itemId = 7075, name = "Core of Earth", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Light Skyforged Axe (260)
    {
        id = 36126,
        name = "Light Skyforged Axe",
        itemId = 30072,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 12 },
            { itemId = 7081, name = "Breath of Wind", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Light Emberforged Hammer (260)
    {
        id = 36128,
        name = "Light Emberforged Hammer",
        itemId = 30073,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 12 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 11610,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Imperial Plate Shoulders (265)
    {
        id = 16646,
        name = "Imperial Plate Shoulders",
        itemId = 12428,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 12 },
            { itemId = 8170, name = "Rugged Leather", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12687,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Imperial Plate Belt (265)
    {
        id = 16647,
        name = "Imperial Plate Belt",
        itemId = 12424,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 10 },
            { itemId = 8170, name = "Rugged Leather", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12688,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 11614,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12689,
            cost = 14000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Imperial Plate Bracers (270)
    {
        id = 16649,
        name = "Imperial Plate Bracers",
        itemId = 12425,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12690,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12691,
            cost = 16000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Bleakwood Hew (270)
    {
        id = 16965,
        name = "Bleakwood Hew",
        itemId = 12769,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 295, green = 307, gray = 320 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 30 },
            { itemId = 12803, name = "Living Essence", count = 6 },
            { itemId = 8153, name = "Wildvine", count = 6 },
            { itemId = 12799, name = "Large Opal", count = 6 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12817,
            cost = 16000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Inlaid Thorium Hammer (270)
    {
        id = 16967,
        name = "Inlaid Thorium Hammer",
        itemId = 12772,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 295, green = 307, gray = 320 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 30 },
            { itemId = 3577, name = "Gold Bar", count = 4 },
            { itemId = 6037, name = "Truesilver Bar", count = 2 },
            { itemId = 12361, name = "Blue Sapphire", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12818,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 11611,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12692,
            cost = 16000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12821,
            cost = 16000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 11615,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12693,
            cost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12694,
            cost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12824,
            cost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12825,
            cost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 11612,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12695,
            cost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12696,
            cost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Rune Edge (285)
    {
        id = 16980,
        name = "Rune Edge",
        itemId = 12779,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 310, green = 322, gray = 335 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 30 },
            { itemId = 12799, name = "Large Opal", count = 2 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12826,
            cost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12827,
            cost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12699,
            cost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12697,
            cost = 22000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12698,
            cost = 22000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12828,
            cost = 22000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12830,
            cost = 22000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Imperial Plate Boots (295)
    {
        id = 16657,
        name = "Imperial Plate Boots",
        itemId = 12426,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 18 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12700,
            cost = 25000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Imperial Plate Helm (295)
    {
        id = 16658,
        name = "Imperial Plate Helm",
        itemId = 12427,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 18 },
            { itemId = 7910, name = "Star Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12701,
            cost = 25000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12702,
            cost = 25000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12702,
            cost = 25000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12703,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12704,
            cost = 30000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Imperial Plate Chest (300)
    {
        id = 16663,
        name = "Imperial Plate Chest",
        itemId = 12422,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12705,
            cost = 30000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12706,
            cost = 30000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12707,
            cost = 30000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12711,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12713,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12714,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12716,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12717,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Imperial Plate Leggings (300)
    {
        id = 16730,
        name = "Imperial Plate Leggings",
        itemId = 12429,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 24 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12715,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12718,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12719,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12720,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12725,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12726,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12727,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12728,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Blood Talon (300)
    {
        id = 16986,
        name = "Blood Talon",
        itemId = 12795,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 325, green = 337, gray = 350 },
        reagents = {
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 10 },
            { itemId = 12360, name = "Arcanite Bar", count = 10 },
            { itemId = 12662, name = "Demonic Rune", count = 8 },
            { itemId = 7910, name = "Star Ruby", count = 10 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12831,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Darkspear (300)
    {
        id = 16987,
        name = "Darkspear",
        itemId = 12802,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 325, green = 337, gray = 350 },
        reagents = {
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 20 },
            { itemId = 12804, name = "Powerful Mojo", count = 20 },
            { itemId = 12364, name = "Huge Emerald", count = 2 },
            { itemId = 12800, name = "Azerothian Diamond", count = 2 },
            { itemId = 12644, name = "Dense Grinding Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12832,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12833,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12834,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12835,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12836,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12837,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12838,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12839,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18592,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20553,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20555,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20554,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22222,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22220,
            cost = 50000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fel Iron Plate Gloves (300)
    {
        id = 29545,
        name = "Fel Iron Plate Gloves",
        itemId = 23482,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fel Iron Chain Coif (300)
    {
        id = 29551,
        name = "Fel Iron Chain Coif",
        itemId = 23493,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fel Sharpening Stone (300)
    {
        id = 29654,
        name = "Fel Sharpening Stone",
        itemId = 23528,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 300, green = 305, gray = 310 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 1 },
            { itemId = 22573, name = "Mote of Earth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fel Iron Rod (300)
    {
        id = 32655,
        name = "Fel Iron Rod",
        itemId = 25843,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 300, green = 305, gray = 310 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fel Weightstone (300)
    {
        id = 34607,
        name = "Fel Weightstone",
        itemId = 28420,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 300, green = 305, gray = 310 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 1 },
            { itemId = 21877, name = "Netherweave Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchanted Thorium Blades (300)
    {
        id = 34982,
        name = "Enchanted Thorium Blades",
        itemId = 29203,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 2 },
            { itemId = 12359, name = "Thorium Bar", count = 6 },
            { itemId = 8170, name = "Rugged Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fel Iron Plate Belt (305)
    {
        id = 29547,
        name = "Fel Iron Plate Belt",
        itemId = 23484,
        skillRequired = 305,
        skillRange = { orange = 305, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Iron Chain Gloves (310)
    {
        id = 29552,
        name = "Fel Iron Chain Gloves",
        itemId = 23491,
        skillRequired = 310,
        skillRange = { orange = 310, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Iron Hatchet (310)
    {
        id = 29557,
        name = "Fel Iron Hatchet",
        itemId = 23497,
        skillRequired = 310,
        skillRange = { orange = 310, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 9 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Iron Plate Boots (315)
    {
        id = 29548,
        name = "Fel Iron Plate Boots",
        itemId = 23487,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 325, green = 335, gray = 345 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Iron Plate Pants (315)
    {
        id = 29549,
        name = "Fel Iron Plate Pants",
        itemId = 23488,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 325, green = 335, gray = 345 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Iron Chain Bracers (315)
    {
        id = 29553,
        name = "Fel Iron Chain Bracers",
        itemId = 23494,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 325, green = 335, gray = 345 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Iron Hammer (315)
    {
        id = 29558,
        name = "Fel Iron Hammer",
        itemId = 23498,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 325, green = 335, gray = 345 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Iron Chain Tunic (320)
    {
        id = 29556,
        name = "Fel Iron Chain Tunic",
        itemId = 23490,
        skillRequired = 320,
        skillRange = { orange = 320, yellow = 330, green = 340, gray = 350 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 9 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Iron Greatsword (320)
    {
        id = 29565,
        name = "Fel Iron Greatsword",
        itemId = 23499,
        skillRequired = 320,
        skillRange = { orange = 320, yellow = 330, green = 340, gray = 350 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Iron Breastplate (325)
    {
        id = 29550,
        name = "Fel Iron Breastplate",
        itemId = 23489,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 335, green = 345, gray = 355 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Adamantite Maul (325)
    {
        id = 29566,
        name = "Adamantite Maul",
        itemId = 23502,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 335, green = 345, gray = 355 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23590,
            cost = 40000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Lesser Rune of Warding (325)
    {
        id = 32284,
        name = "Lesser Rune of Warding",
        itemId = 23559,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 330, gray = 335 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Adamantite Cleaver (330)
    {
        id = 29568,
        name = "Adamantite Cleaver",
        itemId = 23503,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 340, green = 350, gray = 360 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23591,
            cost = 40000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Adamantite Dagger (330)
    {
        id = 29569,
        name = "Adamantite Dagger",
        itemId = 23504,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 340, green = 350, gray = 360 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 7 },
            { itemId = 21887, name = "Knothide Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23592,
            cost = 40000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Heavy Earthforged Breastplate (330)
    {
        id = 36129,
        name = "Heavy Earthforged Breastplate",
        itemId = 30074,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 340, green = 350, gray = 360 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 8 },
            { itemId = 22452, name = "Primal Earth", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stormforged Hauberk (330)
    {
        id = 36130,
        name = "Stormforged Hauberk",
        itemId = 30076,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 340, green = 350, gray = 360 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 8 },
            { itemId = 21885, name = "Primal Water", count = 2 },
            { itemId = 22451, name = "Primal Air", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Windforged Rapier (330)
    {
        id = 36131,
        name = "Windforged Rapier",
        itemId = 30077,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 340, green = 350, gray = 360 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 6 },
            { itemId = 22451, name = "Primal Air", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stoneforged Claymore (330)
    {
        id = 36133,
        name = "Stoneforged Claymore",
        itemId = 30086,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 340, green = 350, gray = 360 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 10 },
            { itemId = 22452, name = "Primal Earth", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stormforged Axe (330)
    {
        id = 36134,
        name = "Stormforged Axe",
        itemId = 30087,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 340, green = 350, gray = 360 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 8 },
            { itemId = 21885, name = "Primal Water", count = 3 },
            { itemId = 22451, name = "Primal Air", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Skyforged Great Axe (330)
    {
        id = 36135,
        name = "Skyforged Great Axe",
        itemId = 30088,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 340, green = 350, gray = 360 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 10 },
            { itemId = 22451, name = "Primal Air", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Lavaforged Warhammer (330)
    {
        id = 36136,
        name = "Lavaforged Warhammer",
        itemId = 30089,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 340, green = 350, gray = 360 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 8 },
            { itemId = 21884, name = "Primal Fire", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Great Earthforged Hammer (330)
    {
        id = 36137,
        name = "Great Earthforged Hammer",
        itemId = 30093,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 340, green = 350, gray = 360 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 12 },
            { itemId = 22452, name = "Primal Earth", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Adamantite Rapier (335)
    {
        id = 29571,
        name = "Adamantite Rapier",
        itemId = 23505,
        skillRequired = 335,
        skillRange = { orange = 335, yellow = 345, green = 355, gray = 365 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23593,
            cost = 40000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Adamantite Plate Bracers (335)
    {
        id = 29603,
        name = "Adamantite Plate Bracers",
        itemId = 23506,
        skillRequired = 335,
        skillRange = { orange = 335, yellow = 345, green = 355, gray = 365 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 6 },
            { itemId = 22452, name = "Primal Earth", count = 2 },
            { itemId = 21884, name = "Primal Fire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23594,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Adamantite Plate Gloves (335)
    {
        id = 29605,
        name = "Adamantite Plate Gloves",
        itemId = 23508,
        skillRequired = 335,
        skillRange = { orange = 335, yellow = 345, green = 355, gray = 365 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 8 },
            { itemId = 21887, name = "Knothide Leather", count = 2 },
            { itemId = 22452, name = "Primal Earth", count = 3 },
            { itemId = 21884, name = "Primal Fire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23595,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Adamantite Weapon Chain (335)
    {
        id = 42688,
        name = "Adamantite Weapon Chain",
        itemId = 33185,
        skillRequired = 335,
        skillRange = { orange = 335, yellow = 345, green = 350, gray = 355 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 2 },
            { itemId = 23449, name = "Khorium Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 35296,
            cost = 3800,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Adamantite Breastplate (340)
    {
        id = 29606,
        name = "Adamantite Breastplate",
        itemId = 23507,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 350, green = 360, gray = 370 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 12 },
            { itemId = 22452, name = "Primal Earth", count = 4 },
            { itemId = 21884, name = "Primal Fire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23596,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Lesser Ward of Shielding (340)
    {
        id = 29728,
        name = "Lesser Ward of Shielding",
        itemId = 23575,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 340, green = 345, gray = 350 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23638,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Flamebane Bracers (350)
    {
        id = 29614,
        name = "Flamebane Bracers",
        itemId = 23515,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 6 },
            { itemId = 21885, name = "Primal Water", count = 3 },
            { itemId = 21884, name = "Primal Fire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 932,
            factionName = "The Aldor",
            level = "Friendly",
            itemId = 23601,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Adamantite Sharpening Stone (350)
    {
        id = 29656,
        name = "Adamantite Sharpening Stone",
        itemId = 23529,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 355, gray = 360 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 1 },
            { itemId = 22573, name = "Mote of Earth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Honored",
            itemId = 23618,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Greater Rune of Warding (350)
    {
        id = 32285,
        name = "Greater Rune of Warding",
        itemId = 25521,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 355, gray = 360 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Honored",
            itemId = 25526,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Adamantite Rod (350)
    {
        id = 32656,
        name = "Adamantite Rod",
        itemId = 25844,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 355, gray = 360 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 25846,
            cost = 40000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Nether Chain Shirt (350)
    {
        id = 34529,
        name = "Nether Chain Shirt",
        itemId = 23563,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 22456, name = "Primal Shadow", count = 20 },
            { itemId = 22451, name = "Primal Air", count = 20 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 6 },
            { itemId = 23448, name = "Felsteel Bar", count = 4 },
            { itemId = 23449, name = "Khorium Bar", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Breastplate of Kings (350)
    {
        id = 34533,
        name = "Breastplate of Kings",
        itemId = 28483,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23571, name = "Primal Might", count = 8 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 6 },
            { itemId = 23447, name = "Eternium Bar", count = 6 },
            { itemId = 23449, name = "Khorium Bar", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fireguard (350)
    {
        id = 34535,
        name = "Fireguard",
        itemId = 28425,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 22456, name = "Primal Shadow", count = 20 },
            { itemId = 22457, name = "Primal Mana", count = 20 },
            { itemId = 23448, name = "Felsteel Bar", count = 14 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Lionheart Blade (350)
    {
        id = 34538,
        name = "Lionheart Blade",
        itemId = 28428,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23571, name = "Primal Might", count = 10 },
            { itemId = 23449, name = "Khorium Bar", count = 14 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- The Planar Edge (350)
    {
        id = 34541,
        name = "The Planar Edge",
        itemId = 28431,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23571, name = "Primal Might", count = 5 },
            { itemId = 22456, name = "Primal Shadow", count = 20 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 2 },
            { itemId = 23448, name = "Felsteel Bar", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Lunar Crescent (350)
    {
        id = 34543,
        name = "Lunar Crescent",
        itemId = 28434,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 22451, name = "Primal Air", count = 12 },
            { itemId = 22452, name = "Primal Earth", count = 12 },
            { itemId = 23571, name = "Primal Might", count = 4 },
            { itemId = 23447, name = "Eternium Bar", count = 22 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Drakefist Hammer (350)
    {
        id = 34545,
        name = "Drakefist Hammer",
        itemId = 28437,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 21884, name = "Primal Fire", count = 20 },
            { itemId = 22452, name = "Primal Earth", count = 20 },
            { itemId = 23447, name = "Eternium Bar", count = 12 },
            { itemId = 23449, name = "Khorium Bar", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Thunder (350)
    {
        id = 34547,
        name = "Thunder",
        itemId = 28440,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 22451, name = "Primal Air", count = 20 },
            { itemId = 21885, name = "Primal Water", count = 20 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 6 },
            { itemId = 23449, name = "Khorium Bar", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Adamantite Weightstone (350)
    {
        id = 34608,
        name = "Adamantite Weightstone",
        itemId = 28421,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 355, gray = 360 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 1 },
            { itemId = 21877, name = "Netherweave Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Honored",
            itemId = 28632,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Felsteel Whisper Knives (350)
    {
        id = 34983,
        name = "Felsteel Whisper Knives",
        itemId = 29204,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 6 },
            { itemId = 22451, name = "Primal Air", count = 2 },
            { itemId = 21884, name = "Primal Fire", count = 2 },
            { itemId = 23793, name = "Heavy Knothide Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enchanted Adamantite Belt (355)
    {
        id = 29608,
        name = "Enchanted Adamantite Belt",
        itemId = 23510,
        skillRequired = 355,
        skillRange = { orange = 355, yellow = 365, green = 375, gray = 385 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 2 },
            { itemId = 22445, name = "Arcane Dust", count = 8 },
            { itemId = 22449, name = "Large Prismatic Shard", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Friendly",
            itemId = 23597,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enchanted Adamantite Boots (355)
    {
        id = 29611,
        name = "Enchanted Adamantite Boots",
        itemId = 23511,
        skillRequired = 355,
        skillRange = { orange = 355, yellow = 365, green = 375, gray = 385 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 3 },
            { itemId = 22445, name = "Arcane Dust", count = 12 },
            { itemId = 22449, name = "Large Prismatic Shard", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Honored",
            itemId = 23598,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Flamebane Helm (355)
    {
        id = 29615,
        name = "Flamebane Helm",
        itemId = 23516,
        skillRequired = 355,
        skillRange = { orange = 355, yellow = 365, green = 375, gray = 385 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 12 },
            { itemId = 21885, name = "Primal Water", count = 5 },
            { itemId = 21884, name = "Primal Fire", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 932,
            factionName = "The Aldor",
            level = "Exalted",
            itemId = 23602,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enchanted Adamantite Breastplate (360)
    {
        id = 29610,
        name = "Enchanted Adamantite Breastplate",
        itemId = 23509,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 380, gray = 390 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 4 },
            { itemId = 22445, name = "Arcane Dust", count = 20 },
            { itemId = 22449, name = "Large Prismatic Shard", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Revered",
            itemId = 23599,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Flamebane Gloves (360)
    {
        id = 29616,
        name = "Flamebane Gloves",
        itemId = 23514,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 380, gray = 390 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 8 },
            { itemId = 21885, name = "Primal Water", count = 4 },
            { itemId = 21884, name = "Primal Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 932,
            factionName = "The Aldor",
            level = "Honored",
            itemId = 23603,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Felsteel Gloves (360)
    {
        id = 29619,
        name = "Felsteel Gloves",
        itemId = 23517,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 380, gray = 390 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23605,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Felsteel Leggings (360)
    {
        id = 29620,
        name = "Felsteel Leggings",
        itemId = 23518,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 380, gray = 390 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23606,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Khorium Belt (360)
    {
        id = 29628,
        name = "Khorium Belt",
        itemId = 23524,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 380, gray = 390 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 3 },
            { itemId = 21885, name = "Primal Water", count = 2 },
            { itemId = 22457, name = "Primal Mana", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23608,
            cost = 240000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Khorium Pants (360)
    {
        id = 29629,
        name = "Khorium Pants",
        itemId = 23523,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 380, gray = 390 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 6 },
            { itemId = 21885, name = "Primal Water", count = 4 },
            { itemId = 22457, name = "Primal Mana", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23609,
            cost = 240000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Felsteel Shield Spike (360)
    {
        id = 29657,
        name = "Felsteel Shield Spike",
        itemId = 23530,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 380, gray = 390 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 4 },
            { itemId = 21884, name = "Primal Fire", count = 4 },
            { itemId = 22452, name = "Primal Earth", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 947,
            factionName = "Thrallmar",
            level = "Exalted",
            itemId = 24002,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enchanted Adamantite Leggings (365)
    {
        id = 29613,
        name = "Enchanted Adamantite Leggings",
        itemId = 23512,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 4 },
            { itemId = 22445, name = "Arcane Dust", count = 24 },
            { itemId = 22449, name = "Large Prismatic Shard", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Exalted",
            itemId = 23600,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Flamebane Breastplate (365)
    {
        id = 29617,
        name = "Flamebane Breastplate",
        itemId = 23513,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 16 },
            { itemId = 21885, name = "Primal Water", count = 6 },
            { itemId = 21884, name = "Primal Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 932,
            factionName = "The Aldor",
            level = "Revered",
            itemId = 23604,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Felsteel Helm (365)
    {
        id = 29621,
        name = "Felsteel Helm",
        itemId = 23519,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23607,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Gauntlets of the Iron Tower (365)
    {
        id = 29622,
        name = "Gauntlets of the Iron Tower",
        itemId = 23532,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 10 },
            { itemId = 23571, name = "Primal Might", count = 2 },
            { itemId = 22452, name = "Primal Earth", count = 15 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23621,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Khorium Boots (365)
    {
        id = 29630,
        name = "Khorium Boots",
        itemId = 23525,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 4 },
            { itemId = 21885, name = "Primal Water", count = 3 },
            { itemId = 22457, name = "Primal Mana", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23610,
            cost = 240000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Ragesteel Gloves (365)
    {
        id = 29642,
        name = "Ragesteel Gloves",
        itemId = 23520,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 8 },
            { itemId = 21884, name = "Primal Fire", count = 6 },
            { itemId = 23449, name = "Khorium Bar", count = 3 },
            { itemId = 22824, name = "Elixir of Major Strength", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23611,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Ragesteel Helm (365)
    {
        id = 29643,
        name = "Ragesteel Helm",
        itemId = 23521,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 10 },
            { itemId = 21884, name = "Primal Fire", count = 10 },
            { itemId = 23449, name = "Khorium Bar", count = 4 },
            { itemId = 22824, name = "Elixir of Major Strength", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23612,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Felfury Gauntlets (365)
    {
        id = 29658,
        name = "Felfury Gauntlets",
        itemId = 23531,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 10 },
            { itemId = 23571, name = "Primal Might", count = 3 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23620,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Steelgrip Gauntlets (365)
    {
        id = 29662,
        name = "Steelgrip Gauntlets",
        itemId = 23533,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 10 },
            { itemId = 23571, name = "Primal Might", count = 5 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23622,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Storm Helm (365)
    {
        id = 29663,
        name = "Storm Helm",
        itemId = 23534,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 8 },
            { itemId = 22451, name = "Primal Air", count = 16 },
            { itemId = 21885, name = "Primal Water", count = 16 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23623,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Helm of the Stalwart Defender (365)
    {
        id = 29664,
        name = "Helm of the Stalwart Defender",
        itemId = 23535,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 8 },
            { itemId = 22452, name = "Primal Earth", count = 22 },
            { itemId = 22457, name = "Primal Mana", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23624,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Oathkeeper's Helm (365)
    {
        id = 29668,
        name = "Oathkeeper's Helm",
        itemId = 23536,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 8 },
            { itemId = 23571, name = "Primal Might", count = 3 },
            { itemId = 21886, name = "Primal Life", count = 18 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23625,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Black Felsteel Bracers (365)
    {
        id = 29669,
        name = "Black Felsteel Bracers",
        itemId = 23537,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 6 },
            { itemId = 22456, name = "Primal Shadow", count = 15 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23626,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bracers of the Green Fortress (365)
    {
        id = 29671,
        name = "Bracers of the Green Fortress",
        itemId = 23538,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 6 },
            { itemId = 21886, name = "Primal Life", count = 20 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23627,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Blessed Bracers (365)
    {
        id = 29672,
        name = "Blessed Bracers",
        itemId = 23539,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 6 },
            { itemId = 23571, name = "Primal Might", count = 2 },
            { itemId = 21885, name = "Primal Water", count = 15 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23628,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Felsteel Longblade (365)
    {
        id = 29692,
        name = "Felsteel Longblade",
        itemId = 23540,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 10 },
            { itemId = 23448, name = "Felsteel Bar", count = 10 },
            { itemId = 23571, name = "Primal Might", count = 6 },
            { itemId = 23572, name = "Primal Nether", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23629,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Khorium Champion (365)
    {
        id = 29693,
        name = "Khorium Champion",
        itemId = 23541,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 20 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 2 },
            { itemId = 23571, name = "Primal Might", count = 6 },
            { itemId = 23572, name = "Primal Nether", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23630,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Edged Battleaxe (365)
    {
        id = 29694,
        name = "Fel Edged Battleaxe",
        itemId = 23542,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 10 },
            { itemId = 23448, name = "Felsteel Bar", count = 10 },
            { itemId = 23571, name = "Primal Might", count = 8 },
            { itemId = 23572, name = "Primal Nether", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23631,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Felsteel Reaper (365)
    {
        id = 29695,
        name = "Felsteel Reaper",
        itemId = 23543,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 10 },
            { itemId = 23448, name = "Felsteel Bar", count = 10 },
            { itemId = 23571, name = "Primal Might", count = 8 },
            { itemId = 23572, name = "Primal Nether", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23632,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Runic Hammer (365)
    {
        id = 29696,
        name = "Runic Hammer",
        itemId = 23544,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 10 },
            { itemId = 23448, name = "Felsteel Bar", count = 10 },
            { itemId = 23571, name = "Primal Might", count = 8 },
            { itemId = 23572, name = "Primal Nether", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23633,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Hardened Maul (365)
    {
        id = 29697,
        name = "Fel Hardened Maul",
        itemId = 23546,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 10 },
            { itemId = 23448, name = "Felsteel Bar", count = 10 },
            { itemId = 23571, name = "Primal Might", count = 8 },
            { itemId = 23572, name = "Primal Nether", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23634,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Eternium Runed Blade (365)
    {
        id = 29698,
        name = "Eternium Runed Blade",
        itemId = 23554,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 10 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 4 },
            { itemId = 23447, name = "Eternium Bar", count = 10 },
            { itemId = 23571, name = "Primal Might", count = 8 },
            { itemId = 23572, name = "Primal Nether", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23635,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Dirge (365)
    {
        id = 29699,
        name = "Dirge",
        itemId = 23555,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 10 },
            { itemId = 23448, name = "Felsteel Bar", count = 10 },
            { itemId = 23571, name = "Primal Might", count = 8 },
            { itemId = 23572, name = "Primal Nether", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23636,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Hand of Eternity (365)
    {
        id = 29700,
        name = "Hand of Eternity",
        itemId = 23556,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 10 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 4 },
            { itemId = 23447, name = "Eternium Bar", count = 10 },
            { itemId = 23571, name = "Primal Might", count = 8 },
            { itemId = 23572, name = "Primal Nether", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23637,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Ragesteel Shoulders (365)
    {
        id = 42662,
        name = "Ragesteel Shoulders",
        itemId = 33173,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 12 },
            { itemId = 21884, name = "Primal Fire", count = 2 },
            { itemId = 23449, name = "Khorium Bar", count = 8 },
            { itemId = 27503, name = "Scroll of Strength V", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 33174,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Hammer of Righteous Might (365)
    {
        id = 43846,
        name = "Hammer of Righteous Might",
        itemId = 32854,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 16 },
            { itemId = 23448, name = "Felsteel Bar", count = 12 },
            { itemId = 23571, name = "Primal Might", count = 6 },
            { itemId = 23572, name = "Primal Nether", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 33954,
            cost = 480000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sunblessed Gauntlets (365)
    {
        id = 46140,
        name = "Sunblessed Gauntlets",
        itemId = 34380,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 392, gray = 410 },
        reagents = {
            { itemId = 35128, name = "Hardened Khorium", count = 8 },
            { itemId = 21886, name = "Primal Life", count = 20 },
            { itemId = 23571, name = "Primal Might", count = 6 },
            { itemId = 34664, name = "Sunmote", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 35208,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Hard Khorium Battlefists (365)
    {
        id = 46141,
        name = "Hard Khorium Battlefists",
        itemId = 34378,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 392, gray = 410 },
        reagents = {
            { itemId = 35128, name = "Hardened Khorium", count = 10 },
            { itemId = 21884, name = "Primal Fire", count = 12 },
            { itemId = 22456, name = "Primal Shadow", count = 12 },
            { itemId = 22451, name = "Primal Air", count = 12 },
            { itemId = 34664, name = "Sunmote", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 35209,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sunblessed Breastplate (365)
    {
        id = 46142,
        name = "Sunblessed Breastplate",
        itemId = 34379,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 392, gray = 410 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 20 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 4 },
            { itemId = 21886, name = "Primal Life", count = 15 },
            { itemId = 21885, name = "Primal Water", count = 15 },
            { itemId = 23572, name = "Primal Nether", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 35210,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Hard Khorium Battleplate (365)
    {
        id = 46144,
        name = "Hard Khorium Battleplate",
        itemId = 34377,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 392, gray = 410 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 20 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 4 },
            { itemId = 21884, name = "Primal Fire", count = 10 },
            { itemId = 22456, name = "Primal Shadow", count = 10 },
            { itemId = 23572, name = "Primal Nether", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 35211,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Ragesteel Breastplate (370)
    {
        id = 29645,
        name = "Ragesteel Breastplate",
        itemId = 23522,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 380, green = 390, gray = 400 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 12 },
            { itemId = 21884, name = "Primal Fire", count = 10 },
            { itemId = 23449, name = "Khorium Bar", count = 6 },
            { itemId = 22824, name = "Elixir of Major Strength", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23613,
            cost = 100000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Swiftsteel Gloves (370)
    {
        id = 29648,
        name = "Swiftsteel Gloves",
        itemId = 23526,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 380, green = 390, gray = 400 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 6 },
            { itemId = 22449, name = "Large Prismatic Shard", count = 2 },
            { itemId = 22831, name = "Elixir of Major Agility", count = 4 },
            { itemId = 22451, name = "Primal Air", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23615,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Earthpeace Breastplate (370)
    {
        id = 29649,
        name = "Earthpeace Breastplate",
        itemId = 23527,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 380, green = 390, gray = 400 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 4 },
            { itemId = 21886, name = "Primal Life", count = 6 },
            { itemId = 22452, name = "Primal Earth", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23617,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Greater Ward of Shielding (375)
    {
        id = 29729,
        name = "Greater Ward of Shielding",
        itemId = 23576,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 375, gray = 375 },
        reagents = {
            { itemId = 23447, name = "Eternium Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23639,
            cost = 300000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Eternium Rod (375)
    {
        id = 32657,
        name = "Eternium Rod",
        itemId = 25845,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23447, name = "Eternium Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 25847,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Twisting Nether Chain Shirt (375)
    {
        id = 34530,
        name = "Twisting Nether Chain Shirt",
        itemId = 23564,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23563, name = "Nether Chain Shirt", count = 1 },
            { itemId = 23572, name = "Primal Nether", count = 10 },
            { itemId = 22457, name = "Primal Mana", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bulwark of Kings (375)
    {
        id = 34534,
        name = "Bulwark of Kings",
        itemId = 28484,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 28483, name = "Breastplate of Kings", count = 1 },
            { itemId = 23572, name = "Primal Nether", count = 10 },
            { itemId = 22457, name = "Primal Mana", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Blazeguard (375)
    {
        id = 34537,
        name = "Blazeguard",
        itemId = 28426,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 28425, name = "Fireguard", count = 1 },
            { itemId = 23572, name = "Primal Nether", count = 8 },
            { itemId = 22451, name = "Primal Air", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Lionheart Champion (375)
    {
        id = 34540,
        name = "Lionheart Champion",
        itemId = 28429,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 28428, name = "Lionheart Blade", count = 1 },
            { itemId = 23572, name = "Primal Nether", count = 8 },
            { itemId = 23571, name = "Primal Might", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Black Planar Edge (375)
    {
        id = 34542,
        name = "Black Planar Edge",
        itemId = 28432,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 28431, name = "The Planar Edge", count = 1 },
            { itemId = 23572, name = "Primal Nether", count = 8 },
            { itemId = 23448, name = "Felsteel Bar", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Mooncleaver (375)
    {
        id = 34544,
        name = "Mooncleaver",
        itemId = 28435,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 28434, name = "Lunar Crescent", count = 1 },
            { itemId = 23572, name = "Primal Nether", count = 8 },
            { itemId = 22457, name = "Primal Mana", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Dragonmaw (375)
    {
        id = 34546,
        name = "Dragonmaw",
        itemId = 28438,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 28437, name = "Drakefist Hammer", count = 1 },
            { itemId = 23572, name = "Primal Nether", count = 8 },
            { itemId = 23571, name = "Primal Might", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Deep Thunder (375)
    {
        id = 34548,
        name = "Deep Thunder",
        itemId = 28441,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 28440, name = "Thunder", count = 1 },
            { itemId = 23572, name = "Primal Nether", count = 8 },
            { itemId = 22457, name = "Primal Mana", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Embrace of the Twisting Nether (375)
    {
        id = 36256,
        name = "Embrace of the Twisting Nether",
        itemId = 23565,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23564, name = "Twisting Nether Chain Shirt", count = 1 },
            { itemId = 30183, name = "Nether Vortex", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bulwark of the Ancient Kings (375)
    {
        id = 36257,
        name = "Bulwark of the Ancient Kings",
        itemId = 28485,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 28484, name = "Bulwark of Kings", count = 1 },
            { itemId = 30183, name = "Nether Vortex", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Blazefury (375)
    {
        id = 36258,
        name = "Blazefury",
        itemId = 28427,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 28426, name = "Blazeguard", count = 1 },
            { itemId = 30183, name = "Nether Vortex", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Lionheart Executioner (375)
    {
        id = 36259,
        name = "Lionheart Executioner",
        itemId = 28430,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 28429, name = "Lionheart Champion", count = 1 },
            { itemId = 30183, name = "Nether Vortex", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Wicked Edge of the Planes (375)
    {
        id = 36260,
        name = "Wicked Edge of the Planes",
        itemId = 28433,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 28432, name = "Black Planar Edge", count = 1 },
            { itemId = 30183, name = "Nether Vortex", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bloodmoon (375)
    {
        id = 36261,
        name = "Bloodmoon",
        itemId = 28436,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 28435, name = "Mooncleaver", count = 1 },
            { itemId = 30183, name = "Nether Vortex", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Dragonstrike (375)
    {
        id = 36262,
        name = "Dragonstrike",
        itemId = 28439,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 28438, name = "Dragonmaw", count = 1 },
            { itemId = 30183, name = "Nether Vortex", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stormherald (375)
    {
        id = 36263,
        name = "Stormherald",
        itemId = 28442,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 28441, name = "Deep Thunder", count = 1 },
            { itemId = 30183, name = "Nether Vortex", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Blacksmithing Trainer",
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Belt of the Guardian (375)
    {
        id = 36389,
        name = "Belt of the Guardian",
        itemId = 30034,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 30183, name = "Nether Vortex", count = 2 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 5 },
            { itemId = 21885, name = "Primal Water", count = 10 },
            { itemId = 22452, name = "Primal Earth", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 30321,
            cost = 240000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Red Belt of Battle (375)
    {
        id = 36390,
        name = "Red Belt of Battle",
        itemId = 30032,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 30183, name = "Nether Vortex", count = 2 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 5 },
            { itemId = 21884, name = "Primal Fire", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 30322,
            cost = 240000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Boots of the Protector (375)
    {
        id = 36391,
        name = "Boots of the Protector",
        itemId = 30033,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23572, name = "Primal Nether", count = 2 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 4 },
            { itemId = 21885, name = "Primal Water", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 30323,
            cost = 240000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Red Havoc Boots (375)
    {
        id = 36392,
        name = "Red Havoc Boots",
        itemId = 30031,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23572, name = "Primal Nether", count = 2 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 4 },
            { itemId = 21884, name = "Primal Fire", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 30324,
            cost = 240000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Wildguard Breastplate (375)
    {
        id = 38473,
        name = "Wildguard Breastplate",
        itemId = 31364,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 8 },
            { itemId = 21886, name = "Primal Life", count = 12 },
            { itemId = 22456, name = "Primal Shadow", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Exalted",
            itemId = 31390,
            cost = 240000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Wildguard Leggings (375)
    {
        id = 38475,
        name = "Wildguard Leggings",
        itemId = 31367,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 8 },
            { itemId = 21886, name = "Primal Life", count = 12 },
            { itemId = 22456, name = "Primal Shadow", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Revered",
            itemId = 31391,
            cost = 240000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Wildguard Helm (375)
    {
        id = 38476,
        name = "Wildguard Helm",
        itemId = 31368,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 8 },
            { itemId = 21886, name = "Primal Life", count = 12 },
            { itemId = 22456, name = "Primal Shadow", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Revered",
            itemId = 31392,
            cost = 240000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Iceguard Breastplate (375)
    {
        id = 38477,
        name = "Iceguard Breastplate",
        itemId = 31369,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 8 },
            { itemId = 21885, name = "Primal Water", count = 12 },
            { itemId = 21884, name = "Primal Fire", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 967,
            factionName = "The Violet Eye",
            level = "Honored",
            itemId = 31393,
            cost = 240000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Iceguard Leggings (375)
    {
        id = 38478,
        name = "Iceguard Leggings",
        itemId = 31370,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 8 },
            { itemId = 21885, name = "Primal Water", count = 12 },
            { itemId = 21884, name = "Primal Fire", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 967,
            factionName = "The Violet Eye",
            level = "Revered",
            itemId = 31394,
            cost = 240000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Iceguard Helm (375)
    {
        id = 38479,
        name = "Iceguard Helm",
        itemId = 31371,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 8 },
            { itemId = 21885, name = "Primal Water", count = 12 },
            { itemId = 21884, name = "Primal Fire", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 967,
            factionName = "The Violet Eye",
            level = "Honored",
            itemId = 31395,
            cost = 240000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shadesteel Sabots (375)
    {
        id = 40033,
        name = "Shadesteel Sabots",
        itemId = 32402,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 32428, name = "Heart of Darkness", count = 2 },
            { itemId = 22450, name = "Void Crystal", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 2 },
            { itemId = 22456, name = "Primal Shadow", count = 4 },
            { itemId = 23446, name = "Adamantite Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1012,
            factionName = "Ashtongue Deathsworn",
            level = "Honored",
            itemId = 32441,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shadesteel Bracers (375)
    {
        id = 40034,
        name = "Shadesteel Bracers",
        itemId = 32403,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 32428, name = "Heart of Darkness", count = 1 },
            { itemId = 22450, name = "Void Crystal", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 2 },
            { itemId = 22456, name = "Primal Shadow", count = 2 },
            { itemId = 23446, name = "Adamantite Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1012,
            factionName = "Ashtongue Deathsworn",
            level = "Friendly",
            itemId = 32442,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shadesteel Greaves (375)
    {
        id = 40035,
        name = "Shadesteel Greaves",
        itemId = 32404,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 32428, name = "Heart of Darkness", count = 3 },
            { itemId = 22450, name = "Void Crystal", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 4 },
            { itemId = 22456, name = "Primal Shadow", count = 6 },
            { itemId = 23446, name = "Adamantite Bar", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1012,
            factionName = "Ashtongue Deathsworn",
            level = "Honored",
            itemId = 32443,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shadesteel Girdle (375)
    {
        id = 40036,
        name = "Shadesteel Girdle",
        itemId = 32401,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 32428, name = "Heart of Darkness", count = 2 },
            { itemId = 22450, name = "Void Crystal", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 3 },
            { itemId = 22456, name = "Primal Shadow", count = 4 },
            { itemId = 23446, name = "Adamantite Bar", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1012,
            factionName = "Ashtongue Deathsworn",
            level = "Friendly",
            itemId = 32444,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Swiftsteel Bracers (375)
    {
        id = 41132,
        name = "Swiftsteel Bracers",
        itemId = 32568,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 14 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 2 },
            { itemId = 22451, name = "Primal Air", count = 6 },
            { itemId = 32428, name = "Heart of Darkness", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 35531,
            cost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Swiftsteel Shoulders (375)
    {
        id = 41133,
        name = "Swiftsteel Shoulders",
        itemId = 32570,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 18 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 2 },
            { itemId = 22451, name = "Primal Air", count = 8 },
            { itemId = 32428, name = "Heart of Darkness", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 35532,
            cost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Dawnsteel Bracers (375)
    {
        id = 41134,
        name = "Dawnsteel Bracers",
        itemId = 32571,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 14 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 2 },
            { itemId = 21884, name = "Primal Fire", count = 6 },
            { itemId = 32428, name = "Heart of Darkness", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 35529,
            cost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Dawnsteel Shoulders (375)
    {
        id = 41135,
        name = "Dawnsteel Shoulders",
        itemId = 32573,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 18 },
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 2 },
            { itemId = 21884, name = "Primal Fire", count = 8 },
            { itemId = 32428, name = "Heart of Darkness", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 35530,
            cost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
}

CraftLib:RegisterProfession("blacksmithing", {
    id = C.PROFESSION_ID.BLACKSMITHING,
    name = "Blacksmithing",
    expansion = C.EXPANSION.TBC,
    milestones = { 75, 150, 225, 300, 375 },
    recipes = recipes,
})
