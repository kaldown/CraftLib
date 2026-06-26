-- Data/SoD/Alchemy/Recipes.lua
-- Alchemy recipes for SoD Classic
-- Generated from DB2 data
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    -- Elixir of Lion's Strength (1)
    {
        id = 2329,
        name = "Elixir of Lion's Strength",
        itemId = 2454,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 55, green = 75, gray = 95 },
        reagents = {
            { itemId = 2449, name = "Earthroot", count = 1 },
            { itemId = 765, name = "Silverleaf", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Minor Healing Potion (1)
    {
        id = 2330,
        name = "Minor Healing Potion",
        itemId = 118,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 55, green = 75, gray = 95 },
        reagents = {
            { itemId = 2447, name = "Peacebloom", count = 1 },
            { itemId = 765, name = "Silverleaf", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Minor Defense (1)
    {
        id = 7183,
        name = "Elixir of Minor Defense",
        itemId = 5997,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 55, green = 75, gray = 95 },
        reagents = {
            { itemId = 765, name = "Silverleaf", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Weak Troll's Blood Potion (15)
    {
        id = 3170,
        name = "Weak Troll's Blood Potion",
        itemId = 3382,
        skillRequired = 15,
        skillRange = { orange = 15, yellow = 60, green = 80, gray = 100 },
        reagents = {
            { itemId = 2447, name = "Peacebloom", count = 1 },
            { itemId = 2449, name = "Earthroot", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Minor Mana Potion (25)
    {
        id = 2331,
        name = "Minor Mana Potion",
        itemId = 2455,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 65, green = 85, gray = 105 },
        reagents = {
            { itemId = 785, name = "Mageroyal", count = 1 },
            { itemId = 765, name = "Silverleaf", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Minor Rejuvenation Potion (40)
    {
        id = 2332,
        name = "Minor Rejuvenation Potion",
        itemId = 2456,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 70, green = 90, gray = 110 },
        reagents = {
            { itemId = 785, name = "Mageroyal", count = 2 },
            { itemId = 2447, name = "Peacebloom", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 150,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Minor Fortitude (50)
    {
        id = 2334,
        name = "Elixir of Minor Fortitude",
        itemId = 2458,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 80, green = 100, gray = 120 },
        reagents = {
            { itemId = 2449, name = "Earthroot", count = 2 },
            { itemId = 2447, name = "Peacebloom", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Minor Agility (50)
    {
        id = 3230,
        name = "Elixir of Minor Agility",
        itemId = 2457,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 80, green = 100, gray = 120 },
        reagents = {
            { itemId = 2452, name = "Swiftthistle", count = 1 },
            { itemId = 765, name = "Silverleaf", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2553,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Discolored Healing Potion (50)
    {
        id = 4508,
        name = "Discolored Healing Potion",
        itemId = 4596,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 80, green = 100, gray = 120 },
        reagents = {
            { itemId = 3164, name = "Discolored Worg Heart", count = 1 },
            { itemId = 2447, name = "Peacebloom", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 4597,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Lesser Healing Potion (55)
    {
        id = 2337,
        name = "Lesser Healing Potion",
        itemId = 858,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 85, green = 105, gray = 125 },
        reagents = {
            { itemId = 118, name = "Minor Healing Potion", count = 1 },
            { itemId = 2450, name = "Briarthorn", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Swiftness Potion (60)
    {
        id = 2335,
        name = "Swiftness Potion",
        itemId = 2459,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 90, green = 110, gray = 130 },
        reagents = {
            { itemId = 2452, name = "Swiftthistle", count = 1 },
            { itemId = 2450, name = "Briarthorn", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2555,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rage Potion (60)
    {
        id = 6617,
        name = "Rage Potion",
        itemId = 5631,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 90, green = 110, gray = 130 },
        reagents = {
            { itemId = 5635, name = "Sharp Claw", count = 1 },
            { itemId = 2450, name = "Briarthorn", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 5640,
            cost = 100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Blackmouth Oil (80)
    {
        id = 7836,
        name = "Blackmouth Oil",
        itemId = 6370,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 80, green = 90, gray = 100 },
        reagents = {
            { itemId = 6358, name = "Oily Blackmouth", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Wisdom (90)
    {
        id = 3171,
        name = "Elixir of Wisdom",
        itemId = 3383,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 785, name = "Mageroyal", count = 1 },
            { itemId = 2450, name = "Briarthorn", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Water Breathing (90)
    {
        id = 7179,
        name = "Elixir of Water Breathing",
        itemId = 5996,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 3820, name = "Stranglekelp", count = 1 },
            { itemId = 6370, name = "Blackmouth Oil", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 450,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Giant Growth (90)
    {
        id = 8240,
        name = "Elixir of Giant Growth",
        itemId = 6662,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 6522, name = "Deviate Fish", count = 1 },
            { itemId = 2449, name = "Earthroot", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6663,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Coalesced Regret (90)
    {
        id = 426607,
        name = "Elixir of Coalesced Regret",
        itemId = 210708,
        skillRequired = 90,
        skillRange = { orange = 0, yellow = 90, green = 100, gray = 110 },
        reagents = {
            { itemId = 3820, name = "Stranglekelp", count = 5 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
            { itemId = 3369, name = "Grave Moss", count = 5 },
            { itemId = 11083, name = "Soul Dust", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Holy Protection Potion (100)
    {
        id = 7255,
        name = "Holy Protection Potion",
        itemId = 6051,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 2453, name = "Bruiseweed", count = 1 },
            { itemId = 2452, name = "Swiftthistle", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6053,
            cost = 800,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Swim Speed Potion (100)
    {
        id = 7841,
        name = "Swim Speed Potion",
        itemId = 6372,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 2452, name = "Swiftthistle", count = 1 },
            { itemId = 6370, name = "Blackmouth Oil", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Minor Magic Resistance Potion (110)
    {
        id = 3172,
        name = "Minor Magic Resistance Potion",
        itemId = 3384,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 155, gray = 175 },
        reagents = {
            { itemId = 785, name = "Mageroyal", count = 3 },
            { itemId = 3355, name = "Wild Steelbloom", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3393,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Healing Potion (110)
    {
        id = 3447,
        name = "Healing Potion",
        itemId = 929,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 155, gray = 175 },
        reagents = {
            { itemId = 2453, name = "Bruiseweed", count = 1 },
            { itemId = 2450, name = "Briarthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Lesser Mana Potion (120)
    {
        id = 3173,
        name = "Lesser Mana Potion",
        itemId = 3385,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 165, gray = 185 },
        reagents = {
            { itemId = 785, name = "Mageroyal", count = 1 },
            { itemId = 3820, name = "Stranglekelp", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Poison Resistance (120)
    {
        id = 3174,
        name = "Elixir of Poison Resistance",
        itemId = 3386,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 165, gray = 185 },
        reagents = {
            { itemId = 1288, name = "Large Venom Sac", count = 1 },
            { itemId = 2453, name = "Bruiseweed", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3394,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Strong Troll's Blood Potion (125)
    {
        id = 3176,
        name = "Strong Troll's Blood Potion",
        itemId = 3388,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 170, gray = 190 },
        reagents = {
            { itemId = 2453, name = "Bruiseweed", count = 2 },
            { itemId = 2450, name = "Briarthorn", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Defense (130)
    {
        id = 3177,
        name = "Elixir of Defense",
        itemId = 3389,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 155, green = 175, gray = 195 },
        reagents = {
            { itemId = 3355, name = "Wild Steelbloom", count = 1 },
            { itemId = 3820, name = "Stranglekelp", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 2000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fire Oil (130)
    {
        id = 7837,
        name = "Fire Oil",
        itemId = 6371,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 150, green = 160, gray = 170 },
        reagents = {
            { itemId = 6359, name = "Firefin Snapper", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shadow Protection Potion (135)
    {
        id = 7256,
        name = "Shadow Protection Potion",
        itemId = 6048,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 160, green = 180, gray = 200 },
        reagents = {
            { itemId = 3369, name = "Grave Moss", count = 1 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6054,
            cost = 900,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Lesser Agility (140)
    {
        id = 2333,
        name = "Elixir of Lesser Agility",
        itemId = 3390,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 165, green = 185, gray = 205 },
        reagents = {
            { itemId = 3355, name = "Wild Steelbloom", count = 1 },
            { itemId = 2452, name = "Swiftthistle", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3396,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Firepower (140)
    {
        id = 7845,
        name = "Elixir of Firepower",
        itemId = 6373,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 165, green = 185, gray = 205 },
        reagents = {
            { itemId = 6371, name = "Fire Oil", count = 2 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Ogre's Strength (150)
    {
        id = 3188,
        name = "Elixir of Ogre's Strength",
        itemId = 3391,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 2449, name = "Earthroot", count = 1 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6211,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Free Action Potion (150)
    {
        id = 6624,
        name = "Free Action Potion",
        itemId = 5634,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 6370, name = "Blackmouth Oil", count = 2 },
            { itemId = 3820, name = "Stranglekelp", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 5642,
            cost = 1800,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Greater Healing Potion (155)
    {
        id = 7181,
        name = "Greater Healing Potion",
        itemId = 1710,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 3357, name = "Liferoot", count = 1 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mana Potion (160)
    {
        id = 3452,
        name = "Mana Potion",
        itemId = 3827,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 200, gray = 220 },
        reagents = {
            { itemId = 3820, name = "Stranglekelp", count = 1 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Lesser Invisibility Potion (165)
    {
        id = 3448,
        name = "Lesser Invisibility Potion",
        itemId = 3823,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 205, gray = 225 },
        reagents = {
            { itemId = 3818, name = "Fadeleaf", count = 1 },
            { itemId = 3355, name = "Wild Steelbloom", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shadow Oil (165)
    {
        id = 3449,
        name = "Shadow Oil",
        itemId = 3824,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 190, green = 210, gray = 230 },
        reagents = {
            { itemId = 3818, name = "Fadeleaf", count = 4 },
            { itemId = 3369, name = "Grave Moss", count = 4 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6068,
            cost = 1500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fire Protection Potion (165)
    {
        id = 7257,
        name = "Fire Protection Potion",
        itemId = 6049,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 210, green = 230, gray = 250 },
        reagents = {
            { itemId = 4402, name = "Small Flame Sac", count = 1 },
            { itemId = 6371, name = "Fire Oil", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6055,
            cost = 1500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Fortitude (175)
    {
        id = 3450,
        name = "Elixir of Fortitude",
        itemId = 3825,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 215, gray = 235 },
        reagents = {
            { itemId = 3355, name = "Wild Steelbloom", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 5400,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Great Rage Potion (175)
    {
        id = 6618,
        name = "Great Rage Potion",
        itemId = 5633,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 215, gray = 235 },
        reagents = {
            { itemId = 5637, name = "Large Fang", count = 1 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 5643,
            cost = 2000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mighty Troll's Blood Potion (180)
    {
        id = 3451,
        name = "Mighty Troll's Blood Potion",
        itemId = 3826,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 200, green = 220, gray = 240 },
        reagents = {
            { itemId = 3357, name = "Liferoot", count = 1 },
            { itemId = 2453, name = "Bruiseweed", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3831,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Agility (185)
    {
        id = 11449,
        name = "Elixir of Agility",
        itemId = 8949,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 225, gray = 245 },
        reagents = {
            { itemId = 3820, name = "Stranglekelp", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 5850,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frost Protection Potion (190)
    {
        id = 7258,
        name = "Frost Protection Potion",
        itemId = 6050,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 205, green = 225, gray = 245 },
        reagents = {
            { itemId = 3819, name = "Wintersbite", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6056,
            cost = 2000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Nature Protection Potion (190)
    {
        id = 7259,
        name = "Nature Protection Potion",
        itemId = 6052,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 230, gray = 250 },
        reagents = {
            { itemId = 3357, name = "Liferoot", count = 1 },
            { itemId = 3820, name = "Stranglekelp", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6057,
            cost = 2000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Frost Power (190)
    {
        id = 21923,
        name = "Elixir of Frost Power",
        itemId = 17708,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 230, gray = 250 },
        reagents = {
            { itemId = 3819, name = "Wintersbite", count = 2 },
            { itemId = 3358, name = "Khadgar's Whisker", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 17709,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Detect Lesser Invisibility (195)
    {
        id = 3453,
        name = "Elixir of Detect Lesser Invisibility",
        itemId = 3828,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 3358, name = "Khadgar's Whisker", count = 1 },
            { itemId = 3818, name = "Fadeleaf", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3832,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Greater Defense (195)
    {
        id = 11450,
        name = "Elixir of Greater Defense",
        itemId = 8951,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 3355, name = "Wild Steelbloom", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 6750,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Frost Oil (200)
    {
        id = 3454,
        name = "Frost Oil",
        itemId = 3829,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 3358, name = "Khadgar's Whisker", count = 4 },
            { itemId = 3819, name = "Wintersbite", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14634,
            cost = 2500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Catseye Elixir (200)
    {
        id = 12609,
        name = "Catseye Elixir",
        itemId = 10592,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3818, name = "Fadeleaf", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 7200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Insulating Gniodine (200)
    {
        id = 435969,
        name = "Insulating Gniodine",
        itemId = 213372,
        skillRequired = 200,
        skillRange = { orange = 0, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 3372, name = "Leaded Vial", count = 1 },
            { itemId = 213371, name = "Crate of Tainted Gniodine Solution", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Greater Mana Potion (205)
    {
        id = 11448,
        name = "Greater Mana Potion",
        itemId = 6149,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 3358, name = "Khadgar's Whisker", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 8100,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Oil of Immolation (205)
    {
        id = 11451,
        name = "Oil of Immolation",
        itemId = 8956,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 4625, name = "Firebloom", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 7200,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Magic Resistance Potion (210)
    {
        id = 11453,
        name = "Magic Resistance Potion",
        itemId = 9036,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 3358, name = "Khadgar's Whisker", count = 1 },
            { itemId = 8831, name = "Purple Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 9293,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Goblin Rocket Fuel (210)
    {
        id = 11456,
        name = "Goblin Rocket Fuel",
        itemId = 9061,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 4625, name = "Firebloom", count = 1 },
            { itemId = 9260, name = "Volatile Rum", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10644,
            cost = 2000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Lesser Arcane Elixir (210)
    {
        id = 439960,
        name = "Lesser Arcane Elixir",
        itemId = 217398,
        skillRequired = 210,
        skillRange = { orange = 0, yellow = 210, green = 212, gray = 215 },
        reagents = {
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Lesser Stoneshield Potion (215)
    {
        id = 4942,
        name = "Lesser Stoneshield Potion",
        itemId = 4623,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 3858, name = "Mithril Ore", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 4624,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Restorative Potion (215)
    {
        id = 11452,
        name = "Restorative Potion",
        itemId = 9030,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 7067, name = "Elemental Earth", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Superior Healing Potion (215)
    {
        id = 11457,
        name = "Superior Healing Potion",
        itemId = 3928,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 8838, name = "Sungrass", count = 1 },
            { itemId = 3358, name = "Khadgar's Whisker", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 9000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Greater Water Breathing (215)
    {
        id = 22808,
        name = "Elixir of Greater Water Breathing",
        itemId = 18294,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 7972, name = "Ichor of Undeath", count = 1 },
            { itemId = 8831, name = "Purple Lotus", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 9000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Wildvine Potion (225)
    {
        id = 11458,
        name = "Wildvine Potion",
        itemId = 9144,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 8153, name = "Wildvine", count = 1 },
            { itemId = 8831, name = "Purple Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 9294,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Philosophers' Stone (225)
    {
        id = 11459,
        name = "Philosophers' Stone",
        itemId = 9149,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 4 },
            { itemId = 9262, name = "Black Vitriol", count = 1 },
            { itemId = 8831, name = "Purple Lotus", count = 4 },
            { itemId = 4625, name = "Firebloom", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9303,
            cost = 8000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Transmute: Iron to Gold (225)
    {
        id = 11479,
        name = "Transmute: Iron to Gold",
        itemId = 3577,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Transmute: Mithril to Truesilver (225)
    {
        id = 11480,
        name = "Transmute: Mithril to Truesilver",
        itemId = 6037,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mildly Irradiated Rejuvenation Potion (225)
    {
        id = 435971,
        name = "Mildly Irradiated Rejuvenation Potion",
        itemId = 215162,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 213371, name = "Crate of Tainted Gniodine Solution", count = 1 },
            { itemId = 2456, name = "Minor Rejuvenation Potion", count = 1 },
            { itemId = 215430, name = "Gnomeregan Fallout", count = 3 },
            { itemId = 8925, name = "Crystal Vial", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Detect Undead (230)
    {
        id = 11460,
        name = "Elixir of Detect Undead",
        itemId = 9154,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 245, green = 265, gray = 285 },
        reagents = {
            { itemId = 8836, name = "Arthas' Tears", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dreamless Sleep Potion (230)
    {
        id = 15833,
        name = "Dreamless Sleep Potion",
        itemId = 12190,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 245, green = 265, gray = 285 },
        reagents = {
            { itemId = 8831, name = "Purple Lotus", count = 3 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 9000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Arcane Elixir (235)
    {
        id = 11461,
        name = "Arcane Elixir",
        itemId = 9155,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 270, gray = 290 },
        reagents = {
            { itemId = 8839, name = "Blindweed", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 9000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Invisibility Potion (235)
    {
        id = 11464,
        name = "Invisibility Potion",
        itemId = 9172,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 270, gray = 290 },
        reagents = {
            { itemId = 8845, name = "Ghost Mushroom", count = 1 },
            { itemId = 8838, name = "Sungrass", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 9295,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Greater Intellect (235)
    {
        id = 11465,
        name = "Elixir of Greater Intellect",
        itemId = 9179,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 270, gray = 290 },
        reagents = {
            { itemId = 8839, name = "Blindweed", count = 1 },
            { itemId = 3358, name = "Khadgar's Whisker", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 10800,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Gift of Arthas (240)
    {
        id = 11466,
        name = "Gift of Arthas",
        itemId = 9088,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 255, green = 275, gray = 295 },
        reagents = {
            { itemId = 8836, name = "Arthas' Tears", count = 1 },
            { itemId = 8839, name = "Blindweed", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 9296,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Greater Agility (240)
    {
        id = 11467,
        name = "Elixir of Greater Agility",
        itemId = 9187,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 255, green = 275, gray = 295 },
        reagents = {
            { itemId = 8838, name = "Sungrass", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 10800,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Dream Vision (240)
    {
        id = 11468,
        name = "Elixir of Dream Vision",
        itemId = 9197,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 255, green = 275, gray = 295 },
        reagents = {
            { itemId = 8831, name = "Purple Lotus", count = 3 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 9297,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Giants (245)
    {
        id = 11472,
        name = "Elixir of Giants",
        itemId = 9206,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 260, green = 280, gray = 300 },
        reagents = {
            { itemId = 8838, name = "Sungrass", count = 1 },
            { itemId = 8846, name = "Gromsblood", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 9298,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ghost Dye (245)
    {
        id = 11473,
        name = "Ghost Dye",
        itemId = 9210,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 260, green = 280, gray = 300 },
        reagents = {
            { itemId = 8845, name = "Ghost Mushroom", count = 2 },
            { itemId = 4342, name = "Purple Dye", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9302,
            cost = 9000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Limited Invulnerability Potion (250)
    {
        id = 3175,
        name = "Limited Invulnerability Potion",
        itemId = 3387,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 275, green = 295, gray = 315 },
        reagents = {
            { itemId = 8839, name = "Blindweed", count = 2 },
            { itemId = 8845, name = "Ghost Mushroom", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3395,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Shadow Power (250)
    {
        id = 11476,
        name = "Elixir of Shadow Power",
        itemId = 9264,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 8845, name = "Ghost Mushroom", count = 3 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9301,
            cost = 10000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Demonslaying (250)
    {
        id = 11477,
        name = "Elixir of Demonslaying",
        itemId = 9224,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 8846, name = "Gromsblood", count = 1 },
            { itemId = 8845, name = "Ghost Mushroom", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9300,
            cost = 10000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Detect Demon (250)
    {
        id = 11478,
        name = "Elixir of Detect Demon",
        itemId = 9233,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 8846, name = "Gromsblood", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 12600,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Stonescale Oil (250)
    {
        id = 17551,
        name = "Stonescale Oil",
        itemId = 13423,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 13422, name = "Stonescale Eel", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
            trainingCost = 13500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Greater Firepower (250)
    {
        id = 26277,
        name = "Elixir of Greater Firepower",
        itemId = 21546,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 6371, name = "Fire Oil", count = 3 },
            { itemId = 4625, name = "Firebloom", count = 3 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 21547,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Flask of Everlasting Nightmares (250)
    {
        id = 446226,
        name = "Flask of Everlasting Nightmares",
        itemId = 221024,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Flask of Nightmarish Mojo (250)
    {
        id = 446851,
        name = "Flask of Nightmarish Mojo",
        itemId = 221313,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 5 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
            { itemId = 221312, name = "Flask of Atal'ai Mojo", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Flask of Restless Dreams (250)
    {
        id = 448085,
        name = "Flask of Restless Dreams",
        itemId = 222952,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mighty Rage Potion (255)
    {
        id = 17552,
        name = "Mighty Rage Potion",
        itemId = 13442,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 270, green = 290, gray = 310 },
        reagents = {
            { itemId = 8846, name = "Gromsblood", count = 3 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Superior Mana Potion (260)
    {
        id = 17553,
        name = "Superior Mana Potion",
        itemId = 13443,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 275, green = 295, gray = 315 },
        reagents = {
            { itemId = 8838, name = "Sungrass", count = 2 },
            { itemId = 8839, name = "Blindweed", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Superior Defense (265)
    {
        id = 17554,
        name = "Elixir of Superior Defense",
        itemId = 13445,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 280, green = 300, gray = 320 },
        reagents = {
            { itemId = 13423, name = "Stonescale Oil", count = 2 },
            { itemId = 8838, name = "Sungrass", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13478,
            cost = 13000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of the Sages (270)
    {
        id = 17555,
        name = "Elixir of the Sages",
        itemId = 13447,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 285, green = 305, gray = 325 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 1 },
            { itemId = 13466, name = "Plaguebloom", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Major Discolored Healing Potion (270)
    {
        id = 1231583,
        name = "Major Discolored Healing Potion",
        itemId = 241650,
        skillRequired = 270,
        skillRange = { orange = 0, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 241652, name = "Discolored Beast Heart", count = 1 },
            { itemId = 13466, name = "Plaguebloom", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 241651,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Transmute: Arcanite (275)
    {
        id = 17187,
        name = "Transmute: Arcanite",
        itemId = 12360,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 1 },
            { itemId = 12363, name = "Arcane Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12958,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Major Healing Potion (275)
    {
        id = 17556,
        name = "Major Healing Potion",
        itemId = 13446,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 310, gray = 330 },
        reagents = {
            { itemId = 13464, name = "Golden Sansam", count = 2 },
            { itemId = 13465, name = "Mountain Silversage", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Brute Force (275)
    {
        id = 17557,
        name = "Elixir of Brute Force",
        itemId = 13453,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 310, gray = 330 },
        reagents = {
            { itemId = 8846, name = "Gromsblood", count = 2 },
            { itemId = 13466, name = "Plaguebloom", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Transmute: Air to Fire (275)
    {
        id = 17559,
        name = "Transmute: Air to Fire",
        itemId = 7078,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 7082, name = "Essence of Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Honored",
            itemId = 13482,
            cost = 15000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Transmute: Fire to Earth (275)
    {
        id = 17560,
        name = "Transmute: Fire to Earth",
        itemId = 7076,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 7078, name = "Essence of Fire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13483,
            cost = 15000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Transmute: Earth to Water (275)
    {
        id = 17561,
        name = "Transmute: Earth to Water",
        itemId = 7080,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 7076, name = "Essence of Earth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 576,
            factionName = "Timbermaw Hold",
            level = "Friendly",
            itemId = 13484,
            cost = 15000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Transmute: Water to Air (275)
    {
        id = 17562,
        name = "Transmute: Water to Air",
        itemId = 7082,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 7080, name = "Essence of Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13485,
            cost = 15000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Transmute: Undeath to Water (275)
    {
        id = 17563,
        name = "Transmute: Undeath to Water",
        itemId = 7080,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 12808, name = "Essence of Undeath", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13486,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Transmute: Water to Undeath (275)
    {
        id = 17564,
        name = "Transmute: Water to Undeath",
        itemId = 12808,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 7080, name = "Essence of Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13487,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Transmute: Life to Earth (275)
    {
        id = 17565,
        name = "Transmute: Life to Earth",
        itemId = 7076,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 12803, name = "Living Essence", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13488,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Transmute: Earth to Life (275)
    {
        id = 17566,
        name = "Transmute: Earth to Life",
        itemId = 12803,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 7076, name = "Essence of Earth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13489,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mageblood Potion (275)
    {
        id = 24365,
        name = "Mageblood Potion",
        itemId = 20007,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 310, gray = 330 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 1 },
            { itemId = 13466, name = "Plaguebloom", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Revered",
            itemId = 20011,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Greater Dreamless Sleep Potion (275)
    {
        id = 24366,
        name = "Greater Dreamless Sleep Potion",
        itemId = 20002,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 310, gray = 330 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 2 },
            { itemId = 13464, name = "Golden Sansam", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Friendly",
            itemId = 20012,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Greater Stoneshield Potion (280)
    {
        id = 17570,
        name = "Greater Stoneshield Potion",
        itemId = 13455,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 295, green = 315, gray = 335 },
        reagents = {
            { itemId = 13423, name = "Stonescale Oil", count = 3 },
            { itemId = 10620, name = "Thorium Ore", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13490,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of the Mongoose (280)
    {
        id = 17571,
        name = "Elixir of the Mongoose",
        itemId = 13452,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 295, green = 315, gray = 335 },
        reagents = {
            { itemId = 13465, name = "Mountain Silversage", count = 2 },
            { itemId = 13466, name = "Plaguebloom", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13491,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Purification Potion (285)
    {
        id = 17572,
        name = "Purification Potion",
        itemId = 13462,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 300, green = 320, gray = 340 },
        reagents = {
            { itemId = 13467, name = "Icecap", count = 2 },
            { itemId = 13466, name = "Plaguebloom", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Greater Arcane Elixir (285)
    {
        id = 17573,
        name = "Greater Arcane Elixir",
        itemId = 13454,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 300, green = 320, gray = 340 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 3 },
            { itemId = 13465, name = "Mountain Silversage", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Living Action Potion (285)
    {
        id = 24367,
        name = "Living Action Potion",
        itemId = 20008,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 300, green = 320, gray = 340 },
        reagents = {
            { itemId = 13467, name = "Icecap", count = 2 },
            { itemId = 13465, name = "Mountain Silversage", count = 2 },
            { itemId = 10286, name = "Heart of the Wild", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Exalted",
            itemId = 20013,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Greater Fire Protection Potion (290)
    {
        id = 17574,
        name = "Greater Fire Protection Potion",
        itemId = 13457,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 7068, name = "Elemental Fire", count = 1 },
            { itemId = 13463, name = "Dreamfoil", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13494,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Greater Frost Protection Potion (290)
    {
        id = 17575,
        name = "Greater Frost Protection Potion",
        itemId = 13456,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 7070, name = "Elemental Water", count = 1 },
            { itemId = 13463, name = "Dreamfoil", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13495,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Greater Nature Protection Potion (290)
    {
        id = 17576,
        name = "Greater Nature Protection Potion",
        itemId = 13458,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 7067, name = "Elemental Earth", count = 1 },
            { itemId = 13463, name = "Dreamfoil", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13496,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Greater Arcane Protection Potion (290)
    {
        id = 17577,
        name = "Greater Arcane Protection Potion",
        itemId = 13461,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 1 },
            { itemId = 13463, name = "Dreamfoil", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13497,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Greater Shadow Protection Potion (290)
    {
        id = 17578,
        name = "Greater Shadow Protection Potion",
        itemId = 13459,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 3824, name = "Shadow Oil", count = 1 },
            { itemId = 13463, name = "Dreamfoil", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13499,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Major Troll's Blood Potion (290)
    {
        id = 24368,
        name = "Major Troll's Blood Potion",
        itemId = 20004,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 8846, name = "Gromsblood", count = 1 },
            { itemId = 13466, name = "Plaguebloom", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Honored",
            itemId = 20014,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Major Mana Potion (295)
    {
        id = 17580,
        name = "Major Mana Potion",
        itemId = 13444,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 310, green = 330, gray = 350 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 3 },
            { itemId = 13467, name = "Icecap", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13501,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Alchemist's Stone (300)
    {
        id = 17632,
        name = "Alchemist's Stone",
        itemId = 13503,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 7078, name = "Essence of Fire", count = 8 },
            { itemId = 7076, name = "Essence of Earth", count = 8 },
            { itemId = 7082, name = "Essence of Air", count = 8 },
            { itemId = 7080, name = "Essence of Water", count = 8 },
            { itemId = 12803, name = "Living Essence", count = 8 },
            { itemId = 9262, name = "Black Vitriol", count = 2 },
            { itemId = 13468, name = "Black Lotus", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Flask of Petrification (300)
    {
        id = 17634,
        name = "Flask of Petrification",
        itemId = 13506,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13423, name = "Stonescale Oil", count = 30 },
            { itemId = 13465, name = "Mountain Silversage", count = 10 },
            { itemId = 13468, name = "Black Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13518,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Flask of the Titans (300)
    {
        id = 17635,
        name = "Flask of the Titans",
        itemId = 13510,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 8846, name = "Gromsblood", count = 30 },
            { itemId = 13423, name = "Stonescale Oil", count = 10 },
            { itemId = 13468, name = "Black Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13519,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Flask of Distilled Wisdom (300)
    {
        id = 17636,
        name = "Flask of Distilled Wisdom",
        itemId = 13511,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 30 },
            { itemId = 13467, name = "Icecap", count = 10 },
            { itemId = 13468, name = "Black Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13520,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Flask of Supreme Power (300)
    {
        id = 17637,
        name = "Flask of Supreme Power",
        itemId = 13512,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 30 },
            { itemId = 13465, name = "Mountain Silversage", count = 10 },
            { itemId = 13468, name = "Black Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13521,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Flask of Chromatic Resistance (300)
    {
        id = 17638,
        name = "Flask of Chromatic Resistance",
        itemId = 13513,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13467, name = "Icecap", count = 30 },
            { itemId = 13465, name = "Mountain Silversage", count = 10 },
            { itemId = 13468, name = "Black Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13522,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Major Rejuvenation Potion (300)
    {
        id = 22732,
        name = "Major Rejuvenation Potion",
        itemId = 18253,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 10286, name = "Heart of the Wild", count = 1 },
            { itemId = 13464, name = "Golden Sansam", count = 4 },
            { itemId = 13463, name = "Dreamfoil", count = 4 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18257,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Transmute: Elemental Fire (300)
    {
        id = 25146,
        name = "Transmute: Elemental Fire",
        itemId = 7068,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 301, green = 305, gray = 310 },
        reagents = {
            { itemId = 7077, name = "Heart of Fire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Friendly",
            itemId = 20761,
            cost = 120000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Gurubashi Mojo Madness (315)
    {
        id = 24266,
        name = "Gurubashi Mojo Madness",
        itemId = 19931,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 19943, name = "Massive Mojo", count = 1 },
            { itemId = 12804, name = "Powerful Mojo", count = 6 },
            { itemId = 13468, name = "Black Lotus", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Flask of Unyielding Sorrow (315)
    {
        id = 1213544,
        name = "Flask of Unyielding Sorrow",
        itemId = 233966,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 1 },
            { itemId = 234012, name = "Hive Thistle", count = 1 },
            { itemId = 13511, name = "Flask of Distilled Wisdom", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Flask of Ancient Knowledge (315)
    {
        id = 1213546,
        name = "Flask of Ancient Knowledge",
        itemId = 233964,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 1 },
            { itemId = 234011, name = "Qiraji Stalker Venom", count = 1 },
            { itemId = 13512, name = "Flask of Supreme Power", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Flask of the Old Gods (315)
    {
        id = 1213548,
        name = "Flask of the Old Gods",
        itemId = 233965,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 1 },
            { itemId = 234006, name = "Monstrous Silithid Chitin", count = 1 },
            { itemId = 13510, name = "Flask of the Titans", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Flask of Madness (315)
    {
        id = 1213552,
        name = "Flask of Madness",
        itemId = 233962,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 1 },
            { itemId = 234010, name = "Ancient Sandworm Bile", count = 1 },
            { itemId = 13513, name = "Flask of Chromatic Resistance", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of the Honey Badger (315)
    {
        id = 1213559,
        name = "Elixir of the Honey Badger",
        itemId = 233967,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13465, name = "Mountain Silversage", count = 2 },
            { itemId = 234012, name = "Hive Thistle", count = 2 },
            { itemId = 234011, name = "Qiraji Stalker Venom", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of the Mage-Lord (315)
    {
        id = 1213563,
        name = "Elixir of the Mage-Lord",
        itemId = 233968,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13466, name = "Plaguebloom", count = 2 },
            { itemId = 234012, name = "Hive Thistle", count = 2 },
            { itemId = 234011, name = "Qiraji Stalker Venom", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of the Ironside (315)
    {
        id = 1213565,
        name = "Elixir of the Ironside",
        itemId = 233969,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13467, name = "Icecap", count = 2 },
            { itemId = 234012, name = "Hive Thistle", count = 2 },
            { itemId = 234011, name = "Qiraji Stalker Venom", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Elixir of Alacrity (315)
    {
        id = 1213571,
        name = "Elixir of Alacrity",
        itemId = 233977,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 2 },
            { itemId = 234012, name = "Hive Thistle", count = 2 },
            { itemId = 234011, name = "Qiraji Stalker Venom", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
}

CraftLib:RegisterProfession("alchemy", {
    id = C.PROFESSION_ID.ALCHEMY,
    name = "Alchemy",
    expansion = C.EXPANSION.SOD,
    flavor = "SOD",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
