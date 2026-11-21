-- Data/Forever/FirstAid/Recipes.lua
-- First Aid recipes for Forever Classic
-- Generated from DB2 data
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    -- Linen Bandage (1)
    {
        id = 3275,
        name = "Linen Bandage",
        itemId = 1251,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 30, green = 45, gray = 60 },
        reagents = {
            { itemId = 2589, name = "Linen Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.STARTER,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Minor Healing Potion (1)
    {
        id = 1244431,
        name = "Minor Healing Potion",
        itemId = 118,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 55, green = 75, gray = 95 },
        reagents = {
            { itemId = 3371, name = "Empty Vial", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
            { itemId = 2447, name = "Peacebloom", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Linen Bandage (40)
    {
        id = 3276,
        name = "Heavy Linen Bandage",
        itemId = 2581,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 50, green = 75, gray = 100 },
        reagents = {
            { itemId = 2589, name = "Linen Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Healing Potion (55)
    {
        id = 1244432,
        name = "Lesser Healing Potion",
        itemId = 858,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 85, green = 105, gray = 125 },
        reagents = {
            { itemId = 3371, name = "Empty Vial", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 2 },
            { itemId = 2450, name = "Briarthorn", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wool Bandage (80)
    {
        id = 3277,
        name = "Wool Bandage",
        itemId = 3530,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 80, green = 115, gray = 150 },
        reagents = {
            { itemId = 2592, name = "Wool Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Anti-Venom (80)
    {
        id = 7934,
        name = "Anti-Venom",
        itemId = 6452,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 80, green = 115, gray = 150 },
        reagents = {
            { itemId = 1475, name = "Small Venom Sac", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Simple Poultice (90)
    {
        id = 1259342,
        name = "Simple Poultice",
        itemId = 255716,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 90, green = 125, gray = 160 },
        reagents = {
            { itemId = 3174, name = "Spider Ichor", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
            { itemId = 2723, name = "Bottle of Dalaran Noir", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Healing Potion (110)
    {
        id = 1244433,
        name = "Healing Potion",
        itemId = 929,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 155, gray = 175 },
        reagents = {
            { itemId = 3372, name = "Leaded Vial", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
            { itemId = 2453, name = "Bruiseweed", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Wool Bandage (115)
    {
        id = 3278,
        name = "Heavy Wool Bandage",
        itemId = 3531,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 115, green = 150, gray = 185 },
        reagents = {
            { itemId = 2592, name = "Wool Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Woolen Tourniquet (120)
    {
        id = 1259347,
        name = "Woolen Tourniquet",
        itemId = 255720,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 120, green = 155, gray = 190 },
        reagents = {
            { itemId = 2592, name = "Wool Cloth", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Strong Anti-Venom (130)
    {
        id = 7935,
        name = "Strong Anti-Venom",
        itemId = 6453,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 130, green = 165, gray = 200 },
        reagents = {
            { itemId = 1288, name = "Large Venom Sac", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6454,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Clever Poultice (140)
    {
        id = 1259343,
        name = "Clever Poultice",
        itemId = 255717,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 160, green = 190, gray = 220 },
        reagents = {
            { itemId = 1468, name = "Murloc Fin", count = 1 },
            { itemId = 3713, name = "Soothing Spices", count = 1 },
            { itemId = 2686, name = "Thunder Ale", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 255724,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Silk Bandage (150)
    {
        id = 7928,
        name = "Silk Bandage",
        itemId = 6450,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 150, green = 180, gray = 210 },
        reagents = {
            { itemId = 4306, name = "Silk Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Greater Healing Potion (155)
    {
        id = 1244434,
        name = "Greater Healing Potion",
        itemId = 1710,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 3372, name = "Leaded Vial", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 3 },
            { itemId = 3357, name = "Liferoot", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 255723,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Silk Bandage (180)
    {
        id = 7929,
        name = "Heavy Silk Bandage",
        itemId = 6451,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 180, green = 210, gray = 240 },
        reagents = {
            { itemId = 4306, name = "Silk Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16112,
            cost = 2200,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Leather Tourniquet (200)
    {
        id = 1259348,
        name = "Leather Tourniquet",
        itemId = 255721,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 250, gray = 280 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 255726,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mageweave Bandage (210)
    {
        id = 10840,
        name = "Mageweave Bandage",
        itemId = 8544,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 210, green = 240, gray = 270 },
        reagents = {
            { itemId = 4338, name = "Mageweave Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16113,
            cost = 5000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Superior Poultice (210)
    {
        id = 1259344,
        name = "Superior Poultice",
        itemId = 255718,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 255, gray = 285 },
        reagents = {
            { itemId = 7070, name = "Elemental Water", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
            { itemId = 2596, name = "Skin of Dwarven Stout", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 255727,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Superior Healing Potion (215)
    {
        id = 1244435,
        name = "Superior Healing Potion",
        itemId = 3928,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 8925, name = "Crystal Vial", count = 1 },
            { itemId = 3713, name = "Soothing Spices", count = 1 },
            { itemId = 8838, name = "Sungrass", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 255725,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Potent Anti-Venom (215)
    {
        id = 1259341,
        name = "Potent Anti-Venom",
        itemId = 255715,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 260, gray = 290 },
        reagents = {
            { itemId = 255645, name = "Swollen Venom Sac", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 255728,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Mageweave Bandage (240)
    {
        id = 10841,
        name = "Heavy Mageweave Bandage",
        itemId = 8545,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 240, green = 270, gray = 300 },
        reagents = {
            { itemId = 4338, name = "Mageweave Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runecloth Bandage (260)
    {
        id = 18629,
        name = "Runecloth Bandage",
        itemId = 14529,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 260, green = 290, gray = 320 },
        reagents = {
            { itemId = 14047, name = "Runecloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Surgical Tourniquet (265)
    {
        id = 1259349,
        name = "Surgical Tourniquet",
        itemId = 255722,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 280, green = 310, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 2 },
            { itemId = 14047, name = "Runecloth", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 255730,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Major Healing Potion (275)
    {
        id = 1244436,
        name = "Major Healing Potion",
        itemId = 13446,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 310, gray = 330 },
        reagents = {
            { itemId = 8925, name = "Crystal Vial", count = 1 },
            { itemId = 3713, name = "Soothing Spices", count = 3 },
            { itemId = 13464, name = "Golden Sansam", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 255729,
            cost = 80000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Powerful Poultice (280)
    {
        id = 1259345,
        name = "Powerful Poultice",
        itemId = 255719,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 295, green = 325, gray = 355 },
        reagents = {
            { itemId = 7080, name = "Essence of Water", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
            { itemId = 2594, name = "Flagon of Dwarven Honeymead", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 255731,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Runecloth Bandage (290)
    {
        id = 18630,
        name = "Heavy Runecloth Bandage",
        itemId = 14530,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 290, green = 320, gray = 350 },
        reagents = {
            { itemId = 14047, name = "Runecloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Powerful Anti-Venom (300)
    {
        id = 23787,
        name = "Powerful Anti-Venom",
        itemId = 19440,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 300, green = 330, gray = 360 },
        reagents = {
            { itemId = 19441, name = "Huge Venom Sac", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Honored",
            itemId = 19442,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dense Runecloth Bandage (300)
    {
        id = 470349,
        name = "Dense Runecloth Bandage",
        itemId = 232433,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 315, green = 327, gray = 340 },
        reagents = {
            { itemId = 14530, name = "Heavy Runecloth Bandage", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 232434,
            cost = 110000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
}

CraftLib:RegisterProfession("firstAid", {
    id = C.PROFESSION_ID.FIRST_AID,
    name = "First Aid",
    expansion = C.EXPANSION.FOREVER,
    profile = "FOREVER",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
