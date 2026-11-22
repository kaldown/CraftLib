-- Data/Forever/Alchemy/Recipes.lua
-- Alchemy recipes for WoW Forever
-- Generated from DB2 data, Wowhead guide tables and the Warcraft Wiki recipe tables
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    -- Elixir of Minor Strength (1)
    {
        id = 2329,
        name = "Elixir of Minor Strength",
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Minor Defense (1)
    {
        id = 7183,
        name = "Elixir of Minor Defense",
        itemId = 5997,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 55, green = 75, gray = 95 },
        reagents = {
            { itemId = 765, name = "Silverleaf", count = 1 },
            { itemId = 2447, name = "Peacebloom", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.STARTER,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Minor Arcane Elixir (1)
    {
        id = 1245246,
        name = "Minor Arcane Elixir",
        itemId = 247754,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 10, green = 12, gray = 15 },
        reagents = {
            { itemId = 2447, name = "Peacebloom", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.STARTER,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Minor Force (1)
    {
        id = 1245250,
        name = "Elixir of Minor Force",
        itemId = 247755,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 10, green = 12, gray = 15 },
        reagents = {
            { itemId = 765, name = "Silverleaf", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.STARTER,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Minor Troll's Blood Elixir (15)
    {
        id = 3170,
        name = "Minor Troll's Blood Elixir",
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Minor Spirit (15)
    {
        id = 1250793,
        name = "Elixir of Minor Spirit",
        itemId = 250344,
        skillRequired = 15,
        skillRange = { orange = 15, yellow = 20, green = 22, gray = 25 },
        reagents = {
            { itemId = 2449, name = "Earthroot", count = 2 },
            { itemId = 2447, name = "Peacebloom", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 250380,
        },
        expansion = C.EXPANSION.FOREVER,
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
            { itemId = 2447, name = "Peacebloom", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Minor Mageblood Elixir (25)
    {
        id = 1250788,
        name = "Minor Mageblood Elixir",
        itemId = 250339,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 30, green = 32, gray = 35 },
        reagents = {
            { itemId = 785, name = "Mageroyal", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 250375,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Minor Mender's Potion (30)
    {
        id = 1251741,
        name = "Minor Mender's Potion",
        itemId = 250944,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 35, green = 37, gray = 40 },
        reagents = {
            { itemId = 785, name = "Mageroyal", count = 2 },
            { itemId = 2453, name = "Bruiseweed", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 250988,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Minor Spellblasting Potion (35)
    {
        id = 1251729,
        name = "Minor Spellblasting Potion",
        itemId = 250932,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 40, green = 42, gray = 45 },
        reagents = {
            { itemId = 765, name = "Silverleaf", count = 1 },
            { itemId = 2447, name = "Peacebloom", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 250976,
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cerulean Dye (40)
    {
        id = 1249630,
        name = "Cerulean Dye",
        itemId = 249409,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 50, green = 70, gray = 90 },
        reagents = {
            { itemId = 249399, name = "Frilled Lichen", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Sulfuric Acid (40)
    {
        id = 1249633,
        name = "Sulfuric Acid",
        itemId = 249410,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 50, green = 70, gray = 90 },
        reagents = {
            { itemId = 249391, name = "Pyrite", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Minor Frenzy Potion (40)
    {
        id = 1251735,
        name = "Minor Frenzy Potion",
        itemId = 250938,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 45, green = 47, gray = 50 },
        reagents = {
            { itemId = 2449, name = "Earthroot", count = 1 },
            { itemId = 765, name = "Silverleaf", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 250982,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Minor Cleric's Elixir (45)
    {
        id = 1250779,
        name = "Minor Cleric's Elixir",
        itemId = 250330,
        skillRequired = 45,
        skillRange = { orange = 45, yellow = 50, green = 52, gray = 55 },
        reagents = {
            { itemId = 785, name = "Mageroyal", count = 2 },
            { itemId = 2453, name = "Bruiseweed", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 250366,
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Minor Discolored Healing Potion (50)
    {
        id = 4508,
        name = "Minor Discolored Healing Potion",
        itemId = 4596,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 55, green = 75, gray = 95 },
        reagents = {
            { itemId = 3371, name = "Empty Vial", count = 1 },
            { itemId = 2447, name = "Peacebloom", count = 1 },
            { itemId = 730, name = "Murloc Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 4597,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Discolored Healing Potion (55)
    {
        id = 1244645,
        name = "Lesser Discolored Healing Potion",
        itemId = 247239,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 85, green = 105, gray = 125 },
        reagents = {
            { itemId = 3371, name = "Empty Vial", count = 1 },
            { itemId = 2450, name = "Briarthorn", count = 1 },
            { itemId = 730, name = "Murloc Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Special trainer",
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Lesser Spirit (65)
    {
        id = 1250794,
        name = "Elixir of Lesser Spirit",
        itemId = 250345,
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 70, green = 72, gray = 75 },
        reagents = {
            { itemId = 3355, name = "Wild Steelbloom", count = 2 },
            { itemId = 785, name = "Mageroyal", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250381,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Mageblood Elixir (75)
    {
        id = 1250789,
        name = "Lesser Mageblood Elixir",
        itemId = 250340,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 82, gray = 85 },
        reagents = {
            { itemId = 3356, name = "Kingsblood", count = 3 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250376,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Mender's Potion (80)
    {
        id = 1251742,
        name = "Lesser Mender's Potion",
        itemId = 250945,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 85, green = 87, gray = 90 },
        reagents = {
            { itemId = 3356, name = "Kingsblood", count = 2 },
            { itemId = 3357, name = "Liferoot", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 250989,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Spellblasting Potion (85)
    {
        id = 1251730,
        name = "Lesser Spellblasting Potion",
        itemId = 250933,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 90, green = 92, gray = 95 },
        reagents = {
            { itemId = 785, name = "Mageroyal", count = 1 },
            { itemId = 765, name = "Silverleaf", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 250977,
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Draught of Water Breathing (90)
    {
        id = 7179,
        name = "Draught of Water Breathing",
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
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Coalesced Regret (90)
    {
        id = 426607,
        name = "Elixir of Coalesced Regret",
        itemId = 210708,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 90, green = 100, gray = 110 },
        reagents = {
            { itemId = 3820, name = "Stranglekelp", count = 5 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
            { itemId = 3369, name = "Grave Moss", count = 5 },
            { itemId = 11083, name = "Soul Dust", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 210709,
            cost = 100,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Frenzy Potion (90)
    {
        id = 1251736,
        name = "Lesser Frenzy Potion",
        itemId = 250939,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 95, green = 97, gray = 100 },
        reagents = {
            { itemId = 2450, name = "Briarthorn", count = 1 },
            { itemId = 2449, name = "Earthroot", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 250983,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Cleric's Elixir (95)
    {
        id = 1250780,
        name = "Lesser Cleric's Elixir",
        itemId = 250331,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 100, green = 102, gray = 105 },
        reagents = {
            { itemId = 3356, name = "Kingsblood", count = 2 },
            { itemId = 3357, name = "Liferoot", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250367,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Lesser Intellect (95)
    {
        id = 1250801,
        name = "Elixir of Lesser Intellect",
        itemId = 250353,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 100, green = 102, gray = 105 },
        reagents = {
            { itemId = 3356, name = "Kingsblood", count = 3 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250388,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Discolored Healing Potion (110)
    {
        id = 1244646,
        name = "Discolored Healing Potion",
        itemId = 247240,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 155, gray = 175 },
        reagents = {
            { itemId = 3372, name = "Leaded Vial", count = 1 },
            { itemId = 2453, name = "Bruiseweed", count = 1 },
            { itemId = 730, name = "Murloc Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Special trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Spirit (115)
    {
        id = 1250795,
        name = "Elixir of Spirit",
        itemId = 250346,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 120, green = 122, gray = 125 },
        reagents = {
            { itemId = 3358, name = "Khadgar's Whisker", count = 3 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 250382,
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Magenta Dye (120)
    {
        id = 1249631,
        name = "Magenta Dye",
        itemId = 249430,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 130, green = 142, gray = 155 },
        reagents = {
            { itemId = 249424, name = "Rosecap", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Arcane Elixir (120)
    {
        id = 1250791,
        name = "Lesser Arcane Elixir",
        itemId = 250342,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 125, green = 127, gray = 130 },
        reagents = {
            { itemId = 3356, name = "Kingsblood", count = 4 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250378,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Troll's Blood Elixir (125)
    {
        id = 3176,
        name = "Lesser Troll's Blood Elixir",
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Lesser Defense (130)
    {
        id = 3177,
        name = "Elixir of Lesser Defense",
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
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mender's Potion (130)
    {
        id = 1251743,
        name = "Mender's Potion",
        itemId = 250946,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 135, green = 137, gray = 140 },
        reagents = {
            { itemId = 3819, name = "Wintersbite", count = 2 },
            { itemId = 4625, name = "Firebloom", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250990,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Intellect (135)
    {
        id = 1250802,
        name = "Elixir of Intellect",
        itemId = 250354,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 140, green = 142, gray = 145 },
        reagents = {
            { itemId = 3358, name = "Khadgar's Whisker", count = 3 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 250389,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spellblasting Potion (135)
    {
        id = 1251731,
        name = "Spellblasting Potion",
        itemId = 250934,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 140, green = 142, gray = 145 },
        reagents = {
            { itemId = 3355, name = "Wild Steelbloom", count = 1 },
            { itemId = 3369, name = "Grave Moss", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250978,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Fire Power (140)
    {
        id = 7845,
        name = "Elixir of Fire Power",
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Frenzy Potion (140)
    {
        id = 1251737,
        name = "Frenzy Potion",
        itemId = 250940,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 145, green = 147, gray = 150 },
        reagents = {
            { itemId = 3818, name = "Fadeleaf", count = 2 },
            { itemId = 2450, name = "Briarthorn", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250984,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cleric's Elixir (145)
    {
        id = 1250781,
        name = "Cleric's Elixir",
        itemId = 250332,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 150, green = 152, gray = 155 },
        reagents = {
            { itemId = 3819, name = "Wintersbite", count = 2 },
            { itemId = 4625, name = "Firebloom", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 250368,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Ogre Strength (150)
    {
        id = 3188,
        name = "Elixir of Ogre Strength",
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Fortitude (150)
    {
        id = 1250783,
        name = "Elixir of Fortitude",
        itemId = 250334,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 155, green = 157, gray = 160 },
        reagents = {
            { itemId = 3821, name = "Goldthorn", count = 4 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 250370,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Strength (150)
    {
        id = 1250798,
        name = "Elixir of Strength",
        itemId = 250349,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 155, green = 157, gray = 160 },
        reagents = {
            { itemId = 3355, name = "Wild Steelbloom", count = 3 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 250385,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Greater Discolored Healing Potion (155)
    {
        id = 1244647,
        name = "Greater Discolored Healing Potion",
        itemId = 247241,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 3372, name = "Leaded Vial", count = 1 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 730, name = "Murloc Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Special trainer",
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Greater Spirit (165)
    {
        id = 1250796,
        name = "Elixir of Greater Spirit",
        itemId = 250347,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 170, green = 172, gray = 175 },
        reagents = {
            { itemId = 8836, name = "Arthas' Tears", count = 3 },
            { itemId = 8831, name = "Purple Lotus", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250383,
            currency = { name = "Merchant's Favor", amount = 120 },
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Greater Mageblood Elixir (175)
    {
        id = 1250790,
        name = "Greater Mageblood Elixir",
        itemId = 250341,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 180, green = 182, gray = 185 },
        reagents = {
            { itemId = 8839, name = "Blindweed", count = 3 },
            { itemId = 8836, name = "Arthas' Tears", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250377,
            currency = { name = "Merchant's Favor", amount = 120 },
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Greater Spellblasting Potion (185)
    {
        id = 1251732,
        name = "Greater Spellblasting Potion",
        itemId = 250935,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 190, green = 192, gray = 195 },
        reagents = {
            { itemId = 3356, name = "Kingsblood", count = 2 },
            { itemId = 3818, name = "Fadeleaf", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 250979,
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Arcane Elixir (190)
    {
        id = 439960,
        name = "Lesser Arcane Elixir",
        itemId = 217398,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 212, gray = 215 },
        reagents = {
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 217399,
            cost = 20000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Greater Frenzy Potion (190)
    {
        id = 1251738,
        name = "Greater Frenzy Potion",
        itemId = 250941,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 195, green = 197, gray = 200 },
        reagents = {
            { itemId = 4625, name = "Firebloom", count = 3 },
            { itemId = 3818, name = "Fadeleaf", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 250985,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Draught of Detect Lesser Invisibility (195)
    {
        id = 3453,
        name = "Draught of Detect Lesser Invisibility",
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Defense (195)
    {
        id = 11450,
        name = "Elixir of Defense",
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Potion of Predatory Senses (195)
    {
        id = 1250776,
        name = "Potion of Predatory Senses",
        itemId = 250327,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 200, green = 202, gray = 205 },
        reagents = {
            { itemId = 3818, name = "Fadeleaf", count = 2 },
            { itemId = 3821, name = "Goldthorn", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 250363,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Greater Cleric's Elixir (195)
    {
        id = 1250782,
        name = "Greater Cleric's Elixir",
        itemId = 250333,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 200, green = 202, gray = 205 },
        reagents = {
            { itemId = 8836, name = "Arthas' Tears", count = 3 },
            { itemId = 8831, name = "Purple Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250369,
            currency = { name = "Merchant's Favor", amount = 120 },
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Catseye Draught (200)
    {
        id = 12609,
        name = "Catseye Draught",
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Greater Fortitude (200)
    {
        id = 1250784,
        name = "Elixir of Greater Fortitude",
        itemId = 250335,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 205, green = 207, gray = 210 },
        reagents = {
            { itemId = 8838, name = "Sungrass", count = 4 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250371,
            currency = { name = "Merchant's Favor", amount = 120 },
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Draught of Greater Water Breathing (215)
    {
        id = 22808,
        name = "Draught of Greater Water Breathing",
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Superior Discolored Healing Potion (215)
    {
        id = 1244648,
        name = "Superior Discolored Healing Potion",
        itemId = 247242,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 8925, name = "Crystal Vial", count = 1 },
            { itemId = 8838, name = "Sungrass", count = 1 },
            { itemId = 730, name = "Murloc Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Special trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Viridian Dye (220)
    {
        id = 1249632,
        name = "Viridian Dye",
        itemId = 249431,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 249274, name = "Stranglevine", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wildvine Potion (225)
    {
        id = 11458,
        name = "Wildvine Potion",
        itemId = 9144,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 225, green = 237, gray = 250 },
        reagents = {
            { itemId = 8153, name = "Wildvine", count = 1 },
            { itemId = 8831, name = "Purple Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 9294,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Philosopher's Stone (225)
    {
        id = 11459,
        name = "Philosopher's Stone",
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
        expansion = C.EXPANSION.FOREVER,
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
        tools = { { categoryId = 12, name = "Philosopher's Stone" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9304,
            cost = 8000,
        },
        expansion = C.EXPANSION.FOREVER,
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
        tools = { { categoryId = 12, name = "Philosopher's Stone" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9305,
            cost = 8000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Draught of Detect Undead (230)
    {
        id = 11460,
        name = "Draught of Detect Undead",
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
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Superior Mender's Potion (230)
    {
        id = 1251745,
        name = "Superior Mender's Potion",
        itemId = 250948,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 235, green = 237, gray = 240 },
        reagents = {
            { itemId = 8838, name = "Sungrass", count = 2 },
            { itemId = 8836, name = "Arthas' Tears", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 250992,
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Superior Spellblasting Potion (235)
    {
        id = 1251733,
        name = "Superior Spellblasting Potion",
        itemId = 250936,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 240, green = 242, gray = 245 },
        reagents = {
            { itemId = 3819, name = "Wintersbite", count = 2 },
            { itemId = 3358, name = "Khadgar's Whisker", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 250980,
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Draught of Dream Vision (240)
    {
        id = 11468,
        name = "Draught of Dream Vision",
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Superior Frenzy Potion (240)
    {
        id = 1251739,
        name = "Superior Frenzy Potion",
        itemId = 250942,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 245, green = 247, gray = 250 },
        reagents = {
            { itemId = 8839, name = "Blindweed", count = 3 },
            { itemId = 4625, name = "Firebloom", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 250986,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Greater Strength (245)
    {
        id = 11472,
        name = "Elixir of Greater Strength",
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dragonfire Potion (245)
    {
        id = 1251751,
        name = "Dragonfire Potion",
        itemId = 250953,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 250, green = 252, gray = 255 },
        reagents = {
            { itemId = 13465, name = "Mountain Silversage", count = 2 },
            { itemId = 4625, name = "Firebloom", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250997,
            currency = { name = "Merchant's Favor", amount = 120 },
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Potion of Demon Slaying (250)
    {
        id = 11477,
        name = "Potion of Demon Slaying",
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Draught of Detect Demon (250)
    {
        id = 11478,
        name = "Draught of Detect Demon",
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
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Holy Power (250)
    {
        id = 26277,
        name = "Elixir of Holy Power",
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Distilled Firewater (250)
    {
        id = 1244421,
        name = "Distilled Firewater",
        itemId = 246948,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 260, green = 265, gray = 270 },
        reagents = {
            { itemId = 3819, name = "Wintersbite", count = 4 },
            { itemId = 8846, name = "Gromsblood", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 236754,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of the Phalanx (250)
    {
        id = 1250778,
        name = "Elixir of the Phalanx",
        itemId = 250329,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 255, green = 257, gray = 260 },
        reagents = {
            { itemId = 13464, name = "Golden Sansam", count = 2 },
            { itemId = 8838, name = "Sungrass", count = 4 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250365,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 13476,
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13477,
            cost = 12000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Greater Defense (265)
    {
        id = 17554,
        name = "Elixir of Greater Defense",
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Caustic Smog Potion (265)
    {
        id = 1251749,
        name = "Caustic Smog Potion",
        itemId = 250951,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 270, green = 272, gray = 275 },
        reagents = {
            { itemId = 8845, name = "Ghost Mushroom", count = 2 },
            { itemId = 3369, name = "Grave Moss", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250995,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13479,
            cost = 14000,
        },
        expansion = C.EXPANSION.FOREVER,
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
        tools = { { categoryId = 12, name = "Philosopher's Stone" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12958,
            cost = 50000,
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 13481,
        },
        expansion = C.EXPANSION.FOREVER,
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
        tools = { { categoryId = 12, name = "Philosopher's Stone" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Honored",
            itemId = 13482,
            cost = 15000,
        },
        expansion = C.EXPANSION.FOREVER,
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
        tools = { { categoryId = 12, name = "Philosopher's Stone" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13483,
            cost = 15000,
        },
        expansion = C.EXPANSION.FOREVER,
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
        tools = { { categoryId = 12, name = "Philosopher's Stone" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 576,
            factionName = "Timbermaw Hold",
            level = "Friendly",
            itemId = 13484,
            cost = 15000,
        },
        expansion = C.EXPANSION.FOREVER,
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
        tools = { { categoryId = 12, name = "Philosopher's Stone" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13485,
            cost = 15000,
        },
        expansion = C.EXPANSION.FOREVER,
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
        tools = { { categoryId = 12, name = "Philosopher's Stone" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13486,
        },
        expansion = C.EXPANSION.FOREVER,
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
        tools = { { categoryId = 12, name = "Philosopher's Stone" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13487,
        },
        expansion = C.EXPANSION.FOREVER,
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
        tools = { { categoryId = 12, name = "Philosopher's Stone" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13488,
        },
        expansion = C.EXPANSION.FOREVER,
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
        tools = { { categoryId = 12, name = "Philosopher's Stone" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13489,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Alchemist's Stone (275)
    {
        id = 17632,
        name = "Alchemist's Stone",
        itemId = 13503,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 315, green = 322, gray = 330 },
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13517,
            cost = 40000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mageblood Elixir (275)
    {
        id = 24365,
        name = "Mageblood Elixir",
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Cunning (275)
    {
        id = 1250777,
        name = "Elixir of Cunning",
        itemId = 250328,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 280, green = 282, gray = 285 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 3 },
            { itemId = 8846, name = "Gromsblood", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250364,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Sages (275)
    {
        id = 1250787,
        name = "Elixir of Sages",
        itemId = 250338,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 280, green = 282, gray = 285 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 4 },
            { itemId = 13464, name = "Golden Sansam", count = 2 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250374,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of the Whale (275)
    {
        id = 1250797,
        name = "Elixir of the Whale",
        itemId = 250348,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 280, green = 282, gray = 285 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 3 },
            { itemId = 8846, name = "Gromsblood", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250384,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Ferocity (275)
    {
        id = 1250799,
        name = "Elixir of Ferocity",
        itemId = 250350,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 280, green = 282, gray = 285 },
        reagents = {
            { itemId = 8846, name = "Gromsblood", count = 3 },
            { itemId = 8845, name = "Ghost Mushroom", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250386,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Potion of Venomous Blood (275)
    {
        id = 1251748,
        name = "Potion of Venomous Blood",
        itemId = 250950,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 280, green = 282, gray = 285 },
        reagents = {
            { itemId = 8846, name = "Gromsblood", count = 3 },
            { itemId = 13466, name = "Plaguebloom", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250994,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Transmute: Legionite (275)
    {
        id = 1317279,
        name = "Transmute: Legionite",
        itemId = 251290,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 251291, name = "Heavy Thorium Bar", count = 1 },
            { itemId = 248819, name = "Fel Crystal", count = 1 },
        },
        tools = { { categoryId = 12, name = "Philosopher's Stone" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 284871,
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of the Owl (280)
    {
        id = 1250786,
        name = "Elixir of the Owl",
        itemId = 250337,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 285, green = 287, gray = 290 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 4 },
            { itemId = 13465, name = "Mountain Silversage", count = 2 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250373,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Major Mender's Potion (280)
    {
        id = 1251747,
        name = "Major Mender's Potion",
        itemId = 250949,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 285, green = 287, gray = 290 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 3 },
            { itemId = 8838, name = "Sungrass", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250993,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Potion of Elemental Purging (280)
    {
        id = 1251752,
        name = "Potion of Elemental Purging",
        itemId = 250954,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 285, green = 287, gray = 290 },
        reagents = {
            { itemId = 4625, name = "Firebloom", count = 2 },
            { itemId = 3819, name = "Wintersbite", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250998,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Potion of Beast Slaying (280)
    {
        id = 1251753,
        name = "Potion of Beast Slaying",
        itemId = 250955,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 285, green = 287, gray = 290 },
        reagents = {
            { itemId = 8846, name = "Gromsblood", count = 2 },
            { itemId = 13466, name = "Plaguebloom", count = 2 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 250999,
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 13493,
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Wicked Regeneration (285)
    {
        id = 1250785,
        name = "Elixir of Wicked Regeneration",
        itemId = 250336,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 290, green = 292, gray = 295 },
        reagents = {
            { itemId = 13464, name = "Golden Sansam", count = 3 },
            { itemId = 13463, name = "Dreamfoil", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250372,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of Nature Power (285)
    {
        id = 1250792,
        name = "Elixir of Nature Power",
        itemId = 250343,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 290, green = 292, gray = 295 },
        reagents = {
            { itemId = 13464, name = "Golden Sansam", count = 4 },
            { itemId = 8838, name = "Sungrass", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250379,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Major Spellblasting Potion (285)
    {
        id = 1251734,
        name = "Major Spellblasting Potion",
        itemId = 250937,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 290, green = 292, gray = 295 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 2 },
            { itemId = 13465, name = "Mountain Silversage", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250981,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Major Troll's Blood Elixir (290)
    {
        id = 24368,
        name = "Major Troll's Blood Elixir",
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Major Frenzy Potion (290)
    {
        id = 1251740,
        name = "Major Frenzy Potion",
        itemId = 250943,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 13466, name = "Plaguebloom", count = 3 },
            { itemId = 8839, name = "Blindweed", count = 2 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250987,
            currency = { name = "Merchant's Favor", amount = 240 },
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        tools = { { categoryId = 12, name = "Philosopher's Stone" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13518,
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        tools = { { categoryId = 12, name = "Philosopher's Stone" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Friendly",
            itemId = 20761,
            cost = 120000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elixir of the Grizzly (300)
    {
        id = 1250800,
        name = "Elixir of the Grizzly",
        itemId = 250351,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 305, green = 307, gray = 310 },
        reagents = {
            { itemId = 8846, name = "Gromsblood", count = 3 },
            { itemId = 8839, name = "Blindweed", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 250387,
            currency = { name = "Merchant's Favor", amount = 240 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flask of Natural Accuracy (300)
    {
        id = 1293559,
        name = "Flask of Natural Accuracy",
        itemId = 274273,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 248822, name = "Death Lotus", count = 1 },
            { itemId = 248821, name = "Demonsage", count = 12 },
            { itemId = 13464, name = "Golden Sansam", count = 9 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274277,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flask of Natural Aggression (300)
    {
        id = 1293560,
        name = "Flask of Natural Aggression",
        itemId = 274274,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 248822, name = "Death Lotus", count = 1 },
            { itemId = 248821, name = "Demonsage", count = 18 },
            { itemId = 13465, name = "Mountain Silversage", count = 6 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274278,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flask of Natural Precision (300)
    {
        id = 1293561,
        name = "Flask of Natural Precision",
        itemId = 274275,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 248822, name = "Death Lotus", count = 1 },
            { itemId = 248823, name = "Marefoil", count = 12 },
            { itemId = 13463, name = "Dreamfoil", count = 9 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274279,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flask of Natural Swiftness (300)
    {
        id = 1293562,
        name = "Flask of Natural Swiftness",
        itemId = 274276,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 248822, name = "Death Lotus", count = 1 },
            { itemId = 248823, name = "Marefoil", count = 18 },
            { itemId = 13467, name = "Icecap", count = 6 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274280,
        },
        expansion = C.EXPANSION.FOREVER,
    },
}

CraftLib:RegisterProfession("alchemy", {
    id = C.PROFESSION_ID.ALCHEMY,
    name = "Alchemy",
    expansion = C.EXPANSION.FOREVER,
    profile = "FOREVER",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
