-- Data/SoD/Engineering/Recipes.lua
-- Engineering recipes for SoD Classic
-- Generated from DB2 data
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rough Dynamite (1)
    {
        id = 3919,
        name = "Rough Dynamite",
        itemId = 4358,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 30, green = 45, gray = 60 },
        reagents = {
            { itemId = 4357, name = "Rough Blasting Powder", count = 2 },
            { itemId = 2589, name = "Linen Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Crafted Light Shot (1)
    {
        id = 3920,
        name = "Crafted Light Shot",
        itemId = 8067,
        skillRequired = 1,
        skillRange = { orange = 0, yellow = 30, green = 45, gray = 60 },
        reagents = {
            { itemId = 4357, name = "Rough Blasting Powder", count = 1 },
            { itemId = 2840, name = "Copper Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 115,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 130,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 150,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Rough Boomstick (50)
    {
        id = 3925,
        name = "Rough Boomstick",
        itemId = 4362,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 80, green = 95, gray = 110 },
        reagents = {
            { itemId = 4361, name = "Copper Tube", count = 1 },
            { itemId = 4359, name = "Handful of Copper Bolts", count = 1 },
            { itemId = 4399, name = "Wooden Stock", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 150,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 150,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Crude Scope (60)
    {
        id = 3977,
        name = "Crude Scope",
        itemId = 4405,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 90, green = 105, gray = 120 },
        reagents = {
            { itemId = 4361, name = "Copper Tube", count = 1 },
            { itemId = 774, name = "Malachite", count = 1 },
            { itemId = 4359, name = "Handful of Copper Bolts", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 225,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4408,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Crafted Heavy Shot (75)
    {
        id = 3930,
        name = "Crafted Heavy Shot",
        itemId = 8068,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 85, green = 90, gray = 95 },
        reagents = {
            { itemId = 4364, name = "Coarse Blasting Powder", count = 1 },
            { itemId = 2840, name = "Copper Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 250,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 300,
        },
        expansion = C.EXPANSION.SOD,
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
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- EZ-Thro Dynamite (100)
    {
        id = 8339,
        name = "EZ-Thro Dynamite",
        itemId = 6714,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 115, green = 122, gray = 130 },
        reagents = {
            { itemId = 4364, name = "Coarse Blasting Powder", count = 4 },
            { itemId = 2592, name = "Wool Cloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6716,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Deadly Blunderbuss (105)
    {
        id = 3936,
        name = "Deadly Blunderbuss",
        itemId = 4369,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 130, green = 142, gray = 155 },
        reagents = {
            { itemId = 4361, name = "Copper Tube", count = 2 },
            { itemId = 4359, name = "Handful of Copper Bolts", count = 4 },
            { itemId = 4399, name = "Wooden Stock", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 420,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 450,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 450,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Standard Scope (110)
    {
        id = 3978,
        name = "Standard Scope",
        itemId = 4406,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 147, gray = 160 },
        reagents = {
            { itemId = 4371, name = "Bronze Tube", count = 1 },
            { itemId = 1206, name = "Moss Agate", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 475,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13309,
            cost = 1000,
        },
        expansion = C.EXPANSION.SOD,
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
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4411,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 300,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7560,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 21724,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 21725,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 21726,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Silver-plated Shotgun (130)
    {
        id = 3949,
        name = "Silver-plated Shotgun",
        itemId = 4379,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 155, green = 167, gray = 180 },
        reagents = {
            { itemId = 4371, name = "Bronze Tube", count = 2 },
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 2 },
            { itemId = 4400, name = "Heavy Stock", count = 1 },
            { itemId = 2842, name = "Silver Bar", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 550,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 400,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Shredder Autosalvage Unit (135)
    {
        id = 424641,
        name = "Shredder Autosalvage Unit",
        itemId = 210147,
        skillRequired = 135,
        skillRange = { orange = 0, yellow = 135, green = 140, gray = 145 },
        reagents = {
            { itemId = 4382, name = "Bronze Framework", count = 1 },
            { itemId = 4375, name = "Whirring Bronze Gizmo", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 210178,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 600,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 14639,
            cost = 1500,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 600,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4412,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 500,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
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
        expansion = C.EXPANSION.SOD,
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
        expansion = C.EXPANSION.SOD,
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
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13308,
            cost = 1800,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 800,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4413,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4414,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Goblin Jumper Cables (165)
    {
        id = 9273,
        name = "Goblin Jumper Cables",
        itemId = 7148,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 165, green = 180, gray = 200 },
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
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 900,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10601,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 21727,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 21728,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 21729,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13310,
            cost = 2000,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1200,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4415,
        },
        expansion = C.EXPANSION.SOD,
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
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1400,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- SnowMaster 9000 (190)
    {
        id = 21940,
        name = "SnowMaster 9000",
        itemId = 17716,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 190, green = 210, gray = 230 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 8 },
            { itemId = 4389, name = "Gyrochronatom", count = 4 },
            { itemId = 17202, name = "Snowball", count = 4 },
            { itemId = 3829, name = "Frost Oil", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 17720,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4416,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1300,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 13311,
            cost = 10000,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7742,
        },
        expansion = C.EXPANSION.SOD,
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
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.SOD,
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
            { itemId = 4338, name = "Mageweave Cloth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18650,
            cost = 5000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Polished Truesilver Gears (200)
    {
        id = 435956,
        name = "Polished Truesilver Gears",
        itemId = 213383,
        skillRequired = 200,
        skillRange = { orange = 0, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
            { itemId = 213381, name = "Pile of Tarnished Gears", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1600,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Mithril Blunderbuss (205)
    {
        id = 12595,
        name = "Mithril Blunderbuss",
        itemId = 10508,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 10559, name = "Mithril Tube", count = 1 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 4400, name = "Heavy Stock", count = 1 },
            { itemId = 3860, name = "Mithril Bar", count = 4 },
            { itemId = 7068, name = "Elemental Fire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1600,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Goblin Rocket Fuel Recipe (205)
    {
        id = 12715,
        name = "Goblin Rocket Fuel Recipe",
        itemId = 10644,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 205, green = 205, gray = 205 },
        reagents = {
            { itemId = 10648, name = "Blank Parchment", count = 1 },
            { itemId = 10647, name = "Engineer's Ink", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Inlaid Mithril Cylinder Plans (205)
    {
        id = 12895,
        name = "Inlaid Mithril Cylinder Plans",
        itemId = 10713,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 205, green = 205, gray = 205 },
        reagents = {
            { itemId = 10648, name = "Blank Parchment", count = 1 },
            { itemId = 10647, name = "Engineer's Ink", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Pet Bombling (205)
    {
        id = 15628,
        name = "Pet Bombling",
        itemId = 11825,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 205, green = 205, gray = 205 },
        reagents = {
            { itemId = 4394, name = "Big Iron Bomb", count = 1 },
            { itemId = 7077, name = "Heart of Fire", count = 1 },
            { itemId = 7191, name = "Fused Wiring", count = 1 },
            { itemId = 3860, name = "Mithril Bar", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11828,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Lil' Smoky (205)
    {
        id = 15633,
        name = "Lil' Smoky",
        itemId = 11826,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 205, green = 205, gray = 205 },
        reagents = {
            { itemId = 7075, name = "Core of Earth", count = 1 },
            { itemId = 4389, name = "Gyrochronatom", count = 2 },
            { itemId = 7191, name = "Fused Wiring", count = 1 },
            { itemId = 3860, name = "Mithril Bar", count = 2 },
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11827,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Soul Vessel (205)
    {
        id = 431362,
        name = "Soul Vessel",
        itemId = 211427,
        skillRequired = 205,
        skillRange = { orange = 0, yellow = 205, green = 210, gray = 215 },
        reagents = {
            { itemId = 1210, name = "Shadowgem", count = 4 },
            { itemId = 9262, name = "Black Vitriol", count = 1 },
            { itemId = 16583, name = "Demonic Figurine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1700,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10602,
            cost = 3000,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1800,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1800,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 1800,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 2000,
        },
        expansion = C.EXPANSION.SOD,
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
            { itemId = 10592, name = "Catseye Elixir", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10603,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10604,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Goblin Rocket Boots (225)
    {
        id = 8895,
        name = "Goblin Rocket Boots",
        itemId = 7189,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 10026, name = "Black Mageweave Boots", count = 1 },
            { itemId = 10559, name = "Mithril Tube", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 9061, name = "Goblin Rocket Fuel", count = 2 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 2200,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10606,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Goblin Mortar (225)
    {
        id = 12716,
        name = "Goblin Mortar",
        itemId = 10577,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 10559, name = "Mithril Tube", count = 2 },
            { itemId = 3860, name = "Mithril Bar", count = 4 },
            { itemId = 10505, name = "Solid Blasting Powder", count = 5 },
            { itemId = 10558, name = "Gold Power Core", count = 1 },
            { itemId = 7068, name = "Elemental Fire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 2200,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 21730,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 21731,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 21732,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Firework Launcher (225)
    {
        id = 26442,
        name = "Firework Launcher",
        itemId = 21569,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 9060, name = "Inlaid Mithril Cylinder", count = 1 },
            { itemId = 9061, name = "Goblin Rocket Fuel", count = 1 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 10561, name = "Mithril Casing", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 21738,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Whirling Truesilver Gearwall (225)
    {
        id = 435958,
        name = "Whirling Truesilver Gearwall",
        itemId = 213390,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 232, gray = 240 },
        reagents = {
            { itemId = 213376, name = "Low-Background Truesilver Plates", count = 3 },
            { itemId = 213383, name = "Polished Truesilver Gears", count = 5 },
            { itemId = 213369, name = "Faintly Glowing Leather", count = 2 },
            { itemId = 10561, name = "Mithril Casing", count = 2 },
            { itemId = 4389, name = "Gyrochronatom", count = 2 },
            { itemId = 3860, name = "Mithril Bar", count = 15 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Hyperconductive Goldwap (225)
    {
        id = 435960,
        name = "Hyperconductive Goldwap",
        itemId = 215115,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 213383, name = "Polished Truesilver Gears", count = 3 },
            { itemId = 213379, name = "Hyperconductive Arcano-Filament", count = 3 },
            { itemId = 213369, name = "Faintly Glowing Leather", count = 1 },
            { itemId = 3577, name = "Gold Bar", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- High-Yield Radiation Bomb (225)
    {
        id = 435964,
        name = "High-Yield Radiation Bomb",
        itemId = 215127,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 10505, name = "Solid Blasting Powder", count = 1 },
            { itemId = 215430, name = "Gnomeregan Fallout", count = 1 },
            { itemId = 3860, name = "Mithril Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ez-Thro Radiation Bomb (225)
    {
        id = 435966,
        name = "Ez-Thro Radiation Bomb",
        itemId = 215168,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 10505, name = "Solid Blasting Powder", count = 2 },
            { itemId = 215430, name = "Gnomeregan Fallout", count = 1 },
            { itemId = 3860, name = "Mithril Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10607,
            cost = 3600,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 2200,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 2400,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 2400,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 2400,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 2600,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 2600,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 10608,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 2800,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 2800,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 2800,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 2800,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 10609,
            cost = 4000,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.SOD,
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
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.SOD,
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
        expansion = C.EXPANSION.SOD,
    },
    -- Tranquil Mechanical Yeti (250)
    {
        id = 26011,
        name = "Tranquil Mechanical Yeti",
        itemId = 21277,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 15994, name = "Thorium Widget", count = 4 },
            { itemId = 7079, name = "Globe of Water", count = 2 },
            { itemId = 18631, name = "Truesilver Transformer", count = 2 },
            { itemId = 10558, name = "Gold Power Core", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Void-Powered Invoker's Vambraces (250)
    {
        id = 446236,
        name = "Void-Powered Invoker's Vambraces",
        itemId = 221025,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 220689, name = "Void-Powered Vambraces", count = 1 },
            { itemId = 10558, name = "Gold Power Core", count = 2 },
            { itemId = 15994, name = "Thorium Widget", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Void-Powered Slayer's Vambraces (250)
    {
        id = 446237,
        name = "Void-Powered Slayer's Vambraces",
        itemId = 221026,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 220689, name = "Void-Powered Vambraces", count = 1 },
            { itemId = 15992, name = "Dense Blasting Powder", count = 3 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Void-Powered Protector's Vambraces (250)
    {
        id = 446238,
        name = "Void-Powered Protector's Vambraces",
        itemId = 221027,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 221021, name = "Nightmare Seed", count = 10 },
            { itemId = 220688, name = "Inert Mantle of Nightmares", count = 1 },
            { itemId = 220689, name = "Void-Powered Vambraces", count = 1 },
            { itemId = 10558, name = "Gold Power Core", count = 2 },
            { itemId = 16000, name = "Thorium Tube", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Pop-Up Shrub (255)
    {
        id = 1228088,
        name = "Pop-Up Shrub",
        itemId = 237023,
        skillRequired = 255,
        skillRange = { orange = 0, yellow = 255, green = 257, gray = 260 },
        reagents = {
            { itemId = 15994, name = "Thorium Widget", count = 1 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 4382, name = "Bronze Framework", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 239222,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18652,
            cost = 12000,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18661,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tinkerbox (260)
    {
        id = 1226206,
        name = "Tinkerbox",
        itemId = 238737,
        skillRequired = 260,
        skillRange = { orange = 0, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 10561, name = "Mithril Casing", count = 1 },
            { itemId = 10558, name = "Gold Power Core", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 238782,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16044,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18653,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18654,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tinkerbox: Teleport (270)
    {
        id = 1226207,
        name = "Tinkerbox: Teleport",
        itemId = 238734,
        skillRequired = 270,
        skillRange = { orange = 0, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 238737, name = "Tinkerbox", count = 1 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 15994, name = "Thorium Widget", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 238783,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tinkerbox: Nitro Boosts (270)
    {
        id = 1226208,
        name = "Tinkerbox: Nitro Boosts",
        itemId = 238735,
        skillRequired = 270,
        skillRange = { orange = 0, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 238737, name = "Tinkerbox", count = 1 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 16000, name = "Thorium Tube", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 238784,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tinkerbox: Magnetic Displacement (270)
    {
        id = 1226209,
        name = "Tinkerbox: Magnetic Displacement",
        itemId = 238736,
        skillRequired = 270,
        skillRange = { orange = 0, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 238737, name = "Tinkerbox", count = 1 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 4387, name = "Iron Strut", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 238785,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16048,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16046,
            cost = 16000,
        },
        expansion = C.EXPANSION.SOD,
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
        expansion = C.EXPANSION.SOD,
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
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 21733,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 21734,
        },
        expansion = C.EXPANSION.SOD,
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
            type = C.SOURCE_TYPE.DROP,
            itemId = 21735,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Firework Cluster Launcher (275)
    {
        id = 26443,
        name = "Firework Cluster Launcher",
        itemId = 21570,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 9060, name = "Inlaid Mithril Cylinder", count = 4 },
            { itemId = 9061, name = "Goblin Rocket Fuel", count = 4 },
            { itemId = 18631, name = "Truesilver Transformer", count = 2 },
            { itemId = 10561, name = "Mithril Casing", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 21737,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 22729,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Creepy Censor Sensors (275)
    {
        id = 1221012,
        name = "Creepy Censor Sensors",
        itemId = 236871,
        skillRequired = 275,
        skillRange = { orange = 0, yellow = 275, green = 277, gray = 280 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 12800, name = "Azerothian Diamond", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 236872,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16049,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16050,
            cost = 20000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Dimensional Ripper - Everlook (285)
    {
        id = 23486,
        name = "Dimensional Ripper - Everlook",
        itemId = 18984,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 10 },
            { itemId = 18631, name = "Truesilver Transformer", count = 1 },
            { itemId = 7077, name = "Heart of Fire", count = 4 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
            { itemId = 10586, name = "The Big One", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Ultrasafe Transporter - Gadgetzan (285)
    {
        id = 23489,
        name = "Ultrasafe Transporter - Gadgetzan",
        itemId = 18986,
        skillRequired = 285,
        skillRange = { orange = 0, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 12 },
            { itemId = 18631, name = "Truesilver Transformer", count = 2 },
            { itemId = 7075, name = "Core of Earth", count = 4 },
            { itemId = 7079, name = "Globe of Water", count = 2 },
            { itemId = 7909, name = "Aquamarine", count = 4 },
            { itemId = 9060, name = "Inlaid Mithril Cylinder", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16052,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18657,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16054,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16055,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16056,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18235,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18290,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18292,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18291,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18658,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Honored",
            itemId = 20000,
            cost = 120000,
        },
        expansion = C.EXPANSION.SOD,
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
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Friendly",
            itemId = 20001,
            cost = 50000,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Semisafe Transporter: New Avalon (305)
    {
        id = 1226213,
        name = "Semisafe Transporter: New Avalon",
        itemId = 238781,
        skillRequired = 305,
        skillRange = { orange = 0, yellow = 305, green = 305, gray = 305 },
        reagents = {
            { itemId = 16006, name = "Delicate Arcanite Converter", count = 1 },
            { itemId = 18631, name = "Truesilver Transformer", count = 2 },
            { itemId = 10560, name = "Unstable Trigger", count = 1 },
            { itemId = 10561, name = "Mithril Casing", count = 2 },
            { itemId = 10588, name = "Goblin Rocket Helmet", count = 2 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 238789,
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Arcane Megabomb (315)
    {
        id = 1213573,
        name = "Arcane Megabomb",
        itemId = 233984,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 16006, name = "Delicate Arcanite Converter", count = 1 },
            { itemId = 20725, name = "Nexus Crystal", count = 1 },
            { itemId = 14047, name = "Runecloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- The Fumigator (315)
    {
        id = 1213576,
        name = "The Fumigator",
        itemId = 233985,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 234011, name = "Qiraji Stalker Venom", count = 1 },
            { itemId = 234005, name = "Obsidian Blasting Powder", count = 2 },
            { itemId = 14047, name = "Runecloth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Bomb (315)
    {
        id = 1213578,
        name = "Obsidian Bomb",
        itemId = 233986,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 234005, name = "Obsidian Blasting Powder", count = 3 },
            { itemId = 234007, name = "Spiked Silithid Chitin", count = 1 },
            { itemId = 234008, name = "Qiraji Silk", count = 1 },
            { itemId = 12365, name = "Dense Stone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- G00 DV-1B3 Generator (315)
    {
        id = 1213586,
        name = "G00 DV-1B3 Generator",
        itemId = 233987,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 234005, name = "Obsidian Blasting Powder", count = 20 },
            { itemId = 234012, name = "Hive Thistle", count = 30 },
            { itemId = 234009, name = "Bolt of Qiraji Silk", count = 8 },
            { itemId = 234011, name = "Qiraji Stalker Venom", count = 8 },
            { itemId = 234010, name = "Ancient Sandworm Bile", count = 8 },
            { itemId = 234007, name = "Spiked Silithid Chitin", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Tuned Force Reactive Disk (315)
    {
        id = 1213588,
        name = "Tuned Force Reactive Disk",
        itemId = 233988,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 18168, name = "Force Reactive Disk", count = 1 },
            { itemId = 234007, name = "Spiked Silithid Chitin", count = 4 },
            { itemId = 234003, name = "Obsidian-Infused Thorium Bar", count = 8 },
            { itemId = 234005, name = "Obsidian Blasting Powder", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Blasting Powder (315)
    {
        id = 1213646,
        name = "Obsidian Blasting Powder",
        itemId = 234005,
        skillRequired = 315,
        skillRange = { orange = 0, yellow = 315, green = 322, gray = 330 },
        reagents = {
            { itemId = 22202, name = "Small Obsidian Shard", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Fiery Core Sharpshooter Rifle (320)
    {
        id = 461710,
        name = "Fiery Core Sharpshooter Rifle",
        itemId = 227849,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 17010, name = "Fiery Core", count = 4 },
            { itemId = 17011, name = "Lava Core", count = 2 },
            { itemId = 12360, name = "Arcanite Bar", count = 6 },
            { itemId = 16006, name = "Delicate Arcanite Converter", count = 2 },
            { itemId = 16000, name = "Thorium Tube", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Shotgun (320)
    {
        id = 1214145,
        name = "Obsidian Shotgun",
        itemId = 234434,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 30 },
            { itemId = 234003, name = "Obsidian-Infused Thorium Bar", count = 8 },
            { itemId = 20725, name = "Nexus Crystal", count = 3 },
            { itemId = 20868, name = "Lambent Idol", count = 3 },
            { itemId = 20870, name = "Jasper Idol", count = 3 },
            { itemId = 20881, name = "Idol of Strife", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Engineering Trainer",
        },
        expansion = C.EXPANSION.SOD,
    },
    -- Obsidian Scope (320)
    {
        id = 1217207,
        name = "Obsidian Scope",
        itemId = 235529,
        skillRequired = 320,
        skillRange = { orange = 0, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 16000, name = "Thorium Tube", count = 1 },
            { itemId = 12363, name = "Arcane Crystal", count = 1 },
            { itemId = 234003, name = "Obsidian-Infused Thorium Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 235530,
        },
        expansion = C.EXPANSION.SOD,
    },
}

CraftLib:RegisterProfession("engineering", {
    id = C.PROFESSION_ID.ENGINEERING,
    name = "Engineering",
    expansion = C.EXPANSION.SOD,
    flavor = "SOD",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
