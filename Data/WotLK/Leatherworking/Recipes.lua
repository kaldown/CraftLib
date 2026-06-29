-- Data/WotLK/Leatherworking/Recipes.lua
-- Leatherworking recipes for WotLK Classic
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 5786,
            cost = 550,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Deviate Scale Cloak (90)
    {
        id = 7953,
        name = "Deviate Scale Cloak",
        itemId = 6466,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 120, green = 135, gray = 150 },
        reagents = {
            { itemId = 6470, name = "Deviate Scale", count = 4 },
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6474,
            cost = 550,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 5787,
            cost = 600,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Deviate Scale Gloves (105)
    {
        id = 7954,
        name = "Deviate Scale Gloves",
        itemId = 6467,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 130, green = 142, gray = 155 },
        reagents = {
            { itemId = 6470, name = "Deviate Scale", count = 5 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6475,
            cost = 1500,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Deviate Scale Belt (115)
    {
        id = 7955,
        name = "Deviate Scale Belt",
        itemId = 6468,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 140, green = 152, gray = 165 },
        reagents = {
            { itemId = 6471, name = "Perfect Deviate Scale", count = 6 },
            { itemId = 6470, name = "Deviate Scale", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 6476,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 4231, name = "Cured Light Hide", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 450,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Dark Leather Gloves (120)
    {
        id = 3765,
        name = "Dark Leather Gloves",
        itemId = 4248,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 155, green = 167, gray = 180 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 5373, name = "Lucky Charm", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7360,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 4233, name = "Cured Medium Hide", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 5788,
            cost = 650,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 1200,
        },
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 1200,
        },
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 2000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 5500, name = "Iridescent Pearl", count = 1 },
            { itemId = 1529, name = "Jade", count = 1 },
            { itemId = 3864, name = "Citrine", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14635,
            cost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 2000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 2000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 5789,
            cost = 2800,
        },
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 2400,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 10285, name = "Shadow Silk", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7452,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 2000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 2000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 10285, name = "Shadow Silk", count = 8 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18239,
            cost = 3500,
        },
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 8385,
            cost = 3500,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 3500,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 8153, name = "Wildvine", count = 12 },
            { itemId = 8172, name = "Cured Thick Hide", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 3600,
        },
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 3600,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 7079, name = "Globe of Water", count = 4 },
            { itemId = 8172, name = "Cured Thick Hide", count = 1 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Helm of Fire (250)
    {
        id = 10632,
        name = "Helm of Fire",
        itemId = 8348,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 30 },
            { itemId = 7077, name = "Heart of Fire", count = 8 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Feathered Breastplate (250)
    {
        id = 10647,
        name = "Feathered Breastplate",
        itemId = 8349,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 25 },
            { itemId = 17056, name = "Light Feather", count = 20 },
            { itemId = 7971, name = "Black Pearl", count = 2 },
            { itemId = 8172, name = "Cured Thick Hide", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Rugged Armor Kit (250)
    {
        id = 19058,
        name = "Rugged Armor Kit",
        itemId = 15564,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Blackstorm Leggings (260)
    {
        id = 36074,
        name = "Blackstorm Leggings",
        itemId = 29964,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 7081, name = "Breath of Wind", count = 8 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Wildfeather Leggings (260)
    {
        id = 36075,
        name = "Wildfeather Leggings",
        itemId = 29970,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 17056, name = "Light Feather", count = 5 },
            { itemId = 8153, name = "Wildvine", count = 4 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Dragonstrike Leggings (260)
    {
        id = 36076,
        name = "Dragonstrike Leggings",
        itemId = 29971,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 8165, name = "Worn Dragonscale", count = 10 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 12803, name = "Living Essence", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15729,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 17056, name = "Light Feather", count = 40 },
            { itemId = 1529, name = "Jade", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15735,
            cost = 14000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 12803, name = "Living Essence", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15737,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 7080, name = "Essence of Water", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15740,
            cost = 16000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 7082, name = "Essence of Air", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15741,
            cost = 16000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15742,
            cost = 16000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Runic Leather Belt (280)
    {
        id = 19072,
        name = "Runic Leather Belt",
        itemId = 15093,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 14047, name = "Runecloth", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 12803, name = "Living Essence", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15746,
        },
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 7080, name = "Essence of Water", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15747,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 7082, name = "Essence of Air", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15753,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Winter Boots (285)
    {
        id = 44953,
        name = "Winter Boots",
        itemId = 34086,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 285, green = 285, gray = 285 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 1 },
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 34262,
            cost = 5000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 12803, name = "Living Essence", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15755,
        },
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Wicked Leather Pants (290)
    {
        id = 19083,
        name = "Wicked Leather Pants",
        itemId = 15087,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 2325, name = "Black Dye", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Black Dragonscale Breastplate (290)
    {
        id = 19085,
        name = "Black Dragonscale Breastplate",
        itemId = 15050,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 25 },
            { itemId = 15416, name = "Black Dragonscale", count = 25 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15759,
            cost = 22000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ironfeather Breastplate (290)
    {
        id = 19086,
        name = "Ironfeather Breastplate",
        itemId = 15066,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 35 },
            { itemId = 17056, name = "Light Feather", count = 40 },
            { itemId = 1529, name = "Jade", count = 1 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15760,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 7080, name = "Essence of Water", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15761,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 7082, name = "Essence of Air", count = 3 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15764,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Black Dragonscale Shoulders (300)
    {
        id = 19094,
        name = "Black Dragonscale Shoulders",
        itemId = 15051,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15416, name = "Black Dragonscale", count = 15 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15770,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 14256, name = "Felcloth", count = 2 },
            { itemId = 2325, name = "Black Dye", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 7080, name = "Essence of Water", count = 1 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15779,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Black Dragonscale Leggings (300)
    {
        id = 19107,
        name = "Black Dragonscale Leggings",
        itemId = 15052,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 25 },
            { itemId = 15416, name = "Black Dragonscale", count = 25 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15781,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Molten Helm (300)
    {
        id = 20854,
        name = "Molten Helm",
        itemId = 16983,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17012, name = "Core Leather", count = 12 },
            { itemId = 17010, name = "Fiery Core", count = 3 },
            { itemId = 17011, name = "Lava Core", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 17023,
            cost = 160000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Black Dragonscale Boots (300)
    {
        id = 20855,
        name = "Black Dragonscale Boots",
        itemId = 16984,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 15416, name = "Black Dragonscale", count = 18 },
            { itemId = 17010, name = "Fiery Core", count = 3 },
            { itemId = 17011, name = "Lava Core", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 17025,
            cost = 160000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18516,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Chromatic Cloak (300)
    {
        id = 22926,
        name = "Chromatic Cloak",
        itemId = 18509,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 25 },
            { itemId = 12607, name = "Brilliant Chromatic Scale", count = 4 },
            { itemId = 15416, name = "Black Dragonscale", count = 12 },
            { itemId = 15414, name = "Red Dragonscale", count = 12 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18517,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 18512, name = "Larval Acid", count = 5 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18518,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Shifting Cloak (300)
    {
        id = 22928,
        name = "Shifting Cloak",
        itemId = 18511,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 10 },
            { itemId = 12753, name = "Skin of Shadow", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18519,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Lava Belt (300)
    {
        id = 23707,
        name = "Lava Belt",
        itemId = 19149,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17011, name = "Lava Core", count = 2 },
            { itemId = 17012, name = "Core Leather", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19330,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Chromatic Gauntlets (300)
    {
        id = 23708,
        name = "Chromatic Gauntlets",
        itemId = 19157,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17010, name = "Fiery Core", count = 3 },
            { itemId = 17011, name = "Lava Core", count = 2 },
            { itemId = 17012, name = "Core Leather", count = 8 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19331,
            cost = 90000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Corehound Belt (300)
    {
        id = 23709,
        name = "Corehound Belt",
        itemId = 19162,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17010, name = "Fiery Core", count = 4 },
            { itemId = 17012, name = "Core Leather", count = 12 },
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19332,
            cost = 90000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 17011, name = "Lava Core", count = 2 },
            { itemId = 17012, name = "Core Leather", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19333,
            cost = 90000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Blood Tiger Breastplate (300)
    {
        id = 24124,
        name = "Blood Tiger Breastplate",
        itemId = 19688,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 19768, name = "Primal Tiger Leather", count = 25 },
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Dreamscale Breastplate (300)
    {
        id = 24703,
        name = "Dreamscale Breastplate",
        itemId = 20380,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 20381, name = "Dreamscale", count = 3 },
            { itemId = 12803, name = "Living Essence", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Exalted",
            itemId = 20382,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 7082, name = "Essence of Air", count = 4 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 21548,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Bramblewood Helm (300)
    {
        id = 28472,
        name = "Bramblewood Helm",
        itemId = 22759,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Knothide Leather (300)
    {
        id = 32454,
        name = "Knothide Leather",
        itemId = 21887,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 300, green = 305, gray = 310 },
        reagents = {
            { itemId = 25649, name = "Knothide Leather Scraps", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Knothide Armor Kit (300)
    {
        id = 32456,
        name = "Knothide Armor Kit",
        itemId = 25650,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 325, gray = 340 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Felscale Gloves (300)
    {
        id = 32462,
        name = "Felscale Gloves",
        itemId = 25654,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 5 },
            { itemId = 25700, name = "Fel Scales", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scaled Draenic Pants (300)
    {
        id = 32466,
        name = "Scaled Draenic Pants",
        itemId = 25662,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 6 },
            { itemId = 25700, name = "Fel Scales", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Thick Draenic Gloves (300)
    {
        id = 32470,
        name = "Thick Draenic Gloves",
        itemId = 25669,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Wild Draenish Boots (300)
    {
        id = 32478,
        name = "Wild Draenish Boots",
        itemId = 25673,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Comfortable Insoles (300)
    {
        id = 32482,
        name = "Comfortable Insoles",
        itemId = 25679,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 300, green = 305, gray = 310 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 25726,
            cost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Leatherworker's Satchel (300)
    {
        id = 45100,
        name = "Leatherworker's Satchel",
        itemId = 34482,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 20 },
            { itemId = 25700, name = "Fel Scales", count = 4 },
            { itemId = 25707, name = "Fel Hide", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Felscale Boots (310)
    {
        id = 32463,
        name = "Felscale Boots",
        itemId = 25655,
        skillRequired = 310,
        skillRange = { orange = 310, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 8 },
            { itemId = 25700, name = "Fel Scales", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 18000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Scaled Draenic Gloves (310)
    {
        id = 32467,
        name = "Scaled Draenic Gloves",
        itemId = 25661,
        skillRequired = 310,
        skillRange = { orange = 310, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 8 },
            { itemId = 25700, name = "Fel Scales", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 18000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Wild Draenish Gloves (310)
    {
        id = 32479,
        name = "Wild Draenish Gloves",
        itemId = 25674,
        skillRequired = 310,
        skillRange = { orange = 310, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 9 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 18000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Thick Draenic Pants (315)
    {
        id = 32471,
        name = "Thick Draenic Pants",
        itemId = 25670,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 325, green = 335, gray = 345 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 18000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Knothide Ammo Pouch (315)
    {
        id = 44343,
        name = "Knothide Ammo Pouch",
        itemId = 34099,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 325, green = 335, gray = 345 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 24 },
            { itemId = 14341, name = "Rune Thread", count = 4 },
            { itemId = 22451, name = "Primal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 18000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Knothide Quiver (315)
    {
        id = 44344,
        name = "Knothide Quiver",
        itemId = 34100,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 325, green = 335, gray = 345 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 20 },
            { itemId = 25719, name = "Arakkoa Feather", count = 30 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 18000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Felscale Pants (320)
    {
        id = 32464,
        name = "Felscale Pants",
        itemId = 25656,
        skillRequired = 320,
        skillRange = { orange = 320, yellow = 330, green = 340, gray = 350 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 10 },
            { itemId = 25700, name = "Fel Scales", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Thick Draenic Boots (320)
    {
        id = 32472,
        name = "Thick Draenic Boots",
        itemId = 25668,
        skillRequired = 320,
        skillRange = { orange = 320, yellow = 330, green = 340, gray = 350 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Wild Draenish Leggings (320)
    {
        id = 32480,
        name = "Wild Draenish Leggings",
        itemId = 25675,
        skillRequired = 320,
        skillRange = { orange = 320, yellow = 330, green = 340, gray = 350 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 13 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Heavy Knothide Leather (325)
    {
        id = 32455,
        name = "Heavy Knothide Leather",
        itemId = 23793,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 330, gray = 335 },
        reagents = {
            { itemId = 21887, name = "Knothide Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Vindicator's Armor Kit (325)
    {
        id = 32457,
        name = "Vindicator's Armor Kit",
        itemId = 25651,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 335, green = 340, gray = 345 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 3 },
            { itemId = 22452, name = "Primal Earth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 932,
            factionName = "The Aldor",
            level = "Revered",
            itemId = 25721,
            cost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Magister's Armor Kit (325)
    {
        id = 32458,
        name = "Magister's Armor Kit",
        itemId = 25652,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 335, green = 340, gray = 345 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 3 },
            { itemId = 22457, name = "Primal Mana", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Revered",
            itemId = 25722,
            cost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Scaled Draenic Vest (325)
    {
        id = 32468,
        name = "Scaled Draenic Vest",
        itemId = 25660,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 335, green = 345, gray = 355 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 2 },
            { itemId = 25700, name = "Fel Scales", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Reinforced Mining Bag (325)
    {
        id = 35530,
        name = "Reinforced Mining Bag",
        itemId = 29540,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 335, green = 340, gray = 345 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 22452, name = "Primal Earth", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 978,
            factionName = "Kurenai",
            level = "Honored",
            itemId = 30444,
            cost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Thick Draenic Vest (330)
    {
        id = 32473,
        name = "Thick Draenic Vest",
        itemId = 25671,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 340, green = 350, gray = 360 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 25000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Wild Draenish Vest (330)
    {
        id = 32481,
        name = "Wild Draenish Vest",
        itemId = 25676,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 340, green = 350, gray = 360 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 25000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Primalstorm Breastplate (330)
    {
        id = 36077,
        name = "Primalstorm Breastplate",
        itemId = 29973,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 350, green = 360, gray = 370 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 22451, name = "Primal Air", count = 2 },
            { itemId = 22452, name = "Primal Earth", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Living Crystal Breastplate (330)
    {
        id = 36078,
        name = "Living Crystal Breastplate",
        itemId = 29974,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 350, green = 360, gray = 370 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 25699, name = "Crystal Infused Leather", count = 12 },
            { itemId = 21886, name = "Primal Life", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Golden Dragonstrike Breastplate (330)
    {
        id = 36079,
        name = "Golden Dragonstrike Breastplate",
        itemId = 29975,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 350, green = 360, gray = 370 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 15416, name = "Black Dragonscale", count = 8 },
            { itemId = 21884, name = "Primal Fire", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 40000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Felscale Breastplate (335)
    {
        id = 32465,
        name = "Felscale Breastplate",
        itemId = 25657,
        skillRequired = 335,
        skillRange = { orange = 335, yellow = 345, green = 355, gray = 365 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 2 },
            { itemId = 25700, name = "Fel Scales", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 25000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Scaled Draenic Boots (335)
    {
        id = 32469,
        name = "Scaled Draenic Boots",
        itemId = 25659,
        skillRequired = 335,
        skillRange = { orange = 335, yellow = 345, green = 355, gray = 365 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 2 },
            { itemId = 25700, name = "Fel Scales", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 25000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Cobrahide Leg Armor (335)
    {
        id = 35549,
        name = "Cobrahide Leg Armor",
        itemId = 29533,
        skillRequired = 335,
        skillRange = { orange = 335, yellow = 335, green = 345, gray = 355 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 29539, name = "Cobra Scales", count = 2 },
            { itemId = 22451, name = "Primal Air", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 947,
            factionName = "Thrallmar",
            level = "Honored",
            itemId = 31361,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Clefthide Leg Armor (335)
    {
        id = 35555,
        name = "Clefthide Leg Armor",
        itemId = 29534,
        skillRequired = 335,
        skillRange = { orange = 335, yellow = 335, green = 345, gray = 355 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 25708, name = "Thick Clefthoof Leather", count = 8 },
            { itemId = 22452, name = "Primal Earth", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Honored",
            itemId = 29720,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Leather Gloves (340)
    {
        id = 32490,
        name = "Fel Leather Gloves",
        itemId = 25685,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 350, green = 360, gray = 370 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 25707, name = "Fel Hide", count = 6 },
            { itemId = 22456, name = "Primal Shadow", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Friendly",
            itemId = 25732,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Netherfury Belt (340)
    {
        id = 32501,
        name = "Netherfury Belt",
        itemId = 25694,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 350, green = 360, gray = 370 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 25699, name = "Crystal Infused Leather", count = 8 },
            { itemId = 21885, name = "Primal Water", count = 3 },
            { itemId = 22457, name = "Primal Mana", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 978,
            factionName = "Kurenai",
            level = "Friendly",
            itemId = 29217,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Netherfury Leggings (340)
    {
        id = 32502,
        name = "Netherfury Leggings",
        itemId = 25692,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 350, green = 360, gray = 370 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 8 },
            { itemId = 25699, name = "Crystal Infused Leather", count = 12 },
            { itemId = 21885, name = "Primal Water", count = 5 },
            { itemId = 22457, name = "Primal Mana", count = 5 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 978,
            factionName = "Kurenai",
            level = "Honored",
            itemId = 29219,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shadow Armor Kit (340)
    {
        id = 35520,
        name = "Shadow Armor Kit",
        itemId = 29483,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 350, green = 355, gray = 360 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 21886, name = "Primal Life", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 29669,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Flame Armor Kit (340)
    {
        id = 35521,
        name = "Flame Armor Kit",
        itemId = 29485,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 350, green = 355, gray = 360 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 21885, name = "Primal Water", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 29672,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Frost Armor Kit (340)
    {
        id = 35522,
        name = "Frost Armor Kit",
        itemId = 29486,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 350, green = 355, gray = 360 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 21884, name = "Primal Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 29673,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Nature Armor Kit (340)
    {
        id = 35523,
        name = "Nature Armor Kit",
        itemId = 29487,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 350, green = 355, gray = 360 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 22456, name = "Primal Shadow", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 29674,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Arcane Armor Kit (340)
    {
        id = 35524,
        name = "Arcane Armor Kit",
        itemId = 29488,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 350, green = 355, gray = 360 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 22457, name = "Primal Mana", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 29675,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Drums of War (340)
    {
        id = 35540,
        name = "Drums of War",
        itemId = 29528,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 340, green = 347, gray = 355 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 3 },
            { itemId = 25700, name = "Fel Scales", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Greater Drums of War (340)
    {
        id = 351766,
        name = "Greater Drums of War",
        itemId = 185852,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 340, green = 347, gray = 355 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 3 },
            { itemId = 25700, name = "Fel Scales", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Drums of Speed (345)
    {
        id = 35544,
        name = "Drums of Speed",
        itemId = 29530,
        skillRequired = 345,
        skillRange = { orange = 345, yellow = 345, green = 352, gray = 360 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29547, name = "Wind Scales", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 978,
            factionName = "Kurenai",
            level = "Honored",
            itemId = 34173,
            cost = 160000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Greater Drums of Speed (345)
    {
        id = 351768,
        name = "Greater Drums of Speed",
        itemId = 185851,
        skillRequired = 345,
        skillRange = { orange = 345, yellow = 345, green = 352, gray = 360 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29547, name = "Wind Scales", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 978,
            factionName = "Kurenai",
            level = "Honored",
            itemId = 187049,
            cost = 160000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Riding Crop (350)
    {
        id = 32461,
        name = "Riding Crop",
        itemId = 25653,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 23571, name = "Primal Might", count = 1 },
            { itemId = 22445, name = "Arcane Dust", count = 6 },
            { itemId = 22448, name = "Small Prismatic Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 25725,
            cost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stylin' Purple Hat (350)
    {
        id = 32485,
        name = "Stylin' Purple Hat",
        itemId = 25680,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29539, name = "Cobra Scales", count = 2 },
            { itemId = 22456, name = "Primal Shadow", count = 8 },
            { itemId = 4342, name = "Purple Dye", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 25728,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stylin' Adventure Hat (350)
    {
        id = 32487,
        name = "Stylin' Adventure Hat",
        itemId = 25681,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29539, name = "Cobra Scales", count = 2 },
            { itemId = 21886, name = "Primal Life", count = 8 },
            { itemId = 2325, name = "Black Dye", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 25729,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stylin' Crimson Hat (350)
    {
        id = 32488,
        name = "Stylin' Crimson Hat",
        itemId = 25683,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29539, name = "Cobra Scales", count = 2 },
            { itemId = 21884, name = "Primal Fire", count = 8 },
            { itemId = 2604, name = "Red Dye", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 25731,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stylin' Jungle Hat (350)
    {
        id = 32489,
        name = "Stylin' Jungle Hat",
        itemId = 25682,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29539, name = "Cobra Scales", count = 2 },
            { itemId = 22452, name = "Primal Earth", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 25730,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Leather Boots (350)
    {
        id = 32493,
        name = "Fel Leather Boots",
        itemId = 25686,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 10 },
            { itemId = 25707, name = "Fel Hide", count = 8 },
            { itemId = 22456, name = "Primal Shadow", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Honored",
            itemId = 25733,
            cost = 140000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Leather Leggings (350)
    {
        id = 32494,
        name = "Fel Leather Leggings",
        itemId = 25687,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 10 },
            { itemId = 25707, name = "Fel Hide", count = 10 },
            { itemId = 22456, name = "Primal Shadow", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Revered",
            itemId = 25734,
            cost = 140000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Felstalker Belt (350)
    {
        id = 32498,
        name = "Felstalker Belt",
        itemId = 25695,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 25707, name = "Fel Hide", count = 4 },
            { itemId = 25699, name = "Crystal Infused Leather", count = 8 },
            { itemId = 22451, name = "Primal Air", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 946,
            factionName = "Honor Hold",
            level = "Friendly",
            itemId = 29213,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Netherfury Boots (350)
    {
        id = 32503,
        name = "Netherfury Boots",
        itemId = 25693,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 25699, name = "Crystal Infused Leather", count = 10 },
            { itemId = 21885, name = "Primal Water", count = 4 },
            { itemId = 22457, name = "Primal Mana", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 978,
            factionName = "Kurenai",
            level = "Revered",
            itemId = 29218,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enchanted Felscale Leggings (350)
    {
        id = 35525,
        name = "Enchanted Felscale Leggings",
        itemId = 29489,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 25700, name = "Fel Scales", count = 12 },
            { itemId = 22457, name = "Primal Mana", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Exalted",
            itemId = 29677,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enchanted Felscale Gloves (350)
    {
        id = 35526,
        name = "Enchanted Felscale Gloves",
        itemId = 29490,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 25700, name = "Fel Scales", count = 10 },
            { itemId = 22457, name = "Primal Mana", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Honored",
            itemId = 29682,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enchanted Felscale Boots (350)
    {
        id = 35527,
        name = "Enchanted Felscale Boots",
        itemId = 29491,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 25700, name = "Fel Scales", count = 10 },
            { itemId = 22457, name = "Primal Mana", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Revered",
            itemId = 29684,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Flamescale Boots (350)
    {
        id = 35528,
        name = "Flamescale Boots",
        itemId = 29493,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 25699, name = "Crystal Infused Leather", count = 8 },
            { itemId = 21884, name = "Primal Fire", count = 3 },
            { itemId = 21885, name = "Primal Water", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 932,
            factionName = "The Aldor",
            level = "Revered",
            itemId = 29691,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Flamescale Leggings (350)
    {
        id = 35529,
        name = "Flamescale Leggings",
        itemId = 29492,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 25699, name = "Crystal Infused Leather", count = 12 },
            { itemId = 21884, name = "Primal Fire", count = 4 },
            { itemId = 21885, name = "Primal Water", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 932,
            factionName = "The Aldor",
            level = "Exalted",
            itemId = 29689,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Flamescale Belt (350)
    {
        id = 35531,
        name = "Flamescale Belt",
        itemId = 29494,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 25699, name = "Crystal Infused Leather", count = 8 },
            { itemId = 21884, name = "Primal Fire", count = 3 },
            { itemId = 21885, name = "Primal Water", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 932,
            factionName = "The Aldor",
            level = "Honored",
            itemId = 29693,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enchanted Clefthoof Leggings (350)
    {
        id = 35532,
        name = "Enchanted Clefthoof Leggings",
        itemId = 29495,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 25708, name = "Thick Clefthoof Leather", count = 24 },
            { itemId = 22457, name = "Primal Mana", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Exalted",
            itemId = 29698,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enchanted Clefthoof Gloves (350)
    {
        id = 35533,
        name = "Enchanted Clefthoof Gloves",
        itemId = 29496,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 25708, name = "Thick Clefthoof Leather", count = 16 },
            { itemId = 22457, name = "Primal Mana", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Revered",
            itemId = 29700,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enchanted Clefthoof Boots (350)
    {
        id = 35534,
        name = "Enchanted Clefthoof Boots",
        itemId = 29497,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 25708, name = "Thick Clefthoof Leather", count = 16 },
            { itemId = 22457, name = "Primal Mana", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Honored",
            itemId = 29701,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Blastguard Pants (350)
    {
        id = 35535,
        name = "Blastguard Pants",
        itemId = 29498,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 25707, name = "Fel Hide", count = 10 },
            { itemId = 21884, name = "Primal Fire", count = 4 },
            { itemId = 21885, name = "Primal Water", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 932,
            factionName = "The Aldor",
            level = "Exalted",
            itemId = 29702,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Blastguard Boots (350)
    {
        id = 35536,
        name = "Blastguard Boots",
        itemId = 29499,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 25707, name = "Fel Hide", count = 8 },
            { itemId = 21884, name = "Primal Fire", count = 3 },
            { itemId = 21885, name = "Primal Water", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 932,
            factionName = "The Aldor",
            level = "Revered",
            itemId = 29703,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Blastguard Belt (350)
    {
        id = 35537,
        name = "Blastguard Belt",
        itemId = 29500,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 25707, name = "Fel Hide", count = 6 },
            { itemId = 21884, name = "Primal Fire", count = 3 },
            { itemId = 21885, name = "Primal Water", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 932,
            factionName = "The Aldor",
            level = "Honored",
            itemId = 29704,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Drums of Restoration (350)
    {
        id = 35539,
        name = "Drums of Restoration",
        itemId = 29531,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 357, gray = 365 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29548, name = "Nether Dragonscales", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 978,
            factionName = "Kurenai",
            level = "Honored",
            itemId = 34175,
            cost = 160000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Quiver of a Thousand Feathers (350)
    {
        id = 44359,
        name = "Quiver of a Thousand Feathers",
        itemId = 34105,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 8 },
            { itemId = 17056, name = "Light Feather", count = 99 },
            { itemId = 22451, name = "Primal Air", count = 2 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1011,
            factionName = "Lower City",
            level = "Revered",
            itemId = 34200,
            cost = 160000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Netherscale Ammo Pouch (350)
    {
        id = 44768,
        name = "Netherscale Ammo Pouch",
        itemId = 34106,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 12 },
            { itemId = 29548, name = "Nether Dragonscales", count = 12 },
            { itemId = 22452, name = "Primal Earth", count = 4 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 946,
            factionName = "Honor Hold",
            level = "Revered",
            itemId = 34218,
            cost = 160000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glove Reinforcements (350)
    {
        id = 44770,
        name = "Glove Reinforcements",
        itemId = 34207,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 22452, name = "Primal Earth", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Heavy Knothide Armor Kit (350)
    {
        id = 44970,
        name = "Heavy Knothide Armor Kit",
        itemId = 34330,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bag of Many Hides (350)
    {
        id = 45117,
        name = "Bag of Many Hides",
        itemId = 34490,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 370, green = 380, gray = 390 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 15 },
            { itemId = 29547, name = "Wind Scales", count = 5 },
            { itemId = 25707, name = "Fel Hide", count = 5 },
            { itemId = 29548, name = "Nether Dragonscales", count = 5 },
            { itemId = 25708, name = "Thick Clefthoof Leather", count = 5 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 38596,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Borean Armor Kit (350)
    {
        id = 50962,
        name = "Borean Armor Kit",
        itemId = 38375,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Borean Leather (350)
    {
        id = 64661,
        name = "Borean Leather",
        itemId = 33568,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 362, gray = 375 },
        reagents = {
            { itemId = 33567, name = "Borean Leather Scraps", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Greater Drums of Restoration (350)
    {
        id = 351769,
        name = "Greater Drums of Restoration",
        itemId = 185850,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 357, gray = 365 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29548, name = "Nether Dragonscales", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 978,
            factionName = "Kurenai",
            level = "Honored",
            itemId = 187048,
            cost = 160000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Heavy Clefthoof Leggings (355)
    {
        id = 32496,
        name = "Heavy Clefthoof Leggings",
        itemId = 25690,
        skillRequired = 355,
        skillRange = { orange = 355, yellow = 365, green = 375, gray = 385 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 25708, name = "Thick Clefthoof Leather", count = 34 },
            { itemId = 22452, name = "Primal Earth", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Honored",
            itemId = 25736,
            cost = 140000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Heavy Clefthoof Boots (355)
    {
        id = 32497,
        name = "Heavy Clefthoof Boots",
        itemId = 25691,
        skillRequired = 355,
        skillRange = { orange = 355, yellow = 365, green = 375, gray = 385 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 25708, name = "Thick Clefthoof Leather", count = 20 },
            { itemId = 22452, name = "Primal Earth", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Friendly",
            itemId = 25737,
            cost = 140000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Heavy Clefthoof Vest (360)
    {
        id = 32495,
        name = "Heavy Clefthoof Vest",
        itemId = 25689,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 380, gray = 390 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 25708, name = "Thick Clefthoof Leather", count = 40 },
            { itemId = 22452, name = "Primal Earth", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Honored",
            itemId = 25735,
            cost = 160000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Felstalker Bracer (360)
    {
        id = 32499,
        name = "Felstalker Bracer",
        itemId = 25697,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 380, gray = 390 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 25707, name = "Fel Hide", count = 6 },
            { itemId = 25699, name = "Crystal Infused Leather", count = 6 },
            { itemId = 22451, name = "Primal Air", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 946,
            factionName = "Honor Hold",
            level = "Honored",
            itemId = 29214,
            cost = 160000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Felstalker Breastplate (360)
    {
        id = 32500,
        name = "Felstalker Breastplate",
        itemId = 25696,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 380, gray = 390 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 10 },
            { itemId = 25707, name = "Fel Hide", count = 4 },
            { itemId = 25699, name = "Crystal Infused Leather", count = 8 },
            { itemId = 22451, name = "Primal Air", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 946,
            factionName = "Honor Hold",
            level = "Honored",
            itemId = 29215,
            cost = 160000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Cloak of Darkness (360)
    {
        id = 42546,
        name = "Cloak of Darkness",
        itemId = 33122,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 380, gray = 390 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 8 },
            { itemId = 21844, name = "Bolt of Soulcloth", count = 12 },
            { itemId = 22456, name = "Primal Shadow", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 967,
            factionName = "The Violet Eye",
            level = "Exalted",
            itemId = 33124,
            cost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Drums of Battle (365)
    {
        id = 35543,
        name = "Drums of Battle",
        itemId = 29529,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 25708, name = "Thick Clefthoof Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 935,
            factionName = "The Sha'tar",
            level = "Honored",
            itemId = 29717,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Nethercobra Leg Armor (365)
    {
        id = 35554,
        name = "Nethercobra Leg Armor",
        itemId = 29535,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 365, green = 375, gray = 385 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 29539, name = "Cobra Scales", count = 4 },
            { itemId = 22451, name = "Primal Air", count = 8 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 947,
            factionName = "Thrallmar",
            level = "Exalted",
            itemId = 31362,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Nethercleft Leg Armor (365)
    {
        id = 35557,
        name = "Nethercleft Leg Armor",
        itemId = 29536,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 365, green = 375, gray = 385 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 25708, name = "Thick Clefthoof Leather", count = 16 },
            { itemId = 22452, name = "Primal Earth", count = 8 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Exalted",
            itemId = 29721,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Cobrascale Hood (365)
    {
        id = 35558,
        name = "Cobrascale Hood",
        itemId = 29502,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29539, name = "Cobra Scales", count = 10 },
            { itemId = 22451, name = "Primal Air", count = 15 },
            { itemId = 22456, name = "Primal Shadow", count = 15 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 29723,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Cobrascale Gloves (365)
    {
        id = 35559,
        name = "Cobrascale Gloves",
        itemId = 29503,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 29539, name = "Cobra Scales", count = 8 },
            { itemId = 22451, name = "Primal Air", count = 12 },
            { itemId = 22456, name = "Primal Shadow", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35302,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Windscale Hood (365)
    {
        id = 35560,
        name = "Windscale Hood",
        itemId = 29504,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29547, name = "Wind Scales", count = 20 },
            { itemId = 22451, name = "Primal Air", count = 18 },
            { itemId = 22457, name = "Primal Mana", count = 10 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 29725,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Hood of Primal Life (365)
    {
        id = 35561,
        name = "Hood of Primal Life",
        itemId = 29505,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 21886, name = "Primal Life", count = 20 },
            { itemId = 21885, name = "Primal Water", count = 8 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 29726,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Gloves of the Living Touch (365)
    {
        id = 35562,
        name = "Gloves of the Living Touch",
        itemId = 29506,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 21886, name = "Primal Life", count = 16 },
            { itemId = 22452, name = "Primal Earth", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35303,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Windslayer Wraps (365)
    {
        id = 35563,
        name = "Windslayer Wraps",
        itemId = 29507,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 29547, name = "Wind Scales", count = 12 },
            { itemId = 22452, name = "Primal Earth", count = 18 },
            { itemId = 22451, name = "Primal Air", count = 8 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 29728,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Living Dragonscale Helm (365)
    {
        id = 35564,
        name = "Living Dragonscale Helm",
        itemId = 29508,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29548, name = "Nether Dragonscales", count = 28 },
            { itemId = 21886, name = "Primal Life", count = 12 },
            { itemId = 22457, name = "Primal Mana", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 29729,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Earthen Netherscale Boots (365)
    {
        id = 35567,
        name = "Earthen Netherscale Boots",
        itemId = 29512,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 29548, name = "Nether Dragonscales", count = 24 },
            { itemId = 22452, name = "Primal Earth", count = 22 },
            { itemId = 22457, name = "Primal Mana", count = 4 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 29730,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Windstrike Gloves (365)
    {
        id = 35568,
        name = "Windstrike Gloves",
        itemId = 29509,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 29547, name = "Wind Scales", count = 14 },
            { itemId = 22451, name = "Primal Air", count = 14 },
            { itemId = 21884, name = "Primal Fire", count = 10 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35300,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Netherdrake Helm (365)
    {
        id = 35572,
        name = "Netherdrake Helm",
        itemId = 29510,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29548, name = "Nether Dragonscales", count = 28 },
            { itemId = 21884, name = "Primal Fire", count = 18 },
            { itemId = 22457, name = "Primal Mana", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 29732,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Netherdrake Gloves (365)
    {
        id = 35573,
        name = "Netherdrake Gloves",
        itemId = 29511,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 29548, name = "Nether Dragonscales", count = 24 },
            { itemId = 21884, name = "Primal Fire", count = 14 },
            { itemId = 22457, name = "Primal Mana", count = 10 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35301,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Thick Netherscale Breastplate (365)
    {
        id = 35574,
        name = "Thick Netherscale Breastplate",
        itemId = 29514,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 8 },
            { itemId = 29548, name = "Nether Dragonscales", count = 32 },
            { itemId = 22452, name = "Primal Earth", count = 20 },
            { itemId = 22451, name = "Primal Air", count = 8 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 29734,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shadowprowler's Chestguard (365)
    {
        id = 42731,
        name = "Shadowprowler's Chestguard",
        itemId = 33204,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 385, gray = 395 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 10 },
            { itemId = 21844, name = "Bolt of Soulcloth", count = 16 },
            { itemId = 22452, name = "Primal Earth", count = 12 },
            { itemId = 22456, name = "Primal Shadow", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 967,
            factionName = "The Violet Eye",
            level = "Revered",
            itemId = 33205,
            cost = 240000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Leather Gauntlets of the Sun (365)
    {
        id = 46132,
        name = "Leather Gauntlets of the Sun",
        itemId = 34372,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 392, gray = 410 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 30 },
            { itemId = 25708, name = "Thick Clefthoof Leather", count = 16 },
            { itemId = 21886, name = "Primal Life", count = 18 },
            { itemId = 23571, name = "Primal Might", count = 8 },
            { itemId = 34664, name = "Sunmote", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35546,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fletcher's Gloves of the Phoenix (365)
    {
        id = 46133,
        name = "Fletcher's Gloves of the Phoenix",
        itemId = 34374,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 392, gray = 410 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 30 },
            { itemId = 29547, name = "Wind Scales", count = 16 },
            { itemId = 22451, name = "Primal Air", count = 18 },
            { itemId = 23571, name = "Primal Might", count = 8 },
            { itemId = 34664, name = "Sunmote", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35541,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Gloves of Immortal Dusk (365)
    {
        id = 46134,
        name = "Gloves of Immortal Dusk",
        itemId = 34370,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 392, gray = 410 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 30 },
            { itemId = 25707, name = "Fel Hide", count = 16 },
            { itemId = 22456, name = "Primal Shadow", count = 18 },
            { itemId = 23571, name = "Primal Might", count = 8 },
            { itemId = 34664, name = "Sunmote", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35542,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sun-Drenched Scale Gloves (365)
    {
        id = 46135,
        name = "Sun-Drenched Scale Gloves",
        itemId = 34376,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 392, gray = 410 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 30 },
            { itemId = 29548, name = "Nether Dragonscales", count = 16 },
            { itemId = 21886, name = "Primal Life", count = 18 },
            { itemId = 23571, name = "Primal Might", count = 8 },
            { itemId = 34664, name = "Sunmote", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35550,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Leather Chestguard of the Sun (365)
    {
        id = 46136,
        name = "Leather Chestguard of the Sun",
        itemId = 34371,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 392, gray = 410 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 40 },
            { itemId = 25708, name = "Thick Clefthoof Leather", count = 24 },
            { itemId = 23571, name = "Primal Might", count = 6 },
            { itemId = 23572, name = "Primal Nether", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35545,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Embrace of the Phoenix (365)
    {
        id = 46137,
        name = "Embrace of the Phoenix",
        itemId = 34373,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 392, gray = 410 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 40 },
            { itemId = 29547, name = "Wind Scales", count = 24 },
            { itemId = 23571, name = "Primal Might", count = 6 },
            { itemId = 23572, name = "Primal Nether", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35540,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Carapace of Sun and Shadow (365)
    {
        id = 46138,
        name = "Carapace of Sun and Shadow",
        itemId = 34369,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 392, gray = 410 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 40 },
            { itemId = 25707, name = "Fel Hide", count = 24 },
            { itemId = 23571, name = "Primal Might", count = 6 },
            { itemId = 23572, name = "Primal Nether", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35539,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sun-Drenched Scale Chestguard (365)
    {
        id = 46139,
        name = "Sun-Drenched Scale Chestguard",
        itemId = 34375,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 392, gray = 410 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 40 },
            { itemId = 29548, name = "Nether Dragonscales", count = 24 },
            { itemId = 23571, name = "Primal Might", count = 6 },
            { itemId = 23572, name = "Primal Nether", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35549,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Greater Drums of Battle (365)
    {
        id = 351771,
        name = "Greater Drums of Battle",
        itemId = 185848,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 25708, name = "Thick Clefthoof Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 935,
            factionName = "The Sha'tar",
            level = "Honored",
            itemId = 185926,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Drums of Panic (370)
    {
        id = 35538,
        name = "Drums of Panic",
        itemId = 29532,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 370, green = 377, gray = 385 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 25707, name = "Fel Hide", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 989,
            factionName = "Keepers of Time",
            level = "Honored",
            itemId = 29713,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Iceborne Leggings (370)
    {
        id = 50939,
        name = "Iceborne Leggings",
        itemId = 38410,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Iceborne Gloves (370)
    {
        id = 50941,
        name = "Iceborne Gloves",
        itemId = 38409,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Arctic Chestpiece (370)
    {
        id = 50944,
        name = "Arctic Chestpiece",
        itemId = 38400,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Arctic Boots (370)
    {
        id = 50948,
        name = "Arctic Boots",
        itemId = 38404,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Frostscale Leggings (370)
    {
        id = 50951,
        name = "Frostscale Leggings",
        itemId = 38416,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Frostscale Belt (370)
    {
        id = 50955,
        name = "Frostscale Belt",
        itemId = 38412,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Nerubian Legguards (370)
    {
        id = 50957,
        name = "Nerubian Legguards",
        itemId = 38422,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Nerubian Gloves (370)
    {
        id = 50959,
        name = "Nerubian Gloves",
        itemId = 38421,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Greater Drums of Panic (370)
    {
        id = 351770,
        name = "Greater Drums of Panic",
        itemId = 185849,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 370, green = 377, gray = 385 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 25707, name = "Fel Hide", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 989,
            factionName = "Keepers of Time",
            level = "Honored",
            itemId = 185925,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Ebon Netherscale Breastplate (375)
    {
        id = 35575,
        name = "Ebon Netherscale Breastplate",
        itemId = 29515,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 8 },
            { itemId = 29548, name = "Nether Dragonscales", count = 30 },
            { itemId = 21884, name = "Primal Fire", count = 16 },
            { itemId = 22456, name = "Primal Shadow", count = 16 },
            { itemId = 23572, name = "Primal Nether", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Ebon Netherscale Belt (375)
    {
        id = 35576,
        name = "Ebon Netherscale Belt",
        itemId = 29516,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29548, name = "Nether Dragonscales", count = 24 },
            { itemId = 21884, name = "Primal Fire", count = 12 },
            { itemId = 22456, name = "Primal Shadow", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Ebon Netherscale Bracers (375)
    {
        id = 35577,
        name = "Ebon Netherscale Bracers",
        itemId = 29517,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 29548, name = "Nether Dragonscales", count = 18 },
            { itemId = 21884, name = "Primal Fire", count = 8 },
            { itemId = 22456, name = "Primal Shadow", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Netherstrike Breastplate (375)
    {
        id = 35580,
        name = "Netherstrike Breastplate",
        itemId = 29519,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 8 },
            { itemId = 29548, name = "Nether Dragonscales", count = 30 },
            { itemId = 22457, name = "Primal Mana", count = 16 },
            { itemId = 22451, name = "Primal Air", count = 16 },
            { itemId = 23572, name = "Primal Nether", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Netherstrike Belt (375)
    {
        id = 35582,
        name = "Netherstrike Belt",
        itemId = 29520,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29548, name = "Nether Dragonscales", count = 24 },
            { itemId = 22457, name = "Primal Mana", count = 12 },
            { itemId = 22451, name = "Primal Air", count = 12 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Netherstrike Bracers (375)
    {
        id = 35584,
        name = "Netherstrike Bracers",
        itemId = 29521,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 29548, name = "Nether Dragonscales", count = 18 },
            { itemId = 22457, name = "Primal Mana", count = 8 },
            { itemId = 22451, name = "Primal Air", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Windhawk Hauberk (375)
    {
        id = 35585,
        name = "Windhawk Hauberk",
        itemId = 29522,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 8 },
            { itemId = 29547, name = "Wind Scales", count = 20 },
            { itemId = 22451, name = "Primal Air", count = 16 },
            { itemId = 23571, name = "Primal Might", count = 3 },
            { itemId = 23572, name = "Primal Nether", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Windhawk Belt (375)
    {
        id = 35587,
        name = "Windhawk Belt",
        itemId = 29524,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 29547, name = "Wind Scales", count = 16 },
            { itemId = 22451, name = "Primal Air", count = 12 },
            { itemId = 23571, name = "Primal Might", count = 2 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Windhawk Bracers (375)
    {
        id = 35588,
        name = "Windhawk Bracers",
        itemId = 29523,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 29547, name = "Wind Scales", count = 12 },
            { itemId = 22451, name = "Primal Air", count = 8 },
            { itemId = 23571, name = "Primal Might", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Primalstrike Vest (375)
    {
        id = 35589,
        name = "Primalstrike Vest",
        itemId = 29525,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 8 },
            { itemId = 23571, name = "Primal Might", count = 6 },
            { itemId = 23572, name = "Primal Nether", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Primalstrike Belt (375)
    {
        id = 35590,
        name = "Primalstrike Belt",
        itemId = 29526,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 23571, name = "Primal Might", count = 5 },
            { itemId = 23572, name = "Primal Nether", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Primalstrike Bracers (375)
    {
        id = 35591,
        name = "Primalstrike Bracers",
        itemId = 29527,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 23571, name = "Primal Might", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Belt of Natural Power (375)
    {
        id = 36349,
        name = "Belt of Natural Power",
        itemId = 30042,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 30183, name = "Nether Vortex", count = 2 },
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 21886, name = "Primal Life", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
            { itemId = 22451, name = "Primal Air", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 30301,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Belt of Deep Shadow (375)
    {
        id = 36351,
        name = "Belt of Deep Shadow",
        itemId = 30040,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 30183, name = "Nether Vortex", count = 2 },
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 22456, name = "Primal Shadow", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
            { itemId = 22451, name = "Primal Air", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 30302,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Belt of the Black Eagle (375)
    {
        id = 36352,
        name = "Belt of the Black Eagle",
        itemId = 30046,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 30183, name = "Nether Vortex", count = 2 },
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 22451, name = "Primal Air", count = 10 },
            { itemId = 29547, name = "Wind Scales", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 30303,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Monsoon Belt (375)
    {
        id = 36353,
        name = "Monsoon Belt",
        itemId = 30044,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 30183, name = "Nether Vortex", count = 2 },
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 21885, name = "Primal Water", count = 10 },
            { itemId = 29547, name = "Wind Scales", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 30304,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Boots of Natural Grace (375)
    {
        id = 36355,
        name = "Boots of Natural Grace",
        itemId = 30041,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23572, name = "Primal Nether", count = 2 },
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 21886, name = "Primal Life", count = 12 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 30305,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Boots of Utter Darkness (375)
    {
        id = 36357,
        name = "Boots of Utter Darkness",
        itemId = 30039,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23572, name = "Primal Nether", count = 2 },
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 22456, name = "Primal Shadow", count = 12 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 30306,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Boots of the Crimson Hawk (375)
    {
        id = 36358,
        name = "Boots of the Crimson Hawk",
        itemId = 30045,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23572, name = "Primal Nether", count = 2 },
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 22451, name = "Primal Air", count = 10 },
            { itemId = 29547, name = "Wind Scales", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 30307,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Hurricane Boots (375)
    {
        id = 36359,
        name = "Hurricane Boots",
        itemId = 30043,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23572, name = "Primal Nether", count = 2 },
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 21885, name = "Primal Water", count = 10 },
            { itemId = 29547, name = "Wind Scales", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 30308,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Boots of Shackled Souls (375)
    {
        id = 39997,
        name = "Boots of Shackled Souls",
        itemId = 32398,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 32428, name = "Heart of Darkness", count = 2 },
            { itemId = 22450, name = "Void Crystal", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 2 },
            { itemId = 22456, name = "Primal Shadow", count = 4 },
            { itemId = 25700, name = "Fel Scales", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1012,
            factionName = "Ashtongue Deathsworn",
            level = "Friendly",
            itemId = 32429,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Greaves of Shackled Souls (375)
    {
        id = 40001,
        name = "Greaves of Shackled Souls",
        itemId = 32400,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 32428, name = "Heart of Darkness", count = 3 },
            { itemId = 22450, name = "Void Crystal", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 4 },
            { itemId = 22456, name = "Primal Shadow", count = 6 },
            { itemId = 25700, name = "Fel Scales", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1012,
            factionName = "Ashtongue Deathsworn",
            level = "Honored",
            itemId = 32431,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Waistguard of Shackled Souls (375)
    {
        id = 40002,
        name = "Waistguard of Shackled Souls",
        itemId = 32397,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 32428, name = "Heart of Darkness", count = 2 },
            { itemId = 22450, name = "Void Crystal", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 3 },
            { itemId = 22456, name = "Primal Shadow", count = 4 },
            { itemId = 25700, name = "Fel Scales", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1012,
            factionName = "Ashtongue Deathsworn",
            level = "Honored",
            itemId = 32432,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Redeemed Soul Moccasins (375)
    {
        id = 40003,
        name = "Redeemed Soul Moccasins",
        itemId = 32394,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 32428, name = "Heart of Darkness", count = 2 },
            { itemId = 22450, name = "Void Crystal", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 2 },
            { itemId = 22456, name = "Primal Shadow", count = 4 },
            { itemId = 25707, name = "Fel Hide", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1012,
            factionName = "Ashtongue Deathsworn",
            level = "Honored",
            itemId = 32433,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Redeemed Soul Wristguards (375)
    {
        id = 40004,
        name = "Redeemed Soul Wristguards",
        itemId = 32395,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 32428, name = "Heart of Darkness", count = 1 },
            { itemId = 22450, name = "Void Crystal", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 2 },
            { itemId = 22456, name = "Primal Shadow", count = 2 },
            { itemId = 25707, name = "Fel Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1012,
            factionName = "Ashtongue Deathsworn",
            level = "Honored",
            itemId = 32434,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Redeemed Soul Legguards (375)
    {
        id = 40005,
        name = "Redeemed Soul Legguards",
        itemId = 32396,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 32428, name = "Heart of Darkness", count = 3 },
            { itemId = 22450, name = "Void Crystal", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 4 },
            { itemId = 22456, name = "Primal Shadow", count = 6 },
            { itemId = 25707, name = "Fel Hide", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1012,
            factionName = "Ashtongue Deathsworn",
            level = "Friendly",
            itemId = 32435,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Redeemed Soul Cinch (375)
    {
        id = 40006,
        name = "Redeemed Soul Cinch",
        itemId = 32393,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 32428, name = "Heart of Darkness", count = 2 },
            { itemId = 22450, name = "Void Crystal", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 3 },
            { itemId = 22456, name = "Primal Shadow", count = 4 },
            { itemId = 25707, name = "Fel Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1012,
            factionName = "Ashtongue Deathsworn",
            level = "Friendly",
            itemId = 32436,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bracers of Renewed Life (375)
    {
        id = 41156,
        name = "Bracers of Renewed Life",
        itemId = 32582,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 22451, name = "Primal Air", count = 6 },
            { itemId = 21886, name = "Primal Life", count = 6 },
            { itemId = 32428, name = "Heart of Darkness", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35519,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shoulderpads of Renewed Life (375)
    {
        id = 41157,
        name = "Shoulderpads of Renewed Life",
        itemId = 32583,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 22451, name = "Primal Air", count = 8 },
            { itemId = 21886, name = "Primal Life", count = 8 },
            { itemId = 32428, name = "Heart of Darkness", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35523,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Swiftstrike Bracers (375)
    {
        id = 41158,
        name = "Swiftstrike Bracers",
        itemId = 32580,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 22451, name = "Primal Air", count = 10 },
            { itemId = 32428, name = "Heart of Darkness", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35527,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Swiftstrike Shoulders (375)
    {
        id = 41160,
        name = "Swiftstrike Shoulders",
        itemId = 32581,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 22451, name = "Primal Air", count = 12 },
            { itemId = 32428, name = "Heart of Darkness", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35528,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bindings of Lightning Reflexes (375)
    {
        id = 41161,
        name = "Bindings of Lightning Reflexes",
        itemId = 32574,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 22451, name = "Primal Air", count = 4 },
            { itemId = 21885, name = "Primal Water", count = 4 },
            { itemId = 29547, name = "Wind Scales", count = 12 },
            { itemId = 32428, name = "Heart of Darkness", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35517,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shoulders of Lightning Reflexes (375)
    {
        id = 41162,
        name = "Shoulders of Lightning Reflexes",
        itemId = 32575,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 22451, name = "Primal Air", count = 6 },
            { itemId = 21885, name = "Primal Water", count = 6 },
            { itemId = 29547, name = "Wind Scales", count = 16 },
            { itemId = 32428, name = "Heart of Darkness", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35524,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Living Earth Bindings (375)
    {
        id = 41163,
        name = "Living Earth Bindings",
        itemId = 32577,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 4 },
            { itemId = 22451, name = "Primal Air", count = 4 },
            { itemId = 22452, name = "Primal Earth", count = 4 },
            { itemId = 29547, name = "Wind Scales", count = 12 },
            { itemId = 32428, name = "Heart of Darkness", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35520,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Living Earth Shoulders (375)
    {
        id = 41164,
        name = "Living Earth Shoulders",
        itemId = 32579,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 23793, name = "Heavy Knothide Leather", count = 6 },
            { itemId = 22451, name = "Primal Air", count = 6 },
            { itemId = 22452, name = "Primal Earth", count = 6 },
            { itemId = 29547, name = "Wind Scales", count = 16 },
            { itemId = 32428, name = "Heart of Darkness", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35521,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Iceborne Chestguard (375)
    {
        id = 50938,
        name = "Iceborne Chestguard",
        itemId = 38408,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 390, green = 400, gray = 410 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Iceborne Boots (375)
    {
        id = 50942,
        name = "Iceborne Boots",
        itemId = 38407,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 390, green = 400, gray = 410 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Arctic Leggings (375)
    {
        id = 50945,
        name = "Arctic Leggings",
        itemId = 38401,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 390, green = 400, gray = 410 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Arctic Gloves (375)
    {
        id = 50947,
        name = "Arctic Gloves",
        itemId = 38403,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 390, green = 400, gray = 410 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Frostscale Chestguard (375)
    {
        id = 50950,
        name = "Frostscale Chestguard",
        itemId = 38414,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 390, green = 400, gray = 410 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Frostscale Shoulders (375)
    {
        id = 50952,
        name = "Frostscale Shoulders",
        itemId = 38424,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 390, green = 400, gray = 410 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Nerubian Chestguard (375)
    {
        id = 50956,
        name = "Nerubian Chestguard",
        itemId = 38420,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 390, green = 400, gray = 410 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Nerubian Belt (375)
    {
        id = 50961,
        name = "Nerubian Belt",
        itemId = 38418,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 390, green = 400, gray = 410 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bracers of Shackled Souls (375)
    {
        id = 52733,
        name = "Bracers of Shackled Souls",
        itemId = 32399,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 385, green = 395, gray = 405 },
        reagents = {
            { itemId = 32428, name = "Heart of Darkness", count = 1 },
            { itemId = 22450, name = "Void Crystal", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 2 },
            { itemId = 22456, name = "Primal Shadow", count = 2 },
            { itemId = 25700, name = "Fel Scales", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1012,
            factionName = "Ashtongue Deathsworn",
            level = "Friendly",
            itemId = 32430,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Iceborne Shoulderpads (380)
    {
        id = 50940,
        name = "Iceborne Shoulderpads",
        itemId = 38411,
        skillRequired = 380,
        skillRange = { orange = 380, yellow = 395, green = 405, gray = 415 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Iceborne Belt (380)
    {
        id = 50943,
        name = "Iceborne Belt",
        itemId = 38406,
        skillRequired = 380,
        skillRange = { orange = 380, yellow = 380, green = 387, gray = 395 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Arctic Shoulderpads (380)
    {
        id = 50946,
        name = "Arctic Shoulderpads",
        itemId = 38402,
        skillRequired = 380,
        skillRange = { orange = 380, yellow = 395, green = 405, gray = 415 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Arctic Belt (380)
    {
        id = 50949,
        name = "Arctic Belt",
        itemId = 38405,
        skillRequired = 380,
        skillRange = { orange = 380, yellow = 395, green = 405, gray = 415 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Frostscale Gloves (380)
    {
        id = 50953,
        name = "Frostscale Gloves",
        itemId = 38415,
        skillRequired = 380,
        skillRange = { orange = 380, yellow = 395, green = 405, gray = 415 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Frostscale Boots (380)
    {
        id = 50954,
        name = "Frostscale Boots",
        itemId = 38413,
        skillRequired = 380,
        skillRange = { orange = 380, yellow = 395, green = 405, gray = 415 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Nerubian Shoulders (380)
    {
        id = 50958,
        name = "Nerubian Shoulders",
        itemId = 38417,
        skillRequired = 380,
        skillRange = { orange = 380, yellow = 395, green = 405, gray = 415 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Nerubian Boots (380)
    {
        id = 50960,
        name = "Nerubian Boots",
        itemId = 38419,
        skillRequired = 380,
        skillRange = { orange = 380, yellow = 395, green = 405, gray = 415 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Cloak of Harsh Winds (380)
    {
        id = 60631,
        name = "Cloak of Harsh Winds",
        itemId = 38441,
        skillRequired = 380,
        skillRange = { orange = 380, yellow = 390, green = 400, gray = 410 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 16 },
            { itemId = 37700, name = "Crystallized Air", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Arctic Wristguards (385)
    {
        id = 51571,
        name = "Arctic Wristguards",
        itemId = 38433,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 400, green = 410, gray = 420 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Arctic Helm (385)
    {
        id = 51572,
        name = "Arctic Helm",
        itemId = 38437,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 400, green = 410, gray = 420 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 14 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Frostscale Bracers (385)
    {
        id = 60599,
        name = "Frostscale Bracers",
        itemId = 38436,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 400, green = 410, gray = 420 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Frostscale Helm (385)
    {
        id = 60600,
        name = "Frostscale Helm",
        itemId = 38440,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 400, green = 410, gray = 420 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 14 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Iceborne Wristguards (385)
    {
        id = 60607,
        name = "Iceborne Wristguards",
        itemId = 38434,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 400, green = 410, gray = 420 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Iceborne Helm (385)
    {
        id = 60608,
        name = "Iceborne Helm",
        itemId = 38438,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 400, green = 410, gray = 420 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 14 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Nerubian Bracers (385)
    {
        id = 60622,
        name = "Nerubian Bracers",
        itemId = 38435,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 400, green = 410, gray = 420 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Nerubian Helm (385)
    {
        id = 60624,
        name = "Nerubian Helm",
        itemId = 38439,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 400, green = 410, gray = 420 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 14 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Heavy Borean Leather (390)
    {
        id = 50936,
        name = "Heavy Borean Leather",
        itemId = 38425,
        skillRequired = 390,
        skillRange = { orange = 0, yellow = 390, green = 395, gray = 405 },
        reagents = {
            { itemId = 33568, name = "Borean Leather", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Heavy Borean Armor Kit (395)
    {
        id = 50963,
        name = "Heavy Borean Armor Kit",
        itemId = 38376,
        skillRequired = 395,
        skillRange = { orange = 395, yellow = 400, green = 402, gray = 405 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Dark Arctic Leggings (395)
    {
        id = 51569,
        name = "Dark Arctic Leggings",
        itemId = 38591,
        skillRequired = 395,
        skillRange = { orange = 395, yellow = 410, green = 420, gray = 430 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 6 },
            { itemId = 37703, name = "Crystallized Shadow", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Dark Arctic Chestpiece (395)
    {
        id = 51570,
        name = "Dark Arctic Chestpiece",
        itemId = 38592,
        skillRequired = 395,
        skillRange = { orange = 395, yellow = 410, green = 420, gray = 430 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 5 },
            { itemId = 37703, name = "Crystallized Shadow", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Cloak of Tormented Skies (395)
    {
        id = 55199,
        name = "Cloak of Tormented Skies",
        itemId = 41238,
        skillRequired = 395,
        skillRange = { orange = 395, yellow = 405, green = 415, gray = 425 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 6 },
            { itemId = 37700, name = "Crystallized Air", count = 5 },
            { itemId = 37705, name = "Crystallized Water", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Dark Frostscale Leggings (395)
    {
        id = 60601,
        name = "Dark Frostscale Leggings",
        itemId = 44436,
        skillRequired = 395,
        skillRange = { orange = 395, yellow = 410, green = 420, gray = 430 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 4 },
            { itemId = 37705, name = "Crystallized Water", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Dark Frostscale Breastplate (395)
    {
        id = 60604,
        name = "Dark Frostscale Breastplate",
        itemId = 44437,
        skillRequired = 395,
        skillRange = { orange = 395, yellow = 410, green = 420, gray = 430 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 6 },
            { itemId = 37705, name = "Crystallized Water", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Dark Iceborne Leggings (395)
    {
        id = 60611,
        name = "Dark Iceborne Leggings",
        itemId = 44440,
        skillRequired = 395,
        skillRange = { orange = 395, yellow = 410, green = 420, gray = 430 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 4 },
            { itemId = 37703, name = "Crystallized Shadow", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Dark Iceborne Chestguard (395)
    {
        id = 60613,
        name = "Dark Iceborne Chestguard",
        itemId = 44441,
        skillRequired = 395,
        skillRange = { orange = 395, yellow = 410, green = 420, gray = 430 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 6 },
            { itemId = 37703, name = "Crystallized Shadow", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Dark Nerubian Leggings (395)
    {
        id = 60627,
        name = "Dark Nerubian Leggings",
        itemId = 44443,
        skillRequired = 395,
        skillRange = { orange = 395, yellow = 410, green = 420, gray = 430 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 4 },
            { itemId = 37705, name = "Crystallized Water", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Dark Nerubian Chestpiece (395)
    {
        id = 60629,
        name = "Dark Nerubian Chestpiece",
        itemId = 44444,
        skillRequired = 395,
        skillRange = { orange = 395, yellow = 410, green = 420, gray = 430 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 6 },
            { itemId = 37705, name = "Crystallized Water", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Nerubian Leg Armor (400)
    {
        id = 50966,
        name = "Nerubian Leg Armor",
        itemId = 38372,
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 405, green = 410, gray = 415 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 4 },
            { itemId = 38558, name = "Nerubian Chitin", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Black Chitinguard Boots (400)
    {
        id = 51568,
        name = "Black Chitinguard Boots",
        itemId = 38590,
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 415, green = 425, gray = 435 },
        reagents = {
            { itemId = 38558, name = "Nerubian Chitin", count = 25 },
            { itemId = 37705, name = "Crystallized Water", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Fur Lining - Attack Power (400)
    {
        id = 57683,
        name = "Fur Lining - Attack Power",
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 70000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Fur Lining - Stamina (400)
    {
        id = 57690,
        name = "Fur Lining - Stamina",
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 70000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Fur Lining - Spell Power (400)
    {
        id = 57691,
        name = "Fur Lining - Spell Power",
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 70000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Fur Lining - Fire Resist (400)
    {
        id = 57692,
        name = "Fur Lining - Fire Resist",
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 44559,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Fur Lining - Frost Resist (400)
    {
        id = 57694,
        name = "Fur Lining - Frost Resist",
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 44560,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Fur Lining - Shadow Resist (400)
    {
        id = 57696,
        name = "Fur Lining - Shadow Resist",
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 44561,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Fur Lining - Nature Resist (400)
    {
        id = 57699,
        name = "Fur Lining - Nature Resist",
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 44562,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Fur Lining - Arcane Resist (400)
    {
        id = 57701,
        name = "Fur Lining - Arcane Resist",
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 44563,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Nerubian Leg Reinforcements (400)
    {
        id = 60584,
        name = "Nerubian Leg Reinforcements",
        skillRequired = 400,
        skillRange = { orange = 0, yellow = 400, green = 400, gray = 405 },
        reagents = {
            { itemId = 38558, name = "Nerubian Chitin", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Dragonstompers (400)
    {
        id = 60605,
        name = "Dragonstompers",
        itemId = 44438,
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 415, green = 425, gray = 435 },
        reagents = {
            { itemId = 38557, name = "Icy Dragonscale", count = 35 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Bugsquashers (400)
    {
        id = 60620,
        name = "Bugsquashers",
        itemId = 44442,
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 415, green = 425, gray = 435 },
        reagents = {
            { itemId = 38558, name = "Nerubian Chitin", count = 35 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Scaled Icewalkers (400)
    {
        id = 60630,
        name = "Scaled Icewalkers",
        itemId = 44445,
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 415, green = 425, gray = 435 },
        reagents = {
            { itemId = 38557, name = "Icy Dragonscale", count = 30 },
            { itemId = 37703, name = "Crystallized Shadow", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Jormungar Leg Armor (405)
    {
        id = 50964,
        name = "Jormungar Leg Armor",
        itemId = 38371,
        skillRequired = 405,
        skillRange = { orange = 405, yellow = 410, green = 415, gray = 420 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 3 },
            { itemId = 38561, name = "Jormungar Scale", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Jormungar Leg Reinforcements (405)
    {
        id = 60583,
        name = "Jormungar Leg Reinforcements",
        skillRequired = 405,
        skillRange = { orange = 0, yellow = 405, green = 405, gray = 410 },
        reagents = {
            { itemId = 38561, name = "Jormungar Scale", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Trapper's Traveling Pack (415)
    {
        id = 50970,
        name = "Trapper's Traveling Pack",
        itemId = 38399,
        skillRequired = 415,
        skillRange = { orange = 415, yellow = 420, green = 422, gray = 425 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1073,
            factionName = "The Kalu'ak",
            level = "Revered",
            itemId = 44509,
            cost = 50000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Mammoth Mining Bag (415)
    {
        id = 50971,
        name = "Mammoth Mining Bag",
        itemId = 38347,
        skillRequired = 415,
        skillRange = { orange = 415, yellow = 420, green = 422, gray = 425 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1119,
            factionName = "The Sons of Hodir",
            level = "Honored",
            itemId = 44510,
            cost = 50000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Pack of Endless Pockets (415)
    {
        id = 60643,
        name = "Pack of Endless Pockets",
        itemId = 44446,
        skillRequired = 415,
        skillRange = { orange = 415, yellow = 420, green = 422, gray = 425 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Dragonscale Ammo Pouch (415)
    {
        id = 60645,
        name = "Dragonscale Ammo Pouch",
        itemId = 44447,
        skillRequired = 415,
        skillRange = { orange = 415, yellow = 420, green = 422, gray = 425 },
        reagents = {
            { itemId = 38557, name = "Icy Dragonscale", count = 20 },
            { itemId = 38425, name = "Heavy Borean Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1073,
            factionName = "The Kalu'ak",
            level = "Honored",
            itemId = 44511,
            cost = 50000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Nerubian Reinforced Quiver (415)
    {
        id = 60647,
        name = "Nerubian Reinforced Quiver",
        itemId = 44448,
        skillRequired = 415,
        skillRange = { orange = 415, yellow = 420, green = 422, gray = 425 },
        reagents = {
            { itemId = 38558, name = "Nerubian Chitin", count = 20 },
            { itemId = 38425, name = "Heavy Borean Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1098,
            factionName = "Knights of the Ebon Blade",
            level = "Honored",
            itemId = 44512,
            cost = 50000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Virulent Spaulders (420)
    {
        id = 60651,
        name = "Virulent Spaulders",
        itemId = 43130,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 36860, name = "Eternal Fire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Eaglebane Bracers (420)
    {
        id = 60652,
        name = "Eaglebane Bracers",
        itemId = 43131,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38557, name = "Icy Dragonscale", count = 40 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Nightshock Girdle (420)
    {
        id = 60658,
        name = "Nightshock Girdle",
        itemId = 43133,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35627, name = "Eternal Shadow", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 200000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Seafoam Gauntlets (420)
    {
        id = 60665,
        name = "Seafoam Gauntlets",
        itemId = 43255,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35622, name = "Eternal Water", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Jormscale Footpads (420)
    {
        id = 60666,
        name = "Jormscale Footpads",
        itemId = 43256,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38561, name = "Jormungar Scale", count = 40 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Purehorn Spaulders (420)
    {
        id = 60671,
        name = "Purehorn Spaulders",
        itemId = 43258,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38558, name = "Nerubian Chitin", count = 30 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Eviscerator's Facemask (420)
    {
        id = 60697,
        name = "Eviscerator's Facemask",
        itemId = 43260,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44513,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Eviscerator's Shoulderpads (420)
    {
        id = 60702,
        name = "Eviscerator's Shoulderpads",
        itemId = 43433,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44514,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Eviscerator's Chestguard (420)
    {
        id = 60703,
        name = "Eviscerator's Chestguard",
        itemId = 43434,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44515,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Eviscerator's Bindings (420)
    {
        id = 60704,
        name = "Eviscerator's Bindings",
        itemId = 43435,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 8 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44516,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Overcast Headguard (420)
    {
        id = 60715,
        name = "Overcast Headguard",
        itemId = 43261,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44521,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Overcast Spaulders (420)
    {
        id = 60716,
        name = "Overcast Spaulders",
        itemId = 43262,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44522,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Overcast Chestguard (420)
    {
        id = 60718,
        name = "Overcast Chestguard",
        itemId = 43263,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44523,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Overcast Bracers (420)
    {
        id = 60720,
        name = "Overcast Bracers",
        itemId = 43264,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 8 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44524,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Swiftarrow Helm (420)
    {
        id = 60728,
        name = "Swiftarrow Helm",
        itemId = 43447,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44530,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Swiftarrow Shoulderguards (420)
    {
        id = 60729,
        name = "Swiftarrow Shoulderguards",
        itemId = 43449,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44531,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Swiftarrow Hauberk (420)
    {
        id = 60730,
        name = "Swiftarrow Hauberk",
        itemId = 43445,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44532,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Swiftarrow Bracers (420)
    {
        id = 60731,
        name = "Swiftarrow Bracers",
        itemId = 43444,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 8 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44533,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stormhide Crown (420)
    {
        id = 60743,
        name = "Stormhide Crown",
        itemId = 43455,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44538,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stormhide Shoulders (420)
    {
        id = 60746,
        name = "Stormhide Shoulders",
        itemId = 43457,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44539,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stormhide Hauberk (420)
    {
        id = 60747,
        name = "Stormhide Hauberk",
        itemId = 43453,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44540,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stormhide Wristguards (420)
    {
        id = 60748,
        name = "Stormhide Wristguards",
        itemId = 43452,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 8 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44541,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Polar Cord (420)
    {
        id = 60997,
        name = "Polar Cord",
        itemId = 43591,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 430, green = 440, gray = 450 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 8 },
            { itemId = 36860, name = "Eternal Fire", count = 2 },
            { itemId = 35622, name = "Eternal Water", count = 2 },
            { itemId = 38558, name = "Nerubian Chitin", count = 4 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44585,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Polar Boots (420)
    {
        id = 60998,
        name = "Polar Boots",
        itemId = 43592,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 430, green = 440, gray = 450 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 8 },
            { itemId = 36860, name = "Eternal Fire", count = 2 },
            { itemId = 35622, name = "Eternal Water", count = 2 },
            { itemId = 38558, name = "Nerubian Chitin", count = 4 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44586,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Icy Scale Belt (420)
    {
        id = 61000,
        name = "Icy Scale Belt",
        itemId = 43594,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 430, green = 440, gray = 450 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 8 },
            { itemId = 36860, name = "Eternal Fire", count = 2 },
            { itemId = 35622, name = "Eternal Water", count = 2 },
            { itemId = 38557, name = "Icy Dragonscale", count = 4 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44588,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Icy Scale Boots (420)
    {
        id = 61002,
        name = "Icy Scale Boots",
        itemId = 43595,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 430, green = 440, gray = 450 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 8 },
            { itemId = 36860, name = "Eternal Fire", count = 2 },
            { itemId = 35622, name = "Eternal Water", count = 2 },
            { itemId = 38557, name = "Icy Dragonscale", count = 4 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44589,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Frosthide Leg Armor (425)
    {
        id = 50965,
        name = "Frosthide Leg Armor",
        itemId = 38373,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 435, green = 440, gray = 445 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 2 },
            { itemId = 38558, name = "Nerubian Chitin", count = 2 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Icescale Leg Armor (425)
    {
        id = 50967,
        name = "Icescale Leg Armor",
        itemId = 38374,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 435, green = 440, gray = 445 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 2 },
            { itemId = 38557, name = "Icy Dragonscale", count = 2 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Razorstrike Breastplate (425)
    {
        id = 60649,
        name = "Razorstrike Breastplate",
        itemId = 43129,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 15 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Nightshock Hood (425)
    {
        id = 60655,
        name = "Nightshock Hood",
        itemId = 43132,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 14 },
            { itemId = 35627, name = "Eternal Shadow", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 200000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Leggings of Visceral Strikes (425)
    {
        id = 60660,
        name = "Leggings of Visceral Strikes",
        itemId = 42731,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35623, name = "Eternal Air", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Wildscale Breastplate (425)
    {
        id = 60669,
        name = "Wildscale Breastplate",
        itemId = 43257,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 25 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Eviscerator's Gauntlets (425)
    {
        id = 60705,
        name = "Eviscerator's Gauntlets",
        itemId = 43436,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44517,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Eviscerator's Waistguard (425)
    {
        id = 60706,
        name = "Eviscerator's Waistguard",
        itemId = 43437,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44518,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Eviscerator's Legguards (425)
    {
        id = 60711,
        name = "Eviscerator's Legguards",
        itemId = 43438,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44519,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Eviscerator's Treads (425)
    {
        id = 60712,
        name = "Eviscerator's Treads",
        itemId = 43439,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44520,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Overcast Handwraps (425)
    {
        id = 60721,
        name = "Overcast Handwraps",
        itemId = 43265,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44525,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Overcast Belt (425)
    {
        id = 60723,
        name = "Overcast Belt",
        itemId = 43266,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44526,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Overcast Leggings (425)
    {
        id = 60725,
        name = "Overcast Leggings",
        itemId = 43271,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44527,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Overcast Boots (425)
    {
        id = 60727,
        name = "Overcast Boots",
        itemId = 43273,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44528,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Swiftarrow Gauntlets (425)
    {
        id = 60732,
        name = "Swiftarrow Gauntlets",
        itemId = 43446,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44534,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Swiftarrow Belt (425)
    {
        id = 60734,
        name = "Swiftarrow Belt",
        itemId = 43442,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44535,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Swiftarrow Leggings (425)
    {
        id = 60735,
        name = "Swiftarrow Leggings",
        itemId = 43448,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44536,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Swiftarrow Boots (425)
    {
        id = 60737,
        name = "Swiftarrow Boots",
        itemId = 43443,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44537,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stormhide Grips (425)
    {
        id = 60749,
        name = "Stormhide Grips",
        itemId = 43454,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44542,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stormhide Belt (425)
    {
        id = 60750,
        name = "Stormhide Belt",
        itemId = 43450,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44543,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stormhide Legguards (425)
    {
        id = 60751,
        name = "Stormhide Legguards",
        itemId = 43456,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44544,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stormhide Stompers (425)
    {
        id = 60752,
        name = "Stormhide Stompers",
        itemId = 43451,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44545,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Polar Vest (425)
    {
        id = 60996,
        name = "Polar Vest",
        itemId = 43590,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 435, green = 445, gray = 455 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 36860, name = "Eternal Fire", count = 3 },
            { itemId = 35622, name = "Eternal Water", count = 3 },
            { itemId = 38558, name = "Nerubian Chitin", count = 8 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44584,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Icy Scale Chestguard (425)
    {
        id = 60999,
        name = "Icy Scale Chestguard",
        itemId = 43593,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 435, green = 445, gray = 455 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 36860, name = "Eternal Fire", count = 3 },
            { itemId = 35622, name = "Eternal Water", count = 3 },
            { itemId = 38557, name = "Icy Dragonscale", count = 8 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44587,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Earthen Leg Armor (425)
    {
        id = 62448,
        name = "Earthen Leg Armor",
        itemId = 44963,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 435, green = 440, gray = 445 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 2 },
            { itemId = 35624, name = "Eternal Earth", count = 4 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Ice Striker's Cloak (440)
    {
        id = 60637,
        name = "Ice Striker's Cloak",
        itemId = 43566,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 2 },
            { itemId = 36860, name = "Eternal Fire", count = 6 },
            { itemId = 35627, name = "Eternal Shadow", count = 4 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 200000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Durable Nerubhide Cape (440)
    {
        id = 60640,
        name = "Durable Nerubhide Cape",
        itemId = 43565,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 2 },
            { itemId = 38558, name = "Nerubian Chitin", count = 40 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 200000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Giantmaim Legguards (440)
    {
        id = 60754,
        name = "Giantmaim Legguards",
        itemId = 43458,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35622, name = "Eternal Water", count = 6 },
            { itemId = 35623, name = "Eternal Air", count = 6 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44546,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Giantmaim Bracers (440)
    {
        id = 60755,
        name = "Giantmaim Bracers",
        itemId = 43459,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35622, name = "Eternal Water", count = 5 },
            { itemId = 35623, name = "Eternal Air", count = 5 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44547,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Revenant's Breastplate (440)
    {
        id = 60756,
        name = "Revenant's Breastplate",
        itemId = 43461,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35622, name = "Eternal Water", count = 12 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44548,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Revenant's Treads (440)
    {
        id = 60757,
        name = "Revenant's Treads",
        itemId = 43469,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35622, name = "Eternal Water", count = 10 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44549,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Trollwoven Spaulders (440)
    {
        id = 60758,
        name = "Trollwoven Spaulders",
        itemId = 43481,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 36860, name = "Eternal Fire", count = 6 },
            { itemId = 35627, name = "Eternal Shadow", count = 6 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44550,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Trollwoven Girdle (440)
    {
        id = 60759,
        name = "Trollwoven Girdle",
        itemId = 43484,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 36860, name = "Eternal Fire", count = 5 },
            { itemId = 35627, name = "Eternal Shadow", count = 5 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44551,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Earthgiving Legguards (440)
    {
        id = 60760,
        name = "Earthgiving Legguards",
        itemId = 43495,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35625, name = "Eternal Life", count = 6 },
            { itemId = 35622, name = "Eternal Water", count = 6 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44552,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Earthgiving Boots (440)
    {
        id = 60761,
        name = "Earthgiving Boots",
        itemId = 43502,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35625, name = "Eternal Life", count = 5 },
            { itemId = 35622, name = "Eternal Water", count = 5 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44553,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Windripper Boots (440)
    {
        id = 62176,
        name = "Windripper Boots",
        itemId = 44930,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 10 },
            { itemId = 35623, name = "Eternal Air", count = 5 },
            { itemId = 35622, name = "Eternal Water", count = 5 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44932,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Windripper Leggings (440)
    {
        id = 62177,
        name = "Windripper Leggings",
        itemId = 44931,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 12 },
            { itemId = 35623, name = "Eternal Air", count = 6 },
            { itemId = 35622, name = "Eternal Water", count = 6 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 44933,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Belt of Dragons (450)
    {
        id = 63194,
        name = "Belt of Dragons",
        itemId = 45553,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 455, green = 465, gray = 475 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 3 },
            { itemId = 38557, name = "Icy Dragonscale", count = 20 },
            { itemId = 45087, name = "Runed Orb", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 45094,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Boots of Living Scale (450)
    {
        id = 63195,
        name = "Boots of Living Scale",
        itemId = 45562,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 455, green = 465, gray = 475 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 3 },
            { itemId = 38561, name = "Jormungar Scale", count = 20 },
            { itemId = 45087, name = "Runed Orb", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 45095,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Blue Belt of Chaos (450)
    {
        id = 63196,
        name = "Blue Belt of Chaos",
        itemId = 45554,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 455, green = 465, gray = 475 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 3 },
            { itemId = 38558, name = "Nerubian Chitin", count = 20 },
            { itemId = 45087, name = "Runed Orb", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 45096,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Lightning Grounded Boots (450)
    {
        id = 63197,
        name = "Lightning Grounded Boots",
        itemId = 45563,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 455, green = 465, gray = 475 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 3 },
            { itemId = 38557, name = "Icy Dragonscale", count = 20 },
            { itemId = 45087, name = "Runed Orb", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 45097,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Death-warmed Belt (450)
    {
        id = 63198,
        name = "Death-warmed Belt",
        itemId = 45555,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 455, green = 465, gray = 475 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 3 },
            { itemId = 35627, name = "Eternal Shadow", count = 4 },
            { itemId = 45087, name = "Runed Orb", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 45098,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Footpads of Silence (450)
    {
        id = 63199,
        name = "Footpads of Silence",
        itemId = 45564,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 455, green = 465, gray = 475 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 3 },
            { itemId = 35627, name = "Eternal Shadow", count = 2 },
            { itemId = 45087, name = "Runed Orb", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 45099,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Belt of Arctic Life (450)
    {
        id = 63200,
        name = "Belt of Arctic Life",
        itemId = 45556,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 455, green = 465, gray = 475 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 4 },
            { itemId = 44128, name = "Arctic Fur", count = 3 },
            { itemId = 45087, name = "Runed Orb", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 45100,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Boots of Wintry Endurance (450)
    {
        id = 63201,
        name = "Boots of Wintry Endurance",
        itemId = 45565,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 455, green = 465, gray = 475 },
        reagents = {
            { itemId = 44128, name = "Arctic Fur", count = 3 },
            { itemId = 38557, name = "Icy Dragonscale", count = 20 },
            { itemId = 45087, name = "Runed Orb", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 45101,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Ensorcelled Nerubian Breastplate (450)
    {
        id = 67080,
        name = "Ensorcelled Nerubian Breastplate",
        itemId = 47597,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38558, name = "Nerubian Chitin", count = 40 },
            { itemId = 35623, name = "Eternal Air", count = 8 },
            { itemId = 34055, name = "Greater Cosmic Essence", count = 8 },
            { itemId = 44128, name = "Arctic Fur", count = 8 },
            { itemId = 47556, name = "Crusader Orb", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47628,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Black Chitin Bracers (450)
    {
        id = 67081,
        name = "Black Chitin Bracers",
        itemId = 47579,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38558, name = "Nerubian Chitin", count = 40 },
            { itemId = 34057, name = "Abyss Crystal", count = 4 },
            { itemId = 44128, name = "Arctic Fur", count = 6 },
            { itemId = 47556, name = "Crusader Orb", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47629,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Crusader's Dragonscale Breastplate (450)
    {
        id = 67082,
        name = "Crusader's Dragonscale Breastplate",
        itemId = 47595,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38557, name = "Icy Dragonscale", count = 40 },
            { itemId = 35622, name = "Eternal Water", count = 8 },
            { itemId = 35625, name = "Eternal Life", count = 8 },
            { itemId = 44128, name = "Arctic Fur", count = 8 },
            { itemId = 47556, name = "Crusader Orb", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47630,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Crusader's Dragonscale Bracers (450)
    {
        id = 67083,
        name = "Crusader's Dragonscale Bracers",
        itemId = 47576,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38557, name = "Icy Dragonscale", count = 40 },
            { itemId = 35622, name = "Eternal Water", count = 8 },
            { itemId = 44128, name = "Arctic Fur", count = 6 },
            { itemId = 47556, name = "Crusader Orb", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47631,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Lunar Eclipse Robes (450)
    {
        id = 67084,
        name = "Lunar Eclipse Robes",
        itemId = 47602,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 24 },
            { itemId = 35625, name = "Eternal Life", count = 20 },
            { itemId = 44128, name = "Arctic Fur", count = 8 },
            { itemId = 47556, name = "Crusader Orb", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47632,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Moonshadow Armguards (450)
    {
        id = 67085,
        name = "Moonshadow Armguards",
        itemId = 47583,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 20 },
            { itemId = 35625, name = "Eternal Life", count = 12 },
            { itemId = 44128, name = "Arctic Fur", count = 6 },
            { itemId = 47556, name = "Crusader Orb", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47633,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Knightbane Carapace (450)
    {
        id = 67086,
        name = "Knightbane Carapace",
        itemId = 47599,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 24 },
            { itemId = 35627, name = "Eternal Shadow", count = 20 },
            { itemId = 44128, name = "Arctic Fur", count = 8 },
            { itemId = 47556, name = "Crusader Orb", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47634,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Bracers of Swift Death (450)
    {
        id = 67087,
        name = "Bracers of Swift Death",
        itemId = 47581,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 20 },
            { itemId = 35627, name = "Eternal Shadow", count = 12 },
            { itemId = 44128, name = "Arctic Fur", count = 6 },
            { itemId = 47556, name = "Crusader Orb", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47635,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Ensorcelled Nerubian Breastplate (450)
    {
        id = 67136,
        name = "Ensorcelled Nerubian Breastplate",
        itemId = 47598,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38558, name = "Nerubian Chitin", count = 40 },
            { itemId = 35623, name = "Eternal Air", count = 8 },
            { itemId = 34055, name = "Greater Cosmic Essence", count = 8 },
            { itemId = 44128, name = "Arctic Fur", count = 8 },
            { itemId = 47556, name = "Crusader Orb", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47650,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Black Chitin Bracers (450)
    {
        id = 67137,
        name = "Black Chitin Bracers",
        itemId = 47580,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38558, name = "Nerubian Chitin", count = 40 },
            { itemId = 34057, name = "Abyss Crystal", count = 4 },
            { itemId = 44128, name = "Arctic Fur", count = 6 },
            { itemId = 47556, name = "Crusader Orb", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47646,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Crusader's Dragonscale Breastplate (450)
    {
        id = 67138,
        name = "Crusader's Dragonscale Breastplate",
        itemId = 47596,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38557, name = "Icy Dragonscale", count = 40 },
            { itemId = 35622, name = "Eternal Water", count = 8 },
            { itemId = 35625, name = "Eternal Life", count = 8 },
            { itemId = 44128, name = "Arctic Fur", count = 8 },
            { itemId = 47556, name = "Crusader Orb", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47649,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Bracers of Swift Death (450)
    {
        id = 67139,
        name = "Bracers of Swift Death",
        itemId = 47582,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 20 },
            { itemId = 35627, name = "Eternal Shadow", count = 12 },
            { itemId = 44128, name = "Arctic Fur", count = 6 },
            { itemId = 47556, name = "Crusader Orb", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47647,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Lunar Eclipse Robes (450)
    {
        id = 67140,
        name = "Lunar Eclipse Robes",
        itemId = 47601,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 24 },
            { itemId = 35625, name = "Eternal Life", count = 20 },
            { itemId = 44128, name = "Arctic Fur", count = 8 },
            { itemId = 47556, name = "Crusader Orb", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47652,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Moonshadow Armguards (450)
    {
        id = 67141,
        name = "Moonshadow Armguards",
        itemId = 47584,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 20 },
            { itemId = 35625, name = "Eternal Life", count = 12 },
            { itemId = 44128, name = "Arctic Fur", count = 6 },
            { itemId = 47556, name = "Crusader Orb", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47653,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Knightbane Carapace (450)
    {
        id = 67142,
        name = "Knightbane Carapace",
        itemId = 47600,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 24 },
            { itemId = 35627, name = "Eternal Shadow", count = 20 },
            { itemId = 44128, name = "Arctic Fur", count = 8 },
            { itemId = 47556, name = "Crusader Orb", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47651,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Crusader's Dragonscale Bracers (450)
    {
        id = 67143,
        name = "Crusader's Dragonscale Bracers",
        itemId = 47577,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 460, green = 467, gray = 475 },
        reagents = {
            { itemId = 38557, name = "Icy Dragonscale", count = 40 },
            { itemId = 35622, name = "Eternal Water", count = 8 },
            { itemId = 44128, name = "Arctic Fur", count = 6 },
            { itemId = 47556, name = "Crusader Orb", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 47648,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Drums of Forgotten Kings (450)
    {
        id = 69386,
        name = "Drums of Forgotten Kings",
        itemId = 49633,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 455, gray = 470 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 8 },
            { itemId = 38557, name = "Icy Dragonscale", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 200000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Drums of the Wild (450)
    {
        id = 69388,
        name = "Drums of the Wild",
        itemId = 49634,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 455, gray = 470 },
        reagents = {
            { itemId = 38425, name = "Heavy Borean Leather", count = 8 },
            { itemId = 38561, name = "Jormungar Scale", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
            trainingCost = 200000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Legwraps of Unleashed Nature (450)
    {
        id = 70554,
        name = "Legwraps of Unleashed Nature",
        itemId = 49898,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 475, green = 487, gray = 500 },
        reagents = {
            { itemId = 38561, name = "Jormungar Scale", count = 20 },
            { itemId = 44128, name = "Arctic Fur", count = 8 },
            { itemId = 35625, name = "Eternal Life", count = 16 },
            { itemId = 49908, name = "Primordial Saronite", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1156,
            factionName = "The Ashen Verdict",
            level = "Revered",
            itemId = 49957,
            cost = 0,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Blessed Cenarion Boots (450)
    {
        id = 70555,
        name = "Blessed Cenarion Boots",
        itemId = 49894,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 475, green = 487, gray = 500 },
        reagents = {
            { itemId = 38561, name = "Jormungar Scale", count = 12 },
            { itemId = 44128, name = "Arctic Fur", count = 5 },
            { itemId = 35625, name = "Eternal Life", count = 10 },
            { itemId = 49908, name = "Primordial Saronite", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1156,
            factionName = "The Ashen Verdict",
            level = "Honored",
            itemId = 49958,
            cost = 0,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Bladeborn Leggings (450)
    {
        id = 70556,
        name = "Bladeborn Leggings",
        itemId = 49899,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 475, green = 487, gray = 500 },
        reagents = {
            { itemId = 38558, name = "Nerubian Chitin", count = 20 },
            { itemId = 44128, name = "Arctic Fur", count = 8 },
            { itemId = 35627, name = "Eternal Shadow", count = 16 },
            { itemId = 49908, name = "Primordial Saronite", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1156,
            factionName = "The Ashen Verdict",
            level = "Revered",
            itemId = 49959,
            cost = 0,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Footpads of Impending Death (450)
    {
        id = 70557,
        name = "Footpads of Impending Death",
        itemId = 49895,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 475, green = 487, gray = 500 },
        reagents = {
            { itemId = 38558, name = "Nerubian Chitin", count = 12 },
            { itemId = 44128, name = "Arctic Fur", count = 8 },
            { itemId = 35627, name = "Eternal Shadow", count = 10 },
            { itemId = 49908, name = "Primordial Saronite", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1156,
            factionName = "The Ashen Verdict",
            level = "Honored",
            itemId = 49961,
            cost = 0,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Lightning-Infused Leggings (450)
    {
        id = 70558,
        name = "Lightning-Infused Leggings",
        itemId = 49900,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 475, green = 487, gray = 500 },
        reagents = {
            { itemId = 38557, name = "Icy Dragonscale", count = 20 },
            { itemId = 44128, name = "Arctic Fur", count = 8 },
            { itemId = 35623, name = "Eternal Air", count = 16 },
            { itemId = 49908, name = "Primordial Saronite", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1156,
            factionName = "The Ashen Verdict",
            level = "Revered",
            itemId = 49962,
            cost = 0,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Earthsoul Boots (450)
    {
        id = 70559,
        name = "Earthsoul Boots",
        itemId = 49896,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 475, green = 487, gray = 500 },
        reagents = {
            { itemId = 38557, name = "Icy Dragonscale", count = 12 },
            { itemId = 44128, name = "Arctic Fur", count = 5 },
            { itemId = 35623, name = "Eternal Air", count = 10 },
            { itemId = 49908, name = "Primordial Saronite", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1156,
            factionName = "The Ashen Verdict",
            level = "Honored",
            itemId = 49963,
            cost = 0,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Draconic Bonesplinter Legguards (450)
    {
        id = 70560,
        name = "Draconic Bonesplinter Legguards",
        itemId = 49901,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 475, green = 487, gray = 500 },
        reagents = {
            { itemId = 38557, name = "Icy Dragonscale", count = 20 },
            { itemId = 44128, name = "Arctic Fur", count = 8 },
            { itemId = 35624, name = "Eternal Earth", count = 16 },
            { itemId = 49908, name = "Primordial Saronite", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1156,
            factionName = "The Ashen Verdict",
            level = "Revered",
            itemId = 49965,
            cost = 0,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Rock-Steady Treads (450)
    {
        id = 70561,
        name = "Rock-Steady Treads",
        itemId = 49897,
        skillRequired = 450,
        skillRange = { orange = 450, yellow = 475, green = 487, gray = 500 },
        reagents = {
            { itemId = 38557, name = "Icy Dragonscale", count = 12 },
            { itemId = 44128, name = "Arctic Fur", count = 8 },
            { itemId = 35624, name = "Eternal Earth", count = 10 },
            { itemId = 49908, name = "Primordial Saronite", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1156,
            factionName = "The Ashen Verdict",
            level = "Honored",
            itemId = 49966,
            cost = 0,
        },
        expansion = C.EXPANSION.WOTLK,
    },
}

CraftLib:RegisterProfession("leatherworking", {
    id = C.PROFESSION_ID.LEATHERWORKING,
    name = "Leatherworking",
    expansion = C.EXPANSION.WOTLK,
    profile = "WOTLK",
    milestones = { 75, 150, 225, 300, 375, 450 },
    recipes = recipes,
})
