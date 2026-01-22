-- Data/TBC/Alchemy/Recipes.lua
-- Alchemy recipes for TBC Classic
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
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Lesser Agility (1)
    {
        id = 2333,
        name = "Elixir of Lesser Agility",
        itemId = 3390,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 165, green = 185, gray = 205 },
        reagents = {
            { itemId = 3355, name = "Wild Steelbloom", count = 1 },
            { itemId = 2452, name = "Swiftthistle", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3396,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Weak Troll's Blood Potion (1)
    {
        id = 3170,
        name = "Weak Troll's Blood Potion",
        itemId = 3382,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 60, green = 80, gray = 100 },
        reagents = {
            { itemId = 2447, name = "Peacebloom", count = 1 },
            { itemId = 2449, name = "Earthroot", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Wisdom (1)
    {
        id = 3171,
        name = "Elixir of Wisdom",
        itemId = 3383,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 785, name = "Mageroyal", count = 1 },
            { itemId = 2450, name = "Briarthorn", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Minor Magic Resistance Potion (1)
    {
        id = 3172,
        name = "Minor Magic Resistance Potion",
        itemId = 3384,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 135, green = 155, gray = 175 },
        reagents = {
            { itemId = 785, name = "Mageroyal", count = 3 },
            { itemId = 3355, name = "Wild Steelbloom", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3393,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Lesser Mana Potion (1)
    {
        id = 3173,
        name = "Lesser Mana Potion",
        itemId = 3385,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 145, green = 165, gray = 185 },
        reagents = {
            { itemId = 785, name = "Mageroyal", count = 1 },
            { itemId = 3820, name = "Stranglekelp", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Potion of Curing (1)
    {
        id = 3174,
        name = "Potion of Curing",
        itemId = 3386,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 145, green = 165, gray = 185 },
        reagents = {
            { itemId = 1288, name = "Large Venom Sac", count = 1 },
            { itemId = 2453, name = "Bruiseweed", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3394,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Limited Invulnerability Potion (1)
    {
        id = 3175,
        name = "Limited Invulnerability Potion",
        itemId = 3387,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 275, green = 295, gray = 315 },
        reagents = {
            { itemId = 8839, name = "Blindweed", count = 2 },
            { itemId = 8845, name = "Ghost Mushroom", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3395,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Strong Troll's Blood Potion (1)
    {
        id = 3176,
        name = "Strong Troll's Blood Potion",
        itemId = 3388,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 150, green = 170, gray = 190 },
        reagents = {
            { itemId = 2453, name = "Bruiseweed", count = 2 },
            { itemId = 2450, name = "Briarthorn", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Defense (1)
    {
        id = 3177,
        name = "Elixir of Defense",
        itemId = 3389,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 155, green = 175, gray = 195 },
        reagents = {
            { itemId = 3355, name = "Wild Steelbloom", count = 1 },
            { itemId = 3820, name = "Stranglekelp", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Ogre's Strength (1)
    {
        id = 3188,
        name = "Elixir of Ogre's Strength",
        itemId = 3391,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 2449, name = "Earthroot", count = 1 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6211,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Minor Agility (1)
    {
        id = 3230,
        name = "Elixir of Minor Agility",
        itemId = 2457,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 80, green = 100, gray = 120 },
        reagents = {
            { itemId = 2452, name = "Swiftthistle", count = 1 },
            { itemId = 765, name = "Silverleaf", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2553,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Healing Potion (1)
    {
        id = 3447,
        name = "Healing Potion",
        itemId = 929,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 135, green = 155, gray = 175 },
        reagents = {
            { itemId = 2453, name = "Bruiseweed", count = 1 },
            { itemId = 2450, name = "Briarthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Lesser Invisibility Potion (1)
    {
        id = 3448,
        name = "Lesser Invisibility Potion",
        itemId = 3823,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 185, green = 205, gray = 225 },
        reagents = {
            { itemId = 3818, name = "Fadeleaf", count = 1 },
            { itemId = 3355, name = "Wild Steelbloom", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Shadow Oil (1)
    {
        id = 3449,
        name = "Shadow Oil",
        itemId = 3824,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 190, green = 210, gray = 230 },
        reagents = {
            { itemId = 3818, name = "Fadeleaf", count = 4 },
            { itemId = 3369, name = "Grave Moss", count = 4 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6068,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Fortitude (1)
    {
        id = 3450,
        name = "Elixir of Fortitude",
        itemId = 3825,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 195, green = 215, gray = 235 },
        reagents = {
            { itemId = 3355, name = "Wild Steelbloom", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3830,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Mighty Troll's Blood Potion (1)
    {
        id = 3451,
        name = "Mighty Troll's Blood Potion",
        itemId = 3826,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 200, green = 220, gray = 240 },
        reagents = {
            { itemId = 3357, name = "Liferoot", count = 1 },
            { itemId = 2453, name = "Bruiseweed", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3831,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Mana Potion (1)
    {
        id = 3452,
        name = "Mana Potion",
        itemId = 3827,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 180, green = 200, gray = 220 },
        reagents = {
            { itemId = 3820, name = "Stranglekelp", count = 1 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Detect Lesser Invisibility (1)
    {
        id = 3453,
        name = "Elixir of Detect Lesser Invisibility",
        itemId = 3828,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 3358, name = "Khadgar's Whisker", count = 1 },
            { itemId = 3818, name = "Fadeleaf", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 3832,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Frost Oil (1)
    {
        id = 3454,
        name = "Frost Oil",
        itemId = 3829,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 3358, name = "Khadgar's Whisker", count = 4 },
            { itemId = 3819, name = "Wintersbite", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14634,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Discolored Healing Potion (1)
    {
        id = 4508,
        name = "Discolored Healing Potion",
        itemId = 4596,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 80, green = 100, gray = 120 },
        reagents = {
            { itemId = 3164, name = "Discolored Worg Heart", count = 1 },
            { itemId = 2447, name = "Peacebloom", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4597,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Lesser Stoneshield Potion (1)
    {
        id = 4942,
        name = "Lesser Stoneshield Potion",
        itemId = 4623,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 3858, name = "Mithril Ore", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4624,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Rage Potion (1)
    {
        id = 6617,
        name = "Rage Potion",
        itemId = 5631,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 90, green = 110, gray = 130 },
        reagents = {
            { itemId = 5635, name = "Sharp Claw", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5640,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Great Rage Potion (1)
    {
        id = 6618,
        name = "Great Rage Potion",
        itemId = 5633,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 195, green = 215, gray = 235 },
        reagents = {
            { itemId = 5637, name = "Large Fang", count = 1 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5643,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Cowardly Flight Potion (1)
    {
        id = 6619,
        name = "Cowardly Flight Potion",
        itemId = 5632,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 150, green = 170, gray = 190 },
        reagents = {
            { itemId = 5636, name = "Delicate Feather", count = 1 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5641,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Free Action Potion (1)
    {
        id = 6624,
        name = "Free Action Potion",
        itemId = 5634,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 6370, name = "Blackmouth Oil", count = 2 },
            { itemId = 3820, name = "Stranglekelp", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5642,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Water Breathing (1)
    {
        id = 7179,
        name = "Elixir of Water Breathing",
        itemId = 5996,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 3820, name = "Stranglekelp", count = 1 },
            { itemId = 6370, name = "Blackmouth Oil", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Greater Healing Potion (1)
    {
        id = 7181,
        name = "Greater Healing Potion",
        itemId = 1710,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 3357, name = "Liferoot", count = 1 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Holy Protection Potion (1)
    {
        id = 7255,
        name = "Holy Protection Potion",
        itemId = 6051,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 2453, name = "Bruiseweed", count = 1 },
            { itemId = 2452, name = "Swiftthistle", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6053,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Shadow Protection Potion (1)
    {
        id = 7256,
        name = "Shadow Protection Potion",
        itemId = 6048,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 160, green = 180, gray = 200 },
        reagents = {
            { itemId = 3369, name = "Grave Moss", count = 1 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6054,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fire Protection Potion (1)
    {
        id = 7257,
        name = "Fire Protection Potion",
        itemId = 6049,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 210, green = 230, gray = 250 },
        reagents = {
            { itemId = 4402, name = "Small Flame Sac", count = 1 },
            { itemId = 6371, name = "Fire Oil", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6055,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Frost Protection Potion (1)
    {
        id = 7258,
        name = "Frost Protection Potion",
        itemId = 6050,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 205, green = 225, gray = 245 },
        reagents = {
            { itemId = 3819, name = "Wintersbite", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6056,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Nature Protection Potion (1)
    {
        id = 7259,
        name = "Nature Protection Potion",
        itemId = 6052,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 210, green = 230, gray = 250 },
        reagents = {
            { itemId = 3357, name = "Liferoot", count = 1 },
            { itemId = 3820, name = "Stranglekelp", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6057,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Blackmouth Oil (1)
    {
        id = 7836,
        name = "Blackmouth Oil",
        itemId = 6370,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 80, green = 90, gray = 100 },
        reagents = {
            { itemId = 6358, name = "Oily Blackmouth", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fire Oil (1)
    {
        id = 7837,
        name = "Fire Oil",
        itemId = 6371,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 150, green = 160, gray = 170 },
        reagents = {
            { itemId = 6359, name = "Firefin Snapper", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Swim Speed Potion (1)
    {
        id = 7841,
        name = "Swim Speed Potion",
        itemId = 6372,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 2452, name = "Swiftthistle", count = 1 },
            { itemId = 6370, name = "Blackmouth Oil", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Firepower (1)
    {
        id = 7845,
        name = "Elixir of Firepower",
        itemId = 6373,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 165, green = 185, gray = 205 },
        reagents = {
            { itemId = 6371, name = "Fire Oil", count = 2 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Giant Growth (1)
    {
        id = 8240,
        name = "Elixir of Giant Growth",
        itemId = 6662,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 6522, name = "Deviate Fish", count = 1 },
            { itemId = 2449, name = "Earthroot", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6663,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Waterwalking (1)
    {
        id = 11447,
        name = "Elixir of Waterwalking",
        itemId = 8827,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 190, green = 210, gray = 230 },
        reagents = {
            { itemId = 6370, name = "Blackmouth Oil", count = 1 },
            { itemId = 3357, name = "Liferoot", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Greater Mana Potion (1)
    {
        id = 11448,
        name = "Greater Mana Potion",
        itemId = 6149,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 3358, name = "Khadgar's Whisker", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Agility (1)
    {
        id = 11449,
        name = "Elixir of Agility",
        itemId = 8949,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 205, green = 225, gray = 245 },
        reagents = {
            { itemId = 3820, name = "Stranglekelp", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Greater Defense (1)
    {
        id = 11450,
        name = "Elixir of Greater Defense",
        itemId = 8951,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 3355, name = "Wild Steelbloom", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Oil of Immolation (1)
    {
        id = 11451,
        name = "Oil of Immolation",
        itemId = 8956,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 4625, name = "Firebloom", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Restorative Potion (1)
    {
        id = 11452,
        name = "Restorative Potion",
        itemId = 9030,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 7067, name = "Elemental Earth", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Magic Resistance Potion (1)
    {
        id = 11453,
        name = "Magic Resistance Potion",
        itemId = 9036,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 3358, name = "Khadgar's Whisker", count = 1 },
            { itemId = 8831, name = "Purple Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9293,
            cost = 5000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Goblin Rocket Fuel (1)
    {
        id = 11456,
        name = "Goblin Rocket Fuel",
        itemId = 9061,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 4625, name = "Firebloom", count = 1 },
            { itemId = 9260, name = "Volatile Rum", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10644,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Superior Healing Potion (1)
    {
        id = 11457,
        name = "Superior Healing Potion",
        itemId = 3928,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 8838, name = "Sungrass", count = 1 },
            { itemId = 3358, name = "Khadgar's Whisker", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Wildvine Potion (1)
    {
        id = 11458,
        name = "Wildvine Potion",
        itemId = 9144,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 8153, name = "Wildvine", count = 1 },
            { itemId = 8831, name = "Purple Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9294,
            cost = 8000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Philosopher's Stone (1)
    {
        id = 11459,
        name = "Philosopher's Stone",
        itemId = 9149,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 240, green = 260, gray = 280 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Detect Undead (1)
    {
        id = 11460,
        name = "Elixir of Detect Undead",
        itemId = 9154,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 245, green = 265, gray = 285 },
        reagents = {
            { itemId = 8836, name = "Arthas' Tears", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Arcane Elixir (1)
    {
        id = 11461,
        name = "Arcane Elixir",
        itemId = 9155,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 250, green = 270, gray = 290 },
        reagents = {
            { itemId = 8839, name = "Blindweed", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Invisibility Potion (1)
    {
        id = 11464,
        name = "Invisibility Potion",
        itemId = 9172,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 250, green = 270, gray = 290 },
        reagents = {
            { itemId = 8845, name = "Ghost Mushroom", count = 1 },
            { itemId = 8838, name = "Sungrass", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9295,
            cost = 8000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Greater Intellect (1)
    {
        id = 11465,
        name = "Elixir of Greater Intellect",
        itemId = 9179,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 250, green = 270, gray = 290 },
        reagents = {
            { itemId = 8839, name = "Blindweed", count = 1 },
            { itemId = 3358, name = "Khadgar's Whisker", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Gift of Arthas (1)
    {
        id = 11466,
        name = "Gift of Arthas",
        itemId = 9088,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 255, green = 275, gray = 295 },
        reagents = {
            { itemId = 8836, name = "Arthas' Tears", count = 1 },
            { itemId = 8839, name = "Blindweed", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9296,
            cost = 8000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Greater Agility (1)
    {
        id = 11467,
        name = "Elixir of Greater Agility",
        itemId = 9187,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 255, green = 275, gray = 295 },
        reagents = {
            { itemId = 8838, name = "Sungrass", count = 1 },
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Dream Vision (1)
    {
        id = 11468,
        name = "Elixir of Dream Vision",
        itemId = 9197,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 255, green = 275, gray = 295 },
        reagents = {
            { itemId = 8831, name = "Purple Lotus", count = 3 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9297,
            cost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Giants (1)
    {
        id = 11472,
        name = "Elixir of Giants",
        itemId = 9206,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 260, green = 280, gray = 300 },
        reagents = {
            { itemId = 8838, name = "Sungrass", count = 1 },
            { itemId = 8846, name = "Gromsblood", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9298,
            cost = 9000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ghost Dye (1)
    {
        id = 11473,
        name = "Ghost Dye",
        itemId = 9210,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 260, green = 280, gray = 300 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Shadow Power (1)
    {
        id = 11476,
        name = "Elixir of Shadow Power",
        itemId = 9264,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 8845, name = "Ghost Mushroom", count = 3 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9301,
            cost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Demonslaying (1)
    {
        id = 11477,
        name = "Elixir of Demonslaying",
        itemId = 9224,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 265, green = 285, gray = 305 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Detect Demon (1)
    {
        id = 11478,
        name = "Elixir of Detect Demon",
        itemId = 9233,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 8846, name = "Gromsblood", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Iron to Gold (1)
    {
        id = 11479,
        name = "Transmute: Iron to Gold",
        itemId = 3577,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9304,
            cost = 8000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Mithril to Truesilver (1)
    {
        id = 11480,
        name = "Transmute: Mithril to Truesilver",
        itemId = 6037,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 9305,
            cost = 8000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Catseye Elixir (1)
    {
        id = 12609,
        name = "Catseye Elixir",
        itemId = 10592,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 3818, name = "Fadeleaf", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Dreamless Sleep Potion (1)
    {
        id = 15833,
        name = "Dreamless Sleep Potion",
        itemId = 12190,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 245, green = 265, gray = 285 },
        reagents = {
            { itemId = 8831, name = "Purple Lotus", count = 3 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Arcanite (1)
    {
        id = 17187,
        name = "Transmute: Arcanite",
        itemId = 12360,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 1 },
            { itemId = 12363, name = "Arcane Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 12958,
            cost = 50000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Stonescale Oil (1)
    {
        id = 17551,
        name = "Stonescale Oil",
        itemId = 13423,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 13422, name = "Stonescale Eel", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Mighty Rage Potion (1)
    {
        id = 17552,
        name = "Mighty Rage Potion",
        itemId = 13442,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 270, green = 290, gray = 310 },
        reagents = {
            { itemId = 8846, name = "Gromsblood", count = 3 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13476,
            cost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Superior Mana Potion (1)
    {
        id = 17553,
        name = "Superior Mana Potion",
        itemId = 13443,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 275, green = 295, gray = 315 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Superior Defense (1)
    {
        id = 17554,
        name = "Elixir of Superior Defense",
        itemId = 13445,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 280, green = 300, gray = 320 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of the Sages (1)
    {
        id = 17555,
        name = "Elixir of the Sages",
        itemId = 13447,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 285, green = 305, gray = 325 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Major Healing Potion (1)
    {
        id = 17556,
        name = "Major Healing Potion",
        itemId = 13446,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 290, green = 310, gray = 330 },
        reagents = {
            { itemId = 13464, name = "Golden Sansam", count = 2 },
            { itemId = 13465, name = "Mountain Silversage", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13480,
            cost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Brute Force (1)
    {
        id = 17557,
        name = "Elixir of Brute Force",
        itemId = 13453,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 290, green = 310, gray = 330 },
        reagents = {
            { itemId = 8846, name = "Gromsblood", count = 2 },
            { itemId = 13466, name = "Plaguebloom", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13481,
            cost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Air to Fire (1)
    {
        id = 17559,
        name = "Transmute: Air to Fire",
        itemId = 7078,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 275, green = 282, gray = 290 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Fire to Earth (1)
    {
        id = 17560,
        name = "Transmute: Fire to Earth",
        itemId = 7076,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 7078, name = "Essence of Fire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13483,
            cost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Earth to Water (1)
    {
        id = 17561,
        name = "Transmute: Earth to Water",
        itemId = 7080,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 275, green = 282, gray = 290 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Water to Air (1)
    {
        id = 17562,
        name = "Transmute: Water to Air",
        itemId = 7082,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 7080, name = "Essence of Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13485,
            cost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Undeath to Water (1)
    {
        id = 17563,
        name = "Transmute: Undeath to Water",
        itemId = 7080,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 12808, name = "Essence of Undeath", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13486,
            cost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Water to Undeath (1)
    {
        id = 17564,
        name = "Transmute: Water to Undeath",
        itemId = 12808,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 7080, name = "Essence of Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13487,
            cost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Life to Earth (1)
    {
        id = 17565,
        name = "Transmute: Life to Earth",
        itemId = 7076,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 12803, name = "Living Essence", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13488,
            cost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Earth to Life (1)
    {
        id = 17566,
        name = "Transmute: Earth to Life",
        itemId = 12803,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 275, green = 282, gray = 290 },
        reagents = {
            { itemId = 7076, name = "Essence of Earth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13489,
            cost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Greater Stoneshield Potion (1)
    {
        id = 17570,
        name = "Greater Stoneshield Potion",
        itemId = 13455,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 295, green = 315, gray = 335 },
        reagents = {
            { itemId = 13423, name = "Stonescale Oil", count = 2 },
            { itemId = 10620, name = "Thorium Ore", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13490,
            cost = 16000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of the Mongoose (1)
    {
        id = 17571,
        name = "Elixir of the Mongoose",
        itemId = 13452,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 295, green = 315, gray = 335 },
        reagents = {
            { itemId = 13465, name = "Mountain Silversage", count = 2 },
            { itemId = 13466, name = "Plaguebloom", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13491,
            cost = 16000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Purification Potion (1)
    {
        id = 17572,
        name = "Purification Potion",
        itemId = 13462,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 300, green = 320, gray = 340 },
        reagents = {
            { itemId = 13467, name = "Icecap", count = 2 },
            { itemId = 13466, name = "Plaguebloom", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13492,
            cost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Greater Arcane Elixir (1)
    {
        id = 17573,
        name = "Greater Arcane Elixir",
        itemId = 13454,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 300, green = 320, gray = 340 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 3 },
            { itemId = 13465, name = "Mountain Silversage", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13493,
            cost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Greater Fire Protection Potion (1)
    {
        id = 17574,
        name = "Greater Fire Protection Potion",
        itemId = 13457,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 7068, name = "Elemental Fire", count = 1 },
            { itemId = 13463, name = "Dreamfoil", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13494,
            cost = 24000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Greater Frost Protection Potion (1)
    {
        id = 17575,
        name = "Greater Frost Protection Potion",
        itemId = 13456,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 7070, name = "Elemental Water", count = 1 },
            { itemId = 13463, name = "Dreamfoil", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13495,
            cost = 24000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Greater Nature Protection Potion (1)
    {
        id = 17576,
        name = "Greater Nature Protection Potion",
        itemId = 13458,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 7067, name = "Elemental Earth", count = 1 },
            { itemId = 13463, name = "Dreamfoil", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13496,
            cost = 24000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Greater Arcane Protection Potion (1)
    {
        id = 17577,
        name = "Greater Arcane Protection Potion",
        itemId = 13461,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 1 },
            { itemId = 13463, name = "Dreamfoil", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13497,
            cost = 24000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Greater Shadow Protection Potion (1)
    {
        id = 17578,
        name = "Greater Shadow Protection Potion",
        itemId = 13459,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 3824, name = "Shadow Oil", count = 1 },
            { itemId = 13463, name = "Dreamfoil", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13499,
            cost = 24000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Greater Holy Protection Potion (1)
    {
        id = 17579,
        name = "Greater Holy Protection Potion",
        itemId = 13460,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 7069, name = "Elemental Air", count = 1 },
            { itemId = 13463, name = "Dreamfoil", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13500,
            cost = 24000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Major Mana Potion (1)
    {
        id = 17580,
        name = "Major Mana Potion",
        itemId = 13444,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 310, green = 330, gray = 350 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 3 },
            { itemId = 13467, name = "Icecap", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13501,
            cost = 30000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Alchemist's Stone (1)
    {
        id = 17632,
        name = "Alchemist's Stone",
        itemId = 13503,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 9149, name = "Philosopher's Stone", count = 1 },
            { itemId = 25867, name = "Earthstorm Diamond", count = 1 },
            { itemId = 25868, name = "Skyfire Diamond", count = 1 },
            { itemId = 22794, name = "Fel Lotus", count = 2 },
            { itemId = 23571, name = "Primal Might", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 935,
            factionName = "The Sha'tar",
            level = "Revered",
            itemId = 13517,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Flask of Petrification (1)
    {
        id = 17634,
        name = "Flask of Petrification",
        itemId = 13506,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13423, name = "Stonescale Oil", count = 7 },
            { itemId = 13465, name = "Mountain Silversage", count = 3 },
            { itemId = 13468, name = "Black Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13518,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Flask of the Titans (1)
    {
        id = 17635,
        name = "Flask of the Titans",
        itemId = 13510,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 8846, name = "Gromsblood", count = 7 },
            { itemId = 13423, name = "Stonescale Oil", count = 3 },
            { itemId = 13468, name = "Black Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13519,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Flask of Distilled Wisdom (1)
    {
        id = 17636,
        name = "Flask of Distilled Wisdom",
        itemId = 13511,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 7 },
            { itemId = 13467, name = "Icecap", count = 3 },
            { itemId = 13468, name = "Black Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13520,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Flask of Supreme Power (1)
    {
        id = 17637,
        name = "Flask of Supreme Power",
        itemId = 13512,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 7 },
            { itemId = 13465, name = "Mountain Silversage", count = 3 },
            { itemId = 13468, name = "Black Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13521,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Flask of Chromatic Resistance (1)
    {
        id = 17638,
        name = "Flask of Chromatic Resistance",
        itemId = 13513,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13467, name = "Icecap", count = 7 },
            { itemId = 13465, name = "Mountain Silversage", count = 3 },
            { itemId = 13468, name = "Black Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13522,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Frost Power (1)
    {
        id = 21923,
        name = "Elixir of Frost Power",
        itemId = 17708,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 210, green = 230, gray = 250 },
        reagents = {
            { itemId = 3819, name = "Wintersbite", count = 2 },
            { itemId = 3358, name = "Khadgar's Whisker", count = 1 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 17709,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Major Rejuvenation Potion (1)
    {
        id = 22732,
        name = "Major Rejuvenation Potion",
        itemId = 18253,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 10286, name = "Heart of the Wild", count = 1 },
            { itemId = 13464, name = "Golden Sansam", count = 4 },
            { itemId = 13463, name = "Dreamfoil", count = 4 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18257,
            cost = 200000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Greater Water Breathing (1)
    {
        id = 22808,
        name = "Elixir of Greater Water Breathing",
        itemId = 18294,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 7972, name = "Ichor of Undeath", count = 1 },
            { itemId = 8831, name = "Purple Lotus", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Gurubashi Mojo Madness (1)
    {
        id = 24266,
        name = "Gurubashi Mojo Madness",
        itemId = 19931,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 315, green = 322, gray = 330 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Mageblood Potion (1)
    {
        id = 24365,
        name = "Mageblood Potion",
        itemId = 20007,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 290, green = 310, gray = 330 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Greater Dreamless Sleep Potion (1)
    {
        id = 24366,
        name = "Greater Dreamless Sleep Potion",
        itemId = 20002,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 290, green = 310, gray = 330 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Living Action Potion (1)
    {
        id = 24367,
        name = "Living Action Potion",
        itemId = 20008,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 300, green = 320, gray = 340 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Major Troll's Blood Potion (1)
    {
        id = 24368,
        name = "Major Troll's Blood Potion",
        itemId = 20004,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 305, green = 325, gray = 345 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Elemental Fire (1)
    {
        id = 25146,
        name = "Transmute: Elemental Fire",
        itemId = 7068,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 301, green = 305, gray = 310 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Greater Firepower (1)
    {
        id = 26277,
        name = "Elixir of Greater Firepower",
        itemId = 21546,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 6371, name = "Fire Oil", count = 3 },
            { itemId = 4625, name = "Firebloom", count = 3 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 21547,
            cost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Camouflage (1)
    {
        id = 28543,
        name = "Elixir of Camouflage",
        itemId = 22823,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 320, green = 327, gray = 335 },
        reagents = {
            { itemId = 22787, name = "Ragveil", count = 1 },
            { itemId = 22785, name = "Felweed", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22900,
            cost = 30000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Major Strength (1)
    {
        id = 28544,
        name = "Elixir of Major Strength",
        itemId = 22824,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 320, green = 327, gray = 335 },
        reagents = {
            { itemId = 13465, name = "Mountain Silversage", count = 1 },
            { itemId = 22785, name = "Felweed", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Healing Power (1)
    {
        id = 28545,
        name = "Elixir of Healing Power",
        itemId = 22825,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 325, green = 332, gray = 340 },
        reagents = {
            { itemId = 13464, name = "Golden Sansam", count = 1 },
            { itemId = 22786, name = "Dreaming Glory", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Sneaking Potion (1)
    {
        id = 28546,
        name = "Sneaking Potion",
        itemId = 22826,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 330, green = 337, gray = 345 },
        reagents = {
            { itemId = 22787, name = "Ragveil", count = 2 },
            { itemId = 22785, name = "Felweed", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22901,
            cost = 30000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Major Frost Power (1)
    {
        id = 28549,
        name = "Elixir of Major Frost Power",
        itemId = 22827,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 335, green = 342, gray = 350 },
        reagents = {
            { itemId = 22578, name = "Mote of Water", count = 2 },
            { itemId = 22790, name = "Ancient Lichen", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22902,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Insane Strength Potion (1)
    {
        id = 28550,
        name = "Insane Strength Potion",
        itemId = 22828,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 335, green = 342, gray = 350 },
        reagents = {
            { itemId = 22789, name = "Terocone", count = 3 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22903,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Super Healing Potion (1)
    {
        id = 28551,
        name = "Super Healing Potion",
        itemId = 22829,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 340, green = 347, gray = 355 },
        reagents = {
            { itemId = 22791, name = "Netherbloom", count = 2 },
            { itemId = 22785, name = "Felweed", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of the Searching Eye (1)
    {
        id = 28552,
        name = "Elixir of the Searching Eye",
        itemId = 22830,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 340, green = 347, gray = 355 },
        reagents = {
            { itemId = 22787, name = "Ragveil", count = 2 },
            { itemId = 22789, name = "Terocone", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22904,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Major Agility (1)
    {
        id = 28553,
        name = "Elixir of Major Agility",
        itemId = 22831,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 345, green = 352, gray = 360 },
        reagents = {
            { itemId = 22789, name = "Terocone", count = 1 },
            { itemId = 22785, name = "Felweed", count = 2 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 947,
            factionName = "Thrallmar",
            level = "Honored",
            itemId = 24001,
            cost = 50000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Shrouding Potion (1)
    {
        id = 28554,
        name = "Shrouding Potion",
        itemId = 22871,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 350, green = 357, gray = 365 },
        reagents = {
            { itemId = 22787, name = "Ragveil", count = 3 },
            { itemId = 22791, name = "Netherbloom", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 970,
            factionName = "Sporeggar",
            level = "Exalted",
            itemId = 22906,
            cost = 0,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Super Mana Potion (1)
    {
        id = 28555,
        name = "Super Mana Potion",
        itemId = 22832,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 355, green = 362, gray = 370 },
        reagents = {
            { itemId = 22786, name = "Dreaming Glory", count = 2 },
            { itemId = 22785, name = "Felweed", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22907,
            cost = 50000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Major Firepower (1)
    {
        id = 28556,
        name = "Elixir of Major Firepower",
        itemId = 22833,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 360, green = 367, gray = 375 },
        reagents = {
            { itemId = 22574, name = "Mote of Fire", count = 2 },
            { itemId = 22790, name = "Ancient Lichen", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Revered",
            itemId = 22908,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Major Defense (1)
    {
        id = 28557,
        name = "Elixir of Major Defense",
        itemId = 22834,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 360, green = 367, gray = 375 },
        reagents = {
            { itemId = 22790, name = "Ancient Lichen", count = 3 },
            { itemId = 22789, name = "Terocone", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22909,
            cost = 50000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Major Shadow Power (1)
    {
        id = 28558,
        name = "Elixir of Major Shadow Power",
        itemId = 22835,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 22790, name = "Ancient Lichen", count = 1 },
            { itemId = 22792, name = "Nightmare Vine", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1011,
            factionName = "Lower City",
            level = "Revered",
            itemId = 22910,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Major Dreamless Sleep Potion (1)
    {
        id = 28562,
        name = "Major Dreamless Sleep Potion",
        itemId = 22836,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 22786, name = "Dreaming Glory", count = 1 },
            { itemId = 22792, name = "Nightmare Vine", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22911,
            cost = 50000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heroic Potion (1)
    {
        id = 28563,
        name = "Heroic Potion",
        itemId = 22837,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 22789, name = "Terocone", count = 2 },
            { itemId = 22790, name = "Ancient Lichen", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22912,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Haste Potion (1)
    {
        id = 28564,
        name = "Haste Potion",
        itemId = 22838,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 22789, name = "Terocone", count = 2 },
            { itemId = 22791, name = "Netherbloom", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 35295,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Destruction Potion (1)
    {
        id = 28565,
        name = "Destruction Potion",
        itemId = 22839,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 22792, name = "Nightmare Vine", count = 2 },
            { itemId = 22791, name = "Netherbloom", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22914,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Primal Air to Fire (1)
    {
        id = 28566,
        name = "Transmute: Primal Air to Fire",
        itemId = 21884,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 22451, name = "Primal Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 935,
            factionName = "The Sha'tar",
            level = "Revered",
            itemId = 22915,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Primal Earth to Water (1)
    {
        id = 28567,
        name = "Transmute: Primal Earth to Water",
        itemId = 21885,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 22452, name = "Primal Earth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 970,
            factionName = "Sporeggar",
            level = "Revered",
            itemId = 22916,
            cost = 0,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Primal Fire to Earth (1)
    {
        id = 28568,
        name = "Transmute: Primal Fire to Earth",
        itemId = 22452,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 21884, name = "Primal Fire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 978,
            factionName = "Kurenai",
            level = "Revered",
            itemId = 30443,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Primal Water to Air (1)
    {
        id = 28569,
        name = "Transmute: Primal Water to Air",
        itemId = 22451,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 21885, name = "Primal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Revered",
            itemId = 22918,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Major Mageblood (1)
    {
        id = 28570,
        name = "Elixir of Major Mageblood",
        itemId = 22840,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 370, green = 377, gray = 385 },
        reagents = {
            { itemId = 22790, name = "Ancient Lichen", count = 1 },
            { itemId = 22791, name = "Netherbloom", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22919,
            cost = 100000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Major Fire Protection Potion (1)
    {
        id = 28571,
        name = "Major Fire Protection Potion",
        itemId = 22841,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 375, green = 382, gray = 390 },
        reagents = {
            { itemId = 21884, name = "Primal Fire", count = 1 },
            { itemId = 22793, name = "Mana Thistle", count = 3 },
            { itemId = 18256, name = "Imbued Vial", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22920,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Major Frost Protection Potion (1)
    {
        id = 28572,
        name = "Major Frost Protection Potion",
        itemId = 22842,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 375, green = 382, gray = 390 },
        reagents = {
            { itemId = 21885, name = "Primal Water", count = 1 },
            { itemId = 22793, name = "Mana Thistle", count = 3 },
            { itemId = 18256, name = "Imbued Vial", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22921,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Major Nature Protection Potion (1)
    {
        id = 28573,
        name = "Major Nature Protection Potion",
        itemId = 22844,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 375, green = 382, gray = 390 },
        reagents = {
            { itemId = 21886, name = "Primal Life", count = 1 },
            { itemId = 22793, name = "Mana Thistle", count = 3 },
            { itemId = 18256, name = "Imbued Vial", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Exalted",
            itemId = 22922,
            cost = 100000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Major Arcane Protection Potion (1)
    {
        id = 28575,
        name = "Major Arcane Protection Potion",
        itemId = 22845,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 375, green = 382, gray = 390 },
        reagents = {
            { itemId = 22457, name = "Primal Mana", count = 1 },
            { itemId = 22793, name = "Mana Thistle", count = 3 },
            { itemId = 18256, name = "Imbued Vial", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22923,
            cost = 100000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Major Shadow Protection Potion (1)
    {
        id = 28576,
        name = "Major Shadow Protection Potion",
        itemId = 22846,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 375, green = 382, gray = 390 },
        reagents = {
            { itemId = 22456, name = "Primal Shadow", count = 1 },
            { itemId = 22793, name = "Mana Thistle", count = 3 },
            { itemId = 18256, name = "Imbued Vial", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22924,
            cost = 100000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Major Holy Protection Potion (1)
    {
        id = 28577,
        name = "Major Holy Protection Potion",
        itemId = 22847,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 375, green = 382, gray = 390 },
        reagents = {
            { itemId = 21886, name = "Primal Life", count = 1 },
            { itemId = 22793, name = "Mana Thistle", count = 3 },
            { itemId = 18256, name = "Imbued Vial", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22925,
            cost = 100000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Empowerment (1)
    {
        id = 28578,
        name = "Elixir of Empowerment",
        itemId = 22848,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 380, green = 387, gray = 395 },
        reagents = {
            { itemId = 22791, name = "Netherbloom", count = 1 },
            { itemId = 22793, name = "Mana Thistle", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 35294,
            cost = 100000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ironshield Potion (1)
    {
        id = 28579,
        name = "Ironshield Potion",
        itemId = 22849,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 380, green = 387, gray = 395 },
        reagents = {
            { itemId = 22790, name = "Ancient Lichen", count = 2 },
            { itemId = 22573, name = "Mote of Earth", count = 3 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 22927,
            cost = 60000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Primal Shadow to Water (1)
    {
        id = 28580,
        name = "Transmute: Primal Shadow to Water",
        itemId = 21885,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 385, green = 392, gray = 400 },
        reagents = {
            { itemId = 22456, name = "Primal Shadow", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Primal Water to Shadow (1)
    {
        id = 28581,
        name = "Transmute: Primal Water to Shadow",
        itemId = 22456,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 385, green = 392, gray = 400 },
        reagents = {
            { itemId = 21885, name = "Primal Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Primal Mana to Fire (1)
    {
        id = 28582,
        name = "Transmute: Primal Mana to Fire",
        itemId = 21884,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 385, green = 392, gray = 400 },
        reagents = {
            { itemId = 22457, name = "Primal Mana", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Primal Fire to Mana (1)
    {
        id = 28583,
        name = "Transmute: Primal Fire to Mana",
        itemId = 22457,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 385, green = 392, gray = 400 },
        reagents = {
            { itemId = 21884, name = "Primal Fire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Primal Life to Earth (1)
    {
        id = 28584,
        name = "Transmute: Primal Life to Earth",
        itemId = 22452,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 385, green = 392, gray = 400 },
        reagents = {
            { itemId = 21886, name = "Primal Life", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Primal Earth to Life (1)
    {
        id = 28585,
        name = "Transmute: Primal Earth to Life",
        itemId = 21886,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 385, green = 392, gray = 400 },
        reagents = {
            { itemId = 22452, name = "Primal Earth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Super Rejuvenation Potion (1)
    {
        id = 28586,
        name = "Super Rejuvenation Potion",
        itemId = 22850,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 22793, name = "Mana Thistle", count = 2 },
            { itemId = 22786, name = "Dreaming Glory", count = 1 },
            { itemId = 22791, name = "Netherbloom", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Flask of Fortification (1)
    {
        id = 28587,
        name = "Flask of Fortification",
        itemId = 22851,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 22794, name = "Fel Lotus", count = 1 },
            { itemId = 22793, name = "Mana Thistle", count = 3 },
            { itemId = 22790, name = "Ancient Lichen", count = 7 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Flask of Mighty Restoration (1)
    {
        id = 28588,
        name = "Flask of Mighty Restoration",
        itemId = 22853,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 22794, name = "Fel Lotus", count = 1 },
            { itemId = 22793, name = "Mana Thistle", count = 3 },
            { itemId = 22786, name = "Dreaming Glory", count = 7 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Flask of Relentless Assault (1)
    {
        id = 28589,
        name = "Flask of Relentless Assault",
        itemId = 22854,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 22794, name = "Fel Lotus", count = 1 },
            { itemId = 22793, name = "Mana Thistle", count = 3 },
            { itemId = 22789, name = "Terocone", count = 7 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Flask of Blinding Light (1)
    {
        id = 28590,
        name = "Flask of Blinding Light",
        itemId = 22861,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 22794, name = "Fel Lotus", count = 1 },
            { itemId = 22793, name = "Mana Thistle", count = 3 },
            { itemId = 22791, name = "Netherbloom", count = 7 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Flask of Pure Death (1)
    {
        id = 28591,
        name = "Flask of Pure Death",
        itemId = 22866,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 22794, name = "Fel Lotus", count = 1 },
            { itemId = 22793, name = "Mana Thistle", count = 3 },
            { itemId = 22792, name = "Nightmare Vine", count = 7 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Primal Might (1)
    {
        id = 29688,
        name = "Transmute: Primal Might",
        itemId = 23571,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 22452, name = "Primal Earth", count = 1 },
            { itemId = 21885, name = "Primal Water", count = 1 },
            { itemId = 22451, name = "Primal Air", count = 1 },
            { itemId = 21884, name = "Primal Fire", count = 1 },
            { itemId = 22457, name = "Primal Mana", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 23574,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Earthstorm Diamond (1)
    {
        id = 32765,
        name = "Transmute: Earthstorm Diamond",
        itemId = 25867,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 23079, name = "Deep Peridot", count = 3 },
            { itemId = 23107, name = "Shadow Draenite", count = 3 },
            { itemId = 23112, name = "Golden Draenite", count = 3 },
            { itemId = 22452, name = "Primal Earth", count = 2 },
            { itemId = 21885, name = "Primal Water", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Honored",
            itemId = 25869,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Transmute: Skyfire Diamond (1)
    {
        id = 32766,
        name = "Transmute: Skyfire Diamond",
        itemId = 25868,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 23077, name = "Blood Garnet", count = 3 },
            { itemId = 21929, name = "Flame Spessarite", count = 3 },
            { itemId = 23117, name = "Azure Moonstone", count = 3 },
            { itemId = 21884, name = "Primal Fire", count = 2 },
            { itemId = 22451, name = "Primal Air", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 947,
            factionName = "Thrallmar",
            level = "Honored",
            itemId = 29232,
            cost = 80000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Volatile Healing Potion (1)
    {
        id = 33732,
        name = "Volatile Healing Potion",
        itemId = 28100,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13464, name = "Golden Sansam", count = 1 },
            { itemId = 22785, name = "Felweed", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Unstable Mana Potion (1)
    {
        id = 33733,
        name = "Unstable Mana Potion",
        itemId = 28101,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 325, green = 332, gray = 340 },
        reagents = {
            { itemId = 22787, name = "Ragveil", count = 2 },
            { itemId = 22785, name = "Felweed", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Onslaught Elixir (1)
    {
        id = 33738,
        name = "Onslaught Elixir",
        itemId = 28102,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13465, name = "Mountain Silversage", count = 1 },
            { itemId = 22785, name = "Felweed", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Adept's Elixir (1)
    {
        id = 33740,
        name = "Adept's Elixir",
        itemId = 28103,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 13463, name = "Dreamfoil", count = 1 },
            { itemId = 22785, name = "Felweed", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Mastery (1)
    {
        id = 33741,
        name = "Elixir of Mastery",
        itemId = 28104,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 330, green = 337, gray = 345 },
        reagents = {
            { itemId = 22789, name = "Terocone", count = 3 },
            { itemId = 22785, name = "Felweed", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Mercurial Stone (1)
    {
        id = 38070,
        name = "Mercurial Stone",
        itemId = 31080,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 340, green = 347, gray = 355 },
        reagents = {
            { itemId = 22452, name = "Primal Earth", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 1 },
            { itemId = 22457, name = "Primal Mana", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fel Strength Elixir (1)
    {
        id = 38960,
        name = "Fel Strength Elixir",
        itemId = 31679,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 350, green = 357, gray = 365 },
        reagents = {
            { itemId = 22789, name = "Terocone", count = 1 },
            { itemId = 22792, name = "Nightmare Vine", count = 2 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 31680,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fel Mana Potion (1)
    {
        id = 38961,
        name = "Fel Mana Potion",
        itemId = 31677,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 375, green = 382, gray = 390 },
        reagents = {
            { itemId = 22793, name = "Mana Thistle", count = 1 },
            { itemId = 22792, name = "Nightmare Vine", count = 2 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 31682,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fel Regeneration Potion (1)
    {
        id = 38962,
        name = "Fel Regeneration Potion",
        itemId = 31676,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 360, green = 367, gray = 375 },
        reagents = {
            { itemId = 22785, name = "Felweed", count = 2 },
            { itemId = 22792, name = "Nightmare Vine", count = 3 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 31681,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Major Fortitude (1)
    {
        id = 39636,
        name = "Elixir of Major Fortitude",
        itemId = 32062,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 325, green = 332, gray = 340 },
        reagents = {
            { itemId = 22787, name = "Ragveil", count = 2 },
            { itemId = 22785, name = "Felweed", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Earthen Elixir (1)
    {
        id = 39637,
        name = "Earthen Elixir",
        itemId = 32063,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 335, green = 342, gray = 350 },
        reagents = {
            { itemId = 22786, name = "Dreaming Glory", count = 1 },
            { itemId = 22787, name = "Ragveil", count = 2 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Honored",
            itemId = 32070,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Draenic Wisdom (1)
    {
        id = 39638,
        name = "Elixir of Draenic Wisdom",
        itemId = 32067,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 335, green = 342, gray = 350 },
        reagents = {
            { itemId = 22785, name = "Felweed", count = 1 },
            { itemId = 22789, name = "Terocone", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Ironskin (1)
    {
        id = 39639,
        name = "Elixir of Ironskin",
        itemId = 32068,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 345, green = 352, gray = 360 },
        reagents = {
            { itemId = 22790, name = "Ancient Lichen", count = 1 },
            { itemId = 22787, name = "Ragveil", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 32071,
            cost = 0,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Cauldron of Major Arcane Protection (1)
    {
        id = 41458,
        name = "Cauldron of Major Arcane Protection",
        itemId = 32839,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 22457, name = "Primal Mana", count = 2 },
            { itemId = 22793, name = "Mana Thistle", count = 7 },
            { itemId = 23782, name = "Fel Iron Casing", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Cauldron of Major Fire Protection (1)
    {
        id = 41500,
        name = "Cauldron of Major Fire Protection",
        itemId = 32849,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 21884, name = "Primal Fire", count = 2 },
            { itemId = 22793, name = "Mana Thistle", count = 7 },
            { itemId = 23782, name = "Fel Iron Casing", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Cauldron of Major Frost Protection (1)
    {
        id = 41501,
        name = "Cauldron of Major Frost Protection",
        itemId = 32850,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 21885, name = "Primal Water", count = 2 },
            { itemId = 22793, name = "Mana Thistle", count = 7 },
            { itemId = 23782, name = "Fel Iron Casing", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Cauldron of Major Nature Protection (1)
    {
        id = 41502,
        name = "Cauldron of Major Nature Protection",
        itemId = 32851,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 21886, name = "Primal Life", count = 2 },
            { itemId = 22793, name = "Mana Thistle", count = 7 },
            { itemId = 23782, name = "Fel Iron Casing", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Cauldron of Major Shadow Protection (1)
    {
        id = 41503,
        name = "Cauldron of Major Shadow Protection",
        itemId = 32852,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 22456, name = "Primal Shadow", count = 2 },
            { itemId = 22793, name = "Mana Thistle", count = 7 },
            { itemId = 23782, name = "Fel Iron Casing", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Flask of Chromatic Wonder (1)
    {
        id = 42736,
        name = "Flask of Chromatic Wonder",
        itemId = 33208,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 22786, name = "Dreaming Glory", count = 7 },
            { itemId = 22791, name = "Netherbloom", count = 3 },
            { itemId = 22794, name = "Fel Lotus", count = 1 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 967,
            factionName = "The Violet Eye",
            level = "Honored",
            itemId = 33209,
            cost = 40000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Mad Alchemist's Potion (1)
    {
        id = 45061,
        name = "Mad Alchemist's Potion",
        itemId = 34440,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 335, green = 342, gray = 350 },
        reagents = {
            { itemId = 8925, name = "Crystal Vial", count = 1 },
            { itemId = 22787, name = "Ragveil", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Friendly",
            itemId = 34481,
            cost = 300000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Guardian's Alchemist Stone (1)
    {
        id = 47046,
        name = "Guardian's Alchemist Stone",
        itemId = 35748,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 13503, name = "Alchemist's Stone", count = 1 },
            { itemId = 22451, name = "Primal Air", count = 6 },
            { itemId = 30183, name = "Nether Vortex", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35752,
            cost = 250000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Sorcerer's Alchemist Stone (1)
    {
        id = 47048,
        name = "Sorcerer's Alchemist Stone",
        itemId = 35749,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 13503, name = "Alchemist's Stone", count = 1 },
            { itemId = 21884, name = "Primal Fire", count = 6 },
            { itemId = 30183, name = "Nether Vortex", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35753,
            cost = 250000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Redeemer's Alchemist Stone (1)
    {
        id = 47049,
        name = "Redeemer's Alchemist Stone",
        itemId = 35750,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 13503, name = "Alchemist's Stone", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 6 },
            { itemId = 30183, name = "Nether Vortex", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35754,
            cost = 250000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Assassin's Alchemist Stone (1)
    {
        id = 47050,
        name = "Assassin's Alchemist Stone",
        itemId = 35751,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 13503, name = "Alchemist's Stone", count = 1 },
            { itemId = 22456, name = "Primal Shadow", count = 6 },
            { itemId = 30183, name = "Nether Vortex", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35755,
            cost = 250000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Minor Mana Potion (30)
    {
        id = 2331,
        name = "Minor Mana Potion",
        itemId = 2455,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 65, green = 85, gray = 105 },
        reagents = {
            { itemId = 785, name = "Mageroyal", count = 1 },
            { itemId = 765, name = "Silverleaf", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 2554,
        },
        expansion = C.EXPANSION.VANILLA,
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elixir of Tongues (70)
    {
        id = 2336,
        name = "Elixir of Tongues",
        itemId = 2460,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 100, green = 120, gray = 140 },
        reagents = {
            { itemId = 2449, name = "Earthroot", count = 2 },
            { itemId = 785, name = "Mageroyal", count = 2 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2556,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Lesser Healing Potion (80)
    {
        id = 2337,
        name = "Lesser Healing Potion",
        itemId = 858,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 85, green = 105, gray = 125 },
        reagents = {
            { itemId = 118, name = "Minor Healing Potion", count = 1 },
            { itemId = 2450, name = "Briarthorn", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Alchemy Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
}

CraftLib:RegisterProfession("alchemy", {
    id = C.PROFESSION_ID.ALCHEMY,
    name = "Alchemy",
    expansion = C.EXPANSION.VANILLA,
    milestones = { 75, 150, 225, 300, 375 },
    recipes = recipes,
})
