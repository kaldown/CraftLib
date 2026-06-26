-- Data/SoD/Leatherworking/Recipes.lua
-- Leatherworking recipes for SoD Classic
-- Generated from DB2 data
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    -- Handstitched Leather Boots (1)
    {
        id = 2149,
        name = "Handstitched Leather Boots",
        itemId = 2302,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 40, green = 55, gray = 70 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Light Armor Kit (1)
    {
        id = 2152,
        name = "Light Armor Kit",
        itemId = 2304,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 30, green = 45, gray = 60 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Light Leather (1)
    {
        id = 2881,
        name = "Light Leather",
        itemId = 2318,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 20, green = 30, gray = 40 },
        reagents = {
            { itemId = 2934, name = "Ruined Leather Scraps", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Handstitched Leather Vest (1)
    {
        id = 7126,
        name = "Handstitched Leather Vest",
        itemId = 5957,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 40, green = 55, gray = 70 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Handstitched Leather Cloak (1)
    {
        id = 9058,
        name = "Handstitched Leather Cloak",
        itemId = 7276,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 40, green = 55, gray = 70 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Handstitched Leather Bracers (1)
    {
        id = 9059,
        name = "Handstitched Leather Bracers",
        itemId = 7277,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 40, green = 55, gray = 70 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Handstitched Leather Pants (15)
    {
        id = 2153,
        name = "Handstitched Leather Pants",
        itemId = 2303,
        skillRequired = 15,
        skillRange = { orange = 15, yellow = 45, green = 60, gray = 75 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Handstitched Leather Belt (25)
    {
        id = 3753,
        name = "Handstitched Leather Belt",
        itemId = 4237,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 55, green = 70, gray = 85 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 75,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Light Leather Quiver (30)
    {
        id = 9060,
        name = "Light Leather Quiver",
        itemId = 7278,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 60, green = 75, gray = 90 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Small Leather Ammo Pouch (30)
    {
        id = 9062,
        name = "Small Leather Ammo Pouch",
        itemId = 7279,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 60, green = 75, gray = 90 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Cured Light Hide (35)
    {
        id = 3816,
        name = "Cured Light Hide",
        itemId = 4231,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 55, green = 65, gray = 75 },
        reagents = {
            { itemId = 783, name = "Light Hide", count = 1 },
            { itemId = 4289, name = "Salt", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rugged Leather Pants (35)
    {
        id = 9064,
        name = "Rugged Leather Pants",
        itemId = 7280,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 65, green = 80, gray = 95 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 5 },
            { itemId = 2320, name = "Coarse Thread", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7288,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Embossed Leather Vest (40)
    {
        id = 2160,
        name = "Embossed Leather Vest",
        itemId = 2300,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 70, green = 85, gray = 100 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 8 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Kodo Hide Bag (40)
    {
        id = 5244,
        name = "Kodo Hide Bag",
        itemId = 5081,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 70, green = 85, gray = 100 },
        reagents = {
            { itemId = 5082, name = "Thin Kodo Leather", count = 3 },
            { itemId = 2318, name = "Light Leather", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 5083,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Embossed Leather Boots (55)
    {
        id = 2161,
        name = "Embossed Leather Boots",
        itemId = 2309,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 85, green = 100, gray = 115 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 8 },
            { itemId = 2320, name = "Coarse Thread", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Embossed Leather Gloves (55)
    {
        id = 3756,
        name = "Embossed Leather Gloves",
        itemId = 4239,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 85, green = 100, gray = 115 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 150,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Embossed Leather Cloak (60)
    {
        id = 2162,
        name = "Embossed Leather Cloak",
        itemId = 2310,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 90, green = 105, gray = 120 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 5 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- White Leather Jerkin (60)
    {
        id = 2163,
        name = "White Leather Jerkin",
        itemId = 2311,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 90, green = 105, gray = 120 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 8 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
            { itemId = 2324, name = "Bleach", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2407,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Light Leather Bracers (70)
    {
        id = 9065,
        name = "Light Leather Bracers",
        itemId = 7281,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 100, green = 115, gray = 130 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 150,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fine Leather Gloves (75)
    {
        id = 2164,
        name = "Fine Leather Gloves",
        itemId = 2312,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 120, gray = 135 },
        reagents = {
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2318, name = "Light Leather", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2408,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Embossed Leather Pants (75)
    {
        id = 3759,
        name = "Embossed Leather Pants",
        itemId = 4242,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 120, gray = 135 },
        reagents = {
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fine Leather Belt (80)
    {
        id = 3763,
        name = "Fine Leather Belt",
        itemId = 4246,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 110, green = 125, gray = 140 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fine Leather Cloak (85)
    {
        id = 2159,
        name = "Fine Leather Cloak",
        itemId = 2308,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 105, green = 120, gray = 135 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 10 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fine Leather Tunic (85)
    {
        id = 3761,
        name = "Fine Leather Tunic",
        itemId = 4243,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 115, green = 130, gray = 145 },
        reagents = {
            { itemId = 4231, name = "Cured Light Hide", count = 3 },
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 350,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fine Leather Boots (90)
    {
        id = 2158,
        name = "Fine Leather Boots",
        itemId = 2307,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 120, green = 135, gray = 150 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 7 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2406,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Murloc Scale Belt (90)
    {
        id = 6702,
        name = "Murloc Scale Belt",
        itemId = 5780,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 120, green = 135, gray = 150 },
        reagents = {
            { itemId = 5784, name = "Slimy Murloc Scale", count = 8 },
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5786,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Deviate Scale Cloak (90)
    {
        id = 7953,
        name = "Deviate Scale Cloak",
        itemId = 6466,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 120, green = 135, gray = 150 },
        reagents = {
            { itemId = 6470, name = "Deviate Scale", count = 8 },
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6474,
            cost = 550,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Moonglow Vest (90)
    {
        id = 8322,
        name = "Moonglow Vest",
        itemId = 6709,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 115, green = 130, gray = 145 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 6710,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Murloc Scale Breastplate (95)
    {
        id = 6703,
        name = "Murloc Scale Breastplate",
        itemId = 5781,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 125, green = 140, gray = 155 },
        reagents = {
            { itemId = 5784, name = "Slimy Murloc Scale", count = 12 },
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2318, name = "Light Leather", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5787,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Light Leather Pants (95)
    {
        id = 9068,
        name = "Light Leather Pants",
        itemId = 7282,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 125, green = 140, gray = 155 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 10 },
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Medium Armor Kit (100)
    {
        id = 2165,
        name = "Medium Armor Kit",
        itemId = 2313,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 115, green = 122, gray = 130 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Leather Boots (100)
    {
        id = 2167,
        name = "Dark Leather Boots",
        itemId = 2315,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 350,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Leather Tunic (100)
    {
        id = 2169,
        name = "Dark Leather Tunic",
        itemId = 2317,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2409,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Hillman's Leather Vest (100)
    {
        id = 3762,
        name = "Hillman's Leather Vest",
        itemId = 4244,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 4243, name = "Fine Leather Tunic", count = 1 },
            { itemId = 4231, name = "Cured Light Hide", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4293,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Cured Medium Hide (100)
    {
        id = 3817,
        name = "Cured Medium Hide",
        itemId = 4233,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 115, green = 122, gray = 130 },
        reagents = {
            { itemId = 4232, name = "Medium Hide", count = 1 },
            { itemId = 4289, name = "Salt", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Whelp Cloak (100)
    {
        id = 9070,
        name = "Black Whelp Cloak",
        itemId = 7283,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 7286, name = "Black Whelp Scale", count = 12 },
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7289,
            cost = 650,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Medium Leather (100)
    {
        id = 20648,
        name = "Medium Leather",
        itemId = 2319,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 100, green = 105, gray = 110 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Whelp Tunic (100)
    {
        id = 24940,
        name = "Black Whelp Tunic",
        itemId = 20575,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 7286, name = "Black Whelp Scale", count = 8 },
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20576,
            cost = 1400,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fine Leather Pants (105)
    {
        id = 7133,
        name = "Fine Leather Pants",
        itemId = 5958,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 130, green = 142, gray = 155 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5972,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Deviate Scale Gloves (105)
    {
        id = 7954,
        name = "Deviate Scale Gloves",
        itemId = 6467,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 130, green = 142, gray = 155 },
        reagents = {
            { itemId = 6471, name = "Perfect Deviate Scale", count = 2 },
            { itemId = 6470, name = "Deviate Scale", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6475,
            cost = 1500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Leather Cloak (110)
    {
        id = 2168,
        name = "Dark Leather Cloak",
        itemId = 2316,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 147, gray = 160 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 350,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Leather Pants (115)
    {
        id = 7135,
        name = "Dark Leather Pants",
        itemId = 5961,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 140, green = 152, gray = 165 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 12 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Deviate Scale Belt (115)
    {
        id = 7955,
        name = "Deviate Scale Belt",
        itemId = 6468,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 140, green = 152, gray = 165 },
        reagents = {
            { itemId = 6471, name = "Perfect Deviate Scale", count = 10 },
            { itemId = 6470, name = "Deviate Scale", count = 10 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 6476,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Toughened Leather Armor (120)
    {
        id = 2166,
        name = "Toughened Leather Armor",
        itemId = 2314,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 157, gray = 170 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 10 },
            { itemId = 4231, name = "Cured Light Hide", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 450,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Leather Gloves (120)
    {
        id = 3765,
        name = "Dark Leather Gloves",
        itemId = 4248,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 155, green = 167, gray = 180 },
        reagents = {
            { itemId = 2312, name = "Fine Leather Gloves", count = 1 },
            { itemId = 4233, name = "Cured Medium Hide", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7360,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Hillman's Belt (120)
    {
        id = 3767,
        name = "Hillman's Belt",
        itemId = 4250,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 157, gray = 170 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 3383, name = "Elixir of Wisdom", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4294,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Whelp Gloves (120)
    {
        id = 9072,
        name = "Red Whelp Gloves",
        itemId = 7284,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 157, gray = 170 },
        reagents = {
            { itemId = 7287, name = "Red Whelp Scale", count = 6 },
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7290,
            cost = 1600,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Nimble Leather Gloves (120)
    {
        id = 9074,
        name = "Nimble Leather Gloves",
        itemId = 7285,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 157, gray = 170 },
        reagents = {
            { itemId = 2457, name = "Elixir of Minor Agility", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Leather Belt (125)
    {
        id = 3766,
        name = "Dark Leather Belt",
        itemId = 4249,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 162, gray = 175 },
        reagents = {
            { itemId = 4246, name = "Fine Leather Belt", count = 1 },
            { itemId = 4233, name = "Cured Medium Hide", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fletcher's Gloves (125)
    {
        id = 9145,
        name = "Fletcher's Gloves",
        itemId = 7348,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 162, gray = 175 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 5116, name = "Long Tail Feather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Hillman's Shoulders (130)
    {
        id = 3768,
        name = "Hillman's Shoulders",
        itemId = 4251,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 155, green = 167, gray = 180 },
        reagents = {
            { itemId = 4233, name = "Cured Medium Hide", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Toughened Leather Gloves (135)
    {
        id = 3770,
        name = "Toughened Leather Gloves",
        itemId = 4253,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 160, green = 172, gray = 185 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 4233, name = "Cured Medium Hide", count = 2 },
            { itemId = 3389, name = "Elixir of Defense", count = 2 },
            { itemId = 3182, name = "Spider's Silk", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Herbalist's Gloves (135)
    {
        id = 9146,
        name = "Herbalist's Gloves",
        itemId = 7349,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 160, green = 172, gray = 185 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 3356, name = "Kingsblood", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7361,
            cost = 1800,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Earthen Leather Shoulders (135)
    {
        id = 9147,
        name = "Earthen Leather Shoulders",
        itemId = 7352,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 160, green = 172, gray = 185 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 6 },
            { itemId = 7067, name = "Elemental Earth", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7362,
            cost = 2000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dark Leather Shoulders (140)
    {
        id = 3769,
        name = "Dark Leather Shoulders",
        itemId = 4252,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 165, green = 177, gray = 190 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 12 },
            { itemId = 3390, name = "Elixir of Lesser Agility", count = 1 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4296,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Pilferer's Gloves (140)
    {
        id = 9148,
        name = "Pilferer's Gloves",
        itemId = 7358,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 165, green = 177, gray = 190 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 10 },
            { itemId = 5373, name = "Lucky Charm", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7363,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Hillman's Leather Gloves (145)
    {
        id = 3764,
        name = "Hillman's Leather Gloves",
        itemId = 4247,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 170, green = 182, gray = 195 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 14 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Earthen Gloves (145)
    {
        id = 9149,
        name = "Heavy Earthen Gloves",
        itemId = 7359,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 170, green = 182, gray = 195 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 12 },
            { itemId = 7067, name = "Elemental Earth", count = 2 },
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7364,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Hillman's Cloak (150)
    {
        id = 3760,
        name = "Hillman's Cloak",
        itemId = 3719,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 180, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 5 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 600,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Barbaric Gloves (150)
    {
        id = 3771,
        name = "Barbaric Gloves",
        itemId = 4254,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 180, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 6 },
            { itemId = 5637, name = "Large Fang", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4297,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Armor Kit (150)
    {
        id = 3780,
        name = "Heavy Armor Kit",
        itemId = 4265,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 180, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 5 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Cured Heavy Hide (150)
    {
        id = 3818,
        name = "Cured Heavy Hide",
        itemId = 4236,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 160, green = 165, gray = 170 },
        reagents = {
            { itemId = 4235, name = "Heavy Hide", count = 1 },
            { itemId = 4289, name = "Salt", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Quiver (150)
    {
        id = 9193,
        name = "Heavy Quiver",
        itemId = 7371,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 180, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Leather Ammo Pouch (150)
    {
        id = 9194,
        name = "Heavy Leather Ammo Pouch",
        itemId = 7372,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 180, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Leather (150)
    {
        id = 20649,
        name = "Heavy Leather",
        itemId = 4234,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 150, green = 155, gray = 160 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Leather Ball (150)
    {
        id = 23190,
        name = "Heavy Leather Ball",
        itemId = 18662,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 150, green = 155, gray = 160 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18731,
            cost = 2000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Leather Armor (155)
    {
        id = 3772,
        name = "Green Leather Armor",
        itemId = 4255,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 185, gray = 195 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 9 },
            { itemId = 2605, name = "Green Dye", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7613,
            cost = 2000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Barbaric Bracers (155)
    {
        id = 23399,
        name = "Barbaric Bracers",
        itemId = 18948,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 185, gray = 195 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 8 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 4 },
            { itemId = 4461, name = "Raptor Hide", count = 1 },
            { itemId = 5637, name = "Large Fang", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18949,
            cost = 2000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Leather Belt (160)
    {
        id = 3774,
        name = "Green Leather Belt",
        itemId = 4257,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 190, gray = 200 },
        reagents = {
            { itemId = 4236, name = "Cured Heavy Hide", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 5 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 2605, name = "Green Dye", count = 1 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 900,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Guardian Pants (160)
    {
        id = 7147,
        name = "Guardian Pants",
        itemId = 5962,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 190, gray = 200 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 12 },
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Void-Touched Leather Gloves (160)
    {
        id = 429354,
        name = "Void-Touched Leather Gloves",
        itemId = 211423,
        skillRequired = 160,
        skillRange = { orange = 0, yellow = 160, green = 172, gray = 185 },
        reagents = {
            { itemId = 211422, name = "Shard of the Void", count = 1 },
            { itemId = 4253, name = "Toughened Leather Gloves", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Void-Touched Leather Gauntlets (160)
    {
        id = 429869,
        name = "Void-Touched Leather Gauntlets",
        itemId = 211502,
        skillRequired = 160,
        skillRange = { orange = 0, yellow = 160, green = 172, gray = 185 },
        reagents = {
            { itemId = 211422, name = "Shard of the Void", count = 1 },
            { itemId = 4253, name = "Toughened Leather Gloves", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Guardian Pants (160)
    {
        id = 439114,
        name = "Guardian Pants",
        itemId = 217267,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 190, gray = 200 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 12 },
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 900,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Raptor Hide Harness (165)
    {
        id = 4096,
        name = "Raptor Hide Harness",
        itemId = 4455,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 195, gray = 205 },
        reagents = {
            { itemId = 4461, name = "Raptor Hide", count = 6 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13287,
            cost = 2500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Raptor Hide Belt (165)
    {
        id = 4097,
        name = "Raptor Hide Belt",
        itemId = 4456,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 195, gray = 205 },
        reagents = {
            { itemId = 4461, name = "Raptor Hide", count = 4 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13288,
            cost = 2500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dusky Leather Leggings (165)
    {
        id = 9195,
        name = "Dusky Leather Leggings",
        itemId = 7373,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 195, gray = 205 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 10 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7449,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Guardian Belt (170)
    {
        id = 3775,
        name = "Guardian Belt",
        itemId = 4258,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 190, green = 200, gray = 210 },
        reagents = {
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4298,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Thick Murloc Armor (170)
    {
        id = 6704,
        name = "Thick Murloc Armor",
        itemId = 5782,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 190, green = 200, gray = 210 },
        reagents = {
            { itemId = 5785, name = "Thick Murloc Scale", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 10 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5788,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Barbaric Leggings (170)
    {
        id = 7149,
        name = "Barbaric Leggings",
        itemId = 5963,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 190, green = 200, gray = 210 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 10 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 1206, name = "Moss Agate", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 5973,
            cost = 650,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Guardian Armor (175)
    {
        id = 3773,
        name = "Guardian Armor",
        itemId = 4256,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
        reagents = {
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 12 },
            { itemId = 3824, name = "Shadow Oil", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4299,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Barbaric Shoulders (175)
    {
        id = 7151,
        name = "Barbaric Shoulders",
        itemId = 5964,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 8 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 1080,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dusky Leather Armor (175)
    {
        id = 9196,
        name = "Dusky Leather Armor",
        itemId = 7374,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 10 },
            { itemId = 3824, name = "Shadow Oil", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 1350,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Whelp Armor (175)
    {
        id = 9197,
        name = "Green Whelp Armor",
        itemId = 7375,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
        reagents = {
            { itemId = 7392, name = "Green Whelp Scale", count = 4 },
            { itemId = 4234, name = "Heavy Leather", count = 10 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7450,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Leather Bracers (180)
    {
        id = 3776,
        name = "Green Leather Bracers",
        itemId = 4259,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 6 },
            { itemId = 2605, name = "Green Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 1080,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frost Leather Cloak (180)
    {
        id = 9198,
        name = "Frost Leather Cloak",
        itemId = 7377,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 6 },
            { itemId = 7067, name = "Elemental Earth", count = 2 },
            { itemId = 7070, name = "Elemental Water", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 1800,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Gem-studded Leather Belt (185)
    {
        id = 3778,
        name = "Gem-studded Leather Belt",
        itemId = 4262,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 215, gray = 225 },
        reagents = {
            { itemId = 4236, name = "Cured Heavy Hide", count = 4 },
            { itemId = 5500, name = "Iridescent Pearl", count = 2 },
            { itemId = 1529, name = "Jade", count = 2 },
            { itemId = 3864, name = "Citrine", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14635,
            cost = 3000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Guardian Cloak (185)
    {
        id = 7153,
        name = "Guardian Cloak",
        itemId = 5965,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 215, gray = 225 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 14 },
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5974,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dusky Bracers (185)
    {
        id = 9201,
        name = "Dusky Bracers",
        itemId = 7378,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 215, gray = 225 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 16 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 1800,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Barbaric Harness (190)
    {
        id = 6661,
        name = "Barbaric Harness",
        itemId = 5739,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 220, gray = 230 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 14 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 1800,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Murloc Scale Bracers (190)
    {
        id = 6705,
        name = "Murloc Scale Bracers",
        itemId = 5783,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 220, gray = 230 },
        reagents = {
            { itemId = 5785, name = "Thick Murloc Scale", count = 16 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 14 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5789,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Guardian Gloves (190)
    {
        id = 7156,
        name = "Guardian Gloves",
        itemId = 5966,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 220, gray = 230 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 2160,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Whelp Bracers (190)
    {
        id = 9202,
        name = "Green Whelp Bracers",
        itemId = 7386,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 220, gray = 230 },
        reagents = {
            { itemId = 7392, name = "Green Whelp Scale", count = 6 },
            { itemId = 4234, name = "Heavy Leather", count = 8 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 7451,
            cost = 2800,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Gloves of the Greatfather (190)
    {
        id = 21943,
        name = "Gloves of the Greatfather",
        itemId = 17721,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 220, gray = 230 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 8 },
            { itemId = 7067, name = "Elemental Earth", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 17722,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Guardian Belt (190)
    {
        id = 439112,
        name = "Guardian Belt",
        itemId = 217265,
        skillRequired = 190,
        skillRange = { orange = 0, yellow = 190, green = 200, gray = 210 },
        reagents = {
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Guardian Leather Bracers (195)
    {
        id = 3777,
        name = "Guardian Leather Bracers",
        itemId = 4260,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 225, gray = 235 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 6 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4300,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dusky Belt (195)
    {
        id = 9206,
        name = "Dusky Belt",
        itemId = 7387,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 225, gray = 235 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 10 },
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 2 },
            { itemId = 2325, name = "Black Dye", count = 2 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 2250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Barbaric Belt (200)
    {
        id = 3779,
        name = "Barbaric Belt",
        itemId = 4264,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 6 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 4096, name = "Coarse Gorilla Hair", count = 2 },
            { itemId = 5633, name = "Great Rage Potion", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4301,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dusky Boots (200)
    {
        id = 9207,
        name = "Dusky Boots",
        itemId = 7390,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 8 },
            { itemId = 7428, name = "Shadowcat Hide", count = 2 },
            { itemId = 3824, name = "Shadow Oil", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7452,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Swift Boots (200)
    {
        id = 9208,
        name = "Swift Boots",
        itemId = 7391,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 10 },
            { itemId = 2459, name = "Swiftness Potion", count = 2 },
            { itemId = 4337, name = "Thick Spider's Silk", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7453,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Cured Thick Hide (200)
    {
        id = 10482,
        name = "Cured Thick Hide",
        itemId = 8172,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 200, green = 200, gray = 200 },
        reagents = {
            { itemId = 8169, name = "Thick Hide", count = 1 },
            { itemId = 8150, name = "Deeprock Salt", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 1800,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Thick Armor Kit (200)
    {
        id = 10487,
        name = "Thick Armor Kit",
        itemId = 8173,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 5 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 1800,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Comfortable Leather Hat (200)
    {
        id = 10490,
        name = "Comfortable Leather Hat",
        itemId = 8174,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8384,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Thick Leather (200)
    {
        id = 20650,
        name = "Thick Leather",
        itemId = 4304,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 200, green = 202, gray = 205 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shadowskin Gloves (200)
    {
        id = 22711,
        name = "Shadowskin Gloves",
        itemId = 18238,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 210, green = 220, gray = 230 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 6 },
            { itemId = 7428, name = "Shadowcat Hide", count = 8 },
            { itemId = 7971, name = "Black Pearl", count = 2 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 1210, name = "Shadowgem", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18239,
            cost = 3500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Faintly Glowing Leather (200)
    {
        id = 435819,
        name = "Faintly Glowing Leather",
        itemId = 213369,
        skillRequired = 200,
        skillRange = { orange = 0, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 8172, name = "Cured Thick Hide", count = 1 },
            { itemId = 213370, name = "Irradiated Leather Scraps", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Nightscape Tunic (205)
    {
        id = 10499,
        name = "Nightscape Tunic",
        itemId = 8175,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 7 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 2700,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Nightscape Headband (205)
    {
        id = 10507,
        name = "Nightscape Headband",
        itemId = 8176,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 5 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 2700,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Turtle Scale Gloves (205)
    {
        id = 10509,
        name = "Turtle Scale Gloves",
        itemId = 8187,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 6 },
            { itemId = 8167, name = "Turtle Scale", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8385,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Turtle Scale Breastplate (210)
    {
        id = 10511,
        name = "Turtle Scale Breastplate",
        itemId = 8189,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 6 },
            { itemId = 8167, name = "Turtle Scale", count = 12 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Nightscape Shoulders (210)
    {
        id = 10516,
        name = "Nightscape Shoulders",
        itemId = 8192,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 8 },
            { itemId = 4338, name = "Mageweave Cloth", count = 6 },
            { itemId = 4291, name = "Silken Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 8409,
            cost = 4000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Turtle Scale Bracers (210)
    {
        id = 10518,
        name = "Turtle Scale Bracers",
        itemId = 8198,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 8 },
            { itemId = 8167, name = "Turtle Scale", count = 12 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 3150,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Turtle Scale Breastplate (210)
    {
        id = 439116,
        name = "Turtle Scale Breastplate",
        itemId = 217268,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 6 },
            { itemId = 8167, name = "Turtle Scale", count = 12 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 2700,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Big Voodoo Robe (215)
    {
        id = 10520,
        name = "Big Voodoo Robe",
        itemId = 8200,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 235, green = 245, gray = 255 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8151, name = "Flask of Mojo", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8386,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Guardian Leather Bracers (215)
    {
        id = 439110,
        name = "Guardian Leather Bracers",
        itemId = 217263,
        skillRequired = 215,
        skillRange = { orange = 0, yellow = 215, green = 225, gray = 235 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 6 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tough Scorpid Breastplate (220)
    {
        id = 10525,
        name = "Tough Scorpid Breastplate",
        itemId = 8203,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 250, gray = 260 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 8154, name = "Scorpid Scale", count = 12 },
            { itemId = 4291, name = "Silken Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8395,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wild Leather Shoulders (220)
    {
        id = 10529,
        name = "Wild Leather Shoulders",
        itemId = 8210,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 250, gray = 260 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8153, name = "Wildvine", count = 1 },
            { itemId = 8172, name = "Cured Thick Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 8403,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Big Voodoo Mask (220)
    {
        id = 10531,
        name = "Big Voodoo Mask",
        itemId = 8201,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 250, gray = 260 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 8 },
            { itemId = 8151, name = "Flask of Mojo", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8387,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tough Scorpid Bracers (220)
    {
        id = 10533,
        name = "Tough Scorpid Bracers",
        itemId = 8205,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 250, gray = 260 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8154, name = "Scorpid Scale", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8397,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tough Scorpid Gloves (225)
    {
        id = 10542,
        name = "Tough Scorpid Gloves",
        itemId = 8204,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 6 },
            { itemId = 8154, name = "Scorpid Scale", count = 8 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8398,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wild Leather Vest (225)
    {
        id = 10544,
        name = "Wild Leather Vest",
        itemId = 8211,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 8153, name = "Wildvine", count = 2 },
            { itemId = 8172, name = "Cured Thick Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 8404,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wild Leather Helmet (225)
    {
        id = 10546,
        name = "Wild Leather Helmet",
        itemId = 8214,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8153, name = "Wildvine", count = 2 },
            { itemId = 8172, name = "Cured Thick Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 8405,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dragonscale Gauntlets (225)
    {
        id = 10619,
        name = "Dragonscale Gauntlets",
        itemId = 8347,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 24 },
            { itemId = 8165, name = "Worn Dragonscale", count = 12 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 9000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wolfshead Helm (225)
    {
        id = 10621,
        name = "Wolfshead Helm",
        itemId = 8345,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 18 },
            { itemId = 8368, name = "Thick Wolfhide", count = 2 },
            { itemId = 8146, name = "Wicked Claw", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 9000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Quickdraw Quiver (225)
    {
        id = 14930,
        name = "Quickdraw Quiver",
        itemId = 8217,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 8172, name = "Cured Thick Hide", count = 1 },
            { itemId = 8949, name = "Elixir of Agility", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 3240,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Thick Leather Ammo Pouch (225)
    {
        id = 14932,
        name = "Thick Leather Ammo Pouch",
        itemId = 8218,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8172, name = "Cured Thick Hide", count = 1 },
            { itemId = 8951, name = "Elixir of Greater Defense", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 3240,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Glowing Gneuro-Linked Cowl (225)
    {
        id = 435904,
        name = "Glowing Gneuro-Linked Cowl",
        itemId = 215166,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 213379, name = "Hyperconductive Arcano-Filament", count = 1 },
            { itemId = 8172, name = "Cured Thick Hide", count = 5 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 213369, name = "Faintly Glowing Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Glowing Hyperconductive Scale Coif (225)
    {
        id = 435949,
        name = "Glowing Hyperconductive Scale Coif",
        itemId = 215114,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 213376, name = "Low-Background Truesilver Plates", count = 1 },
            { itemId = 5785, name = "Thick Murloc Scale", count = 10 },
            { itemId = 213369, name = "Faintly Glowing Leather", count = 5 },
            { itemId = 213372, name = "Insulating Gniodine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Gneuro-Conductive Channeler's Hood (225)
    {
        id = 435951,
        name = "Gneuro-Conductive Channeler's Hood",
        itemId = 215381,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 213372, name = "Insulating Gniodine", count = 1 },
            { itemId = 8172, name = "Cured Thick Hide", count = 5 },
            { itemId = 213369, name = "Faintly Glowing Leather", count = 5 },
            { itemId = 213379, name = "Hyperconductive Arcano-Filament", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rad-Resistant Scale Hood (225)
    {
        id = 435953,
        name = "Rad-Resistant Scale Hood",
        itemId = 215382,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 213376, name = "Low-Background Truesilver Plates", count = 1 },
            { itemId = 8172, name = "Cured Thick Hide", count = 5 },
            { itemId = 213369, name = "Faintly Glowing Leather", count = 5 },
            { itemId = 213372, name = "Insulating Gniodine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Turtle Scale Gloves (225)
    {
        id = 439118,
        name = "Turtle Scale Gloves",
        itemId = 217270,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 6 },
            { itemId = 8167, name = "Turtle Scale", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Nightscape Pants (230)
    {
        id = 10548,
        name = "Nightscape Pants",
        itemId = 8193,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 260, gray = 270 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 14 },
            { itemId = 4291, name = "Silken Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Turtle Scale Helm (230)
    {
        id = 10552,
        name = "Turtle Scale Helm",
        itemId = 8191,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 260, gray = 270 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 14 },
            { itemId = 8167, name = "Turtle Scale", count = 24 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Gauntlets of the Sea (230)
    {
        id = 10630,
        name = "Gauntlets of the Sea",
        itemId = 8346,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 260, gray = 270 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 20 },
            { itemId = 7079, name = "Globe of Water", count = 8 },
            { itemId = 7075, name = "Core of Earth", count = 2 },
            { itemId = 8172, name = "Cured Thick Hide", count = 1 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 9000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tough Scorpid Boots (235)
    {
        id = 10554,
        name = "Tough Scorpid Boots",
        itemId = 8209,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 8154, name = "Scorpid Scale", count = 12 },
            { itemId = 4291, name = "Silken Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8399,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Turtle Scale Leggings (235)
    {
        id = 10556,
        name = "Turtle Scale Leggings",
        itemId = 8185,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 14 },
            { itemId = 8167, name = "Turtle Scale", count = 28 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Nightscape Boots (235)
    {
        id = 10558,
        name = "Nightscape Boots",
        itemId = 8197,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Big Voodoo Robe (235)
    {
        id = 439108,
        name = "Big Voodoo Robe",
        itemId = 217261,
        skillRequired = 235,
        skillRange = { orange = 0, yellow = 235, green = 245, gray = 255 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8151, name = "Flask of Mojo", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Big Voodoo Pants (240)
    {
        id = 10560,
        name = "Big Voodoo Pants",
        itemId = 8202,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8152, name = "Flask of Big Mojo", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8389,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Big Voodoo Cloak (240)
    {
        id = 10562,
        name = "Big Voodoo Cloak",
        itemId = 8216,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 14 },
            { itemId = 8152, name = "Flask of Big Mojo", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8390,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tough Scorpid Shoulders (240)
    {
        id = 10564,
        name = "Tough Scorpid Shoulders",
        itemId = 8207,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 8154, name = "Scorpid Scale", count = 16 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8400,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Big Voodoo Mask (240)
    {
        id = 439105,
        name = "Big Voodoo Mask",
        itemId = 217259,
        skillRequired = 240,
        skillRange = { orange = 0, yellow = 240, green = 250, gray = 260 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 8 },
            { itemId = 8151, name = "Flask of Mojo", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wild Leather Boots (245)
    {
        id = 10566,
        name = "Wild Leather Boots",
        itemId = 8213,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 275, gray = 285 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 14 },
            { itemId = 8153, name = "Wildvine", count = 4 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 8406,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tough Scorpid Leggings (245)
    {
        id = 10568,
        name = "Tough Scorpid Leggings",
        itemId = 8206,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 275, gray = 285 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 14 },
            { itemId = 8154, name = "Scorpid Scale", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8401,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tough Scorpid Helm (250)
    {
        id = 10570,
        name = "Tough Scorpid Helm",
        itemId = 8208,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8154, name = "Scorpid Scale", count = 20 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8402,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wild Leather Leggings (250)
    {
        id = 10572,
        name = "Wild Leather Leggings",
        itemId = 8212,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8153, name = "Wildvine", count = 6 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 8407,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wild Leather Cloak (250)
    {
        id = 10574,
        name = "Wild Leather Cloak",
        itemId = 8215,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8153, name = "Wildvine", count = 6 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 8408,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Helm of Fire (250)
    {
        id = 10632,
        name = "Helm of Fire",
        itemId = 8348,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 40 },
            { itemId = 7077, name = "Heart of Fire", count = 8 },
            { itemId = 7075, name = "Core of Earth", count = 4 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 9000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Feathered Breastplate (250)
    {
        id = 10647,
        name = "Feathered Breastplate",
        itemId = 8349,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 40 },
            { itemId = 8168, name = "Jet Black Feather", count = 40 },
            { itemId = 7971, name = "Black Pearl", count = 2 },
            { itemId = 8172, name = "Cured Thick Hide", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 9000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Cured Rugged Hide (250)
    {
        id = 19047,
        name = "Cured Rugged Hide",
        itemId = 15407,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 8171, name = "Rugged Hide", count = 1 },
            { itemId = 15409, name = "Refined Deeprock Salt", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rugged Armor Kit (250)
    {
        id = 19058,
        name = "Rugged Armor Kit",
        itemId = 15564,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 250, green = 260, gray = 270 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rugged Leather (250)
    {
        id = 22331,
        name = "Rugged Leather",
        itemId = 8170,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 250, green = 250, gray = 250 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Paranoia Mantle (250)
    {
        id = 446183,
        name = "Paranoia Mantle",
        itemId = 220747,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 15423, name = "Chimera Leather", count = 8 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shrieking Spaulders (250)
    {
        id = 446185,
        name = "Shrieking Spaulders",
        itemId = 220742,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 15416, name = "Black Dragonscale", count = 8 },
            { itemId = 8170, name = "Rugged Leather", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Cacophonous Chain Shoulderguards (250)
    {
        id = 446186,
        name = "Cacophonous Chain Shoulderguards",
        itemId = 220743,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 15416, name = "Black Dragonscale", count = 4 },
            { itemId = 8170, name = "Rugged Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shoulderpads of Obsession (250)
    {
        id = 446189,
        name = "Shoulderpads of Obsession",
        itemId = 220748,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 7080, name = "Essence of Water", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wailing Chain Mantle (250)
    {
        id = 446190,
        name = "Wailing Chain Mantle",
        itemId = 220744,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 15412, name = "Green Dragonscale", count = 8 },
            { itemId = 8170, name = "Rugged Leather", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Membrane of Dark Neurosis (250)
    {
        id = 446192,
        name = "Membrane of Dark Neurosis",
        itemId = 220745,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Screaming Chain Pauldrons (250)
    {
        id = 451706,
        name = "Screaming Chain Pauldrons",
        itemId = 220741,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 15412, name = "Green Dragonscale", count = 5 },
            { itemId = 8170, name = "Rugged Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dragonscale Breastplate (255)
    {
        id = 10650,
        name = "Dragonscale Breastplate",
        itemId = 8367,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 40 },
            { itemId = 8165, name = "Worn Dragonscale", count = 30 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
            { itemId = 8172, name = "Cured Thick Hide", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 9000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Scorpid Bracers (255)
    {
        id = 19048,
        name = "Heavy Scorpid Bracers",
        itemId = 15077,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15724,
            cost = 12000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wicked Leather Gauntlets (260)
    {
        id = 19049,
        name = "Wicked Leather Gauntlets",
        itemId = 15083,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15725,
            cost = 12000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Dragonscale Breastplate (260)
    {
        id = 19050,
        name = "Green Dragonscale Breastplate",
        itemId = 15045,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15412, name = "Green Dragonscale", count = 25 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15726,
            cost = 12000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Infiltrator's Bracers (260)
    {
        id = 1224618,
        name = "Scarlet Infiltrator's Bracers",
        itemId = 238275,
        skillRequired = 260,
        skillRange = { orange = 0, yellow = 260, green = 282, gray = 305 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238309,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Infiltrator's Belt (260)
    {
        id = 1224620,
        name = "Scarlet Infiltrator's Belt",
        itemId = 238277,
        skillRequired = 260,
        skillRange = { orange = 0, yellow = 260, green = 282, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238311,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Huntsman's Wristguards (260)
    {
        id = 1224626,
        name = "Scarlet Huntsman's Wristguards",
        itemId = 238283,
        skillRequired = 260,
        skillRange = { orange = 0, yellow = 260, green = 282, gray = 305 },
        reagents = {
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238317,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Huntsman's Clasp (260)
    {
        id = 1224628,
        name = "Scarlet Huntsman's Clasp",
        itemId = 238285,
        skillRequired = 260,
        skillRange = { orange = 0, yellow = 260, green = 282, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238319,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Scorpid Vest (265)
    {
        id = 19051,
        name = "Heavy Scorpid Vest",
        itemId = 15076,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15727,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wicked Leather Bracers (265)
    {
        id = 19052,
        name = "Wicked Leather Bracers",
        itemId = 15084,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Chimeric Gloves (265)
    {
        id = 19053,
        name = "Chimeric Gloves",
        itemId = 15074,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 15423, name = "Chimera Leather", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15729,
            cost = 12000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runic Leather Gauntlets (270)
    {
        id = 19055,
        name = "Runic Leather Gauntlets",
        itemId = 15091,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 14047, name = "Runecloth", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Volcanic Leggings (270)
    {
        id = 19059,
        name = "Volcanic Leggings",
        itemId = 15054,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 7078, name = "Essence of Fire", count = 1 },
            { itemId = 7075, name = "Core of Earth", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15732,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Dragonscale Leggings (270)
    {
        id = 19060,
        name = "Green Dragonscale Leggings",
        itemId = 15046,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15412, name = "Green Dragonscale", count = 25 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15733,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Living Shoulders (270)
    {
        id = 19061,
        name = "Living Shoulders",
        itemId = 15061,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15734,
            cost = 14000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ironfeather Shoulders (270)
    {
        id = 19062,
        name = "Ironfeather Shoulders",
        itemId = 15067,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 24 },
            { itemId = 15420, name = "Ironfeather", count = 80 },
            { itemId = 1529, name = "Jade", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15735,
            cost = 14000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Infiltrator's Gloves (270)
    {
        id = 1224619,
        name = "Scarlet Infiltrator's Gloves",
        itemId = 238276,
        skillRequired = 270,
        skillRange = { orange = 0, yellow = 270, green = 287, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238310,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Infiltrator's Shoes (270)
    {
        id = 1224622,
        name = "Scarlet Infiltrator's Shoes",
        itemId = 238279,
        skillRequired = 270,
        skillRange = { orange = 0, yellow = 270, green = 287, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238313,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Huntsman's Handguards (270)
    {
        id = 1224627,
        name = "Scarlet Huntsman's Handguards",
        itemId = 238284,
        skillRequired = 270,
        skillRange = { orange = 0, yellow = 270, green = 287, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238318,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Huntsman's Boots (270)
    {
        id = 1224630,
        name = "Scarlet Huntsman's Boots",
        itemId = 238287,
        skillRequired = 270,
        skillRange = { orange = 0, yellow = 270, green = 287, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238321,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Chimeric Boots (275)
    {
        id = 19063,
        name = "Chimeric Boots",
        itemId = 15073,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 15423, name = "Chimera Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15737,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Scorpid Gauntlets (275)
    {
        id = 19064,
        name = "Heavy Scorpid Gauntlets",
        itemId = 15078,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15738,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runic Leather Bracers (275)
    {
        id = 19065,
        name = "Runic Leather Bracers",
        itemId = 15092,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 7971, name = "Black Pearl", count = 1 },
            { itemId = 14047, name = "Runecloth", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frostsaber Boots (275)
    {
        id = 19066,
        name = "Frostsaber Boots",
        itemId = 15071,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 15422, name = "Frostsaber Leather", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15740,
            cost = 16000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Stormshroud Pants (275)
    {
        id = 19067,
        name = "Stormshroud Pants",
        itemId = 15057,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 16 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 7082, name = "Essence of Air", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15741,
            cost = 16000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Warbear Harness (275)
    {
        id = 19068,
        name = "Warbear Harness",
        itemId = 15064,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 28 },
            { itemId = 15419, name = "Warbear Leather", count = 12 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15742,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Scorpid Belt (280)
    {
        id = 19070,
        name = "Heavy Scorpid Belt",
        itemId = 15082,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15743,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wicked Leather Headband (280)
    {
        id = 19071,
        name = "Wicked Leather Headband",
        itemId = 15086,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runic Leather Belt (280)
    {
        id = 19072,
        name = "Runic Leather Belt",
        itemId = 15093,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 14047, name = "Runecloth", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Chimeric Leggings (280)
    {
        id = 19073,
        name = "Chimeric Leggings",
        itemId = 15072,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 15423, name = "Chimera Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15746,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Green Dragonscale Gauntlets (280)
    {
        id = 24655,
        name = "Green Dragonscale Gauntlets",
        itemId = 20296,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15412, name = "Green Dragonscale", count = 30 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 27000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Living Green Dragonscale Breastplate (280)
    {
        id = 461720,
        name = "Living Green Dragonscale Breastplate",
        itemId = 227879,
        skillRequired = 280,
        skillRange = { orange = 0, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15412, name = "Green Dragonscale", count = 25 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Infiltrator's Trousers (280)
    {
        id = 1224621,
        name = "Scarlet Infiltrator's Trousers",
        itemId = 238278,
        skillRequired = 280,
        skillRange = { orange = 0, yellow = 280, green = 292, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238312,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Huntsman's Legguards (280)
    {
        id = 1224629,
        name = "Scarlet Huntsman's Legguards",
        itemId = 238286,
        skillRequired = 280,
        skillRange = { orange = 0, yellow = 280, green = 292, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238320,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Quiver (280)
    {
        id = 1226689,
        name = "Scarlet Quiver",
        itemId = 238925,
        skillRequired = 280,
        skillRange = { orange = 0, yellow = 280, green = 285, gray = 290 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 24 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 238927,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Ammo Pouch (280)
    {
        id = 1226690,
        name = "Scarlet Ammo Pouch",
        itemId = 238926,
        skillRequired = 280,
        skillRange = { orange = 0, yellow = 280, green = 285, gray = 290 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 24 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 238928,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frostsaber Leggings (285)
    {
        id = 19074,
        name = "Frostsaber Leggings",
        itemId = 15069,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 15422, name = "Frostsaber Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15747,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Scorpid Leggings (285)
    {
        id = 19075,
        name = "Heavy Scorpid Leggings",
        itemId = 15079,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 12 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15748,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Volcanic Breastplate (285)
    {
        id = 19076,
        name = "Volcanic Breastplate",
        itemId = 15053,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 7078, name = "Essence of Fire", count = 1 },
            { itemId = 7076, name = "Essence of Earth", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15749,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blue Dragonscale Breastplate (285)
    {
        id = 19077,
        name = "Blue Dragonscale Breastplate",
        itemId = 15048,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 28 },
            { itemId = 15415, name = "Blue Dragonscale", count = 30 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15751,
            cost = 20000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Living Leggings (285)
    {
        id = 19078,
        name = "Living Leggings",
        itemId = 15060,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 16 },
            { itemId = 12803, name = "Living Essence", count = 6 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15752,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Stormshroud Armor (285)
    {
        id = 19079,
        name = "Stormshroud Armor",
        itemId = 15056,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 16 },
            { itemId = 7080, name = "Essence of Water", count = 3 },
            { itemId = 7082, name = "Essence of Air", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15753,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Warbear Woolies (285)
    {
        id = 19080,
        name = "Warbear Woolies",
        itemId = 15065,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 24 },
            { itemId = 15419, name = "Warbear Leather", count = 14 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15754,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Gordok Ogre Suit (285)
    {
        id = 22815,
        name = "Gordok Ogre Suit",
        itemId = 18258,
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
            npcName = "Any Leatherworking Trainer",
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
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Infiltrator's Bandana (285)
    {
        id = 1224615,
        name = "Scarlet Infiltrator's Bandana",
        itemId = 238272,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238306,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Infiltrator's Shoulderpads (285)
    {
        id = 1224616,
        name = "Scarlet Infiltrator's Shoulderpads",
        itemId = 238273,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238307,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Infiltrator's Vest (285)
    {
        id = 1224617,
        name = "Scarlet Infiltrator's Vest",
        itemId = 238274,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238308,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Huntsman's Coif (285)
    {
        id = 1224623,
        name = "Scarlet Huntsman's Coif",
        itemId = 238280,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 2 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238314,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Huntsman's Pauldrons (285)
    {
        id = 1224624,
        name = "Scarlet Huntsman's Pauldrons",
        itemId = 238281,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238315,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Scarlet Huntsman's Chain (285)
    {
        id = 1224625,
        name = "Scarlet Huntsman's Chain",
        itemId = 238282,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 238316,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Chimeric Vest (290)
    {
        id = 19081,
        name = "Chimeric Vest",
        itemId = 15075,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 15423, name = "Chimera Leather", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15755,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runic Leather Headband (290)
    {
        id = 19082,
        name = "Runic Leather Headband",
        itemId = 15094,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 14 },
            { itemId = 14047, name = "Runecloth", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wicked Leather Pants (290)
    {
        id = 19083,
        name = "Wicked Leather Pants",
        itemId = 15087,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 16 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 2325, name = "Black Dye", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Devilsaur Gauntlets (290)
    {
        id = 19084,
        name = "Devilsaur Gauntlets",
        itemId = 15063,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 30 },
            { itemId = 15417, name = "Devilsaur Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15758,
            cost = 22000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Dragonscale Breastplate (290)
    {
        id = 19085,
        name = "Black Dragonscale Breastplate",
        itemId = 15050,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 40 },
            { itemId = 15416, name = "Black Dragonscale", count = 60 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15759,
            cost = 22000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ironfeather Breastplate (290)
    {
        id = 19086,
        name = "Ironfeather Breastplate",
        itemId = 15066,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 40 },
            { itemId = 15420, name = "Ironfeather", count = 120 },
            { itemId = 1529, name = "Jade", count = 1 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15760,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Might of the Timbermaw (290)
    {
        id = 23703,
        name = "Might of the Timbermaw",
        itemId = 19044,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 30 },
            { itemId = 12804, name = "Powerful Mojo", count = 2 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 576,
            factionName = "Timbermaw Hold",
            level = "Honored",
            itemId = 19326,
            cost = 22000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dawn Treaders (290)
    {
        id = 23705,
        name = "Dawn Treaders",
        itemId = 19052,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 30 },
            { itemId = 12809, name = "Guardian Stone", count = 2 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Honored",
            itemId = 19328,
            cost = 22000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Living Green Dragonscale Leggings (290)
    {
        id = 461649,
        name = "Living Green Dragonscale Leggings",
        itemId = 227877,
        skillRequired = 290,
        skillRange = { orange = 0, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15412, name = "Green Dragonscale", count = 25 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Masterwork Volcanic Leggings (290)
    {
        id = 461665,
        name = "Masterwork Volcanic Leggings",
        itemId = 227867,
        skillRequired = 290,
        skillRange = { orange = 0, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 7078, name = "Essence of Fire", count = 1 },
            { itemId = 7075, name = "Core of Earth", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frostsaber Gloves (295)
    {
        id = 19087,
        name = "Frostsaber Gloves",
        itemId = 15070,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 15422, name = "Frostsaber Leather", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15761,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Scorpid Helm (295)
    {
        id = 19088,
        name = "Heavy Scorpid Helm",
        itemId = 15080,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 12 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15762,
            cost = 25000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blue Dragonscale Shoulders (295)
    {
        id = 19089,
        name = "Blue Dragonscale Shoulders",
        itemId = 15049,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 28 },
            { itemId = 15415, name = "Blue Dragonscale", count = 30 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15763,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Stormshroud Shoulders (295)
    {
        id = 19090,
        name = "Stormshroud Shoulders",
        itemId = 15058,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 7080, name = "Essence of Water", count = 3 },
            { itemId = 7082, name = "Essence of Air", count = 3 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15764,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Corehound Boots (295)
    {
        id = 20853,
        name = "Corehound Boots",
        itemId = 16982,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 17012, name = "Core Leather", count = 20 },
            { itemId = 17010, name = "Fiery Core", count = 6 },
            { itemId = 17011, name = "Lava Core", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 17022,
            cost = 150000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Red Dragonscale Breastplate (300)
    {
        id = 19054,
        name = "Red Dragonscale Breastplate",
        itemId = 15047,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 40 },
            { itemId = 15414, name = "Red Dragonscale", count = 30 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15730,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runic Leather Pants (300)
    {
        id = 19091,
        name = "Runic Leather Pants",
        itemId = 15095,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 18 },
            { itemId = 14047, name = "Runecloth", count = 12 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wicked Leather Belt (300)
    {
        id = 19092,
        name = "Wicked Leather Belt",
        itemId = 15088,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 14 },
            { itemId = 2325, name = "Black Dye", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Onyxia Scale Cloak (300)
    {
        id = 19093,
        name = "Onyxia Scale Cloak",
        itemId = 15138,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 15410, name = "Scale of Onyxia", count = 1 },
            { itemId = 14044, name = "Cindercloth Cloak", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 15769,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Dragonscale Shoulders (300)
    {
        id = 19094,
        name = "Black Dragonscale Shoulders",
        itemId = 15051,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 44 },
            { itemId = 15416, name = "Black Dragonscale", count = 45 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15770,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Living Breastplate (300)
    {
        id = 19095,
        name = "Living Breastplate",
        itemId = 15059,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 16 },
            { itemId = 12803, name = "Living Essence", count = 8 },
            { itemId = 14342, name = "Mooncloth", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15771,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Devilsaur Leggings (300)
    {
        id = 19097,
        name = "Devilsaur Leggings",
        itemId = 15062,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 30 },
            { itemId = 15417, name = "Devilsaur Leather", count = 14 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15772,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wicked Leather Armor (300)
    {
        id = 19098,
        name = "Wicked Leather Armor",
        itemId = 15085,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14256, name = "Felcloth", count = 6 },
            { itemId = 2325, name = "Black Dye", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Heavy Scorpid Shoulders (300)
    {
        id = 19100,
        name = "Heavy Scorpid Shoulders",
        itemId = 15081,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 14 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 14 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15774,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Volcanic Shoulders (300)
    {
        id = 19101,
        name = "Volcanic Shoulders",
        itemId = 15055,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 7078, name = "Essence of Fire", count = 1 },
            { itemId = 7076, name = "Essence of Earth", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15775,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runic Leather Armor (300)
    {
        id = 19102,
        name = "Runic Leather Armor",
        itemId = 15090,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 22 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 14047, name = "Runecloth", count = 16 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Runic Leather Shoulders (300)
    {
        id = 19103,
        name = "Runic Leather Shoulders",
        itemId = 15096,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 16 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 14047, name = "Runecloth", count = 18 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frostsaber Tunic (300)
    {
        id = 19104,
        name = "Frostsaber Tunic",
        itemId = 15068,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 15422, name = "Frostsaber Leather", count = 12 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15779,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Dragonscale Leggings (300)
    {
        id = 19107,
        name = "Black Dragonscale Leggings",
        itemId = 15052,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 40 },
            { itemId = 15416, name = "Black Dragonscale", count = 60 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15781,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Molten Helm (300)
    {
        id = 20854,
        name = "Molten Helm",
        itemId = 16983,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17012, name = "Core Leather", count = 15 },
            { itemId = 17010, name = "Fiery Core", count = 3 },
            { itemId = 17011, name = "Lava Core", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 17023,
            cost = 160000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Black Dragonscale Boots (300)
    {
        id = 20855,
        name = "Black Dragonscale Boots",
        itemId = 16984,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
            { itemId = 15416, name = "Black Dragonscale", count = 30 },
            { itemId = 17010, name = "Fiery Core", count = 4 },
            { itemId = 17011, name = "Lava Core", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 17025,
            cost = 160000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Core Armor Kit (300)
    {
        id = 22727,
        name = "Core Armor Kit",
        itemId = 18251,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17012, name = "Core Leather", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18252,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Girdle of Insight (300)
    {
        id = 22921,
        name = "Girdle of Insight",
        itemId = 18504,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 12804, name = "Powerful Mojo", count = 12 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18514,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mongoose Boots (300)
    {
        id = 22922,
        name = "Mongoose Boots",
        itemId = 18506,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 7082, name = "Essence of Air", count = 6 },
            { itemId = 11754, name = "Black Diamond", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18515,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Swift Flight Bracers (300)
    {
        id = 22923,
        name = "Swift Flight Bracers",
        itemId = 18508,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 18512, name = "Larval Acid", count = 8 },
            { itemId = 15420, name = "Ironfeather", count = 60 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18516,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Chromatic Cloak (300)
    {
        id = 22926,
        name = "Chromatic Cloak",
        itemId = 18509,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 30 },
            { itemId = 12607, name = "Brilliant Chromatic Scale", count = 12 },
            { itemId = 15416, name = "Black Dragonscale", count = 30 },
            { itemId = 15414, name = "Red Dragonscale", count = 30 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 5 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18517,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Hide of the Wild (300)
    {
        id = 22927,
        name = "Hide of the Wild",
        itemId = 18510,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 30 },
            { itemId = 12803, name = "Living Essence", count = 12 },
            { itemId = 7080, name = "Essence of Water", count = 10 },
            { itemId = 18512, name = "Larval Acid", count = 8 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18518,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shifting Cloak (300)
    {
        id = 22928,
        name = "Shifting Cloak",
        itemId = 18511,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 30 },
            { itemId = 7082, name = "Essence of Air", count = 12 },
            { itemId = 12753, name = "Skin of Shadow", count = 4 },
            { itemId = 12809, name = "Guardian Stone", count = 8 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18519,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Timbermaw Brawlers (300)
    {
        id = 23704,
        name = "Timbermaw Brawlers",
        itemId = 19049,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 12804, name = "Powerful Mojo", count = 6 },
            { itemId = 12803, name = "Living Essence", count = 6 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 576,
            factionName = "Timbermaw Hold",
            level = "Revered",
            itemId = 19327,
            cost = 40000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Golden Mantle of the Dawn (300)
    {
        id = 23706,
        name = "Golden Mantle of the Dawn",
        itemId = 19058,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 12809, name = "Guardian Stone", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Revered",
            itemId = 19329,
            cost = 40000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Lava Belt (300)
    {
        id = 23707,
        name = "Lava Belt",
        itemId = 19149,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17011, name = "Lava Core", count = 5 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19330,
            cost = 60000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Chromatic Gauntlets (300)
    {
        id = 23708,
        name = "Chromatic Gauntlets",
        itemId = 19157,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17010, name = "Fiery Core", count = 5 },
            { itemId = 17011, name = "Lava Core", count = 2 },
            { itemId = 17012, name = "Core Leather", count = 4 },
            { itemId = 12607, name = "Brilliant Chromatic Scale", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19331,
            cost = 90000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Corehound Belt (300)
    {
        id = 23709,
        name = "Corehound Belt",
        itemId = 19162,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17010, name = "Fiery Core", count = 8 },
            { itemId = 17012, name = "Core Leather", count = 12 },
            { itemId = 12810, name = "Enchanted Leather", count = 10 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19332,
            cost = 90000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Molten Belt (300)
    {
        id = 23710,
        name = "Molten Belt",
        itemId = 19163,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17010, name = "Fiery Core", count = 2 },
            { itemId = 17011, name = "Lava Core", count = 7 },
            { itemId = 7076, name = "Essence of Earth", count = 6 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19333,
            cost = 90000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Primal Batskin Jerkin (300)
    {
        id = 24121,
        name = "Primal Batskin Jerkin",
        itemId = 19685,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 19767, name = "Primal Bat Leather", count = 14 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 5 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Revered",
            itemId = 19769,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Primal Batskin Gloves (300)
    {
        id = 24122,
        name = "Primal Batskin Gloves",
        itemId = 19686,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 19767, name = "Primal Bat Leather", count = 10 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Honored",
            itemId = 19770,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Primal Batskin Bracers (300)
    {
        id = 24123,
        name = "Primal Batskin Bracers",
        itemId = 19687,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 19767, name = "Primal Bat Leather", count = 8 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 3 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Friendly",
            itemId = 19771,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blood Tiger Breastplate (300)
    {
        id = 24124,
        name = "Blood Tiger Breastplate",
        itemId = 19688,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 19768, name = "Primal Tiger Leather", count = 35 },
            { itemId = 19726, name = "Bloodvine", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Revered",
            itemId = 19772,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blood Tiger Shoulders (300)
    {
        id = 24125,
        name = "Blood Tiger Shoulders",
        itemId = 19689,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 19768, name = "Primal Tiger Leather", count = 25 },
            { itemId = 19726, name = "Bloodvine", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Honored",
            itemId = 19773,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blue Dragonscale Leggings (300)
    {
        id = 24654,
        name = "Blue Dragonscale Leggings",
        itemId = 20295,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 28 },
            { itemId = 15415, name = "Blue Dragonscale", count = 36 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 45000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dreamscale Breastplate (300)
    {
        id = 24703,
        name = "Dreamscale Breastplate",
        itemId = 20380,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 20381, name = "Dreamscale", count = 6 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Exalted",
            itemId = 20382,
            cost = 60000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Spitfire Bracers (300)
    {
        id = 24846,
        name = "Spitfire Bracers",
        itemId = 20481,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 20500, name = "Light Silithid Carapace", count = 1 },
            { itemId = 20498, name = "Silithid Chitin", count = 20 },
            { itemId = 7078, name = "Essence of Fire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Friendly",
            itemId = 20506,
            cost = 40000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Spitfire Gauntlets (300)
    {
        id = 24847,
        name = "Spitfire Gauntlets",
        itemId = 20480,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 20500, name = "Light Silithid Carapace", count = 2 },
            { itemId = 20498, name = "Silithid Chitin", count = 30 },
            { itemId = 7078, name = "Essence of Fire", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Honored",
            itemId = 20507,
            cost = 40000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Spitfire Breastplate (300)
    {
        id = 24848,
        name = "Spitfire Breastplate",
        itemId = 20479,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 20500, name = "Light Silithid Carapace", count = 3 },
            { itemId = 20498, name = "Silithid Chitin", count = 40 },
            { itemId = 7078, name = "Essence of Fire", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Revered",
            itemId = 20508,
            cost = 40000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Sandstalker Bracers (300)
    {
        id = 24849,
        name = "Sandstalker Bracers",
        itemId = 20476,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 20501, name = "Heavy Silithid Carapace", count = 1 },
            { itemId = 20498, name = "Silithid Chitin", count = 20 },
            { itemId = 18512, name = "Larval Acid", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Friendly",
            itemId = 20509,
            cost = 40000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Sandstalker Gauntlets (300)
    {
        id = 24850,
        name = "Sandstalker Gauntlets",
        itemId = 20477,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 20501, name = "Heavy Silithid Carapace", count = 2 },
            { itemId = 20498, name = "Silithid Chitin", count = 30 },
            { itemId = 18512, name = "Larval Acid", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Honored",
            itemId = 20510,
            cost = 40000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Sandstalker Breastplate (300)
    {
        id = 24851,
        name = "Sandstalker Breastplate",
        itemId = 20478,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 20501, name = "Heavy Silithid Carapace", count = 3 },
            { itemId = 20498, name = "Silithid Chitin", count = 40 },
            { itemId = 18512, name = "Larval Acid", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Revered",
            itemId = 20511,
            cost = 40000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Stormshroud Gloves (300)
    {
        id = 26279,
        name = "Stormshroud Gloves",
        itemId = 21278,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
            { itemId = 7082, name = "Essence of Air", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 21548,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Polar Tunic (300)
    {
        id = 28219,
        name = "Polar Tunic",
        itemId = 22661,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22682, name = "Frozen Rune", count = 7 },
            { itemId = 12810, name = "Enchanted Leather", count = 16 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Exalted",
            itemId = 22692,
            cost = 150000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Polar Gloves (300)
    {
        id = 28220,
        name = "Polar Gloves",
        itemId = 22662,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22682, name = "Frozen Rune", count = 5 },
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 3 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Revered",
            itemId = 22694,
            cost = 150000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Polar Bracers (300)
    {
        id = 28221,
        name = "Polar Bracers",
        itemId = 22663,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22682, name = "Frozen Rune", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 749,
            factionName = "Hydraxian Waterlords",
            level = "Revered",
            itemId = 22695,
            cost = 150000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Icy Scale Breastplate (300)
    {
        id = 28222,
        name = "Icy Scale Breastplate",
        itemId = 22664,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22682, name = "Frozen Rune", count = 7 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 24 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Exalted",
            itemId = 22696,
            cost = 150000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Icy Scale Gauntlets (300)
    {
        id = 28223,
        name = "Icy Scale Gauntlets",
        itemId = 22666,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22682, name = "Frozen Rune", count = 5 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 16 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 3 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Revered",
            itemId = 22697,
            cost = 150000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Icy Scale Bracers (300)
    {
        id = 28224,
        name = "Icy Scale Bracers",
        itemId = 22665,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 22682, name = "Frozen Rune", count = 4 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 16 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 749,
            factionName = "Hydraxian Waterlords",
            level = "Revered",
            itemId = 22698,
            cost = 150000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bramblewood Helm (300)
    {
        id = 28472,
        name = "Bramblewood Helm",
        itemId = 22759,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 19726, name = "Bloodvine", count = 2 },
            { itemId = 12803, name = "Living Essence", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Revered",
            itemId = 22771,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bramblewood Boots (300)
    {
        id = 28473,
        name = "Bramblewood Boots",
        itemId = 22760,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
            { itemId = 18512, name = "Larval Acid", count = 2 },
            { itemId = 12803, name = "Living Essence", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Honored",
            itemId = 22770,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bramblewood Belt (300)
    {
        id = 28474,
        name = "Bramblewood Belt",
        itemId = 22761,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 12803, name = "Living Essence", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Friendly",
            itemId = 22769,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Living Green Dragonscale Gauntlets (300)
    {
        id = 461677,
        name = "Living Green Dragonscale Gauntlets",
        itemId = 227878,
        skillRequired = 300,
        skillRange = { orange = 0, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15412, name = "Green Dragonscale", count = 25 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Masterwork Volcanic Breastplate (305)
    {
        id = 461661,
        name = "Masterwork Volcanic Breastplate",
        itemId = 227868,
        skillRequired = 305,
        skillRange = { orange = 0, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 7078, name = "Essence of Fire", count = 1 },
            { itemId = 7076, name = "Essence of Earth", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Honed Blue Dragonscale Breastplate (305)
    {
        id = 461673,
        name = "Honed Blue Dragonscale Breastplate",
        itemId = 227875,
        skillRequired = 305,
        skillRange = { orange = 0, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 28 },
            { itemId = 15415, name = "Blue Dragonscale", count = 30 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Hardened Black Dragonscale Breastplate (310)
    {
        id = 461655,
        name = "Hardened Black Dragonscale Breastplate",
        itemId = 227851,
        skillRequired = 310,
        skillRange = { orange = 0, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 40 },
            { itemId = 15416, name = "Black Dragonscale", count = 60 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Devilcore Gauntlets (310)
    {
        id = 461722,
        name = "Devilcore Gauntlets",
        itemId = 227848,
        skillRequired = 310,
        skillRange = { orange = 0, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 30 },
            { itemId = 15417, name = "Devilsaur Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 7078, name = "Essence of Fire", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Honed Blue Dragonscale Shoulders (315)
    {
        id = 461645,
        name = "Honed Blue Dragonscale Shoulders",
        itemId = 227873,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 28 },
            { itemId = 15415, name = "Blue Dragonscale", count = 30 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Brilliant Chromatic Cloak (320)
    {
        id = 461653,
        name = "Brilliant Chromatic Cloak",
        itemId = 227869,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 30 },
            { itemId = 12607, name = "Brilliant Chromatic Scale", count = 12 },
            { itemId = 15416, name = "Black Dragonscale", count = 30 },
            { itemId = 15414, name = "Red Dragonscale", count = 30 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 5 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Hardened Black Dragonscale Leggings (320)
    {
        id = 461657,
        name = "Hardened Black Dragonscale Leggings",
        itemId = 227852,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 40 },
            { itemId = 15416, name = "Black Dragonscale", count = 60 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Hardened Black Dragonscale Shoulders (320)
    {
        id = 461659,
        name = "Hardened Black Dragonscale Shoulders",
        itemId = 227853,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 44 },
            { itemId = 15416, name = "Black Dragonscale", count = 45 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Masterwork Volcanic Shoulders (320)
    {
        id = 461663,
        name = "Masterwork Volcanic Shoulders",
        itemId = 227866,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 7078, name = "Essence of Fire", count = 1 },
            { itemId = 7076, name = "Essence of Earth", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mastercrafted Shifting Cloak (320)
    {
        id = 461690,
        name = "Mastercrafted Shifting Cloak",
        itemId = 227854,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 30 },
            { itemId = 7082, name = "Essence of Air", count = 12 },
            { itemId = 12753, name = "Skin of Shadow", count = 4 },
            { itemId = 12809, name = "Guardian Stone", count = 8 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Swift Flight Vambraces (320)
    {
        id = 461706,
        name = "Swift Flight Vambraces",
        itemId = 227883,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 18512, name = "Larval Acid", count = 8 },
            { itemId = 15420, name = "Ironfeather", count = 60 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Devilcore Leggings (320)
    {
        id = 461724,
        name = "Devilcore Leggings",
        itemId = 227847,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 30 },
            { itemId = 15417, name = "Devilsaur Leather", count = 20 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 7078, name = "Essence of Fire", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Girdle of Arcane Insight (320)
    {
        id = 461754,
        name = "Girdle of Arcane Insight",
        itemId = 227882,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 12804, name = "Powerful Mojo", count = 12 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Honed Blue Dragonscale Leggings (320)
    {
        id = 462227,
        name = "Honed Blue Dragonscale Leggings",
        itemId = 227874,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 28 },
            { itemId = 15415, name = "Blue Dragonscale", count = 36 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Glowing Chitin Armor Kit (320)
    {
        id = 1213513,
        name = "Glowing Chitin Armor Kit",
        itemId = 233802,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 234007, name = "Spiked Silithid Chitin", count = 5 },
            { itemId = 14342, name = "Mooncloth", count = 3 },
            { itemId = 18251, name = "Core Armor Kit", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Sharpened Chitin Armor Kit (320)
    {
        id = 1213519,
        name = "Sharpened Chitin Armor Kit",
        itemId = 233803,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 234007, name = "Spiked Silithid Chitin", count = 5 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 3 },
            { itemId = 18251, name = "Core Armor Kit", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Razorbramble Cowl (320)
    {
        id = 1213521,
        name = "Razorbramble Cowl",
        itemId = 233808,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 234007, name = "Spiked Silithid Chitin", count = 15 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 234009, name = "Bolt of Qiraji Silk", count = 8 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Razorbramble Shoulderpads (320)
    {
        id = 1213523,
        name = "Razorbramble Shoulderpads",
        itemId = 233804,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 234007, name = "Spiked Silithid Chitin", count = 15 },
            { itemId = 12810, name = "Enchanted Leather", count = 8 },
            { itemId = 234009, name = "Bolt of Qiraji Silk", count = 8 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Razorbramble Leathers (320)
    {
        id = 1213525,
        name = "Razorbramble Leathers",
        itemId = 233813,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 234007, name = "Spiked Silithid Chitin", count = 22 },
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 234009, name = "Bolt of Qiraji Silk", count = 12 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Sandstalker Bracers (320)
    {
        id = 1213717,
        name = "Sandstalker Bracers",
        itemId = 234294,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 20501, name = "Heavy Silithid Carapace", count = 2 },
            { itemId = 20498, name = "Silithid Chitin", count = 20 },
            { itemId = 18512, name = "Larval Acid", count = 4 },
            { itemId = 19726, name = "Bloodvine", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Sandstalker Gauntlets (320)
    {
        id = 1213720,
        name = "Sandstalker Gauntlets",
        itemId = 234296,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 20501, name = "Heavy Silithid Carapace", count = 4 },
            { itemId = 20498, name = "Silithid Chitin", count = 30 },
            { itemId = 18512, name = "Larval Acid", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 19726, name = "Bloodvine", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Sandstalker Breastplate (320)
    {
        id = 1213723,
        name = "Sandstalker Breastplate",
        itemId = 234298,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 20501, name = "Heavy Silithid Carapace", count = 5 },
            { itemId = 20498, name = "Silithid Chitin", count = 40 },
            { itemId = 18512, name = "Larval Acid", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 19726, name = "Bloodvine", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Spitfire Bracers (320)
    {
        id = 1213726,
        name = "Spitfire Bracers",
        itemId = 234300,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 20500, name = "Light Silithid Carapace", count = 2 },
            { itemId = 20498, name = "Silithid Chitin", count = 20 },
            { itemId = 7078, name = "Essence of Fire", count = 2 },
            { itemId = 19726, name = "Bloodvine", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Spitfire Gauntlets (320)
    {
        id = 1213728,
        name = "Spitfire Gauntlets",
        itemId = 234302,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 20500, name = "Light Silithid Carapace", count = 3 },
            { itemId = 20498, name = "Silithid Chitin", count = 30 },
            { itemId = 7078, name = "Essence of Fire", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 19726, name = "Bloodvine", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Spitfire Breastplate (320)
    {
        id = 1213731,
        name = "Spitfire Breastplate",
        itemId = 234304,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 20500, name = "Light Silithid Carapace", count = 4 },
            { itemId = 20498, name = "Silithid Chitin", count = 40 },
            { itemId = 7078, name = "Essence of Fire", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 19726, name = "Bloodvine", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bramblewood Belt (320)
    {
        id = 1213734,
        name = "Bramblewood Belt",
        itemId = 234306,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 19726, name = "Bloodvine", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bramblewood Boots (320)
    {
        id = 1213736,
        name = "Bramblewood Boots",
        itemId = 234308,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
            { itemId = 18512, name = "Larval Acid", count = 3 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 19726, name = "Bloodvine", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Bramblewood Helm (320)
    {
        id = 1213738,
        name = "Bramblewood Helm",
        itemId = 234310,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 14 },
            { itemId = 19726, name = "Bloodvine", count = 7 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dreamscale Breastplate (320)
    {
        id = 1213751,
        name = "Dreamscale Breastplate",
        itemId = 234324,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 20381, name = "Dreamscale", count = 6 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dreamscale Kilt (320)
    {
        id = 1214303,
        name = "Dreamscale Kilt",
        itemId = 234482,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 20381, name = "Dreamscale", count = 6 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Icy Scale Breastplate (320)
    {
        id = 1223774,
        name = "Icy Scale Breastplate",
        itemId = 236699,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 7 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 24 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Icy Scale Gauntlets (320)
    {
        id = 1223776,
        name = "Icy Scale Gauntlets",
        itemId = 236700,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 5 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 16 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 3 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Icy Scale Bracers (320)
    {
        id = 1223778,
        name = "Icy Scale Bracers",
        itemId = 236698,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 4 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 16 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Polar Tunic (320)
    {
        id = 1223780,
        name = "Polar Tunic",
        itemId = 236702,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 7 },
            { itemId = 12810, name = "Enchanted Leather", count = 16 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Polar Gloves (320)
    {
        id = 1223782,
        name = "Polar Gloves",
        itemId = 236703,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 5 },
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 3 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Polar Bracers (320)
    {
        id = 1223784,
        name = "Polar Bracers",
        itemId = 236701,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 236656, name = "Frozen Rune", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
}

CraftLib:RegisterProfession("leatherworking", {
    id = C.PROFESSION_ID.LEATHERWORKING,
    name = "Leatherworking",
    expansion = C.EXPANSION.SOD,
    flavor = "SOD",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
