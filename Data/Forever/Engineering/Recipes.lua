-- Data/Forever/Engineering/Recipes.lua
-- Engineering recipes for WoW Forever
-- Generated from DB2 data, Wowhead guide tables and the Warcraft Wiki recipe tables
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    -- Rough Blasting Powder (1)
    {
        id = 3918,
        name = "Rough Blasting Powder",
        itemId = 4357,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 20, green = 30, gray = 40 },
        reagents = {
            { itemId = 2835, name = "Rough Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.STARTER,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Rough Dynamite (1)
    {
        id = 3919,
        name = "Rough Dynamite",
        itemId = 4358,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 30, green = 45, gray = 60 },
        reagents = {
            { itemId = 4357, name = "Rough Blasting Powder", count = 1 },
            { itemId = 2589, name = "Linen Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.STARTER,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Crafted Light Shot (1)
    {
        id = 3920,
        name = "Crafted Light Shot",
        itemId = 8067,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 30, green = 45, gray = 60 },
        reagents = {
            { itemId = 4357, name = "Rough Blasting Powder", count = 1 },
            { itemId = 2840, name = "Copper Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.STARTER,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- SAF-T Tabs (25)
    {
        id = 1266893,
        name = "SAF-T Tabs",
        itemId = 260784,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 25, green = 27, gray = 30 },
        reagents = {
            { itemId = 2570, name = "Linen Cloak", count = 1 },
            { itemId = 249409, name = "Cerulean Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264201,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- SAF-T Dynamite (25)
    {
        id = 1266905,
        name = "SAF-T Dynamite",
        itemId = 260792,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 25, green = 30, gray = 35 },
        reagents = {
            { itemId = 4357, name = "Rough Blasting Powder", count = 2 },
            { itemId = 2589, name = "Linen Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264202,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Handful of Copper Bolts (30)
    {
        id = 3922,
        name = "Handful of Copper Bolts",
        itemId = 4359,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 45, green = 52, gray = 60 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Rough Copper Bomb (30)
    {
        id = 3923,
        name = "Rough Copper Bomb",
        itemId = 4360,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 60, green = 75, gray = 90 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 1 },
            { itemId = 4359, name = "Handful of Copper Bolts", count = 1 },
            { itemId = 4357, name = "Rough Blasting Powder", count = 2 },
            { itemId = 2589, name = "Linen Cloth", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Copper Tube (50)
    {
        id = 3924,
        name = "Copper Tube",
        itemId = 4361,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 80, green = 95, gray = 110 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 2 },
            { itemId = 2880, name = "Weak Flux", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Arclight Spanner (50)
    {
        id = 7430,
        name = "Arclight Spanner",
        itemId = 6219,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 70, green = 80, gray = 90 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 6 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- SAF-T Copper Bomb (55)
    {
        id = 1266906,
        name = "SAF-T Copper Bomb",
        itemId = 260793,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 55, green = 60, gray = 65 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 1 },
            { itemId = 4359, name = "Handful of Copper Bolts", count = 1 },
            { itemId = 4357, name = "Rough Blasting Powder", count = 2 },
            { itemId = 2570, name = "Linen Cloak", count = 1 },
            { itemId = 260784, name = "SAF-T Tabs", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264203,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Copper Modulator (65)
    {
        id = 3926,
        name = "Copper Modulator",
        itemId = 4363,
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 95, green = 110, gray = 125 },
        reagents = {
            { itemId = 4359, name = "Handful of Copper Bolts", count = 2 },
            { itemId = 2840, name = "Copper Bar", count = 1 },
            { itemId = 2589, name = "Linen Cloth", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Harvester Override Signalcaster (65)
    {
        id = 1302161,
        name = "Harvester Override Signalcaster",
        itemId = 277132,
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 65, green = 72, gray = 80 },
        reagents = {
            { itemId = 255007, name = "Golem Isospring", count = 4 },
            { itemId = 4363, name = "Copper Modulator", count = 2 },
            { itemId = 4405, name = "Crude Scope", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 277470,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mechanical Squirrel (75)
    {
        id = 3928,
        name = "Mechanical Squirrel",
        itemId = 4401,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 120, gray = 135 },
        reagents = {
            { itemId = 4363, name = "Copper Modulator", count = 1 },
            { itemId = 4359, name = "Handful of Copper Bolts", count = 1 },
            { itemId = 2840, name = "Copper Bar", count = 1 },
            { itemId = 774, name = "Malachite", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4408,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Coarse Blasting Powder (75)
    {
        id = 3929,
        name = "Coarse Blasting Powder",
        itemId = 4364,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 85, green = 90, gray = 95 },
        reagents = {
            { itemId = 2836, name = "Coarse Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Coarse Dynamite (75)
    {
        id = 3931,
        name = "Coarse Dynamite",
        itemId = 4365,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 90, green = 97, gray = 105 },
        reagents = {
            { itemId = 4364, name = "Coarse Blasting Powder", count = 3 },
            { itemId = 2589, name = "Linen Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Rough Boomstick (80)
    {
        id = 3925,
        name = "Rough Boomstick",
        itemId = 4362,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 80, green = 95, gray = 110 },
        reagents = {
            { itemId = 4361, name = "Copper Tube", count = 1 },
            { itemId = 4359, name = "Handful of Copper Bolts", count = 1 },
            { itemId = 4399, name = "Wooden Stock", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Crafted Heavy Shot (85)
    {
        id = 3930,
        name = "Crafted Heavy Shot",
        itemId = 8068,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 85, green = 90, gray = 95 },
        reagents = {
            { itemId = 4364, name = "Coarse Blasting Powder", count = 1 },
            { itemId = 2840, name = "Copper Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Target Dummy (85)
    {
        id = 3932,
        name = "Target Dummy",
        itemId = 4366,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 115, green = 130, gray = 145 },
        reagents = {
            { itemId = 4363, name = "Copper Modulator", count = 1 },
            { itemId = 4359, name = "Handful of Copper Bolts", count = 2 },
            { itemId = 2841, name = "Bronze Bar", count = 1 },
            { itemId = 2592, name = "Wool Cloth", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Satchel of Copper Bombs (85)
    {
        id = 1317958,
        name = "Satchel of Copper Bombs",
        itemId = 285275,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 90, green = 92, gray = 95 },
        reagents = {
            { itemId = 4360, name = "Rough Copper Bomb", count = 20 },
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 4359, name = "Handful of Copper Bolts", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 285285,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Silver Contact (90)
    {
        id = 3973,
        name = "Silver Contact",
        itemId = 4404,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 110, green = 125, gray = 140 },
        reagents = {
            { itemId = 2842, name = "Silver Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Crude Scope (90)
    {
        id = 3977,
        name = "Crude Scope",
        itemId = 4405,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 90, green = 105, gray = 120 },
        reagents = {
            { itemId = 4361, name = "Copper Tube", count = 1 },
            { itemId = 774, name = "Malachite", count = 1 },
            { itemId = 4359, name = "Handful of Copper Bolts", count = 1 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Small Seaforium Charge (100)
    {
        id = 3933,
        name = "Small Seaforium Charge",
        itemId = 4367,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 130, green = 145, gray = 160 },
        reagents = {
            { itemId = 4364, name = "Coarse Blasting Powder", count = 2 },
            { itemId = 4363, name = "Copper Modulator", count = 1 },
            { itemId = 2318, name = "Light Leather", count = 1 },
            { itemId = 159, name = "Refreshing Spring Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4409,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flying Tiger Goggles (100)
    {
        id = 3934,
        name = "Flying Tiger Goggles",
        itemId = 4368,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 130, green = 145, gray = 160 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 818, name = "Tigerseye", count = 2 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Practice Lock (100)
    {
        id = 8334,
        name = "Practice Lock",
        itemId = 6712,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 115, green = 122, gray = 130 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 1 },
            { itemId = 4359, name = "Handful of Copper Bolts", count = 2 },
            { itemId = 2880, name = "Weak Flux", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- EZ-Thro Dynamite (100)
    {
        id = 8339,
        name = "EZ-Thro Dynamite",
        itemId = 6714,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 115, green = 122, gray = 130 },
        reagents = {
            { itemId = 4364, name = "Coarse Blasting Powder", count = 3 },
            { itemId = 2589, name = "Linen Cloth", count = 1 },
            { itemId = 260794, name = "EZ-Thro Wrap", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6716,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- EZ-Thro Wrap (100)
    {
        id = 1266907,
        name = "EZ-Thro Wrap",
        itemId = 260794,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 100, green = 102, gray = 105 },
        reagents = {
            { itemId = 2592, name = "Wool Cloth", count = 1 },
            { itemId = 249410, name = "Sulfuric Acid", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264204,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Large Copper Bomb (105)
    {
        id = 3937,
        name = "Large Copper Bomb",
        itemId = 4370,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 105, green = 130, gray = 155 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 3 },
            { itemId = 4364, name = "Coarse Blasting Powder", count = 4 },
            { itemId = 4404, name = "Silver Contact", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bronze Tube (105)
    {
        id = 3938,
        name = "Bronze Tube",
        itemId = 4371,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 105, green = 130, gray = 155 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 2 },
            { itemId = 2880, name = "Weak Flux", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lovingly Crafted Boomstick (120)
    {
        id = 3939,
        name = "Lovingly Crafted Boomstick",
        itemId = 4372,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 157, gray = 170 },
        reagents = {
            { itemId = 4371, name = "Bronze Tube", count = 2 },
            { itemId = 4359, name = "Handful of Copper Bolts", count = 2 },
            { itemId = 4400, name = "Heavy Stock", count = 1 },
            { itemId = 1206, name = "Moss Agate", count = 3 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13309,
            cost = 1000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadow Goggles (120)
    {
        id = 3940,
        name = "Shadow Goggles",
        itemId = 4373,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 157, gray = 170 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 1210, name = "Shadowgem", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4410,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Small Bronze Bomb (120)
    {
        id = 3941,
        name = "Small Bronze Bomb",
        itemId = 4374,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 120, green = 145, gray = 170 },
        reagents = {
            { itemId = 4364, name = "Coarse Blasting Powder", count = 4 },
            { itemId = 2841, name = "Bronze Bar", count = 2 },
            { itemId = 4404, name = "Silver Contact", count = 1 },
            { itemId = 2592, name = "Wool Cloth", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Sandpaper (120)
    {
        id = 1249634,
        name = "Sandpaper",
        itemId = 249432,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 130, green = 142, gray = 155 },
        reagents = {
            { itemId = 249425, name = "Bauxite", count = 2 },
            { itemId = 2996, name = "Bolt of Linen Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Whirring Bronze Gizmo (125)
    {
        id = 3942,
        name = "Whirring Bronze Gizmo",
        itemId = 4375,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 150, gray = 175 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 2 },
            { itemId = 2592, name = "Wool Cloth", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flame Deflector (125)
    {
        id = 3944,
        name = "Flame Deflector",
        itemId = 4376,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 150, gray = 175 },
        reagents = {
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 1 },
            { itemId = 4402, name = "Small Flame Sac", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4411,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Blasting Powder (125)
    {
        id = 3945,
        name = "Heavy Blasting Powder",
        itemId = 4377,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 135, gray = 145 },
        reagents = {
            { itemId = 2838, name = "Heavy Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Dynamite (125)
    {
        id = 3946,
        name = "Heavy Dynamite",
        itemId = 4378,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 135, gray = 145 },
        reagents = {
            { itemId = 4377, name = "Heavy Blasting Powder", count = 2 },
            { itemId = 2592, name = "Wool Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Crafted Solid Shot (125)
    {
        id = 3947,
        name = "Crafted Solid Shot",
        itemId = 8069,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 135, gray = 145 },
        reagents = {
            { itemId = 4377, name = "Heavy Blasting Powder", count = 1 },
            { itemId = 2841, name = "Bronze Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gnomish Universal Remote (125)
    {
        id = 9269,
        name = "Gnomish Universal Remote",
        itemId = 7506,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 162, gray = 175 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 6 },
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 1 },
            { itemId = 814, name = "Flask of Oil", count = 2 },
            { itemId = 818, name = "Tigerseye", count = 1 },
            { itemId = 774, name = "Malachite", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7560,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Small Blue Rocket (125)
    {
        id = 26416,
        name = "Small Blue Rocket",
        itemId = 21558,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 4364, name = "Coarse Blasting Powder", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 21724,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Small Green Rocket (125)
    {
        id = 26417,
        name = "Small Green Rocket",
        itemId = 21559,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 4364, name = "Coarse Blasting Powder", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 21725,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Small Red Rocket (125)
    {
        id = 26418,
        name = "Small Red Rocket",
        itemId = 21557,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 4364, name = "Coarse Blasting Powder", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 21726,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Small Purple Rocket (125)
    {
        id = 1319154,
        name = "Small Purple Rocket",
        itemId = 21560,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 4364, name = "Coarse Blasting Powder", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 286076,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Small White Rocket (125)
    {
        id = 1319155,
        name = "Small White Rocket",
        itemId = 21561,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 4364, name = "Coarse Blasting Powder", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 286077,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Small Yellow Rocket (125)
    {
        id = 1319156,
        name = "Small Yellow Rocket",
        itemId = 21562,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 4364, name = "Coarse Blasting Powder", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 286078,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Deadly Blunderbuss (130)
    {
        id = 3936,
        name = "Deadly Blunderbuss",
        itemId = 4369,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 130, green = 142, gray = 155 },
        reagents = {
            { itemId = 4361, name = "Copper Tube", count = 2 },
            { itemId = 4359, name = "Handful of Copper Bolts", count = 4 },
            { itemId = 4399, name = "Wooden Stock", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Goblin Rocket Boots (130)
    {
        id = 8895,
        name = "Goblin Rocket Boots",
        itemId = 7189,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 10026, name = "Black Mageweave Boots", count = 1 },
            { itemId = 10559, name = "Mithril Tube", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 9061, name = "Goblin Rocket Fuel", count = 2 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7192,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- EZ-Thro Copper Bomb XL (130)
    {
        id = 1266908,
        name = "EZ-Thro Copper Bomb XL",
        itemId = 260795,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 130, green = 155, gray = 180 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 3 },
            { itemId = 4364, name = "Coarse Blasting Powder", count = 4 },
            { itemId = 4404, name = "Silver Contact", count = 1 },
            { itemId = 260794, name = "EZ-Thro Wrap", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264205,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Standard Scope (135)
    {
        id = 3978,
        name = "Standard Scope",
        itemId = 4406,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 135, green = 147, gray = 160 },
        reagents = {
            { itemId = 4371, name = "Bronze Tube", count = 1 },
            { itemId = 1206, name = "Moss Agate", count = 1 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ornate Spyglass (135)
    {
        id = 6458,
        name = "Ornate Spyglass",
        itemId = 5507,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 160, green = 172, gray = 185 },
        reagents = {
            { itemId = 4371, name = "Bronze Tube", count = 2 },
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 2 },
            { itemId = 4363, name = "Copper Modulator", count = 1 },
            { itemId = 1206, name = "Moss Agate", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shredder Autosalvage Unit (135)
    {
        id = 424641,
        name = "Shredder Autosalvage Unit",
        itemId = 210147,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 135, green = 140, gray = 145 },
        reagents = {
            { itemId = 4382, name = "Bronze Framework", count = 1 },
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 210178,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Big Bronze Bomb (140)
    {
        id = 3950,
        name = "Big Bronze Bomb",
        itemId = 4380,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 140, green = 165, gray = 190 },
        reagents = {
            { itemId = 4377, name = "Heavy Blasting Powder", count = 2 },
            { itemId = 2841, name = "Bronze Bar", count = 3 },
            { itemId = 4404, name = "Silver Contact", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Minor Recombobulator (140)
    {
        id = 3952,
        name = "Minor Recombobulator",
        itemId = 4381,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 165, green = 177, gray = 190 },
        reagents = {
            { itemId = 4371, name = "Bronze Tube", count = 1 },
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 2 },
            { itemId = 2319, name = "Medium Leather", count = 2 },
            { itemId = 1206, name = "Moss Agate", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14639,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hoof-Shaped Foot Pedal (140)
    {
        id = 1286796,
        name = "Hoof-Shaped Foot Pedal",
        itemId = 269902,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 150, green = 155, gray = 160 },
        reagents = {
            { itemId = 4387, name = "Iron Strut", count = 3 },
            { itemId = 4382, name = "Bronze Framework", count = 2 },
            { itemId = 4389, name = "Gyrochronatom", count = 1 },
            { itemId = 10558, name = "Gold Power Core", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 269903,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bronze Framework (145)
    {
        id = 3953,
        name = "Bronze Framework",
        itemId = 4382,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 145, green = 170, gray = 195 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 2 },
            { itemId = 2319, name = "Medium Leather", count = 1 },
            { itemId = 2592, name = "Wool Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Moonsight Rifle (145)
    {
        id = 3954,
        name = "Moonsight Rifle",
        itemId = 4383,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 170, green = 182, gray = 195 },
        reagents = {
            { itemId = 4371, name = "Bronze Tube", count = 3 },
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 3 },
            { itemId = 4400, name = "Heavy Stock", count = 1 },
            { itemId = 1705, name = "Lesser Moonstone", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4412,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- No Slip SAF-T Padding (145)
    {
        id = 1266909,
        name = "No Slip SAF-T Padding",
        itemId = 260796,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 145, green = 147, gray = 150 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 1 },
            { itemId = 249430, name = "Magenta Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264206,
            currency = { name = "Merchant's Favor", amount = 45 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- SAF-T Bronze Bomb (145)
    {
        id = 1266910,
        name = "SAF-T Bronze Bomb",
        itemId = 260797,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 145, green = 170, gray = 195 },
        reagents = {
            { itemId = 4364, name = "Coarse Blasting Powder", count = 4 },
            { itemId = 2841, name = "Bronze Bar", count = 2 },
            { itemId = 4404, name = "Silver Contact", count = 1 },
            { itemId = 2592, name = "Wool Cloth", count = 1 },
            { itemId = 260796, name = "No Slip SAF-T Padding", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 264207,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Explosive Sheep (150)
    {
        id = 3955,
        name = "Explosive Sheep",
        itemId = 4384,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 175, green = 187, gray = 200 },
        reagents = {
            { itemId = 4382, name = "Bronze Framework", count = 1 },
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 1 },
            { itemId = 4377, name = "Heavy Blasting Powder", count = 2 },
            { itemId = 2592, name = "Wool Cloth", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Tinted Goggles (150)
    {
        id = 3956,
        name = "Green Tinted Goggles",
        itemId = 4385,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 175, green = 187, gray = 200 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 1206, name = "Moss Agate", count = 2 },
            { itemId = 4368, name = "Flying Tiger Goggles", count = 1 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Aquadynamic Fish Attractor (150)
    {
        id = 9271,
        name = "Aquadynamic Fish Attractor",
        itemId = 6533,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 150, green = 160, gray = 170 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 2 },
            { itemId = 6530, name = "Nightcrawlers", count = 1 },
            { itemId = 4364, name = "Coarse Blasting Powder", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gold Power Core (150)
    {
        id = 12584,
        name = "Gold Power Core",
        itemId = 10558,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 150, green = 170, gray = 190 },
        reagents = {
            { itemId = 3577, name = "Gold Bar", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Firework (150)
    {
        id = 23066,
        name = "Red Firework",
        itemId = 9318,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 150, green = 162, gray = 175 },
        reagents = {
            { itemId = 4377, name = "Heavy Blasting Powder", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18647,
            cost = 1800,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Firework (150)
    {
        id = 23067,
        name = "Blue Firework",
        itemId = 9312,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 150, green = 162, gray = 175 },
        reagents = {
            { itemId = 4377, name = "Heavy Blasting Powder", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18649,
            cost = 1800,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Firework (150)
    {
        id = 23068,
        name = "Green Firework",
        itemId = 9313,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 150, green = 162, gray = 175 },
        reagents = {
            { itemId = 4377, name = "Heavy Blasting Powder", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18648,
            cost = 1800,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- SAF-T Jumbo Dynamite (150)
    {
        id = 1266911,
        name = "SAF-T Jumbo Dynamite",
        itemId = 260798,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 150, green = 160, gray = 170 },
        reagents = {
            { itemId = 4377, name = "Heavy Blasting Powder", count = 2 },
            { itemId = 2592, name = "Wool Cloth", count = 1 },
            { itemId = 260796, name = "No Slip SAF-T Padding", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264208,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Silver-plated Shotgun (155)
    {
        id = 3949,
        name = "Silver-plated Shotgun",
        itemId = 4379,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 155, green = 167, gray = 180 },
        reagents = {
            { itemId = 4371, name = "Bronze Tube", count = 2 },
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 2 },
            { itemId = 4400, name = "Heavy Stock", count = 1 },
            { itemId = 2842, name = "Silver Bar", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ice Deflector (155)
    {
        id = 3957,
        name = "Ice Deflector",
        itemId = 4386,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 185, gray = 195 },
        reagents = {
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 1 },
            { itemId = 3829, name = "Frost Oil", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13308,
            cost = 1800,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Iron Strut (160)
    {
        id = 3958,
        name = "Iron Strut",
        itemId = 4387,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 160, green = 170, gray = 180 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Discombobulator Ray (160)
    {
        id = 3959,
        name = "Discombobulator Ray",
        itemId = 4388,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 190, gray = 200 },
        reagents = {
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 3 },
            { itemId = 4306, name = "Silk Cloth", count = 2 },
            { itemId = 1529, name = "Jade", count = 1 },
            { itemId = 4371, name = "Bronze Tube", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4413,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Portable Bronze Mortar (165)
    {
        id = 3960,
        name = "Portable Bronze Mortar",
        itemId = 4403,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 195, gray = 205 },
        reagents = {
            { itemId = 4371, name = "Bronze Tube", count = 4 },
            { itemId = 4387, name = "Iron Strut", count = 1 },
            { itemId = 4377, name = "Heavy Blasting Powder", count = 4 },
            { itemId = 2319, name = "Medium Leather", count = 4 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4414,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Goblin Jumper Cables (165)
    {
        id = 9273,
        name = "Goblin Jumper Cables",
        itemId = 7148,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 160, green = 180, gray = 200 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 6 },
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 2 },
            { itemId = 814, name = "Flask of Oil", count = 2 },
            { itemId = 4306, name = "Silk Cloth", count = 2 },
            { itemId = 1210, name = "Shadowgem", count = 2 },
            { itemId = 7191, name = "Fused Wiring", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7561,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Satchel of Bronze Bombs (165)
    {
        id = 1317959,
        name = "Satchel of Bronze Bombs",
        itemId = 285276,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 170, green = 172, gray = 175 },
        reagents = {
            { itemId = 4380, name = "Big Bronze Bomb", count = 20 },
            { itemId = 2319, name = "Medium Leather", count = 6 },
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 285286,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gyrochronatom (170)
    {
        id = 3961,
        name = "Gyrochronatom",
        itemId = 4389,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 170, green = 190, gray = 210 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 1 },
            { itemId = 10558, name = "Gold Power Core", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Iron Grenade (175)
    {
        id = 3962,
        name = "Iron Grenade",
        itemId = 4390,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 1 },
            { itemId = 4377, name = "Heavy Blasting Powder", count = 1 },
            { itemId = 4306, name = "Silk Cloth", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Compact Harvest Reaper Kit (175)
    {
        id = 3963,
        name = "Compact Harvest Reaper Kit",
        itemId = 4391,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 4387, name = "Iron Strut", count = 2 },
            { itemId = 4382, name = "Bronze Framework", count = 1 },
            { itemId = 4389, name = "Gyrochronatom", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Solid Blasting Powder (175)
    {
        id = 12585,
        name = "Solid Blasting Powder",
        itemId = 10505,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 185, gray = 195 },
        reagents = {
            { itemId = 7912, name = "Solid Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Solid Dynamite (175)
    {
        id = 12586,
        name = "Solid Dynamite",
        itemId = 10507,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 185, gray = 195 },
        reagents = {
            { itemId = 10505, name = "Solid Blasting Powder", count = 1 },
            { itemId = 4306, name = "Silk Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bright-Eye Goggles (175)
    {
        id = 12587,
        name = "Bright-Eye Goggles",
        itemId = 10499,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 6 },
            { itemId = 3864, name = "Citrine", count = 2 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10601,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gyromatic Micro-Adjustor (175)
    {
        id = 12590,
        name = "Gyromatic Micro-Adjustor",
        itemId = 10498,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 3859, name = "Steel Bar", count = 4 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Large Blue Rocket (175)
    {
        id = 26420,
        name = "Large Blue Rocket",
        itemId = 21589,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 187, gray = 200 },
        reagents = {
            { itemId = 4377, name = "Heavy Blasting Powder", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 21727,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Large Green Rocket (175)
    {
        id = 26421,
        name = "Large Green Rocket",
        itemId = 21590,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 187, gray = 200 },
        reagents = {
            { itemId = 4377, name = "Heavy Blasting Powder", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 21728,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Large Red Rocket (175)
    {
        id = 26422,
        name = "Large Red Rocket",
        itemId = 21592,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 187, gray = 200 },
        reagents = {
            { itemId = 4377, name = "Heavy Blasting Powder", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 21729,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- SAF-T Bell (175)
    {
        id = 1266912,
        name = "SAF-T Bell",
        itemId = 260799,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 177, gray = 180 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 2 },
            { itemId = 249432, name = "Sandpaper", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264209,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shafety Sheep (175)
    {
        id = 1266913,
        name = "Shafety Sheep",
        itemId = 260800,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 200, green = 212, gray = 225 },
        reagents = {
            { itemId = 4382, name = "Bronze Framework", count = 1 },
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 1 },
            { itemId = 4377, name = "Heavy Blasting Powder", count = 2 },
            { itemId = 2592, name = "Wool Cloth", count = 2 },
            { itemId = 260799, name = "SAF-T Bell", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264210,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Whimsical Waistwrap (175)
    {
        id = 1308178,
        name = "Whimsical Waistwrap",
        itemId = 280306,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 180, green = 182, gray = 185 },
        reagents = {
            { itemId = 4382, name = "Bronze Framework", count = 2 },
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 1 },
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 2 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 280321,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gizmo Girdle (175)
    {
        id = 1308179,
        name = "Gizmo Girdle",
        itemId = 280307,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 180, green = 182, gray = 185 },
        reagents = {
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 2 },
            { itemId = 4382, name = "Bronze Framework", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 4 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 280322,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Clanking Cord (175)
    {
        id = 1308180,
        name = "Clanking Cord",
        itemId = 280308,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 180, green = 182, gray = 185 },
        reagents = {
            { itemId = 4371, name = "Bronze Tube", count = 2 },
            { itemId = 4363, name = "Copper Modulator", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 4 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 280323,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Serrated Strap (175)
    {
        id = 1308182,
        name = "Serrated Strap",
        itemId = 280309,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 180, green = 182, gray = 185 },
        reagents = {
            { itemId = 4363, name = "Copper Modulator", count = 2 },
            { itemId = 4371, name = "Bronze Tube", count = 1 },
            { itemId = 3575, name = "Iron Bar", count = 1 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 280324,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Large Purple Rocket (175)
    {
        id = 1319157,
        name = "Large Purple Rocket",
        itemId = 21591,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 187, gray = 200 },
        reagents = {
            { itemId = 4377, name = "Heavy Blasting Powder", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 286079,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Large White Rocket (175)
    {
        id = 1319158,
        name = "Large White Rocket",
        itemId = 21593,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 187, gray = 200 },
        reagents = {
            { itemId = 4377, name = "Heavy Blasting Powder", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 286080,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Large Yellow Rocket (175)
    {
        id = 1319159,
        name = "Large Yellow Rocket",
        itemId = 21595,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 187, gray = 200 },
        reagents = {
            { itemId = 4377, name = "Heavy Blasting Powder", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 286081,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Accurate Scope (180)
    {
        id = 3979,
        name = "Accurate Scope",
        itemId = 4407,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 4371, name = "Bronze Tube", count = 1 },
            { itemId = 1529, name = "Jade", count = 1 },
            { itemId = 3864, name = "Citrine", count = 1 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13310,
            cost = 2000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Advanced Target Dummy (185)
    {
        id = 3965,
        name = "Advanced Target Dummy",
        itemId = 4392,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 185, green = 205, gray = 225 },
        reagents = {
            { itemId = 4387, name = "Iron Strut", count = 1 },
            { itemId = 4382, name = "Bronze Framework", count = 1 },
            { itemId = 4389, name = "Gyrochronatom", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Craftsman's Monocle (185)
    {
        id = 3966,
        name = "Craftsman's Monocle",
        itemId = 4393,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 215, gray = 225 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 6 },
            { itemId = 3864, name = "Citrine", count = 2 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4415,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flash Bomb (185)
    {
        id = 8243,
        name = "Flash Bomb",
        itemId = 4852,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 185, green = 205, gray = 225 },
        reagents = {
            { itemId = 4611, name = "Blue Pearl", count = 1 },
            { itemId = 4377, name = "Heavy Blasting Powder", count = 1 },
            { itemId = 4306, name = "Silk Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6672,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Big Iron Bomb (190)
    {
        id = 3967,
        name = "Big Iron Bomb",
        itemId = 4394,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 190, green = 210, gray = 230 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 3 },
            { itemId = 4377, name = "Heavy Blasting Powder", count = 3 },
            { itemId = 4404, name = "Silver Contact", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Snowmaster 9000 (190)
    {
        id = 21940,
        name = "Snowmaster 9000",
        itemId = 17716,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 190, green = 210, gray = 230 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 8 },
            { itemId = 4389, name = "Gyrochronatom", count = 4 },
            { itemId = 17202, name = "Snowball", count = 4 },
            { itemId = 3829, name = "Frost Oil", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 17720,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- EZ-Thro Fireproof Fuse (190)
    {
        id = 1266914,
        name = "EZ-Thro Fireproof Fuse",
        itemId = 260801,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 190, green = 192, gray = 195 },
        reagents = {
            { itemId = 4404, name = "Silver Contact", count = 1 },
            { itemId = 249428, name = "Pristine Hide", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264211,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- EZ-Thro Bronze Mortar (190)
    {
        id = 1266915,
        name = "EZ-Thro Bronze Mortar",
        itemId = 260802,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 220, gray = 230 },
        reagents = {
            { itemId = 4371, name = "Bronze Tube", count = 4 },
            { itemId = 4387, name = "Iron Strut", count = 1 },
            { itemId = 4377, name = "Heavy Blasting Powder", count = 4 },
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 260801, name = "EZ-Thro Fireproof Fuse", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264212,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Centaur Banner Deployment Device (190)
    {
        id = 1286792,
        name = "Centaur Banner Deployment Device",
        itemId = 269900,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 190, green = 197, gray = 205 },
        reagents = {
            { itemId = 4387, name = "Iron Strut", count = 6 },
            { itemId = 4389, name = "Gyrochronatom", count = 2 },
            { itemId = 10558, name = "Gold Power Core", count = 4 },
            { itemId = 4234, name = "Heavy Leather", count = 30 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 269901,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Goblin Land Mine (195)
    {
        id = 3968,
        name = "Goblin Land Mine",
        itemId = 4395,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 225, gray = 235 },
        reagents = {
            { itemId = 4377, name = "Heavy Blasting Powder", count = 3 },
            { itemId = 3575, name = "Iron Bar", count = 2 },
            { itemId = 4389, name = "Gyrochronatom", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4416,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mithril Tube (195)
    {
        id = 12589,
        name = "Mithril Tube",
        itemId = 10559,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 195, green = 215, gray = 235 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 3 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mechanical Dragonling (200)
    {
        id = 3969,
        name = "Mechanical Dragonling",
        itemId = 4396,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4382, name = "Bronze Framework", count = 1 },
            { itemId = 4387, name = "Iron Strut", count = 4 },
            { itemId = 4389, name = "Gyrochronatom", count = 4 },
            { itemId = 3864, name = "Citrine", count = 2 },
            { itemId = 7191, name = "Fused Wiring", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13311,
            cost = 10000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gnomish Cloaking Device (200)
    {
        id = 3971,
        name = "Gnomish Cloaking Device",
        itemId = 4397,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4389, name = "Gyrochronatom", count = 4 },
            { itemId = 1529, name = "Jade", count = 2 },
            { itemId = 1705, name = "Lesser Moonstone", count = 2 },
            { itemId = 3864, name = "Citrine", count = 2 },
            { itemId = 7191, name = "Fused Wiring", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7742,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Large Seaforium Charge (200)
    {
        id = 3972,
        name = "Large Seaforium Charge",
        itemId = 4398,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 200, green = 220, gray = 240 },
        reagents = {
            { itemId = 10505, name = "Solid Blasting Powder", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 2 },
            { itemId = 159, name = "Refreshing Spring Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4417,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Unstable Trigger (200)
    {
        id = 12591,
        name = "Unstable Trigger",
        itemId = 10560,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 200, green = 220, gray = 240 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 1 },
            { itemId = 4338, name = "Mageweave Cloth", count = 1 },
            { itemId = 10505, name = "Solid Blasting Powder", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mechanical Repair Kit (200)
    {
        id = 15255,
        name = "Mechanical Repair Kit",
        itemId = 11590,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 200, green = 220, gray = 240 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 1 },
            { itemId = 4338, name = "Mageweave Cloth", count = 1 },
            { itemId = 10505, name = "Solid Blasting Powder", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- EZ-Thro Dynamite II (200)
    {
        id = 23069,
        name = "EZ-Thro Dynamite II",
        itemId = 18588,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 10505, name = "Solid Blasting Powder", count = 1 },
            { itemId = 4306, name = "Silk Cloth", count = 1 },
            { itemId = 260801, name = "EZ-Thro Fireproof Fuse", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18650,
            cost = 5000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Polished Truesilver Gears (200)
    {
        id = 435956,
        name = "Polished Truesilver Gears",
        itemId = 213383,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
            { itemId = 213381, name = "Pile of Tarnished Gears", count = 5 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 215429,
            cost = 25000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- EZ-Thro Grenade (200)
    {
        id = 1266916,
        name = "EZ-Thro Grenade",
        itemId = 260803,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 200, green = 220, gray = 240 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 1 },
            { itemId = 4377, name = "Heavy Blasting Powder", count = 1 },
            { itemId = 4306, name = "Silk Cloth", count = 1 },
            { itemId = 260801, name = "EZ-Thro Fireproof Fuse", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264213,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Floppy Goggles (200)
    {
        id = 1308183,
        name = "Floppy Goggles",
        itemId = 280310,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 205, green = 207, gray = 210 },
        reagents = {
            { itemId = 5507, name = "Ornate Spyglass", count = 1 },
            { itemId = 4389, name = "Gyrochronatom", count = 1 },
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 280325,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bent Goggles (200)
    {
        id = 1308184,
        name = "Bent Goggles",
        itemId = 280311,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 205, green = 207, gray = 210 },
        reagents = {
            { itemId = 5507, name = "Ornate Spyglass", count = 1 },
            { itemId = 4389, name = "Gyrochronatom", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 8 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 280326,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stuckbutton Goggles (200)
    {
        id = 1308185,
        name = "Stuckbutton Goggles",
        itemId = 280312,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 205, green = 207, gray = 210 },
        reagents = {
            { itemId = 5507, name = "Ornate Spyglass", count = 1 },
            { itemId = 4389, name = "Gyrochronatom", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 8 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 280327,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dented Goggles (200)
    {
        id = 1308186,
        name = "Dented Goggles",
        itemId = 280313,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 205, green = 207, gray = 210 },
        reagents = {
            { itemId = 5507, name = "Ornate Spyglass", count = 1 },
            { itemId = 4389, name = "Gyrochronatom", count = 1 },
            { itemId = 3860, name = "Mithril Bar", count = 2 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 280328,
            currency = { name = "Merchant's Favor", amount = 180 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Fire Goggles (205)
    {
        id = 12594,
        name = "Fire Goggles",
        itemId = 10500,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 4385, name = "Green Tinted Goggles", count = 1 },
            { itemId = 3864, name = "Citrine", count = 2 },
            { itemId = 7068, name = "Elemental Fire", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Goblin Mining Helmet (205)
    {
        id = 12717,
        name = "Goblin Mining Helmet",
        itemId = 10542,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 8 },
            { itemId = 3864, name = "Citrine", count = 1 },
            { itemId = 7067, name = "Elemental Earth", count = 4 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221336,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Goblin Construction Helmet (205)
    {
        id = 12718,
        name = "Goblin Construction Helmet",
        itemId = 10543,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 8 },
            { itemId = 3864, name = "Citrine", count = 1 },
            { itemId = 7068, name = "Elemental Fire", count = 4 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { unknown = true },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221335,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Goblin Sapper Charge (205)
    {
        id = 12760,
        name = "Goblin Sapper Charge",
        itemId = 10646,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 205, green = 225, gray = 245 },
        reagents = {
            { itemId = 4338, name = "Mageweave Cloth", count = 1 },
            { itemId = 10505, name = "Solid Blasting Powder", count = 3 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
        },
        specialization = { unknown = true },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221338,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gnomish Shrink Ray (205)
    {
        id = 12899,
        name = "Gnomish Shrink Ray",
        itemId = 10716,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 10559, name = "Mithril Tube", count = 1 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 3860, name = "Mithril Bar", count = 4 },
            { itemId = 8151, name = "Flask of Mojo", count = 4 },
            { itemId = 1529, name = "Jade", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { unknown = true },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221327,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pet Bombling (205)
    {
        id = 15628,
        name = "Pet Bombling",
        itemId = 11825,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 205, green = 207, gray = 210 },
        reagents = {
            { itemId = 4394, name = "Big Iron Bomb", count = 1 },
            { itemId = 7077, name = "Heart of Fire", count = 1 },
            { itemId = 7191, name = "Fused Wiring", count = 1 },
            { itemId = 3860, name = "Mithril Bar", count = 6 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 11828,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Soul Vessel (205)
    {
        id = 431362,
        name = "Soul Vessel",
        itemId = 211427,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 205, green = 210, gray = 215 },
        reagents = {
            { itemId = 1210, name = "Shadowgem", count = 4 },
            { itemId = 9262, name = "Black Vitriol", count = 1 },
            { itemId = 16583, name = "Demonic Figurine", count = 1 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 212230,
            cost = 20000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hi-Impact Mithril Slugs (210)
    {
        id = 12596,
        name = "Hi-Impact Mithril Slugs",
        itemId = 10512,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 210, green = 230, gray = 250 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 1 },
            { itemId = 10505, name = "Solid Blasting Powder", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Deadly Scope (210)
    {
        id = 12597,
        name = "Deadly Scope",
        itemId = 10546,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 10559, name = "Mithril Tube", count = 1 },
            { itemId = 7909, name = "Aquamarine", count = 2 },
            { itemId = 4304, name = "Thick Leather", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10602,
            cost = 3000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Explosive Arrow (210)
    {
        id = 12719,
        name = "Explosive Arrow",
        itemId = 10579,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 210, green = 230, gray = 250 },
        reagents = {
            { itemId = 3030, name = "Razor Arrow", count = 100 },
            { itemId = 10505, name = "Solid Blasting Powder", count = 2 },
            { itemId = 3860, name = "Mithril Bar", count = 2 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gnomish Goggles (210)
    {
        id = 12897,
        name = "Gnomish Goggles",
        itemId = 10545,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 10500, name = "Fire Goggles", count = 1 },
            { itemId = 10559, name = "Mithril Tube", count = 1 },
            { itemId = 10558, name = "Gold Power Core", count = 2 },
            { itemId = 8151, name = "Flask of Mojo", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 2 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        specialization = { unknown = true },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221328,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gnomish Net-o-Matic Projector (210)
    {
        id = 12902,
        name = "Gnomish Net-o-Matic Projector",
        itemId = 10720,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 10559, name = "Mithril Tube", count = 1 },
            { itemId = 10285, name = "Shadow Silk", count = 2 },
            { itemId = 4337, name = "Thick Spider's Silk", count = 4 },
            { itemId = 10505, name = "Solid Blasting Powder", count = 2 },
            { itemId = 3860, name = "Mithril Bar", count = 4 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { unknown = true },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221329,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mithril Casing (215)
    {
        id = 12599,
        name = "Mithril Casing",
        itemId = 10561,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 3 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mithril Frag Bomb (215)
    {
        id = 12603,
        name = "Mithril Frag Bomb",
        itemId = 10514,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 10561, name = "Mithril Casing", count = 1 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 10505, name = "Solid Blasting Powder", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gnomish Harm Prevention Belt (215)
    {
        id = 12903,
        name = "Gnomish Harm Prevention Belt",
        itemId = 10721,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 235, green = 245, gray = 255 },
        reagents = {
            { itemId = 7387, name = "Dusky Belt", count = 1 },
            { itemId = 3860, name = "Mithril Bar", count = 4 },
            { itemId = 6037, name = "Truesilver Bar", count = 2 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 7909, name = "Aquamarine", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { unknown = true },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221330,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- SAF-T Casing (215)
    {
        id = 1266917,
        name = "SAF-T Casing",
        itemId = 260804,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 215, green = 217, gray = 220 },
        reagents = {
            { itemId = 10561, name = "Mithril Casing", count = 1 },
            { itemId = 4234, name = "Heavy Leather", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264214,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- SAF-T Bomb (215)
    {
        id = 1266918,
        name = "SAF-T Bomb",
        itemId = 260805,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 215, green = 230, gray = 245 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 3 },
            { itemId = 4377, name = "Heavy Blasting Powder", count = 3 },
            { itemId = 4404, name = "Silver Contact", count = 1 },
            { itemId = 260804, name = "SAF-T Casing", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264215,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Catseye Ultra Goggles (220)
    {
        id = 12607,
        name = "Catseye Ultra Goggles",
        itemId = 10501,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 250, gray = 260 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 4 },
            { itemId = 7909, name = "Aquamarine", count = 2 },
            { itemId = 10592, name = "Catseye Draught", count = 1 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10603,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mithril Heavy-bore Rifle (220)
    {
        id = 12614,
        name = "Mithril Heavy-bore Rifle",
        itemId = 10510,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 250, gray = 260 },
        reagents = {
            { itemId = 10559, name = "Mithril Tube", count = 2 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 4400, name = "Heavy Stock", count = 1 },
            { itemId = 3860, name = "Mithril Bar", count = 6 },
            { itemId = 3864, name = "Citrine", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10604,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mithril Blunderbuss (225)
    {
        id = 12595,
        name = "Mithril Blunderbuss",
        itemId = 10508,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 10559, name = "Mithril Tube", count = 1 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 4400, name = "Heavy Stock", count = 1 },
            { itemId = 3860, name = "Mithril Bar", count = 4 },
            { itemId = 7068, name = "Elemental Fire", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spellpower Goggles Xtreme (225)
    {
        id = 12615,
        name = "Spellpower Goggles Xtreme",
        itemId = 10502,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 4 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10605,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Parachute Cloak (225)
    {
        id = 12616,
        name = "Parachute Cloak",
        itemId = 10518,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4339, name = "Bolt of Mageweave", count = 4 },
            { itemId = 10285, name = "Shadow Silk", count = 2 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 10505, name = "Solid Blasting Powder", count = 4 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10606,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gnomish Rocket Boots (225)
    {
        id = 12905,
        name = "Gnomish Rocket Boots",
        itemId = 10724,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 10026, name = "Black Mageweave Boots", count = 1 },
            { itemId = 10559, name = "Mithril Tube", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 10505, name = "Solid Blasting Powder", count = 8 },
            { itemId = 4389, name = "Gyrochronatom", count = 4 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { unknown = true },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221331,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Rocket Cluster (225)
    {
        id = 26423,
        name = "Blue Rocket Cluster",
        itemId = 21571,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 225, green = 237, gray = 250 },
        reagents = {
            { itemId = 10505, name = "Solid Blasting Powder", count = 1 },
            { itemId = 4304, name = "Thick Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 21730,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Rocket Cluster (225)
    {
        id = 26424,
        name = "Green Rocket Cluster",
        itemId = 21574,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 225, green = 237, gray = 250 },
        reagents = {
            { itemId = 10505, name = "Solid Blasting Powder", count = 1 },
            { itemId = 4304, name = "Thick Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 21731,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Rocket Cluster (225)
    {
        id = 26425,
        name = "Red Rocket Cluster",
        itemId = 21576,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 225, green = 237, gray = 250 },
        reagents = {
            { itemId = 10505, name = "Solid Blasting Powder", count = 1 },
            { itemId = 4304, name = "Thick Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 21732,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Firework Launcher (225)
    {
        id = 26442,
        name = "Firework Launcher",
        itemId = 21569,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 9060, name = "Inlaid Mithril Cylinder", count = 2 },
            { itemId = 9061, name = "Goblin Rocket Fuel", count = 2 },
            { itemId = 10560, name = "Unstable Trigger", count = 2 },
            { itemId = 10561, name = "Mithril Casing", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 21738,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Emergency Field Cloak (225)
    {
        id = 1266919,
        name = "Emergency Field Cloak",
        itemId = 260806,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4397, name = "Gnomish Cloaking Device", count = 1 },
            { itemId = 260804, name = "SAF-T Casing", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264216,
            currency = { name = "Merchant's Favor", amount = 270 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Compact Critter Carrier (225)
    {
        id = 1266920,
        name = "Compact Critter Carrier",
        itemId = 260807,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 230, green = 232, gray = 235 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 10 },
            { itemId = 10559, name = "Mithril Tube", count = 10 },
            { itemId = 11175, name = "Greater Nether Essence", count = 2 },
            { itemId = 10558, name = "Gold Power Core", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264217,
            currency = { name = "Merchant's Favor", amount = 270 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Purple Rocket Cluster (225)
    {
        id = 1319160,
        name = "Purple Rocket Cluster",
        itemId = 21575,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 225, green = 237, gray = 250 },
        reagents = {
            { itemId = 10505, name = "Solid Blasting Powder", count = 1 },
            { itemId = 4304, name = "Thick Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 286082,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- White Rocket Cluster (225)
    {
        id = 1319161,
        name = "White Rocket Cluster",
        itemId = 21577,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 225, green = 237, gray = 250 },
        reagents = {
            { itemId = 10505, name = "Solid Blasting Powder", count = 1 },
            { itemId = 4304, name = "Thick Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 286083,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Yellow Rocket Cluster (225)
    {
        id = 1319162,
        name = "Yellow Rocket Cluster",
        itemId = 21578,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 225, green = 237, gray = 250 },
        reagents = {
            { itemId = 10505, name = "Solid Blasting Powder", count = 1 },
            { itemId = 4304, name = "Thick Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 286084,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Deepdive Helmet (230)
    {
        id = 12617,
        name = "Deepdive Helmet",
        itemId = 10506,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 260, gray = 270 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 8 },
            { itemId = 10561, name = "Mithril Casing", count = 1 },
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
            { itemId = 818, name = "Tigerseye", count = 4 },
            { itemId = 774, name = "Malachite", count = 4 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10607,
            cost = 3600,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Rose Colored Goggles (230)
    {
        id = 12618,
        name = "Rose Colored Goggles",
        itemId = 10503,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 260, gray = 270 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 6 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Goblin Bomb Dispenser (230)
    {
        id = 12755,
        name = "Goblin Bomb Dispenser",
        itemId = 10587,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 10561, name = "Mithril Casing", count = 2 },
            { itemId = 10505, name = "Solid Blasting Powder", count = 4 },
            { itemId = 6037, name = "Truesilver Bar", count = 6 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 4407, name = "Accurate Scope", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { unknown = true },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221340,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gnomish Battle Chicken (230)
    {
        id = 12906,
        name = "Gnomish Battle Chicken",
        itemId = 10725,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 260, gray = 270 },
        reagents = {
            { itemId = 10561, name = "Mithril Casing", count = 1 },
            { itemId = 6037, name = "Truesilver Bar", count = 6 },
            { itemId = 3860, name = "Mithril Bar", count = 6 },
            { itemId = 9060, name = "Inlaid Mithril Cylinder", count = 2 },
            { itemId = 10558, name = "Gold Power Core", count = 1 },
            { itemId = 1529, name = "Jade", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { unknown = true },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221332,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Satchel of Iron Bombs (230)
    {
        id = 1317960,
        name = "Satchel of Iron Bombs",
        itemId = 285277,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 235, green = 237, gray = 240 },
        reagents = {
            { itemId = 4394, name = "Big Iron Bomb", count = 20 },
            { itemId = 4304, name = "Thick Leather", count = 6 },
            { itemId = 4389, name = "Gyrochronatom", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 285287,
            currency = { name = "Merchant's Favor", amount = 270 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hi-Explosive Bomb (235)
    {
        id = 12619,
        name = "Hi-Explosive Bomb",
        itemId = 10562,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 235, green = 255, gray = 275 },
        reagents = {
            { itemId = 10561, name = "Mithril Casing", count = 2 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 10505, name = "Solid Blasting Powder", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- The Big One (235)
    {
        id = 12754,
        name = "The Big One",
        itemId = 10586,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 235, green = 255, gray = 275 },
        reagents = {
            { itemId = 10561, name = "Mithril Casing", count = 1 },
            { itemId = 9061, name = "Goblin Rocket Fuel", count = 1 },
            { itemId = 10507, name = "Solid Dynamite", count = 6 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { unknown = true },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221341,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gnomish Mind Control Cap (235)
    {
        id = 12907,
        name = "Gnomish Mind Control Cap",
        itemId = 10726,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 10 },
            { itemId = 6037, name = "Truesilver Bar", count = 4 },
            { itemId = 10558, name = "Gold Power Core", count = 1 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
            { itemId = 4338, name = "Mageweave Cloth", count = 4 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { unknown = true },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221333,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Sniper Scope (240)
    {
        id = 12620,
        name = "Sniper Scope",
        itemId = 10548,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 10559, name = "Mithril Tube", count = 1 },
            { itemId = 7910, name = "Star Ruby", count = 1 },
            { itemId = 6037, name = "Truesilver Bar", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10608,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gnomish Death Ray (240)
    {
        id = 12759,
        name = "Gnomish Death Ray",
        itemId = 10645,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 10559, name = "Mithril Tube", count = 2 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 12808, name = "Essence of Undeath", count = 1 },
            { itemId = 7972, name = "Ichor of Undeath", count = 4 },
            { itemId = 9060, name = "Inlaid Mithril Cylinder", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { unknown = true },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221334,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Goblin Dragon Gun (240)
    {
        id = 12908,
        name = "Goblin Dragon Gun",
        itemId = 10727,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 10559, name = "Mithril Tube", count = 2 },
            { itemId = 9061, name = "Goblin Rocket Fuel", count = 4 },
            { itemId = 3860, name = "Mithril Bar", count = 6 },
            { itemId = 6037, name = "Truesilver Bar", count = 6 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { unknown = true },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221342,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- EZ-Thro Tru-Trigger (240)
    {
        id = 1266921,
        name = "EZ-Thro Tru-Trigger",
        itemId = 260808,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 240, green = 242, gray = 245 },
        reagents = {
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
            { itemId = 249431, name = "Viridian Dye", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264218,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tru-Trigger Frag Bomb (240)
    {
        id = 1266922,
        name = "Tru-Trigger Frag Bomb",
        itemId = 260809,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 10561, name = "Mithril Casing", count = 1 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 10505, name = "Solid Blasting Powder", count = 1 },
            { itemId = 260808, name = "EZ-Thro Tru-Trigger", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264219,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mithril Gyro-Shot (245)
    {
        id = 12621,
        name = "Mithril Gyro-Shot",
        itemId = 10513,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 245, green = 265, gray = 285 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 2 },
            { itemId = 10505, name = "Solid Blasting Powder", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Lens (245)
    {
        id = 12622,
        name = "Green Lens",
        itemId = 10504,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 275, gray = 285 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 8 },
            { itemId = 1529, name = "Jade", count = 3 },
            { itemId = 7909, name = "Aquamarine", count = 3 },
            { itemId = 10286, name = "Heart of the Wild", count = 2 },
            { itemId = 8153, name = "Wildvine", count = 2 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Goblin Rocket Helmet (245)
    {
        id = 12758,
        name = "Goblin Rocket Helmet",
        itemId = 10588,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 275, gray = 285 },
        reagents = {
            { itemId = 10543, name = "Goblin Construction Helmet", count = 1 },
            { itemId = 9061, name = "Goblin Rocket Fuel", count = 4 },
            { itemId = 3860, name = "Mithril Bar", count = 4 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { unknown = true },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 221343,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mithril Mechanical Dragonling (250)
    {
        id = 12624,
        name = "Mithril Mechanical Dragonling",
        itemId = 10576,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 14 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
            { itemId = 6037, name = "Truesilver Bar", count = 4 },
            { itemId = 9060, name = "Inlaid Mithril Cylinder", count = 2 },
            { itemId = 9061, name = "Goblin Rocket Fuel", count = 2 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10609,
            cost = 4000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Salt Shaker (250)
    {
        id = 19567,
        name = "Salt Shaker",
        itemId = 15846,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 10561, name = "Mithril Casing", count = 1 },
            { itemId = 12359, name = "Thorium Bar", count = 6 },
            { itemId = 10558, name = "Gold Power Core", count = 1 },
            { itemId = 10560, name = "Unstable Trigger", count = 4 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dense Blasting Powder (250)
    {
        id = 19788,
        name = "Dense Blasting Powder",
        itemId = 15992,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 12365, name = "Dense Stone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dense Dynamite (250)
    {
        id = 23070,
        name = "Dense Dynamite",
        itemId = 18641,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 250, green = 260, gray = 270 },
        reagents = {
            { itemId = 15992, name = "Dense Blasting Powder", count = 2 },
            { itemId = 14047, name = "Runecloth", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Snake Burst Firework (250)
    {
        id = 23507,
        name = "Snake Burst Firework",
        itemId = 19026,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 250, green = 260, gray = 270 },
        reagents = {
            { itemId = 15992, name = "Dense Blasting Powder", count = 2 },
            { itemId = 14047, name = "Runecloth", count = 2 },
            { itemId = 8150, name = "Deeprock Salt", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 19027,
            cost = 5000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pop-Up Shrub (250)
    {
        id = 1228088,
        name = "Pop-Up Shrub",
        itemId = 237023,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 255, green = 257, gray = 260 },
        reagents = {
            { itemId = 15994, name = "Thorium Widget", count = 1 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 4382, name = "Bronze Framework", count = 1 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 239222,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- SAF-T Disposable Parachute (250)
    {
        id = 1266923,
        name = "SAF-T Disposable Parachute",
        itemId = 260810,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 10518, name = "Parachute Cloak", count = 1 },
            { itemId = 260804, name = "SAF-T Casing", count = 1 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264220,
            currency = { name = "Merchant's Favor", amount = 270 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gnomish Army Knife (250)
    {
        id = 1266924,
        name = "Gnomish Army Knife",
        itemId = 260811,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 250, green = 252, gray = 255 },
        reagents = {
            { itemId = 10561, name = "Mithril Casing", count = 1 },
            { itemId = 10558, name = "Gold Power Core", count = 1 },
            { itemId = 15994, name = "Thorium Widget", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264221,
            currency = { name = "Merchant's Favor", amount = 270 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Thorium Grenade (260)
    {
        id = 19790,
        name = "Thorium Grenade",
        itemId = 15993,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 15994, name = "Thorium Widget", count = 1 },
            { itemId = 12359, name = "Thorium Bar", count = 3 },
            { itemId = 15992, name = "Dense Blasting Powder", count = 3 },
            { itemId = 14047, name = "Runecloth", count = 3 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16041,
            cost = 12000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Thorium Widget (260)
    {
        id = 19791,
        name = "Thorium Widget",
        itemId = 15994,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 3 },
            { itemId = 14047, name = "Runecloth", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16042,
            cost = 12000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Thorium Rifle (260)
    {
        id = 19792,
        name = "Thorium Rifle",
        itemId = 15995,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 10559, name = "Mithril Tube", count = 2 },
            { itemId = 10561, name = "Mithril Casing", count = 2 },
            { itemId = 15994, name = "Thorium Widget", count = 2 },
            { itemId = 12359, name = "Thorium Bar", count = 4 },
            { itemId = 10546, name = "Deadly Scope", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16043,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Truesilver Transformer (260)
    {
        id = 23071,
        name = "Truesilver Transformer",
        itemId = 18631,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 270, green = 275, gray = 280 },
        reagents = {
            { itemId = 6037, name = "Truesilver Bar", count = 2 },
            { itemId = 7067, name = "Elemental Earth", count = 2 },
            { itemId = 7069, name = "Elemental Air", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18651,
            cost = 12000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gyrofreeze Ice Reflector (260)
    {
        id = 23077,
        name = "Gyrofreeze Ice Reflector",
        itemId = 18634,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 15994, name = "Thorium Widget", count = 6 },
            { itemId = 18631, name = "Truesilver Transformer", count = 2 },
            { itemId = 12361, name = "Blue Sapphire", count = 2 },
            { itemId = 7078, name = "Essence of Fire", count = 4 },
            { itemId = 3829, name = "Frost Oil", count = 2 },
            { itemId = 13467, name = "Icecap", count = 4 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18652,
            cost = 12000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- World Enlarger (260)
    {
        id = 23129,
        name = "World Enlarger",
        itemId = 18660,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 260, green = 265, gray = 270 },
        reagents = {
            { itemId = 10561, name = "Mithril Casing", count = 1 },
            { itemId = 15994, name = "Thorium Widget", count = 2 },
            { itemId = 10558, name = "Gold Power Core", count = 1 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 3864, name = "Citrine", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        specialization = { spellId = 20219, name = "Gnomish Engineer" },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18661,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Unsanctified Grenade (260)
    {
        id = 1317270,
        name = "Unsanctified Grenade",
        itemId = 284869,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 18631, name = "Truesilver Transformer", count = 1 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 2 },
            { itemId = 15992, name = "Dense Blasting Powder", count = 3 },
            { itemId = 14047, name = "Runecloth", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 284870,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lifelike Mechanical Toad (265)
    {
        id = 19793,
        name = "Lifelike Mechanical Toad",
        itemId = 15996,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12803, name = "Living Essence", count = 1 },
            { itemId = 15994, name = "Thorium Widget", count = 4 },
            { itemId = 10558, name = "Gold Power Core", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16044,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Goblin Jumper Cables XL (265)
    {
        id = 23078,
        name = "Goblin Jumper Cables XL",
        itemId = 18587,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 15994, name = "Thorium Widget", count = 2 },
            { itemId = 18631, name = "Truesilver Transformer", count = 2 },
            { itemId = 7191, name = "Fused Wiring", count = 2 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 2 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
        },
        specialization = { spellId = 20222, name = "Goblin Engineer" },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18653,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Alarm-O-Bot (265)
    {
        id = 23096,
        name = "Alarm-O-Bot",
        itemId = 18645,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 275, green = 280, gray = 285 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 4 },
            { itemId = 15994, name = "Thorium Widget", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 7910, name = "Star Ruby", count = 1 },
            { itemId = 7191, name = "Fused Wiring", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { spellId = 20219, name = "Gnomish Engineer" },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18654,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spellpower Goggles Xtreme Plus (270)
    {
        id = 19794,
        name = "Spellpower Goggles Xtreme Plus",
        itemId = 15999,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 10502, name = "Spellpower Goggles Xtreme", count = 1 },
            { itemId = 7910, name = "Star Ruby", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 14047, name = "Runecloth", count = 8 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16045,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Thorium Tube (275)
    {
        id = 19795,
        name = "Thorium Tube",
        itemId = 16000,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 6 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16047,
            cost = 16000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dark Iron Rifle (275)
    {
        id = 19796,
        name = "Dark Iron Rifle",
        itemId = 16004,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 16000, name = "Thorium Tube", count = 2 },
            { itemId = 11371, name = "Dark Iron Bar", count = 6 },
            { itemId = 10546, name = "Deadly Scope", count = 2 },
            { itemId = 12361, name = "Blue Sapphire", count = 2 },
            { itemId = 12799, name = "Large Opal", count = 2 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16048,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Masterwork Target Dummy (275)
    {
        id = 19814,
        name = "Masterwork Target Dummy",
        itemId = 16023,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 10561, name = "Mithril Casing", count = 1 },
            { itemId = 16000, name = "Thorium Tube", count = 1 },
            { itemId = 15994, name = "Thorium Widget", count = 2 },
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 2 },
            { itemId = 14047, name = "Runecloth", count = 4 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16046,
            cost = 16000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Major Recombobulator (275)
    {
        id = 23079,
        name = "Major Recombobulator",
        itemId = 18637,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 285, green = 290, gray = 295 },
        reagents = {
            { itemId = 16000, name = "Thorium Tube", count = 2 },
            { itemId = 18631, name = "Truesilver Transformer", count = 1 },
            { itemId = 14047, name = "Runecloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18655,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Powerful Seaforium Charge (275)
    {
        id = 23080,
        name = "Powerful Seaforium Charge",
        itemId = 18594,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 15994, name = "Thorium Widget", count = 2 },
            { itemId = 15992, name = "Dense Blasting Powder", count = 3 },
            { itemId = 8170, name = "Rugged Leather", count = 2 },
            { itemId = 159, name = "Refreshing Spring Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18656,
            cost = 16000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Large Blue Rocket Cluster (275)
    {
        id = 26426,
        name = "Large Blue Rocket Cluster",
        itemId = 21714,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 280, gray = 285 },
        reagents = {
            { itemId = 15992, name = "Dense Blasting Powder", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 21733,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Large Green Rocket Cluster (275)
    {
        id = 26427,
        name = "Large Green Rocket Cluster",
        itemId = 21716,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 280, gray = 285 },
        reagents = {
            { itemId = 15992, name = "Dense Blasting Powder", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 21734,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Large Red Rocket Cluster (275)
    {
        id = 26428,
        name = "Large Red Rocket Cluster",
        itemId = 21718,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 280, gray = 285 },
        reagents = {
            { itemId = 15992, name = "Dense Blasting Powder", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 21735,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Firework Cluster Launcher (275)
    {
        id = 26443,
        name = "Firework Cluster Launcher",
        itemId = 21570,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 9060, name = "Inlaid Mithril Cylinder", count = 3 },
            { itemId = 9061, name = "Goblin Rocket Fuel", count = 3 },
            { itemId = 18631, name = "Truesilver Transformer", count = 1 },
            { itemId = 10561, name = "Mithril Casing", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 21737,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Steam Tonk Controller (275)
    {
        id = 28327,
        name = "Steam Tonk Controller",
        itemId = 22728,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 15994, name = "Thorium Widget", count = 2 },
            { itemId = 10561, name = "Mithril Casing", count = 1 },
            { itemId = 10558, name = "Gold Power Core", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 22729,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Loot-A-Rang (275)
    {
        id = 1266925,
        name = "Loot-A-Rang",
        itemId = 260812,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 277, gray = 280 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 5 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 5 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264222,
            currency = { name = "Merchant's Favor", amount = 270 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- SAF-T Tube (275)
    {
        id = 1266926,
        name = "SAF-T Tube",
        itemId = 260813,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 277, gray = 280 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 1 },
            { itemId = 249726, name = "Azerothium Bar", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264223,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- SAF-T Clever Dynamite (275)
    {
        id = 1266927,
        name = "SAF-T Clever Dynamite",
        itemId = 260814,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 15992, name = "Dense Blasting Powder", count = 2 },
            { itemId = 14047, name = "Runecloth", count = 3 },
            { itemId = 260813, name = "SAF-T Tube", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264224,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Large Purple Rocket Cluster (275)
    {
        id = 1319163,
        name = "Large Purple Rocket Cluster",
        itemId = 21717,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 280, gray = 285 },
        reagents = {
            { itemId = 15992, name = "Dense Blasting Powder", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 286085,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Large White Rocket Cluster (275)
    {
        id = 1319164,
        name = "Large White Rocket Cluster",
        itemId = 21719,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 280, gray = 285 },
        reagents = {
            { itemId = 15992, name = "Dense Blasting Powder", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 286086,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Large Yellow Rocket Cluster (275)
    {
        id = 1319165,
        name = "Large Yellow Rocket Cluster",
        itemId = 21720,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 275, green = 280, gray = 285 },
        reagents = {
            { itemId = 15992, name = "Dense Blasting Powder", count = 1 },
            { itemId = 8170, name = "Rugged Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 286087,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dark Iron Bomb (285)
    {
        id = 19799,
        name = "Dark Iron Bomb",
        itemId = 16005,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 15994, name = "Thorium Widget", count = 2 },
            { itemId = 11371, name = "Dark Iron Bar", count = 1 },
            { itemId = 15992, name = "Dense Blasting Powder", count = 3 },
            { itemId = 14047, name = "Runecloth", count = 3 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16049,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Thorium Shells (285)
    {
        id = 19800,
        name = "Thorium Shells",
        itemId = 15997,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 2 },
            { itemId = 15992, name = "Dense Blasting Powder", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16051,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Delicate Arcanite Converter (285)
    {
        id = 19815,
        name = "Delicate Arcanite Converter",
        itemId = 16006,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 1 },
            { itemId = 14227, name = "Ironweb Spider Silk", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16050,
            cost = 20000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dimensional Ripper - Everlook (285)
    {
        id = 23486,
        name = "Dimensional Ripper - Everlook",
        itemId = 18984,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 10 },
            { itemId = 18631, name = "Truesilver Transformer", count = 1 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
            { itemId = 10586, name = "The Big One", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { spellId = 20222, name = "Goblin Engineer" },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ultrasafe Transporter - Gadgetzan (285)
    {
        id = 23489,
        name = "Ultrasafe Transporter - Gadgetzan",
        itemId = 18986,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 12 },
            { itemId = 18631, name = "Truesilver Transformer", count = 2 },
            { itemId = 7075, name = "Core of Earth", count = 4 },
            { itemId = 7079, name = "Globe of Water", count = 2 },
            { itemId = 7909, name = "Aquamarine", count = 4 },
            { itemId = 9060, name = "Inlaid Mithril Cylinder", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        specialization = { spellId = 20219, name = "Gnomish Engineer" },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- EZ-Thro Shell (285)
    {
        id = 1266928,
        name = "EZ-Thro Shell",
        itemId = 260815,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 285, green = 287, gray = 290 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 2 },
            { itemId = 249429, name = "Pristine Scale", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264225,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- EZ-Thro Thorium Grenade (285)
    {
        id = 1266929,
        name = "EZ-Thro Thorium Grenade",
        itemId = 260816,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 15994, name = "Thorium Widget", count = 1 },
            { itemId = 12359, name = "Thorium Bar", count = 3 },
            { itemId = 15992, name = "Dense Blasting Powder", count = 3 },
            { itemId = 14047, name = "Runecloth", count = 3 },
            { itemId = 260815, name = "EZ-Thro Shell", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264226,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Satchel of Dark Iron Bombs (285)
    {
        id = 1317961,
        name = "Satchel of Dark Iron Bombs",
        itemId = 285278,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 290, green = 292, gray = 295 },
        reagents = {
            { itemId = 16005, name = "Dark Iron Bomb", count = 20 },
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 285288,
            currency = { name = "Merchant's Favor", amount = 270 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Voice Amplification Modulator (290)
    {
        id = 19819,
        name = "Voice Amplification Modulator",
        itemId = 16009,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 16006, name = "Delicate Arcanite Converter", count = 2 },
            { itemId = 10558, name = "Gold Power Core", count = 1 },
            { itemId = 15994, name = "Thorium Widget", count = 1 },
            { itemId = 12799, name = "Large Opal", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16052,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Master Engineer's Goggles (290)
    {
        id = 19825,
        name = "Master Engineer's Goggles",
        itemId = 16008,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 10500, name = "Fire Goggles", count = 1 },
            { itemId = 12364, name = "Huge Emerald", count = 2 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16053,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hyper-Radiant Flame Reflector (290)
    {
        id = 23081,
        name = "Hyper-Radiant Flame Reflector",
        itemId = 18638,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 4 },
            { itemId = 18631, name = "Truesilver Transformer", count = 3 },
            { itemId = 7080, name = "Essence of Water", count = 6 },
            { itemId = 7910, name = "Star Ruby", count = 4 },
            { itemId = 12800, name = "Azerothian Diamond", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18657,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Arcanite Dragonling (300)
    {
        id = 19830,
        name = "Arcanite Dragonling",
        itemId = 16022,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 10576, name = "Mithril Mechanical Dragonling", count = 1 },
            { itemId = 16006, name = "Delicate Arcanite Converter", count = 8 },
            { itemId = 12655, name = "Enchanted Thorium Bar", count = 10 },
            { itemId = 15994, name = "Thorium Widget", count = 6 },
            { itemId = 10558, name = "Gold Power Core", count = 4 },
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16054,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Arcane Bomb (300)
    {
        id = 19831,
        name = "Arcane Bomb",
        itemId = 16040,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 16006, name = "Delicate Arcanite Converter", count = 1 },
            { itemId = 12359, name = "Thorium Bar", count = 3 },
            { itemId = 14047, name = "Runecloth", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16055,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Flawless Arcanite Rifle (300)
    {
        id = 19833,
        name = "Flawless Arcanite Rifle",
        itemId = 16007,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 10 },
            { itemId = 16000, name = "Thorium Tube", count = 2 },
            { itemId = 7078, name = "Essence of Fire", count = 2 },
            { itemId = 7076, name = "Essence of Earth", count = 2 },
            { itemId = 12800, name = "Azerothian Diamond", count = 2 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16056,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Field Repair Bot 74A (300)
    {
        id = 22704,
        name = "Field Repair Bot 74A",
        itemId = 18232,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 12 },
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 7191, name = "Fused Wiring", count = 1 },
            { itemId = 7067, name = "Elemental Earth", count = 2 },
            { itemId = 7068, name = "Elemental Fire", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 18235,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Biznicks 247x128 Accurascope (300)
    {
        id = 22793,
        name = "Biznicks 247x128 Accurascope",
        itemId = 18283,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17011, name = "Lava Core", count = 2 },
            { itemId = 7076, name = "Essence of Earth", count = 2 },
            { itemId = 16006, name = "Delicate Arcanite Converter", count = 4 },
            { itemId = 11371, name = "Dark Iron Bar", count = 6 },
            { itemId = 16000, name = "Thorium Tube", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18290,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Core Marksman Rifle (300)
    {
        id = 22795,
        name = "Core Marksman Rifle",
        itemId = 18282,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17010, name = "Fiery Core", count = 4 },
            { itemId = 17011, name = "Lava Core", count = 2 },
            { itemId = 12360, name = "Arcanite Bar", count = 6 },
            { itemId = 16006, name = "Delicate Arcanite Converter", count = 2 },
            { itemId = 16000, name = "Thorium Tube", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18292,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Force Reactive Disk (300)
    {
        id = 22797,
        name = "Force Reactive Disk",
        itemId = 18168,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 6 },
            { itemId = 16006, name = "Delicate Arcanite Converter", count = 2 },
            { itemId = 7082, name = "Essence of Air", count = 8 },
            { itemId = 12803, name = "Living Essence", count = 12 },
            { itemId = 7076, name = "Essence of Earth", count = 8 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18291,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ultra-Flash Shadow Reflector (300)
    {
        id = 23082,
        name = "Ultra-Flash Shadow Reflector",
        itemId = 18639,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 8 },
            { itemId = 18631, name = "Truesilver Transformer", count = 4 },
            { itemId = 12803, name = "Living Essence", count = 6 },
            { itemId = 12808, name = "Essence of Undeath", count = 4 },
            { itemId = 12800, name = "Azerothian Diamond", count = 2 },
            { itemId = 12799, name = "Large Opal", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18658,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bloodvine Goggles (300)
    {
        id = 24356,
        name = "Bloodvine Goggles",
        itemId = 19999,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 19726, name = "Bloodvine", count = 4 },
            { itemId = 19774, name = "Souldarite", count = 5 },
            { itemId = 16006, name = "Delicate Arcanite Converter", count = 2 },
            { itemId = 12804, name = "Powerful Mojo", count = 8 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
        },
        tools = { { categoryId = 15, name = "Gyromatic Micro-Adjustor" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Honored",
            itemId = 20000,
            cost = 120000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bloodvine Lens (300)
    {
        id = 24357,
        name = "Bloodvine Lens",
        itemId = 19998,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 19726, name = "Bloodvine", count = 5 },
            { itemId = 19774, name = "Souldarite", count = 5 },
            { itemId = 16006, name = "Delicate Arcanite Converter", count = 1 },
            { itemId = 12804, name = "Powerful Mojo", count = 8 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
        },
        tools = { { categoryId = 15, name = "Gyromatic Micro-Adjustor" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Friendly",
            itemId = 20001,
            cost = 50000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- EZ-Thro Dark Bomb (300)
    {
        id = 1266930,
        name = "EZ-Thro Dark Bomb",
        itemId = 260817,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 15994, name = "Thorium Widget", count = 2 },
            { itemId = 11371, name = "Dark Iron Bar", count = 1 },
            { itemId = 15992, name = "Dense Blasting Powder", count = 3 },
            { itemId = 14047, name = "Runecloth", count = 3 },
            { itemId = 260815, name = "EZ-Thro Shell", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264227,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- EZ-Thro Mana Bomb (300)
    {
        id = 1266931,
        name = "EZ-Thro Mana Bomb",
        itemId = 260818,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 16006, name = "Delicate Arcanite Converter", count = 1 },
            { itemId = 12359, name = "Thorium Bar", count = 3 },
            { itemId = 14047, name = "Runecloth", count = 1 },
            { itemId = 260815, name = "EZ-Thro Shell", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264228,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- EZ-Thro Field Transporter: Gadgetzan (300)
    {
        id = 1266932,
        name = "EZ-Thro Field Transporter: Gadgetzan",
        itemId = 260819,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 18986, name = "Ultrasafe Transporter: Gadgetzan", count = 1 },
            { itemId = 260815, name = "EZ-Thro Shell", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264229,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- SAF-T Emergency Ripper: Everlook (300)
    {
        id = 1266933,
        name = "SAF-T Emergency Ripper: Everlook",
        itemId = 260820,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 18984, name = "Dimensional Ripper - Everlook", count = 1 },
            { itemId = 260813, name = "SAF-T Tube", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264230,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- EZ and SAF Field Transporter: Mt. Hyjal (300)
    {
        id = 1266934,
        name = "EZ and SAF Field Transporter: Mt. Hyjal",
        itemId = 260821,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 260823, name = "Dimensional Transporter - Mt. Hyjal", count = 1 },
            { itemId = 260815, name = "EZ-Thro Shell", count = 1 },
            { itemId = 260813, name = "SAF-T Tube", count = 1 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264231,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ultrasafe Rechargeable Battery (300)
    {
        id = 1266935,
        name = "Ultrasafe Rechargeable Battery",
        itemId = 260822,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 249410, name = "Sulfuric Acid", count = 2 },
            { itemId = 249426, name = "Pitchblende", count = 1 },
            { itemId = 249431, name = "Viridian Dye", count = 1 },
            { itemId = 12359, name = "Thorium Bar", count = 3 },
            { itemId = 3860, name = "Mithril Bar", count = 1 },
            { itemId = 248822, name = "Death Lotus", count = 1 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264232,
            currency = { name = "Merchant's Favor", amount = 360 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dimensional Transporter - Mt. Hyjal (300)
    {
        id = 1266936,
        name = "Dimensional Transporter - Mt. Hyjal",
        itemId = 260823,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 10 },
            { itemId = 18631, name = "Truesilver Transformer", count = 1 },
            { itemId = 7075, name = "Core of Earth", count = 4 },
            { itemId = 7082, name = "Essence of Air", count = 4 },
            { itemId = 251290, name = "Legionite Bar", count = 2 },
        },
        tools = { { categoryId = 162, name = "Blacksmith Hammer" }, { categoryId = 14, name = "Arclight Spanner" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264233,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gnomish Poultryizer (300)
    {
        id = 1266937,
        name = "Gnomish Poultryizer",
        itemId = 260824,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 16204, name = "Illusion Dust", count = 10 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 2 },
            { itemId = 249726, name = "Azerothium Bar", count = 2 },
            { itemId = 251290, name = "Legionite Bar", count = 2 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264234,
            currency = { name = "Merchant's Favor", amount = 360 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ultralight Goblin Glider (300)
    {
        id = 1266938,
        name = "Ultralight Goblin Glider",
        itemId = 260825,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 249431, name = "Viridian Dye", count = 2 },
            { itemId = 249726, name = "Azerothium Bar", count = 2 },
            { itemId = 249429, name = "Pristine Scale", count = 8 },
            { itemId = 12359, name = "Thorium Bar", count = 8 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264235,
            currency = { name = "Merchant's Favor", amount = 360 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gnomish Weather Machine (300)
    {
        id = 1266939,
        name = "Gnomish Weather Machine",
        itemId = 260826,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 7076, name = "Essence of Earth", count = 2 },
            { itemId = 7078, name = "Essence of Fire", count = 2 },
            { itemId = 7082, name = "Essence of Air", count = 2 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
            { itemId = 248822, name = "Death Lotus", count = 2 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 264236,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stealthman 52 (300)
    {
        id = 1266940,
        name = "Stealthman 52",
        itemId = 260827,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 7082, name = "Essence of Air", count = 6 },
            { itemId = 16204, name = "Illusion Dust", count = 6 },
            { itemId = 248820, name = "Torbernite", count = 2 },
            { itemId = 251290, name = "Legionite Bar", count = 2 },
            { itemId = 248823, name = "Marefoil", count = 4 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 264237,
            currency = { name = "Merchant's Favor", amount = 360 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Swiftfeather Arrow (300)
    {
        id = 1293849,
        name = "Swiftfeather Arrow",
        itemId = 274387,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 315, gray = 320 },
        reagents = {
            { itemId = 251291, name = "Heavy Thorium Bar", count = 8 },
            { itemId = 17056, name = "Light Feather", count = 5 },
            { itemId = 7069, name = "Elemental Air", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274389,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Swiftstrike Shot (300)
    {
        id = 1293850,
        name = "Swiftstrike Shot",
        itemId = 274388,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 315, gray = 320 },
        reagents = {
            { itemId = 251291, name = "Heavy Thorium Bar", count = 8 },
            { itemId = 12365, name = "Dense Stone", count = 8 },
            { itemId = 7067, name = "Elemental Earth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274390,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- SAF-T Ultra Precision Scope (300)
    {
        id = 1306546,
        name = "SAF-T Ultra Precision Scope",
        itemId = 279272,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 251290, name = "Legionite Bar", count = 1 },
            { itemId = 251291, name = "Heavy Thorium Bar", count = 12 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279321,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hyper Deluxe Sniper Rifle Mk XVII (300)
    {
        id = 1306547,
        name = "Hyper Deluxe Sniper Rifle Mk XVII",
        itemId = 279273,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 4 },
            { itemId = 251290, name = "Legionite Bar", count = 2 },
            { itemId = 251291, name = "Heavy Thorium Bar", count = 10 },
            { itemId = 12800, name = "Azerothian Diamond", count = 1 },
        },
        tools = { { categoryId = 14, name = "Arclight Spanner" }, { categoryId = 15, name = "Gyromatic Micro-Adjustor" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279322,
        },
        expansion = C.EXPANSION.FOREVER,
    },
}

CraftLib:RegisterProfession("engineering", {
    id = C.PROFESSION_ID.ENGINEERING,
    name = "Engineering",
    expansion = C.EXPANSION.FOREVER,
    profile = "FOREVER",
    milestones = { 75, 150, 225, 300 },
    specializations = { { spellId = 20219, name = "Gnomish Engineer" }, { spellId = 20222, name = "Goblin Engineer" } },
    recipes = recipes,
})
