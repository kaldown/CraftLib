-- Data/TBC/FirstAid/Recipes.lua
-- First Aid recipes for TBC Classic
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Linen Bandage (1)
    {
        id = 3276,
        name = "Heavy Linen Bandage",
        itemId = 2581,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 50, green = 75, gray = 100 },
        reagents = {
            { itemId = 2589, name = "Linen Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Wool Bandage (10)
    {
        id = 3277,
        name = "Wool Bandage",
        itemId = 3530,
        skillRequired = 10,
        skillRange = { orange = 10, yellow = 80, green = 115, gray = 150 },
        reagents = {
            { itemId = 2592, name = "Wool Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Anti-Venom (10)
    {
        id = 7934,
        name = "Anti-Venom",
        itemId = 6452,
        skillRequired = 10,
        skillRange = { orange = 10, yellow = 80, green = 115, gray = 150 },
        reagents = {
            { itemId = 1475, name = "Small Venom Sac", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Wool Bandage (45)
    {
        id = 3278,
        name = "Heavy Wool Bandage",
        itemId = 3531,
        skillRequired = 45,
        skillRange = { orange = 45, yellow = 115, green = 150, gray = 185 },
        reagents = {
            { itemId = 2592, name = "Wool Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Strong Anti-Venom (60)
    {
        id = 7935,
        name = "Strong Anti-Venom",
        itemId = 6453,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 130, green = 165, gray = 200 },
        reagents = {
            { itemId = 1288, name = "Large Venom Sac", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6454,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Silk Bandage (90)
    {
        id = 7928,
        name = "Silk Bandage",
        itemId = 6450,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 150, green = 180, gray = 210 },
        reagents = {
            { itemId = 4306, name = "Silk Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Silk Bandage (120)
    {
        id = 7929,
        name = "Heavy Silk Bandage",
        itemId = 6451,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 180, green = 210, gray = 240 },
        reagents = {
            { itemId = 4306, name = "Silk Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16112,
            cost = 2200,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Mageweave Bandage (150)
    {
        id = 10840,
        name = "Mageweave Bandage",
        itemId = 8544,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 210, green = 240, gray = 270 },
        reagents = {
            { itemId = 4338, name = "Mageweave Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16113,
            cost = 5000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Mageweave Bandage (180)
    {
        id = 10841,
        name = "Heavy Mageweave Bandage",
        itemId = 8545,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 240, green = 270, gray = 300 },
        reagents = {
            { itemId = 4338, name = "Mageweave Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Runecloth Bandage (200)
    {
        id = 18629,
        name = "Runecloth Bandage",
        itemId = 14529,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 260, green = 290, gray = 320 },
        reagents = {
            { itemId = 14047, name = "Runecloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Runecloth Bandage (230)
    {
        id = 18630,
        name = "Heavy Runecloth Bandage",
        itemId = 14530,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 290, green = 320, gray = 350 },
        reagents = {
            { itemId = 14047, name = "Runecloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any First Aid Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Powerful Anti-Venom (240)
    {
        id = 23787,
        name = "Powerful Anti-Venom",
        itemId = 19440,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 300, green = 330, gray = 360 },
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
        expansion = C.EXPANSION.VANILLA,
    },
    -- Crystal Infused Bandage (240)
    {
        id = 30021,
        name = "Crystal Infused Bandage",
        itemId = 23684,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 300, green = 330, gray = 360 },
        reagents = {
            { itemId = 23567, name = "zzOLD[PH] Silithus PvP Dust [DEP]", count = 1 },
            { itemId = 14047, name = "Runecloth", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 23689,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Netherweave Bandage (270)
    {
        id = 27032,
        name = "Netherweave Bandage",
        itemId = 21990,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 330, green = 360, gray = 390 },
        reagents = {
            { itemId = 21877, name = "Netherweave Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 21992,
            cost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Netherweave Bandage (310)
    {
        id = 27033,
        name = "Heavy Netherweave Bandage",
        itemId = 21991,
        skillRequired = 310,
        skillRange = { orange = 310, yellow = 360, green = 385, gray = 410 },
        reagents = {
            { itemId = 21877, name = "Netherweave Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 21993,
            cost = 40000,
        },
        expansion = C.EXPANSION.TBC,
    },
}

CraftLib:RegisterProfession("firstAid", {
    id = C.PROFESSION_ID.FIRST_AID,
    name = "First Aid",
    expansion = C.EXPANSION.TBC,
    milestones = { 75, 150, 225, 300, 375 },
    recipes = recipes,
})
