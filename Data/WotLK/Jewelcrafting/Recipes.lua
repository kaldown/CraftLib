-- Data/WotLK/Jewelcrafting/Recipes.lua
-- Jewelcrafting recipes for WotLK Classic
-- Generated from DB2 data
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    -- Delicate Copper Wire (1)
    {
        id = 25255,
        name = "Delicate Copper Wire",
        itemId = 20816,
        skillRequired = 1,
        skillRange = { orange = 0, yellow = 20, green = 35, gray = 50 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Braided Copper Ring (1)
    {
        id = 25493,
        name = "Braided Copper Ring",
        itemId = 20906,
        skillRequired = 1,
        skillRange = { orange = 0, yellow = 30, green = 45, gray = 60 },
        reagents = {
            { itemId = 20816, name = "Delicate Copper Wire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Woven Copper Ring (1)
    {
        id = 26925,
        name = "Woven Copper Ring",
        itemId = 21931,
        skillRequired = 1,
        skillRange = { orange = 0, yellow = 30, green = 45, gray = 60 },
        reagents = {
            { itemId = 20816, name = "Delicate Copper Wire", count = 2 },
            { itemId = 2840, name = "Copper Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Rough Stone Statue (1)
    {
        id = 32259,
        name = "Rough Stone Statue",
        itemId = 25498,
        skillRequired = 1,
        skillRange = { orange = 0, yellow = 30, green = 40, gray = 50 },
        reagents = {
            { itemId = 2835, name = "Rough Stone", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Copper Ring (5)
    {
        id = 26926,
        name = "Heavy Copper Ring",
        itemId = 21932,
        skillRequired = 5,
        skillRange = { orange = 5, yellow = 35, green = 50, gray = 65 },
        reagents = {
            { itemId = 2840, name = "Copper Bar", count = 4 },
            { itemId = 20816, name = "Delicate Copper Wire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Malachite Pendant (20)
    {
        id = 32178,
        name = "Malachite Pendant",
        itemId = 25438,
        skillRequired = 20,
        skillRange = { orange = 20, yellow = 50, green = 65, gray = 80 },
        reagents = {
            { itemId = 774, name = "Malachite", count = 1 },
            { itemId = 20816, name = "Delicate Copper Wire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Tigerseye Band (20)
    {
        id = 32179,
        name = "Tigerseye Band",
        itemId = 25439,
        skillRequired = 20,
        skillRange = { orange = 20, yellow = 50, green = 65, gray = 80 },
        reagents = {
            { itemId = 818, name = "Tigerseye", count = 1 },
            { itemId = 20816, name = "Delicate Copper Wire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Inlaid Malachite Ring (30)
    {
        id = 25283,
        name = "Inlaid Malachite Ring",
        itemId = 20821,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 60, green = 75, gray = 90 },
        reagents = {
            { itemId = 774, name = "Malachite", count = 2 },
            { itemId = 2840, name = "Copper Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ornate Tigerseye Necklace (30)
    {
        id = 26928,
        name = "Ornate Tigerseye Necklace",
        itemId = 21934,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 60, green = 75, gray = 90 },
        reagents = {
            { itemId = 818, name = "Tigerseye", count = 2 },
            { itemId = 2840, name = "Copper Bar", count = 2 },
            { itemId = 20816, name = "Delicate Copper Wire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Bronze Setting (50)
    {
        id = 25278,
        name = "Bronze Setting",
        itemId = 20817,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 70, green = 80, gray = 90 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Elegant Silver Ring (50)
    {
        id = 25280,
        name = "Elegant Silver Ring",
        itemId = 20818,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 80, green = 95, gray = 110 },
        reagents = {
            { itemId = 2842, name = "Silver Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Solid Bronze Ring (50)
    {
        id = 25490,
        name = "Solid Bronze Ring",
        itemId = 20907,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 80, green = 95, gray = 110 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Thick Bronze Necklace (50)
    {
        id = 26927,
        name = "Thick Bronze Necklace",
        itemId = 21933,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 80, green = 95, gray = 110 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 2 },
            { itemId = 1210, name = "Shadowgem", count = 1 },
            { itemId = 20816, name = "Delicate Copper Wire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Coarse Stone Statue (50)
    {
        id = 32801,
        name = "Coarse Stone Statue",
        itemId = 25880,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 70, green = 80, gray = 90 },
        reagents = {
            { itemId = 2836, name = "Coarse Stone", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Simple Pearl Ring (60)
    {
        id = 25284,
        name = "Simple Pearl Ring",
        itemId = 20820,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 90, green = 105, gray = 120 },
        reagents = {
            { itemId = 5498, name = "Small Lustrous Pearl", count = 1 },
            { itemId = 20817, name = "Bronze Setting", count = 1 },
            { itemId = 2840, name = "Copper Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Bronze Band of Force (65)
    {
        id = 37818,
        name = "Bronze Band of Force",
        itemId = 30804,
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 95, green = 110, gray = 125 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 2 },
            { itemId = 20817, name = "Bronze Setting", count = 1 },
            { itemId = 774, name = "Malachite", count = 3 },
            { itemId = 818, name = "Tigerseye", count = 3 },
            { itemId = 1210, name = "Shadowgem", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Gloom Band (70)
    {
        id = 25287,
        name = "Gloom Band",
        itemId = 20823,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 100, green = 115, gray = 130 },
        reagents = {
            { itemId = 1210, name = "Shadowgem", count = 2 },
            { itemId = 20817, name = "Bronze Setting", count = 1 },
            { itemId = 20816, name = "Delicate Copper Wire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Brilliant Necklace (75)
    {
        id = 36523,
        name = "Brilliant Necklace",
        itemId = 30419,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 120, gray = 135 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 4 },
            { itemId = 20817, name = "Bronze Setting", count = 1 },
            { itemId = 1206, name = "Moss Agate", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 600,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ring of Silver Might (80)
    {
        id = 25317,
        name = "Ring of Silver Might",
        itemId = 20827,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 110, green = 125, gray = 140 },
        reagents = {
            { itemId = 2842, name = "Silver Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 600,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Bronze Torc (80)
    {
        id = 38175,
        name = "Bronze Torc",
        itemId = 31154,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 110, green = 125, gray = 140 },
        reagents = {
            { itemId = 2841, name = "Bronze Bar", count = 6 },
            { itemId = 20817, name = "Bronze Setting", count = 1 },
            { itemId = 1705, name = "Lesser Moonstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 650,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Silver Ring (90)
    {
        id = 25305,
        name = "Heavy Silver Ring",
        itemId = 20826,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 120, green = 135, gray = 150 },
        reagents = {
            { itemId = 2842, name = "Silver Bar", count = 2 },
            { itemId = 20817, name = "Bronze Setting", count = 1 },
            { itemId = 1206, name = "Moss Agate", count = 1 },
            { itemId = 1705, name = "Lesser Moonstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ring of Twilight Shadows (100)
    {
        id = 25318,
        name = "Ring of Twilight Shadows",
        itemId = 20828,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 130, green = 145, gray = 160 },
        reagents = {
            { itemId = 1210, name = "Shadowgem", count = 2 },
            { itemId = 2841, name = "Bronze Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 800,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Jade Ring (105)
    {
        id = 36524,
        name = "Heavy Jade Ring",
        itemId = 30420,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 135, green = 150, gray = 165 },
        reagents = {
            { itemId = 1529, name = "Jade", count = 1 },
            { itemId = 20817, name = "Bronze Setting", count = 1 },
            { itemId = 3575, name = "Iron Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 800,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Amulet of the Moon (110)
    {
        id = 25339,
        name = "Amulet of the Moon",
        itemId = 20830,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 140, green = 155, gray = 170 },
        reagents = {
            { itemId = 1705, name = "Lesser Moonstone", count = 2 },
            { itemId = 20817, name = "Bronze Setting", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20854,
            cost = 1800,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Barbaric Iron Collar (110)
    {
        id = 25498,
        name = "Barbaric Iron Collar",
        itemId = 20909,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 140, green = 155, gray = 170 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 8 },
            { itemId = 5637, name = "Large Fang", count = 2 },
            { itemId = 20817, name = "Bronze Setting", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 600,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Stone Statue (110)
    {
        id = 32807,
        name = "Heavy Stone Statue",
        itemId = 25881,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 120, green = 130, gray = 140 },
        reagents = {
            { itemId = 2838, name = "Heavy Stone", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 600,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Moonsoul Crown (120)
    {
        id = 25321,
        name = "Moonsoul Crown",
        itemId = 20832,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 150, green = 165, gray = 180 },
        reagents = {
            { itemId = 1705, name = "Lesser Moonstone", count = 3 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 3 },
            { itemId = 11083, name = "Soul Dust", count = 4 },
            { itemId = 2842, name = "Silver Bar", count = 4 },
            { itemId = 3827, name = "Mana Potion", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Pendant of the Agate Shield (120)
    {
        id = 25610,
        name = "Pendant of the Agate Shield",
        itemId = 20950,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 150, green = 165, gray = 180 },
        reagents = {
            { itemId = 1206, name = "Moss Agate", count = 1 },
            { itemId = 20817, name = "Bronze Setting", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20970,
            cost = 1500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Wicked Moonstone Ring (125)
    {
        id = 25323,
        name = "Wicked Moonstone Ring",
        itemId = 20833,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 155, green = 170, gray = 185 },
        reagents = {
            { itemId = 1705, name = "Lesser Moonstone", count = 1 },
            { itemId = 3824, name = "Shadow Oil", count = 1 },
            { itemId = 3575, name = "Iron Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20855,
            cost = 1500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Iron Knuckles (125)
    {
        id = 25612,
        name = "Heavy Iron Knuckles",
        itemId = 20954,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 155, green = 170, gray = 185 },
        reagents = {
            { itemId = 3575, name = "Iron Bar", count = 8 },
            { itemId = 3391, name = "Elixir of Ogre's Strength", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20971,
            cost = 1500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Golden Dragon Ring (135)
    {
        id = 25613,
        name = "Golden Dragon Ring",
        itemId = 20955,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 165, green = 180, gray = 195 },
        reagents = {
            { itemId = 1529, name = "Jade", count = 1 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 20816, name = "Delicate Copper Wire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 1200,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Golden Necklace of Battle (150)
    {
        id = 25320,
        name = "Heavy Golden Necklace of Battle",
        itemId = 20831,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 180, green = 195, gray = 210 },
        reagents = {
            { itemId = 3577, name = "Gold Bar", count = 1 },
            { itemId = 1206, name = "Moss Agate", count = 2 },
            { itemId = 3391, name = "Elixir of Ogre's Strength", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20856,
            cost = 1500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Mithril Filigree (150)
    {
        id = 25615,
        name = "Mithril Filigree",
        itemId = 20963,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 180, gray = 190 },
        reagents = {
            { itemId = 3860, name = "Mithril Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Blazing Citrine Ring (150)
    {
        id = 25617,
        name = "Blazing Citrine Ring",
        itemId = 20958,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 180, green = 195, gray = 210 },
        reagents = {
            { itemId = 3864, name = "Citrine", count = 1 },
            { itemId = 20963, name = "Mithril Filigree", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20973,
            cost = 2000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Jade Pendant of Blasting (160)
    {
        id = 25618,
        name = "Jade Pendant of Blasting",
        itemId = 20966,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 190, green = 205, gray = 220 },
        reagents = {
            { itemId = 1529, name = "Jade", count = 1 },
            { itemId = 20963, name = "Mithril Filigree", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20974,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- The Jade Eye (170)
    {
        id = 25619,
        name = "The Jade Eye",
        itemId = 20959,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 200, green = 215, gray = 230 },
        reagents = {
            { itemId = 1529, name = "Jade", count = 1 },
            { itemId = 7067, name = "Elemental Earth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20975,
            cost = 2500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Engraved Truesilver Ring (170)
    {
        id = 25620,
        name = "Engraved Truesilver Ring",
        itemId = 20960,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 200, green = 215, gray = 230 },
        reagents = {
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
            { itemId = 20963, name = "Mithril Filigree", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 2000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Solid Stone Statue (175)
    {
        id = 32808,
        name = "Solid Stone Statue",
        itemId = 25882,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 185, gray = 195 },
        reagents = {
            { itemId = 7912, name = "Solid Stone", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 2000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Citrine Ring of Rapid Healing (180)
    {
        id = 25621,
        name = "Citrine Ring of Rapid Healing",
        itemId = 20961,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 210, green = 225, gray = 240 },
        reagents = {
            { itemId = 3864, name = "Citrine", count = 1 },
            { itemId = 3860, name = "Mithril Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 2000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Golden Ring of Power (180)
    {
        id = 34955,
        name = "Golden Ring of Power",
        itemId = 29157,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 190, green = 200, gray = 210 },
        reagents = {
            { itemId = 3577, name = "Gold Bar", count = 4 },
            { itemId = 1705, name = "Lesser Moonstone", count = 1 },
            { itemId = 1529, name = "Jade", count = 1 },
            { itemId = 3864, name = "Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Citrine Pendant of Golden Healing (190)
    {
        id = 25622,
        name = "Citrine Pendant of Golden Healing",
        itemId = 20967,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 220, green = 235, gray = 250 },
        reagents = {
            { itemId = 3864, name = "Citrine", count = 1 },
            { itemId = 7070, name = "Elemental Water", count = 2 },
            { itemId = 3577, name = "Gold Bar", count = 2 },
            { itemId = 20817, name = "Bronze Setting", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20976,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Figurine - Jade Owl (200)
    {
        id = 26872,
        name = "Figurine - Jade Owl",
        itemId = 21748,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 225, green = 240, gray = 255 },
        reagents = {
            { itemId = 1529, name = "Jade", count = 4 },
            { itemId = 6037, name = "Truesilver Bar", count = 2 },
            { itemId = 11137, name = "Vision Dust", count = 4 },
            { itemId = 20963, name = "Mithril Filigree", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Figurine - Golden Hare (200)
    {
        id = 26873,
        name = "Figurine - Golden Hare",
        itemId = 21756,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 225, green = 240, gray = 255 },
        reagents = {
            { itemId = 3577, name = "Gold Bar", count = 6 },
            { itemId = 3864, name = "Citrine", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 21940,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Truesilver Commander's Ring (200)
    {
        id = 34959,
        name = "Truesilver Commander's Ring",
        itemId = 29158,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 210, green = 220, gray = 230 },
        reagents = {
            { itemId = 6037, name = "Truesilver Bar", count = 3 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
            { itemId = 3864, name = "Citrine", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Amulet of Truesight (200)
    {
        id = 63743,
        name = "Amulet of Truesight",
        itemId = 45627,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 210, green = 220, gray = 230 },
        reagents = {
            { itemId = 6037, name = "Truesilver Bar", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Aquamarine Signet (210)
    {
        id = 26874,
        name = "Aquamarine Signet",
        itemId = 20964,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 235, green = 250, gray = 265 },
        reagents = {
            { itemId = 7909, name = "Aquamarine", count = 3 },
            { itemId = 8151, name = "Flask of Mojo", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Figurine - Black Pearl Panther (215)
    {
        id = 26875,
        name = "Figurine - Black Pearl Panther",
        itemId = 21758,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 240, green = 255, gray = 270 },
        reagents = {
            { itemId = 7971, name = "Black Pearl", count = 4 },
            { itemId = 8151, name = "Flask of Mojo", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 21941,
            cost = 5000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Aquamarine Pendant of the Warrior (220)
    {
        id = 26876,
        name = "Aquamarine Pendant of the Warrior",
        itemId = 21755,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 245, green = 260, gray = 275 },
        reagents = {
            { itemId = 7909, name = "Aquamarine", count = 1 },
            { itemId = 20963, name = "Mithril Filigree", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ruby Crown of Restoration (225)
    {
        id = 26878,
        name = "Ruby Crown of Restoration",
        itemId = 20969,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 7910, name = "Star Ruby", count = 2 },
            { itemId = 7971, name = "Black Pearl", count = 2 },
            { itemId = 6037, name = "Truesilver Bar", count = 4 },
            { itemId = 21752, name = "Thorium Setting", count = 4 },
            { itemId = 6149, name = "Greater Mana Potion", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 21942,
            cost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Thorium Setting (225)
    {
        id = 26880,
        name = "Thorium Setting",
        itemId = 21752,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 235, green = 245, gray = 255 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 3500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Figurine - Truesilver Crab (225)
    {
        id = 26881,
        name = "Figurine - Truesilver Crab",
        itemId = 21760,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 250, green = 265, gray = 280 },
        reagents = {
            { itemId = 7909, name = "Aquamarine", count = 2 },
            { itemId = 6037, name = "Truesilver Bar", count = 4 },
            { itemId = 7075, name = "Core of Earth", count = 2 },
            { itemId = 7079, name = "Globe of Water", count = 2 },
            { itemId = 8151, name = "Flask of Mojo", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 21943,
            cost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Dense Stone Statue (225)
    {
        id = 32809,
        name = "Dense Stone Statue",
        itemId = 25883,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 12365, name = "Dense Stone", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 3500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Red Ring of Destruction (230)
    {
        id = 36525,
        name = "Red Ring of Destruction",
        itemId = 30421,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 255, green = 270, gray = 285 },
        reagents = {
            { itemId = 7910, name = "Star Ruby", count = 1 },
            { itemId = 21752, name = "Thorium Setting", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Figurine - Truesilver Boar (235)
    {
        id = 26882,
        name = "Figurine - Truesilver Boar",
        itemId = 21763,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 260, green = 275, gray = 290 },
        reagents = {
            { itemId = 7910, name = "Star Ruby", count = 2 },
            { itemId = 6037, name = "Truesilver Bar", count = 4 },
            { itemId = 7077, name = "Heart of Fire", count = 2 },
            { itemId = 7081, name = "Breath of Wind", count = 2 },
            { itemId = 8151, name = "Flask of Mojo", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 21944,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ruby Pendant of Fire (235)
    {
        id = 26883,
        name = "Ruby Pendant of Fire",
        itemId = 21764,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 260, green = 275, gray = 290 },
        reagents = {
            { itemId = 7910, name = "Star Ruby", count = 1 },
            { itemId = 21752, name = "Thorium Setting", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Truesilver Healing Ring (240)
    {
        id = 26885,
        name = "Truesilver Healing Ring",
        itemId = 21765,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 265, green = 280, gray = 295 },
        reagents = {
            { itemId = 6037, name = "Truesilver Bar", count = 2 },
            { itemId = 10286, name = "Heart of the Wild", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- The Aquamarine Ward (245)
    {
        id = 26887,
        name = "The Aquamarine Ward",
        itemId = 21754,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 270, green = 285, gray = 300 },
        reagents = {
            { itemId = 7909, name = "Aquamarine", count = 1 },
            { itemId = 21752, name = "Thorium Setting", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 21945,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Gem Studded Band (250)
    {
        id = 26896,
        name = "Gem Studded Band",
        itemId = 21753,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 275, green = 290, gray = 305 },
        reagents = {
            { itemId = 7909, name = "Aquamarine", count = 2 },
            { itemId = 3864, name = "Citrine", count = 2 },
            { itemId = 21752, name = "Thorium Setting", count = 4 },
            { itemId = 6037, name = "Truesilver Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 21947,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Opal Necklace of Impact (250)
    {
        id = 26897,
        name = "Opal Necklace of Impact",
        itemId = 21766,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 275, green = 290, gray = 305 },
        reagents = {
            { itemId = 12799, name = "Large Opal", count = 2 },
            { itemId = 21752, name = "Thorium Setting", count = 2 },
            { itemId = 6037, name = "Truesilver Bar", count = 4 },
            { itemId = 11178, name = "Large Radiant Shard", count = 2 },
            { itemId = 20963, name = "Mithril Filigree", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 21948,
            cost = 7500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Figurine - Ruby Serpent (260)
    {
        id = 26900,
        name = "Figurine - Ruby Serpent",
        itemId = 21769,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 7910, name = "Star Ruby", count = 2 },
            { itemId = 7078, name = "Essence of Fire", count = 2 },
            { itemId = 8152, name = "Flask of Big Mojo", count = 4 },
            { itemId = 6037, name = "Truesilver Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 21949,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Simple Opal Ring (260)
    {
        id = 26902,
        name = "Simple Opal Ring",
        itemId = 21767,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 12799, name = "Large Opal", count = 1 },
            { itemId = 21752, name = "Thorium Setting", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Diamond Focus Ring (265)
    {
        id = 36526,
        name = "Diamond Focus Ring",
        itemId = 30422,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12800, name = "Azerothian Diamond", count = 1 },
            { itemId = 21752, name = "Thorium Setting", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Sapphire Signet (275)
    {
        id = 26903,
        name = "Sapphire Signet",
        itemId = 21768,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12361, name = "Blue Sapphire", count = 4 },
            { itemId = 6037, name = "Truesilver Bar", count = 2 },
            { itemId = 21752, name = "Thorium Setting", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Emerald Crown of Destruction (275)
    {
        id = 26906,
        name = "Emerald Crown of Destruction",
        itemId = 21774,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 12364, name = "Huge Emerald", count = 2 },
            { itemId = 12799, name = "Large Opal", count = 2 },
            { itemId = 12361, name = "Blue Sapphire", count = 2 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 12359, name = "Thorium Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 21952,
            cost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Onslaught Ring (280)
    {
        id = 26907,
        name = "Onslaught Ring",
        itemId = 21775,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 21752, name = "Thorium Setting", count = 1 },
            { itemId = 12804, name = "Powerful Mojo", count = 1 },
            { itemId = 7076, name = "Essence of Earth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Sapphire Pendant of Winter Night (280)
    {
        id = 26908,
        name = "Sapphire Pendant of Winter Night",
        itemId = 21790,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 12361, name = "Blue Sapphire", count = 1 },
            { itemId = 12808, name = "Essence of Undeath", count = 1 },
            { itemId = 21752, name = "Thorium Setting", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 12000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glowing Thorium Band (280)
    {
        id = 34960,
        name = "Glowing Thorium Band",
        itemId = 29159,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 12800, name = "Azerothian Diamond", count = 2 },
            { itemId = 21752, name = "Thorium Setting", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Figurine - Emerald Owl (285)
    {
        id = 26909,
        name = "Figurine - Emerald Owl",
        itemId = 21777,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 12364, name = "Huge Emerald", count = 2 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 12359, name = "Thorium Bar", count = 2 },
            { itemId = 12804, name = "Powerful Mojo", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 21953,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ring of Bitter Shadows (285)
    {
        id = 26910,
        name = "Ring of Bitter Shadows",
        itemId = 21778,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 12363, name = "Arcane Crystal", count = 1 },
            { itemId = 12808, name = "Essence of Undeath", count = 2 },
            { itemId = 12662, name = "Demonic Rune", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 21954,
            cost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Living Emerald Pendant (290)
    {
        id = 26911,
        name = "Living Emerald Pendant",
        itemId = 21791,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 12364, name = "Huge Emerald", count = 2 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 12804, name = "Powerful Mojo", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Emerald Lion Ring (290)
    {
        id = 34961,
        name = "Emerald Lion Ring",
        itemId = 29160,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 12364, name = "Huge Emerald", count = 2 },
            { itemId = 21752, name = "Thorium Setting", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Figurine - Black Diamond Crab (300)
    {
        id = 26912,
        name = "Figurine - Black Diamond Crab",
        itemId = 21784,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 18335, name = "Pristine Black Diamond", count = 4 },
            { itemId = 11754, name = "Black Diamond", count = 4 },
            { itemId = 12800, name = "Azerothian Diamond", count = 2 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 12359, name = "Thorium Bar", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 21955,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Figurine - Dark Iron Scorpid (300)
    {
        id = 26914,
        name = "Figurine - Dark Iron Scorpid",
        itemId = 21789,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 11371, name = "Dark Iron Bar", count = 4 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
            { itemId = 7910, name = "Star Ruby", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 21956,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Teardrop Blood Garnet (300)
    {
        id = 28903,
        name = "Teardrop Blood Garnet",
        itemId = 23094,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 300, green = 320, gray = 340 },
        reagents = {
            { itemId = 23077, name = "Blood Garnet", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Inscribed Flame Spessarite (300)
    {
        id = 28910,
        name = "Inscribed Flame Spessarite",
        itemId = 23098,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 300, green = 320, gray = 340 },
        reagents = {
            { itemId = 21929, name = "Flame Spessarite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Radiant Deep Peridot (300)
    {
        id = 28916,
        name = "Radiant Deep Peridot",
        itemId = 23103,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 300, green = 320, gray = 340 },
        reagents = {
            { itemId = 23079, name = "Deep Peridot", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glowing Shadow Draenite (300)
    {
        id = 28925,
        name = "Glowing Shadow Draenite",
        itemId = 23108,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 300, green = 320, gray = 340 },
        reagents = {
            { itemId = 23107, name = "Shadow Draenite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Brilliant Golden Draenite (300)
    {
        id = 28938,
        name = "Brilliant Golden Draenite",
        itemId = 23113,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 300, green = 320, gray = 340 },
        reagents = {
            { itemId = 23112, name = "Golden Draenite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Solid Azure Moonstone (300)
    {
        id = 28950,
        name = "Solid Azure Moonstone",
        itemId = 23118,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 300, green = 320, gray = 340 },
        reagents = {
            { itemId = 23117, name = "Azure Moonstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Prismatic Black Diamond (300)
    {
        id = 62941,
        name = "Prismatic Black Diamond",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 315, gray = 320 },
        reagents = {
            { itemId = 11754, name = "Black Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Necklace of the Diamond Tower (305)
    {
        id = 26915,
        name = "Necklace of the Diamond Tower",
        itemId = 21792,
        skillRequired = 305,
        skillRange = { orange = 305, yellow = 315, green = 325, gray = 335 },
        reagents = {
            { itemId = 12800, name = "Azerothian Diamond", count = 2 },
            { itemId = 21752, name = "Thorium Setting", count = 2 },
            { itemId = 12360, name = "Arcanite Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 21957,
            cost = 13500,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bold Blood Garnet (305)
    {
        id = 28905,
        name = "Bold Blood Garnet",
        itemId = 23095,
        skillRequired = 305,
        skillRange = { orange = 305, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 23077, name = "Blood Garnet", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Luminous Flame Spessarite (305)
    {
        id = 28912,
        name = "Luminous Flame Spessarite",
        itemId = 23099,
        skillRequired = 305,
        skillRange = { orange = 305, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 21929, name = "Flame Spessarite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Friendly",
            itemId = 23136,
            cost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Jagged Deep Peridot (305)
    {
        id = 28917,
        name = "Jagged Deep Peridot",
        itemId = 23104,
        skillRequired = 305,
        skillRange = { orange = 305, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 23079, name = "Deep Peridot", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Royal Shadow Draenite (305)
    {
        id = 28927,
        name = "Royal Shadow Draenite",
        itemId = 23109,
        skillRequired = 305,
        skillRange = { orange = 305, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 23107, name = "Shadow Draenite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 932,
            factionName = "The Aldor",
            level = "Honored",
            itemId = 23145,
            cost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Gleaming Golden Draenite (305)
    {
        id = 28944,
        name = "Gleaming Golden Draenite",
        itemId = 23114,
        skillRequired = 305,
        skillRange = { orange = 305, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 23112, name = "Golden Draenite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 932,
            factionName = "The Aldor",
            level = "Friendly",
            itemId = 23149,
            cost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sparkling Azure Moonstone (305)
    {
        id = 28953,
        name = "Sparkling Azure Moonstone",
        itemId = 23119,
        skillRequired = 305,
        skillRange = { orange = 305, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 23117, name = "Azure Moonstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bright Blood Garnet (305)
    {
        id = 34590,
        name = "Bright Blood Garnet",
        itemId = 28595,
        skillRequired = 305,
        skillRange = { orange = 305, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 23077, name = "Blood Garnet", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Band of Natural Fire (310)
    {
        id = 26916,
        name = "Band of Natural Fire",
        itemId = 21779,
        skillRequired = 310,
        skillRange = { orange = 310, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 21929, name = "Flame Spessarite", count = 1 },
            { itemId = 7078, name = "Essence of Fire", count = 4 },
            { itemId = 12803, name = "Living Essence", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fel Iron Blood Ring (310)
    {
        id = 31048,
        name = "Fel Iron Blood Ring",
        itemId = 24074,
        skillRequired = 310,
        skillRange = { orange = 310, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 1 },
            { itemId = 23077, name = "Blood Garnet", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Golden Draenite Ring (310)
    {
        id = 31049,
        name = "Golden Draenite Ring",
        itemId = 24075,
        skillRequired = 310,
        skillRange = { orange = 310, yellow = 320, green = 335, gray = 350 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 1 },
            { itemId = 23112, name = "Golden Draenite", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Arcanite Sword Pendant (315)
    {
        id = 26918,
        name = "Arcanite Sword Pendant",
        itemId = 21793,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 325, green = 335, gray = 345 },
        reagents = {
            { itemId = 12360, name = "Arcanite Bar", count = 4 },
            { itemId = 7076, name = "Essence of Earth", count = 4 },
            { itemId = 7082, name = "Essence of Air", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 21958,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Runed Blood Garnet (315)
    {
        id = 28906,
        name = "Runed Blood Garnet",
        itemId = 23096,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 23077, name = "Blood Garnet", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Friendly",
            itemId = 23133,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glinting Flame Spessarite (315)
    {
        id = 28914,
        name = "Glinting Flame Spessarite",
        itemId = 23100,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 21929, name = "Flame Spessarite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enduring Deep Peridot (315)
    {
        id = 28918,
        name = "Enduring Deep Peridot",
        itemId = 23105,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 23079, name = "Deep Peridot", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 947,
            factionName = "Thrallmar",
            level = "Friendly",
            itemId = 31359,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shifting Shadow Draenite (315)
    {
        id = 28933,
        name = "Shifting Shadow Draenite",
        itemId = 23110,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 23107, name = "Shadow Draenite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Friendly",
            itemId = 23146,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Thick Golden Draenite (315)
    {
        id = 28947,
        name = "Thick Golden Draenite",
        itemId = 23115,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 23112, name = "Golden Draenite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Honored",
            itemId = 23150,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stormy Azure Moonstone (315)
    {
        id = 28955,
        name = "Stormy Azure Moonstone",
        itemId = 23120,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 23117, name = "Azure Moonstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 23154,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Azure Moonstone Ring (320)
    {
        id = 31050,
        name = "Azure Moonstone Ring",
        itemId = 24076,
        skillRequired = 320,
        skillRange = { orange = 320, yellow = 330, green = 340, gray = 350 },
        reagents = {
            { itemId = 23445, name = "Fel Iron Bar", count = 1 },
            { itemId = 23117, name = "Azure Moonstone", count = 2 },
            { itemId = 23079, name = "Deep Peridot", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 25000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Blood Crown (325)
    {
        id = 26920,
        name = "Blood Crown",
        itemId = 21780,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 335, green = 345, gray = 355 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 8 },
            { itemId = 11382, name = "Blood of the Mountain", count = 2 },
            { itemId = 7910, name = "Star Ruby", count = 4 },
            { itemId = 12938, name = "Blood of Heroes", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 21959,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Delicate Blood Garnet (325)
    {
        id = 28907,
        name = "Delicate Blood Garnet",
        itemId = 23097,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 340, gray = 355 },
        reagents = {
            { itemId = 23077, name = "Blood Garnet", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Honored",
            itemId = 23134,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Potent Flame Spessarite (325)
    {
        id = 28915,
        name = "Potent Flame Spessarite",
        itemId = 23101,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 340, gray = 355 },
        reagents = {
            { itemId = 21929, name = "Flame Spessarite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1011,
            factionName = "Lower City",
            level = "Friendly",
            itemId = 23138,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Dazzling Deep Peridot (325)
    {
        id = 28924,
        name = "Dazzling Deep Peridot",
        itemId = 23106,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 340, gray = 355 },
        reagents = {
            { itemId = 23079, name = "Deep Peridot", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Honored",
            itemId = 23143,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sovereign Shadow Draenite (325)
    {
        id = 28936,
        name = "Sovereign Shadow Draenite",
        itemId = 23111,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 340, gray = 355 },
        reagents = {
            { itemId = 23107, name = "Shadow Draenite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Rigid Golden Draenite (325)
    {
        id = 28948,
        name = "Rigid Golden Draenite",
        itemId = 23116,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 340, gray = 355 },
        reagents = {
            { itemId = 23112, name = "Golden Draenite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Lustrous Azure Moonstone (325)
    {
        id = 28957,
        name = "Lustrous Azure Moonstone",
        itemId = 23121,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 340, gray = 355 },
        reagents = {
            { itemId = 23117, name = "Azure Moonstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Honored",
            itemId = 23155,
            cost = 60000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Smooth Golden Draenite (325)
    {
        id = 34069,
        name = "Smooth Golden Draenite",
        itemId = 28290,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 340, gray = 355 },
        reagents = {
            { itemId = 23112, name = "Golden Draenite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Mercurial Adamantite (325)
    {
        id = 38068,
        name = "Mercurial Adamantite",
        itemId = 31079,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 335, gray = 345 },
        reagents = {
            { itemId = 24243, name = "Adamantite Powder", count = 4 },
            { itemId = 22452, name = "Primal Earth", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Great Golden Draenite (325)
    {
        id = 39451,
        name = "Great Golden Draenite",
        itemId = 31860,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 340, gray = 355 },
        reagents = {
            { itemId = 23112, name = "Golden Draenite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 31870,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Balanced Shadow Draenite (325)
    {
        id = 39455,
        name = "Balanced Shadow Draenite",
        itemId = 31862,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 340, gray = 355 },
        reagents = {
            { itemId = 23107, name = "Shadow Draenite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 31871,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Infused Shadow Draenite (325)
    {
        id = 39458,
        name = "Infused Shadow Draenite",
        itemId = 31864,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 340, gray = 355 },
        reagents = {
            { itemId = 23107, name = "Shadow Draenite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 31872,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Veiled Flame Spessarite (325)
    {
        id = 39466,
        name = "Veiled Flame Spessarite",
        itemId = 31866,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 340, gray = 355 },
        reagents = {
            { itemId = 21929, name = "Flame Spessarite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 31873,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Wicked Flame Spessarite (325)
    {
        id = 39467,
        name = "Wicked Flame Spessarite",
        itemId = 31869,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 340, gray = 355 },
        reagents = {
            { itemId = 21929, name = "Flame Spessarite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 31874,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Brilliant Pearl Band (325)
    {
        id = 41414,
        name = "Brilliant Pearl Band",
        itemId = 32772,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 335, green = 345, gray = 355 },
        reagents = {
            { itemId = 24478, name = "Jaggal Pearl", count = 8 },
            { itemId = 23447, name = "Eternium Bar", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Purified Jaggal Pearl (325)
    {
        id = 41420,
        name = "Purified Jaggal Pearl",
        itemId = 32833,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 325, green = 332, gray = 340 },
        reagents = {
            { itemId = 24478, name = "Jaggal Pearl", count = 1 },
            { itemId = 27860, name = "Purified Draenic Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 8500,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- The Black Pearl (330)
    {
        id = 41415,
        name = "The Black Pearl",
        itemId = 32774,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 340, green = 350, gray = 360 },
        reagents = {
            { itemId = 24479, name = "Shadow Pearl", count = 1 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Thick Adamantite Necklace (335)
    {
        id = 31051,
        name = "Thick Adamantite Necklace",
        itemId = 24077,
        skillRequired = 335,
        skillRange = { orange = 335, yellow = 345, green = 355, gray = 365 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Heavy Adamantite Ring (335)
    {
        id = 31052,
        name = "Heavy Adamantite Ring",
        itemId = 24078,
        skillRequired = 335,
        skillRange = { orange = 335, yellow = 345, green = 355, gray = 365 },
        reagents = {
            { itemId = 23446, name = "Adamantite Bar", count = 1 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Necklace of the Deep (340)
    {
        id = 40514,
        name = "Necklace of the Deep",
        itemId = 32508,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 340, green = 355, gray = 370 },
        reagents = {
            { itemId = 22578, name = "Mote of Water", count = 3 },
            { itemId = 24478, name = "Jaggal Pearl", count = 10 },
            { itemId = 24479, name = "Shadow Pearl", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 8500,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Heavy Felsteel Ring (345)
    {
        id = 31058,
        name = "Heavy Felsteel Ring",
        itemId = 24087,
        skillRequired = 345,
        skillRange = { orange = 345, yellow = 355, green = 365, gray = 375 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24163,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Khorium Band of Shadows (350)
    {
        id = 31053,
        name = "Khorium Band of Shadows",
        itemId = 24079,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 3 },
            { itemId = 22456, name = "Primal Shadow", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24158,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bold Living Ruby (350)
    {
        id = 31084,
        name = "Bold Living Ruby",
        itemId = 24027,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23436, name = "Living Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24193,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Delicate Living Ruby (350)
    {
        id = 31085,
        name = "Delicate Living Ruby",
        itemId = 24028,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23436, name = "Living Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24194,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Teardrop Living Ruby (350)
    {
        id = 31087,
        name = "Teardrop Living Ruby",
        itemId = 24029,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23436, name = "Living Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24195,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Runed Living Ruby (350)
    {
        id = 31088,
        name = "Runed Living Ruby",
        itemId = 24030,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23436, name = "Living Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35305,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bright Living Ruby (350)
    {
        id = 31089,
        name = "Bright Living Ruby",
        itemId = 24031,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23436, name = "Living Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35306,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Subtle Living Ruby (350)
    {
        id = 31090,
        name = "Subtle Living Ruby",
        itemId = 24032,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23436, name = "Living Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24197,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Flashing Living Ruby (350)
    {
        id = 31091,
        name = "Flashing Living Ruby",
        itemId = 24036,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23436, name = "Living Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24198,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Solid Star of Elune (350)
    {
        id = 31092,
        name = "Solid Star of Elune",
        itemId = 24033,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23438, name = "Star of Elune", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35304,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Lustrous Star of Elune (350)
    {
        id = 31094,
        name = "Lustrous Star of Elune",
        itemId = 24037,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23438, name = "Star of Elune", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24201,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stormy Star of Elune (350)
    {
        id = 31095,
        name = "Stormy Star of Elune",
        itemId = 24039,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23438, name = "Star of Elune", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24202,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Brilliant Dawnstone (350)
    {
        id = 31096,
        name = "Brilliant Dawnstone",
        itemId = 24047,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23440, name = "Dawnstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24203,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Smooth Dawnstone (350)
    {
        id = 31097,
        name = "Smooth Dawnstone",
        itemId = 24048,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23440, name = "Dawnstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24204,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Rigid Dawnstone (350)
    {
        id = 31098,
        name = "Rigid Dawnstone",
        itemId = 24051,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23440, name = "Dawnstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35307,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Gleaming Dawnstone (350)
    {
        id = 31099,
        name = "Gleaming Dawnstone",
        itemId = 24050,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23440, name = "Dawnstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24206,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Thick Dawnstone (350)
    {
        id = 31100,
        name = "Thick Dawnstone",
        itemId = 24052,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23440, name = "Dawnstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24207,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Mystic Dawnstone (350)
    {
        id = 31101,
        name = "Mystic Dawnstone",
        itemId = 24053,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23440, name = "Dawnstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 24208,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sovereign Nightseye (350)
    {
        id = 31102,
        name = "Sovereign Nightseye",
        itemId = 24054,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23441, name = "Nightseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24209,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shifting Nightseye (350)
    {
        id = 31103,
        name = "Shifting Nightseye",
        itemId = 24055,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23441, name = "Nightseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24210,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glowing Nightseye (350)
    {
        id = 31104,
        name = "Glowing Nightseye",
        itemId = 24056,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23441, name = "Nightseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24211,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Royal Nightseye (350)
    {
        id = 31105,
        name = "Royal Nightseye",
        itemId = 24057,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23441, name = "Nightseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24212,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Inscribed Noble Topaz (350)
    {
        id = 31106,
        name = "Inscribed Noble Topaz",
        itemId = 24058,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23439, name = "Noble Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24213,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Potent Noble Topaz (350)
    {
        id = 31107,
        name = "Potent Noble Topaz",
        itemId = 24059,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23439, name = "Noble Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24214,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Luminous Noble Topaz (350)
    {
        id = 31108,
        name = "Luminous Noble Topaz",
        itemId = 24060,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23439, name = "Noble Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24215,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glinting Noble Topaz (350)
    {
        id = 31109,
        name = "Glinting Noble Topaz",
        itemId = 24061,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23439, name = "Noble Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24216,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enduring Talasite (350)
    {
        id = 31110,
        name = "Enduring Talasite",
        itemId = 24062,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23437, name = "Talasite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24217,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Radiant Talasite (350)
    {
        id = 31111,
        name = "Radiant Talasite",
        itemId = 24066,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23437, name = "Talasite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24218,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Dazzling Talasite (350)
    {
        id = 31112,
        name = "Dazzling Talasite",
        itemId = 24065,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23437, name = "Talasite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24219,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Jagged Talasite (350)
    {
        id = 31113,
        name = "Jagged Talasite",
        itemId = 24067,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23437, name = "Talasite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24220,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sparkling Star of Elune (350)
    {
        id = 31149,
        name = "Sparkling Star of Elune",
        itemId = 24035,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23438, name = "Star of Elune", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24200,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Great Dawnstone (350)
    {
        id = 39452,
        name = "Great Dawnstone",
        itemId = 31861,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23440, name = "Dawnstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 31875,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Infused Nightseye (350)
    {
        id = 39462,
        name = "Infused Nightseye",
        itemId = 31865,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23441, name = "Nightseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 31877,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Balanced Nightseye (350)
    {
        id = 39463,
        name = "Balanced Nightseye",
        itemId = 31863,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23441, name = "Nightseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 31876,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Veiled Noble Topaz (350)
    {
        id = 39470,
        name = "Veiled Noble Topaz",
        itemId = 31867,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23439, name = "Noble Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 31878,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Wicked Noble Topaz (350)
    {
        id = 39471,
        name = "Wicked Noble Topaz",
        itemId = 31868,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23439, name = "Noble Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 31879,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Purified Shadow Pearl (350)
    {
        id = 41429,
        name = "Purified Shadow Pearl",
        itemId = 32836,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 24479, name = "Shadow Pearl", count = 1 },
            { itemId = 27860, name = "Purified Draenic Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Steady Talasite (350)
    {
        id = 43493,
        name = "Steady Talasite",
        itemId = 33782,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23437, name = "Talasite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 33783,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Quick Dawnstone (350)
    {
        id = 46403,
        name = "Quick Dawnstone",
        itemId = 35315,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23440, name = "Dawnstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35322,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Reckless Noble Topaz (350)
    {
        id = 46404,
        name = "Reckless Noble Topaz",
        itemId = 35316,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23439, name = "Noble Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35323,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Forceful Talasite (350)
    {
        id = 46405,
        name = "Forceful Talasite",
        itemId = 35318,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23437, name = "Talasite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35325,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Regal Nightseye (350)
    {
        id = 46803,
        name = "Regal Nightseye",
        itemId = 35707,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23441, name = "Nightseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35708,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Brilliant Glass (350)
    {
        id = 47280,
        name = "Brilliant Glass",
        itemId = 191061,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 23117, name = "Azure Moonstone", count = 3 },
            { itemId = 23077, name = "Blood Garnet", count = 3 },
            { itemId = 23079, name = "Deep Peridot", count = 3 },
            { itemId = 21929, name = "Flame Spessarite", count = 3 },
            { itemId = 23112, name = "Golden Draenite", count = 3 },
            { itemId = 23107, name = "Shadow Draenite", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bold Bloodstone (350)
    {
        id = 53831,
        name = "Bold Bloodstone",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36917, name = "Bloodstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Delicate Bloodstone (350)
    {
        id = 53832,
        name = "Delicate Bloodstone",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36917, name = "Bloodstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Runed Bloodstone (350)
    {
        id = 53834,
        name = "Runed Bloodstone",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36917, name = "Bloodstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bright Bloodstone (350)
    {
        id = 53835,
        name = "Bright Bloodstone",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36917, name = "Bloodstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Flashing Bloodstone (350)
    {
        id = 53844,
        name = "Flashing Bloodstone",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36917, name = "Bloodstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fractured Bloodstone (350)
    {
        id = 53845,
        name = "Fractured Bloodstone",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36917, name = "Bloodstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Brilliant Sun Crystal (350)
    {
        id = 53852,
        name = "Brilliant Sun Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36920, name = "Sun Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Smooth Sun Crystal (350)
    {
        id = 53853,
        name = "Smooth Sun Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36920, name = "Sun Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Rigid Sun Crystal (350)
    {
        id = 53854,
        name = "Rigid Sun Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36920, name = "Sun Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Thick Sun Crystal (350)
    {
        id = 53855,
        name = "Thick Sun Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36920, name = "Sun Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Quick Sun Crystal (350)
    {
        id = 53856,
        name = "Quick Sun Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36920, name = "Sun Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Mystic Sun Crystal (350)
    {
        id = 53857,
        name = "Mystic Sun Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36920, name = "Sun Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41559,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sovereign Shadow Crystal (350)
    {
        id = 53859,
        name = "Sovereign Shadow Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shifting Shadow Crystal (350)
    {
        id = 53860,
        name = "Shifting Shadow Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Tenuous Shadow Crystal (350)
    {
        id = 53861,
        name = "Tenuous Shadow Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glowing Shadow Crystal (350)
    {
        id = 53862,
        name = "Glowing Shadow Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Purified Shadow Crystal (350)
    {
        id = 53863,
        name = "Purified Shadow Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Royal Shadow Crystal (350)
    {
        id = 53864,
        name = "Royal Shadow Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Mysterious Shadow Crystal (350)
    {
        id = 53865,
        name = "Mysterious Shadow Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41575,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Balanced Shadow Crystal (350)
    {
        id = 53866,
        name = "Balanced Shadow Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Infused Shadow Crystal (350)
    {
        id = 53867,
        name = "Infused Shadow Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Defender's Shadow Crystal (350)
    {
        id = 53869,
        name = "Defender's Shadow Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1073,
            factionName = "The Kalu'ak",
            level = "Honored",
            itemId = 41574,
            cost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Puissant Shadow Crystal (350)
    {
        id = 53870,
        name = "Puissant Shadow Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Guardian's Shadow Crystal (350)
    {
        id = 53871,
        name = "Guardian's Shadow Crystal",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Inscribed Huge Citrine (350)
    {
        id = 53872,
        name = "Inscribed Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Etched Huge Citrine (350)
    {
        id = 53873,
        name = "Etched Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Champion's Huge Citrine (350)
    {
        id = 53874,
        name = "Champion's Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Resplendent Huge Citrine (350)
    {
        id = 53875,
        name = "Resplendent Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41566,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fierce Huge Citrine (350)
    {
        id = 53876,
        name = "Fierce Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Deadly Huge Citrine (350)
    {
        id = 53877,
        name = "Deadly Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1098,
            factionName = "Knights of the Ebon Blade",
            level = "Friendly",
            itemId = 41562,
            cost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glinting Huge Citrine (350)
    {
        id = 53878,
        name = "Glinting Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Lucent Huge Citrine (350)
    {
        id = 53879,
        name = "Lucent Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41565,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Deft Huge Citrine (350)
    {
        id = 53880,
        name = "Deft Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Luminous Huge Citrine (350)
    {
        id = 53881,
        name = "Luminous Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Potent Huge Citrine (350)
    {
        id = 53882,
        name = "Potent Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Veiled Huge Citrine (350)
    {
        id = 53883,
        name = "Veiled Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Durable Huge Citrine (350)
    {
        id = 53884,
        name = "Durable Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41563,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Reckless Huge Citrine (350)
    {
        id = 53885,
        name = "Reckless Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1104,
            factionName = "Frenzyheart Tribe",
            level = "Friendly",
            itemId = 41561,
            cost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Wicked Huge Citrine (350)
    {
        id = 53886,
        name = "Wicked Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Pristine Huge Citrine (350)
    {
        id = 53887,
        name = "Pristine Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Empowered Huge Citrine (350)
    {
        id = 53888,
        name = "Empowered Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41564,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stark Huge Citrine (350)
    {
        id = 53889,
        name = "Stark Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stalwart Huge Citrine (350)
    {
        id = 53890,
        name = "Stalwart Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Accurate Huge Citrine (350)
    {
        id = 53892,
        name = "Accurate Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Resolute Huge Citrine (350)
    {
        id = 53893,
        name = "Resolute Huge Citrine",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Timeless Dark Jade (350)
    {
        id = 53894,
        name = "Timeless Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Jagged Dark Jade (350)
    {
        id = 53916,
        name = "Jagged Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Vivid Dark Jade (350)
    {
        id = 53917,
        name = "Vivid Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1105,
            factionName = "The Oracles",
            level = "Friendly",
            itemId = 41567,
            cost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enduring Dark Jade (350)
    {
        id = 53918,
        name = "Enduring Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Steady Dark Jade (350)
    {
        id = 53919,
        name = "Steady Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41572,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Forceful Dark Jade (350)
    {
        id = 53920,
        name = "Forceful Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Seer's Dark Jade (350)
    {
        id = 53921,
        name = "Seer's Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1073,
            factionName = "The Kalu'ak",
            level = "Friendly",
            itemId = 41568,
            cost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Misty Dark Jade (350)
    {
        id = 53922,
        name = "Misty Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shining Dark Jade (350)
    {
        id = 53923,
        name = "Shining Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Turbid Dark Jade (350)
    {
        id = 53924,
        name = "Turbid Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41571,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Intricate Dark Jade (350)
    {
        id = 53925,
        name = "Intricate Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Dazzling Dark Jade (350)
    {
        id = 53926,
        name = "Dazzling Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sundered Dark Jade (350)
    {
        id = 53927,
        name = "Sundered Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Lambent Dark Jade (350)
    {
        id = 53928,
        name = "Lambent Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Opaque Dark Jade (350)
    {
        id = 53929,
        name = "Opaque Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41573,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Energized Dark Jade (350)
    {
        id = 53930,
        name = "Energized Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Radiant Dark Jade (350)
    {
        id = 53931,
        name = "Radiant Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Tense Dark Jade (350)
    {
        id = 53932,
        name = "Tense Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41570,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shattered Dark Jade (350)
    {
        id = 53933,
        name = "Shattered Dark Jade",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41569,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Solid Chalcedony (350)
    {
        id = 53934,
        name = "Solid Chalcedony",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36923, name = "Chalcedony", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sparkling Chalcedony (350)
    {
        id = 53940,
        name = "Sparkling Chalcedony",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36923, name = "Chalcedony", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Lustrous Chalcedony (350)
    {
        id = 53941,
        name = "Lustrous Chalcedony",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36923, name = "Chalcedony", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stormy Chalcedony (350)
    {
        id = 53943,
        name = "Stormy Chalcedony",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36923, name = "Chalcedony", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41560,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Precise Bloodstone (350)
    {
        id = 54017,
        name = "Precise Bloodstone",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36917, name = "Bloodstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bloodstone Band (350)
    {
        id = 56193,
        name = "Bloodstone Band",
        itemId = 42336,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 380, green = 400, gray = 420 },
        reagents = {
            { itemId = 37701, name = "Crystallized Earth", count = 2 },
            { itemId = 36917, name = "Bloodstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sun Rock Ring (350)
    {
        id = 56194,
        name = "Sun Rock Ring",
        itemId = 42337,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 380, green = 400, gray = 420 },
        reagents = {
            { itemId = 37701, name = "Crystallized Earth", count = 2 },
            { itemId = 36920, name = "Sun Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Dark Jade Focusing Lens (350)
    {
        id = 56205,
        name = "Dark Jade Focusing Lens",
        itemId = 41367,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 360, green = 370, gray = 380 },
        reagents = {
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Crystal Citrine Necklace (350)
    {
        id = 58141,
        name = "Crystal Citrine Necklace",
        itemId = 43244,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 380, green = 400, gray = 420 },
        reagents = {
            { itemId = 37701, name = "Crystallized Earth", count = 2 },
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Crystal Chalcedony Amulet (350)
    {
        id = 58142,
        name = "Crystal Chalcedony Amulet",
        itemId = 43245,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 380, green = 400, gray = 420 },
        reagents = {
            { itemId = 37701, name = "Crystallized Earth", count = 2 },
            { itemId = 36923, name = "Chalcedony", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Khorium Band of Frost (355)
    {
        id = 31054,
        name = "Khorium Band of Frost",
        itemId = 24080,
        skillRequired = 355,
        skillRange = { orange = 355, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 4 },
            { itemId = 21885, name = "Primal Water", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24159,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Khorium Inferno Band (355)
    {
        id = 31055,
        name = "Khorium Inferno Band",
        itemId = 24082,
        skillRequired = 355,
        skillRange = { orange = 355, yellow = 365, green = 372, gray = 380 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 4 },
            { itemId = 21884, name = "Primal Fire", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24160,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Delicate Eternium Ring (355)
    {
        id = 31060,
        name = "Delicate Eternium Ring",
        itemId = 24088,
        skillRequired = 355,
        skillRange = { orange = 355, yellow = 365, green = 375, gray = 385 },
        reagents = {
            { itemId = 23447, name = "Eternium Bar", count = 1 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24164,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Thick Felsteel Necklace (355)
    {
        id = 31067,
        name = "Thick Felsteel Necklace",
        itemId = 24106,
        skillRequired = 355,
        skillRange = { orange = 355, yellow = 365, green = 375, gray = 385 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24166,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Living Ruby Pendant (355)
    {
        id = 31068,
        name = "Living Ruby Pendant",
        itemId = 24110,
        skillRequired = 355,
        skillRange = { orange = 355, yellow = 365, green = 375, gray = 385 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 4 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 1 },
            { itemId = 23436, name = "Living Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24167,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Khorium Band of Leaves (360)
    {
        id = 31056,
        name = "Khorium Band of Leaves",
        itemId = 24085,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 375, gray = 380 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 4 },
            { itemId = 21886, name = "Primal Life", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24161,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Pendant of Frozen Flame (360)
    {
        id = 31062,
        name = "Pendant of Frozen Flame",
        itemId = 24092,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 375, gray = 380 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 2 },
            { itemId = 21885, name = "Primal Water", count = 6 },
            { itemId = 21884, name = "Primal Fire", count = 4 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 989,
            factionName = "Keepers of Time",
            level = "Revered",
            itemId = 24174,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Pendant of Thawing (360)
    {
        id = 31063,
        name = "Pendant of Thawing",
        itemId = 24093,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 375, gray = 380 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 2 },
            { itemId = 21884, name = "Primal Fire", count = 6 },
            { itemId = 21885, name = "Primal Water", count = 4 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1011,
            factionName = "Lower City",
            level = "Revered",
            itemId = 24175,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Pendant of Withering (360)
    {
        id = 31064,
        name = "Pendant of Withering",
        itemId = 24095,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 375, gray = 380 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 2 },
            { itemId = 22456, name = "Primal Shadow", count = 6 },
            { itemId = 21886, name = "Primal Life", count = 4 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 934,
            factionName = "The Scryers",
            level = "Revered",
            itemId = 24176,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Pendant of Shadow's End (360)
    {
        id = 31065,
        name = "Pendant of Shadow's End",
        itemId = 24097,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 375, gray = 380 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 2 },
            { itemId = 21886, name = "Primal Life", count = 6 },
            { itemId = 22456, name = "Primal Shadow", count = 4 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 932,
            factionName = "The Aldor",
            level = "Revered",
            itemId = 24177,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Pendant of the Null Rune (360)
    {
        id = 31066,
        name = "Pendant of the Null Rune",
        itemId = 24098,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 375, gray = 380 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 2 },
            { itemId = 22457, name = "Primal Mana", count = 8 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Revered",
            itemId = 24178,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Braided Eternium Chain (360)
    {
        id = 31070,
        name = "Braided Eternium Chain",
        itemId = 24114,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 377, gray = 385 },
        reagents = {
            { itemId = 23447, name = "Eternium Bar", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24168,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Eye of the Night (360)
    {
        id = 31071,
        name = "Eye of the Night",
        itemId = 24116,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 375, gray = 380 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 2 },
            { itemId = 23441, name = "Nightseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24169,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Ring of Arcane Shielding (360)
    {
        id = 37855,
        name = "Ring of Arcane Shielding",
        itemId = 30825,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 375, gray = 380 },
        reagents = {
            { itemId = 23447, name = "Eternium Bar", count = 2 },
            { itemId = 22457, name = "Primal Mana", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 935,
            factionName = "The Sha'tar",
            level = "Honored",
            itemId = 30826,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Don Julio's Heart (360)
    {
        id = 42558,
        name = "Don Julio's Heart",
        itemId = 33133,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 365, green = 370, gray = 375 },
        reagents = {
            { itemId = 23436, name = "Living Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Revered",
            itemId = 33305,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Kailee's Rose (360)
    {
        id = 42588,
        name = "Kailee's Rose",
        itemId = 33134,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 365, green = 370, gray = 375 },
        reagents = {
            { itemId = 23436, name = "Living Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 935,
            factionName = "The Sha'tar",
            level = "Honored",
            itemId = 33155,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Crimson Sun (360)
    {
        id = 42589,
        name = "Crimson Sun",
        itemId = 33131,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 365, green = 370, gray = 375 },
        reagents = {
            { itemId = 23436, name = "Living Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Revered",
            itemId = 33156,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Falling Star (360)
    {
        id = 42590,
        name = "Falling Star",
        itemId = 33135,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 365, green = 370, gray = 375 },
        reagents = {
            { itemId = 23438, name = "Star of Elune", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1011,
            factionName = "Lower City",
            level = "Revered",
            itemId = 33157,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stone of Blades (360)
    {
        id = 42591,
        name = "Stone of Blades",
        itemId = 33143,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 365, green = 370, gray = 375 },
        reagents = {
            { itemId = 23440, name = "Dawnstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 989,
            factionName = "Keepers of Time",
            level = "Revered",
            itemId = 33158,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Blood of Amber (360)
    {
        id = 42592,
        name = "Blood of Amber",
        itemId = 33140,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 365, green = 370, gray = 375 },
        reagents = {
            { itemId = 23440, name = "Dawnstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 935,
            factionName = "The Sha'tar",
            level = "Revered",
            itemId = 33159,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Facet of Eternity (360)
    {
        id = 42593,
        name = "Facet of Eternity",
        itemId = 33144,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 365, green = 370, gray = 375 },
        reagents = {
            { itemId = 23440, name = "Dawnstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 989,
            factionName = "Keepers of Time",
            level = "Honored",
            itemId = 33160,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Subtle Bloodstone (360)
    {
        id = 53843,
        name = "Subtle Bloodstone",
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36917, name = "Bloodstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Regal Shadow Crystal (360)
    {
        id = 53868,
        name = "Regal Shadow Crystal",
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glimmering Huge Citrine (360)
    {
        id = 53891,
        name = "Glimmering Huge Citrine",
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 375, green = 395, gray = 415 },
        reagents = {
            { itemId = 36929, name = "Huge Citrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shadow Crystal Focusing Lens (360)
    {
        id = 56206,
        name = "Shadow Crystal Focusing Lens",
        itemId = 42420,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 370, green = 380, gray = 390 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enchanted Pearl (360)
    {
        id = 56530,
        name = "Enchanted Pearl",
        itemId = 42701,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 380, green = 400, gray = 420 },
        reagents = {
            { itemId = 36783, name = "Northsea Pearl", count = 1 },
            { itemId = 34054, name = "Infinite Dust", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Arcane Khorium Band (365)
    {
        id = 31057,
        name = "Arcane Khorium Band",
        itemId = 24086,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 370, green = 375, gray = 380 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 4 },
            { itemId = 22457, name = "Primal Mana", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24162,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Blazing Eternium Band (365)
    {
        id = 31061,
        name = "Blazing Eternium Band",
        itemId = 24089,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 23447, name = "Eternium Bar", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 4 },
            { itemId = 21884, name = "Primal Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24165,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Embrace of the Dawn (365)
    {
        id = 31072,
        name = "Embrace of the Dawn",
        itemId = 24117,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23447, name = "Eternium Bar", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 4 },
            { itemId = 23112, name = "Golden Draenite", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24170,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Chain of the Twilight Owl (365)
    {
        id = 31076,
        name = "Chain of the Twilight Owl",
        itemId = 24121,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 4 },
            { itemId = 23117, name = "Azure Moonstone", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24171,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Powerful Earthstorm Diamond (365)
    {
        id = 32866,
        name = "Powerful Earthstorm Diamond",
        itemId = 25896,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 25867, name = "Earthstorm Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Honored",
            itemId = 25902,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bracing Earthstorm Diamond (365)
    {
        id = 32867,
        name = "Bracing Earthstorm Diamond",
        itemId = 25897,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 25867, name = "Earthstorm Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Revered",
            itemId = 25903,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Tenacious Earthstorm Diamond (365)
    {
        id = 32868,
        name = "Tenacious Earthstorm Diamond",
        itemId = 25898,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 25867, name = "Earthstorm Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 25905,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Brutal Earthstorm Diamond (365)
    {
        id = 32869,
        name = "Brutal Earthstorm Diamond",
        itemId = 25899,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 25867, name = "Earthstorm Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 25906,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Insightful Earthstorm Diamond (365)
    {
        id = 32870,
        name = "Insightful Earthstorm Diamond",
        itemId = 25901,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 25867, name = "Earthstorm Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 935,
            factionName = "The Sha'tar",
            level = "Friendly",
            itemId = 25904,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Destructive Skyfire Diamond (365)
    {
        id = 32871,
        name = "Destructive Skyfire Diamond",
        itemId = 25890,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 25868, name = "Skyfire Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 25907,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Mystical Skyfire Diamond (365)
    {
        id = 32872,
        name = "Mystical Skyfire Diamond",
        itemId = 25893,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 25868, name = "Skyfire Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 25909,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Swift Skyfire Diamond (365)
    {
        id = 32873,
        name = "Swift Skyfire Diamond",
        itemId = 25894,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 25868, name = "Skyfire Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Honored",
            itemId = 25908,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enigmatic Skyfire Diamond (365)
    {
        id = 32874,
        name = "Enigmatic Skyfire Diamond",
        itemId = 25895,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 25868, name = "Skyfire Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 989,
            factionName = "Keepers of Time",
            level = "Honored",
            itemId = 25910,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Relentless Earthstorm Diamond (365)
    {
        id = 39961,
        name = "Relentless Earthstorm Diamond",
        itemId = 32409,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 25867, name = "Earthstorm Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 933,
            factionName = "The Consortium",
            level = "Exalted",
            itemId = 33622,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Thundering Skyfire Diamond (365)
    {
        id = 39963,
        name = "Thundering Skyfire Diamond",
        itemId = 32410,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 25868, name = "Skyfire Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 32411,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Crown of the Sea Witch (365)
    {
        id = 41418,
        name = "Crown of the Sea Witch",
        itemId = 32776,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 12 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 4 },
            { itemId = 24478, name = "Jaggal Pearl", count = 20 },
            { itemId = 24479, name = "Shadow Pearl", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Chaotic Skyfire Diamond (365)
    {
        id = 44794,
        name = "Chaotic Skyfire Diamond",
        itemId = 34220,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 25868, name = "Skyfire Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 34689,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Loop of Forged Power (365)
    {
        id = 46122,
        name = "Loop of Forged Power",
        itemId = 34362,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 35128, name = "Hardened Khorium", count = 4 },
            { itemId = 23571, name = "Primal Might", count = 4 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 12 },
            { itemId = 34664, name = "Sunmote", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35536,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Ring of Flowing Life (365)
    {
        id = 46123,
        name = "Ring of Flowing Life",
        itemId = 34363,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 35128, name = "Hardened Khorium", count = 4 },
            { itemId = 21886, name = "Primal Life", count = 20 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 12 },
            { itemId = 34664, name = "Sunmote", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35538,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Hard Khorium Band (365)
    {
        id = 46124,
        name = "Hard Khorium Band",
        itemId = 34361,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 35128, name = "Hardened Khorium", count = 4 },
            { itemId = 22451, name = "Primal Air", count = 20 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 12 },
            { itemId = 34664, name = "Sunmote", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35534,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Pendant of Sunfire (365)
    {
        id = 46125,
        name = "Pendant of Sunfire",
        itemId = 34359,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 31079, name = "Mercurial Adamantite", count = 12 },
            { itemId = 32227, name = "Crimson Spinel", count = 3 },
            { itemId = 32228, name = "Empyrean Sapphire", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35537,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Amulet of Flowing Life (365)
    {
        id = 46126,
        name = "Amulet of Flowing Life",
        itemId = 34360,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 31079, name = "Mercurial Adamantite", count = 6 },
            { itemId = 32249, name = "Seaspray Emerald", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35533,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Hard Khorium Choker (365)
    {
        id = 46127,
        name = "Hard Khorium Choker",
        itemId = 34358,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 35128, name = "Hardened Khorium", count = 6 },
            { itemId = 23572, name = "Primal Nether", count = 9 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 35535,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Coronet of Verdant Flame (370)
    {
        id = 31077,
        name = "Coronet of Verdant Flame",
        itemId = 24122,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 20 },
            { itemId = 21886, name = "Primal Life", count = 20 },
            { itemId = 23437, name = "Talasite", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24172,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Circlet of Arcane Might (370)
    {
        id = 31078,
        name = "Circlet of Arcane Might",
        itemId = 24123,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 20 },
            { itemId = 22457, name = "Primal Mana", count = 20 },
            { itemId = 23438, name = "Star of Elune", count = 2 },
            { itemId = 31079, name = "Mercurial Adamantite", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 24173,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Figurine - Felsteel Boar (370)
    {
        id = 31079,
        name = "Figurine - Felsteel Boar",
        itemId = 24124,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 8 },
            { itemId = 23077, name = "Blood Garnet", count = 2 },
            { itemId = 22452, name = "Primal Earth", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1011,
            factionName = "Lower City",
            level = "Revered",
            itemId = 24179,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Figurine - Dawnstone Crab (370)
    {
        id = 31080,
        name = "Figurine - Dawnstone Crab",
        itemId = 24125,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 4 },
            { itemId = 23440, name = "Dawnstone", count = 2 },
            { itemId = 23112, name = "Golden Draenite", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 947,
            factionName = "Thrallmar",
            level = "Revered",
            itemId = 31358,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Figurine - Living Ruby Serpent (370)
    {
        id = 31081,
        name = "Figurine - Living Ruby Serpent",
        itemId = 24126,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23448, name = "Felsteel Bar", count = 2 },
            { itemId = 23436, name = "Living Ruby", count = 2 },
            { itemId = 21884, name = "Primal Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 989,
            factionName = "Keepers of Time",
            level = "Revered",
            itemId = 24181,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Figurine - Talasite Owl (370)
    {
        id = 31082,
        name = "Figurine - Talasite Owl",
        itemId = 24127,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23447, name = "Eternium Bar", count = 2 },
            { itemId = 23437, name = "Talasite", count = 2 },
            { itemId = 22457, name = "Primal Mana", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 935,
            factionName = "The Sha'tar",
            level = "Revered",
            itemId = 24182,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Figurine - Nightseye Panther (370)
    {
        id = 31083,
        name = "Figurine - Nightseye Panther",
        itemId = 24128,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 6 },
            { itemId = 23441, name = "Nightseye", count = 2 },
            { itemId = 22456, name = "Primal Shadow", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Revered",
            itemId = 24183,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Eternal Earthstorm Diamond (370)
    {
        id = 46597,
        name = "Eternal Earthstorm Diamond",
        itemId = 35501,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 25867, name = "Earthstorm Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35502,
            cost = 150000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Ember Skyfire Diamond (370)
    {
        id = 46601,
        name = "Ember Skyfire Diamond",
        itemId = 35503,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 375, green = 377, gray = 380 },
        reagents = {
            { itemId = 25868, name = "Skyfire Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35505,
            cost = 150000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bold Dragon's Eye (370)
    {
        id = 56049,
        name = "Bold Dragon's Eye",
        itemId = 42142,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42298,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Delicate Dragon's Eye (370)
    {
        id = 56052,
        name = "Delicate Dragon's Eye",
        itemId = 42143,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42301,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Runed Dragon's Eye (370)
    {
        id = 56053,
        name = "Runed Dragon's Eye",
        itemId = 42144,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42309,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bright Dragon's Eye (370)
    {
        id = 56054,
        name = "Bright Dragon's Eye",
        itemId = 36766,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42299,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Subtle Dragon's Eye (370)
    {
        id = 56055,
        name = "Subtle Dragon's Eye",
        itemId = 42151,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42314,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Flashing Dragon's Eye (370)
    {
        id = 56056,
        name = "Flashing Dragon's Eye",
        itemId = 42152,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42302,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Brilliant Dragon's Eye (370)
    {
        id = 56074,
        name = "Brilliant Dragon's Eye",
        itemId = 42148,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42300,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Fractured Dragon's Eye (370)
    {
        id = 56076,
        name = "Fractured Dragon's Eye",
        itemId = 42153,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42303,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Lustrous Dragon's Eye (370)
    {
        id = 56077,
        name = "Lustrous Dragon's Eye",
        itemId = 42146,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42304,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Mystic Dragon's Eye (370)
    {
        id = 56079,
        name = "Mystic Dragon's Eye",
        itemId = 42158,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42305,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Precise Dragon's Eye (370)
    {
        id = 56081,
        name = "Precise Dragon's Eye",
        itemId = 42154,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42306,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Quick Dragon's Eye (370)
    {
        id = 56083,
        name = "Quick Dragon's Eye",
        itemId = 42150,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42307,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Rigid Dragon's Eye (370)
    {
        id = 56084,
        name = "Rigid Dragon's Eye",
        itemId = 42156,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42308,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Smooth Dragon's Eye (370)
    {
        id = 56085,
        name = "Smooth Dragon's Eye",
        itemId = 42149,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42310,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Solid Dragon's Eye (370)
    {
        id = 56086,
        name = "Solid Dragon's Eye",
        itemId = 36767,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42311,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sparkling Dragon's Eye (370)
    {
        id = 56087,
        name = "Sparkling Dragon's Eye",
        itemId = 42145,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42312,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stormy Dragon's Eye (370)
    {
        id = 56088,
        name = "Stormy Dragon's Eye",
        itemId = 42155,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42313,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Thick Dragon's Eye (370)
    {
        id = 56089,
        name = "Thick Dragon's Eye",
        itemId = 42157,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 415, gray = 440 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42315,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shadow Jade Focusing Lens (370)
    {
        id = 56208,
        name = "Shadow Jade Focusing Lens",
        itemId = 42421,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 380, green = 390, gray = 400 },
        reagents = {
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Earthshadow Ring (370)
    {
        id = 58143,
        name = "Earthshadow Ring",
        itemId = 43246,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 405, gray = 420 },
        reagents = {
            { itemId = 35624, name = "Eternal Earth", count = 1 },
            { itemId = 36926, name = "Shadow Crystal", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Jade Ring of Slaying (370)
    {
        id = 58144,
        name = "Jade Ring of Slaying",
        itemId = 43247,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 390, green = 405, gray = 420 },
        reagents = {
            { itemId = 35624, name = "Eternal Earth", count = 1 },
            { itemId = 36932, name = "Dark Jade", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- The Frozen Eye (375)
    {
        id = 38503,
        name = "The Frozen Eye",
        itemId = 31398,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 31079, name = "Mercurial Adamantite", count = 4 },
            { itemId = 23449, name = "Khorium Bar", count = 2 },
            { itemId = 21885, name = "Primal Water", count = 6 },
            { itemId = 21884, name = "Primal Fire", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 967,
            factionName = "The Violet Eye",
            level = "Honored",
            itemId = 31401,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- The Natural Ward (375)
    {
        id = 38504,
        name = "The Natural Ward",
        itemId = 31399,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 31079, name = "Mercurial Adamantite", count = 4 },
            { itemId = 23448, name = "Felsteel Bar", count = 2 },
            { itemId = 21886, name = "Primal Life", count = 6 },
            { itemId = 22456, name = "Primal Shadow", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 942,
            factionName = "Cenarion Expedition",
            level = "Exalted",
            itemId = 31402,
            cost = 120000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bold Crimson Spinel (375)
    {
        id = 39705,
        name = "Bold Crimson Spinel",
        itemId = 32193,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32227, name = "Crimson Spinel", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Friendly",
            itemId = 35244,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Delicate Crimson Spinel (375)
    {
        id = 39706,
        name = "Delicate Crimson Spinel",
        itemId = 32194,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32227, name = "Crimson Spinel", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Friendly",
            itemId = 35246,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Teardrop Crimson Spinel (375)
    {
        id = 39710,
        name = "Teardrop Crimson Spinel",
        itemId = 32195,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32227, name = "Crimson Spinel", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Friendly",
            itemId = 35250,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Runed Crimson Spinel (375)
    {
        id = 39711,
        name = "Runed Crimson Spinel",
        itemId = 32196,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32227, name = "Crimson Spinel", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Friendly",
            itemId = 35248,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Bright Crimson Spinel (375)
    {
        id = 39712,
        name = "Bright Crimson Spinel",
        itemId = 32197,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32227, name = "Crimson Spinel", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Friendly",
            itemId = 35245,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Subtle Crimson Spinel (375)
    {
        id = 39713,
        name = "Subtle Crimson Spinel",
        itemId = 32198,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32227, name = "Crimson Spinel", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Friendly",
            itemId = 35249,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Flashing Crimson Spinel (375)
    {
        id = 39714,
        name = "Flashing Crimson Spinel",
        itemId = 32199,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32227, name = "Crimson Spinel", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35247,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Solid Empyrean Sapphire (375)
    {
        id = 39715,
        name = "Solid Empyrean Sapphire",
        itemId = 32200,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32228, name = "Empyrean Sapphire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Friendly",
            itemId = 35263,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sparkling Empyrean Sapphire (375)
    {
        id = 39716,
        name = "Sparkling Empyrean Sapphire",
        itemId = 32201,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32228, name = "Empyrean Sapphire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Friendly",
            itemId = 35264,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Lustrous Empyrean Sapphire (375)
    {
        id = 39717,
        name = "Lustrous Empyrean Sapphire",
        itemId = 32202,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32228, name = "Empyrean Sapphire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Friendly",
            itemId = 35262,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Stormy Empyrean Sapphire (375)
    {
        id = 39718,
        name = "Stormy Empyrean Sapphire",
        itemId = 32203,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32228, name = "Empyrean Sapphire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35265,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Brilliant Lionseye (375)
    {
        id = 39719,
        name = "Brilliant Lionseye",
        itemId = 32204,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32229, name = "Lionseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Friendly",
            itemId = 35255,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Smooth Lionseye (375)
    {
        id = 39720,
        name = "Smooth Lionseye",
        itemId = 32205,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32229, name = "Lionseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Friendly",
            itemId = 35260,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Rigid Lionseye (375)
    {
        id = 39721,
        name = "Rigid Lionseye",
        itemId = 32206,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32229, name = "Lionseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35259,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Gleaming Lionseye (375)
    {
        id = 39722,
        name = "Gleaming Lionseye",
        itemId = 32207,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32229, name = "Lionseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Friendly",
            itemId = 35256,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Thick Lionseye (375)
    {
        id = 39723,
        name = "Thick Lionseye",
        itemId = 32208,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32229, name = "Lionseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Friendly",
            itemId = 35261,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Mystic Lionseye (375)
    {
        id = 39724,
        name = "Mystic Lionseye",
        itemId = 32209,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32229, name = "Lionseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35258,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Great Lionseye (375)
    {
        id = 39725,
        name = "Great Lionseye",
        itemId = 32210,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32229, name = "Lionseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35257,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Sovereign Shadowsong Amethyst (375)
    {
        id = 39727,
        name = "Sovereign Shadowsong Amethyst",
        itemId = 32211,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32230, name = "Shadowsong Amethyst", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35243,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Shifting Shadowsong Amethyst (375)
    {
        id = 39728,
        name = "Shifting Shadowsong Amethyst",
        itemId = 32212,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32230, name = "Shadowsong Amethyst", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35242,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Balanced Shadowsong Amethyst (375)
    {
        id = 39729,
        name = "Balanced Shadowsong Amethyst",
        itemId = 32213,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32230, name = "Shadowsong Amethyst", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Honored",
            itemId = 35238,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Infused Shadowsong Amethyst (375)
    {
        id = 39730,
        name = "Infused Shadowsong Amethyst",
        itemId = 32214,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32230, name = "Shadowsong Amethyst", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Honored",
            itemId = 35240,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glowing Shadowsong Amethyst (375)
    {
        id = 39731,
        name = "Glowing Shadowsong Amethyst",
        itemId = 32215,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32230, name = "Shadowsong Amethyst", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Honored",
            itemId = 35239,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Royal Shadowsong Amethyst (375)
    {
        id = 39732,
        name = "Royal Shadowsong Amethyst",
        itemId = 32216,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32230, name = "Shadowsong Amethyst", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35241,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Inscribed Pyrestone (375)
    {
        id = 39733,
        name = "Inscribed Pyrestone",
        itemId = 32217,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32231, name = "Pyrestone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35267,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Potent Pyrestone (375)
    {
        id = 39734,
        name = "Potent Pyrestone",
        itemId = 32218,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32231, name = "Pyrestone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Honored",
            itemId = 35269,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Luminous Pyrestone (375)
    {
        id = 39735,
        name = "Luminous Pyrestone",
        itemId = 32219,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32231, name = "Pyrestone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Honored",
            itemId = 35268,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glinting Pyrestone (375)
    {
        id = 39736,
        name = "Glinting Pyrestone",
        itemId = 32220,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32231, name = "Pyrestone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Honored",
            itemId = 35266,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Veiled Pyrestone (375)
    {
        id = 39737,
        name = "Veiled Pyrestone",
        itemId = 32221,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32231, name = "Pyrestone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 35270,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Wicked Pyrestone (375)
    {
        id = 39738,
        name = "Wicked Pyrestone",
        itemId = 32222,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32231, name = "Pyrestone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35271,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Enduring Seaspray Emerald (375)
    {
        id = 39739,
        name = "Enduring Seaspray Emerald",
        itemId = 32223,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32249, name = "Seaspray Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35252,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Radiant Seaspray Emerald (375)
    {
        id = 39740,
        name = "Radiant Seaspray Emerald",
        itemId = 32224,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32249, name = "Seaspray Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Honored",
            itemId = 35254,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Dazzling Seaspray Emerald (375)
    {
        id = 39741,
        name = "Dazzling Seaspray Emerald",
        itemId = 32225,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32249, name = "Seaspray Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Honored",
            itemId = 35251,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Jagged Seaspray Emerald (375)
    {
        id = 39742,
        name = "Jagged Seaspray Emerald",
        itemId = 32226,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32249, name = "Seaspray Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Honored",
            itemId = 35253,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Figurine - Empyrean Tortoise (375)
    {
        id = 46775,
        name = "Figurine - Empyrean Tortoise",
        itemId = 35693,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 8 },
            { itemId = 32228, name = "Empyrean Sapphire", count = 2 },
            { itemId = 23440, name = "Dawnstone", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35695,
            cost = 250000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Figurine - Khorium Boar (375)
    {
        id = 46776,
        name = "Figurine - Khorium Boar",
        itemId = 35694,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23449, name = "Khorium Bar", count = 8 },
            { itemId = 32231, name = "Pyrestone", count = 2 },
            { itemId = 22452, name = "Primal Earth", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35696,
            cost = 250000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Figurine - Crimson Serpent (375)
    {
        id = 46777,
        name = "Figurine - Crimson Serpent",
        itemId = 35700,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23447, name = "Eternium Bar", count = 8 },
            { itemId = 32227, name = "Crimson Spinel", count = 2 },
            { itemId = 21884, name = "Primal Fire", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35697,
            cost = 250000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Figurine - Shadowsong Panther (375)
    {
        id = 46778,
        name = "Figurine - Shadowsong Panther",
        itemId = 35702,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23573, name = "Hardened Adamantite Bar", count = 4 },
            { itemId = 32230, name = "Shadowsong Amethyst", count = 2 },
            { itemId = 22456, name = "Primal Shadow", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35698,
            cost = 250000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Figurine - Seaspray Albatross (375)
    {
        id = 46779,
        name = "Figurine - Seaspray Albatross",
        itemId = 35703,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 23447, name = "Eternium Bar", count = 8 },
            { itemId = 32249, name = "Seaspray Emerald", count = 2 },
            { itemId = 22457, name = "Primal Mana", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35699,
            cost = 250000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Forceful Seaspray Emerald (375)
    {
        id = 47053,
        name = "Forceful Seaspray Emerald",
        itemId = 35759,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32249, name = "Seaspray Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35769,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Steady Seaspray Emerald (375)
    {
        id = 47054,
        name = "Steady Seaspray Emerald",
        itemId = 35758,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32249, name = "Seaspray Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35766,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Reckless Pyrestone (375)
    {
        id = 47055,
        name = "Reckless Pyrestone",
        itemId = 35760,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32231, name = "Pyrestone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35767,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Quick Lionseye (375)
    {
        id = 47056,
        name = "Quick Lionseye",
        itemId = 35761,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32229, name = "Lionseye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Revered",
            itemId = 35768,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Purified Shadowsong Amethyst (375)
    {
        id = 48789,
        name = "Purified Shadowsong Amethyst",
        itemId = 37503,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 32230, name = "Shadowsong Amethyst", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1077,
            factionName = "Shattered Sun Offensive",
            level = "Exalted",
            itemId = 37504,
            cost = 500000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Jade Dagger Pendant (380)
    {
        id = 56195,
        name = "Jade Dagger Pendant",
        itemId = 42338,
        skillRequired = 380,
        skillRange = { orange = 380, yellow = 400, green = 410, gray = 420 },
        reagents = {
            { itemId = 35624, name = "Eternal Earth", count = 1 },
            { itemId = 36929, name = "Huge Citrine", count = 2 },
            { itemId = 36932, name = "Dark Jade", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 120000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Blood Sun Necklace (380)
    {
        id = 56196,
        name = "Blood Sun Necklace",
        itemId = 42339,
        skillRequired = 380,
        skillRange = { orange = 380, yellow = 400, green = 410, gray = 420 },
        reagents = {
            { itemId = 35624, name = "Eternal Earth", count = 1 },
            { itemId = 36917, name = "Bloodstone", count = 1 },
            { itemId = 36920, name = "Sun Crystal", count = 2 },
            { itemId = 36923, name = "Chalcedony", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 80000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Bold Scarlet Ruby (390)
    {
        id = 53830,
        name = "Bold Scarlet Ruby",
        itemId = 39996,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36918, name = "Scarlet Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41576,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Delicate Scarlet Ruby (390)
    {
        id = 53945,
        name = "Delicate Scarlet Ruby",
        itemId = 39997,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36918, name = "Scarlet Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41577,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Runed Scarlet Ruby (390)
    {
        id = 53946,
        name = "Runed Scarlet Ruby",
        itemId = 39998,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36918, name = "Scarlet Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1090,
            factionName = "Kirin Tor",
            level = "Exalted",
            itemId = 41718,
            cost = 40000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Bright Scarlet Ruby (390)
    {
        id = 53947,
        name = "Bright Scarlet Ruby",
        itemId = 39999,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36918, name = "Scarlet Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Subtle Scarlet Ruby (390)
    {
        id = 53948,
        name = "Subtle Scarlet Ruby",
        itemId = 40000,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36918, name = "Scarlet Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41719,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Flashing Scarlet Ruby (390)
    {
        id = 53949,
        name = "Flashing Scarlet Ruby",
        itemId = 40001,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36918, name = "Scarlet Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41578,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Fractured Scarlet Ruby (390)
    {
        id = 53950,
        name = "Fractured Scarlet Ruby",
        itemId = 40002,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36918, name = "Scarlet Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41817,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Precise Scarlet Ruby (390)
    {
        id = 53951,
        name = "Precise Scarlet Ruby",
        itemId = 40003,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36918, name = "Scarlet Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41790,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Solid Sky Sapphire (390)
    {
        id = 53952,
        name = "Solid Sky Sapphire",
        itemId = 40008,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36924, name = "Sky Sapphire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42138,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Sparkling Sky Sapphire (390)
    {
        id = 53953,
        name = "Sparkling Sky Sapphire",
        itemId = 40009,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36924, name = "Sky Sapphire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Lustrous Sky Sapphire (390)
    {
        id = 53954,
        name = "Lustrous Sky Sapphire",
        itemId = 40010,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36924, name = "Sky Sapphire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41581,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stormy Sky Sapphire (390)
    {
        id = 53955,
        name = "Stormy Sky Sapphire",
        itemId = 40011,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36924, name = "Sky Sapphire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41728,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Brilliant Autumn's Glow (390)
    {
        id = 53956,
        name = "Brilliant Autumn's Glow",
        itemId = 40012,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36921, name = "Autumn's Glow", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Smooth Autumn's Glow (390)
    {
        id = 53957,
        name = "Smooth Autumn's Glow",
        itemId = 40013,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36921, name = "Autumn's Glow", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1119,
            factionName = "The Sons of Hodir",
            level = "Exalted",
            itemId = 41720,
            cost = 40000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Rigid Autumn's Glow (390)
    {
        id = 53958,
        name = "Rigid Autumn's Glow",
        itemId = 40014,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36921, name = "Autumn's Glow", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41580,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Thick Autumn's Glow (390)
    {
        id = 53959,
        name = "Thick Autumn's Glow",
        itemId = 40015,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36921, name = "Autumn's Glow", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41791,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Mystic Autumn's Glow (390)
    {
        id = 53960,
        name = "Mystic Autumn's Glow",
        itemId = 40016,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36921, name = "Autumn's Glow", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41727,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Quick Autumn's Glow (390)
    {
        id = 53961,
        name = "Quick Autumn's Glow",
        itemId = 40017,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36921, name = "Autumn's Glow", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41579,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Sovereign Twilight Opal (390)
    {
        id = 53962,
        name = "Sovereign Twilight Opal",
        itemId = 40022,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36927, name = "Twilight Opal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41784,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Shifting Twilight Opal (390)
    {
        id = 53963,
        name = "Shifting Twilight Opal",
        itemId = 40023,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36927, name = "Twilight Opal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41747,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Tenuous Twilight Opal (390)
    {
        id = 53964,
        name = "Tenuous Twilight Opal",
        itemId = 40024,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36927, name = "Twilight Opal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41785,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glowing Twilight Opal (390)
    {
        id = 53965,
        name = "Glowing Twilight Opal",
        itemId = 40025,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36927, name = "Twilight Opal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1098,
            factionName = "Knights of the Ebon Blade",
            level = "Exalted",
            itemId = 41725,
            cost = 40000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Purified Twilight Opal (390)
    {
        id = 53966,
        name = "Purified Twilight Opal",
        itemId = 40026,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36927, name = "Twilight Opal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41783,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Royal Twilight Opal (390)
    {
        id = 53967,
        name = "Royal Twilight Opal",
        itemId = 40027,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36927, name = "Twilight Opal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41701,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Mysterious Twilight Opal (390)
    {
        id = 53968,
        name = "Mysterious Twilight Opal",
        itemId = 40028,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36927, name = "Twilight Opal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41740,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Balanced Twilight Opal (390)
    {
        id = 53969,
        name = "Balanced Twilight Opal",
        itemId = 40029,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36927, name = "Twilight Opal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Infused Twilight Opal (390)
    {
        id = 53970,
        name = "Infused Twilight Opal",
        itemId = 40030,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36927, name = "Twilight Opal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41796,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Regal Twilight Opal (390)
    {
        id = 53971,
        name = "Regal Twilight Opal",
        itemId = 40031,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36927, name = "Twilight Opal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41703,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Defender's Twilight Opal (390)
    {
        id = 53972,
        name = "Defender's Twilight Opal",
        itemId = 40032,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36927, name = "Twilight Opal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41820,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Puissant Twilight Opal (390)
    {
        id = 53973,
        name = "Puissant Twilight Opal",
        itemId = 40033,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36927, name = "Twilight Opal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41702,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Guardian's Twilight Opal (390)
    {
        id = 53974,
        name = "Guardian's Twilight Opal",
        itemId = 40034,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36927, name = "Twilight Opal", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1106,
            factionName = "Argent Crusade",
            level = "Revered",
            itemId = 41726,
            cost = 40000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Inscribed Monarch Topaz (390)
    {
        id = 53975,
        name = "Inscribed Monarch Topaz",
        itemId = 40037,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41789,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Etched Monarch Topaz (390)
    {
        id = 53976,
        name = "Etched Monarch Topaz",
        itemId = 40038,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41777,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Champion's Monarch Topaz (390)
    {
        id = 53977,
        name = "Champion's Monarch Topaz",
        itemId = 40039,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41780,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Resplendent Monarch Topaz (390)
    {
        id = 53978,
        name = "Resplendent Monarch Topaz",
        itemId = 40040,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41734,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Deadly Monarch Topaz (390)
    {
        id = 53979,
        name = "Deadly Monarch Topaz",
        itemId = 40043,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41794,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glinting Monarch Topaz (390)
    {
        id = 53980,
        name = "Glinting Monarch Topaz",
        itemId = 40044,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41582,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Lucent Monarch Topaz (390)
    {
        id = 53981,
        name = "Lucent Monarch Topaz",
        itemId = 40045,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41733,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Deft Monarch Topaz (390)
    {
        id = 53982,
        name = "Deft Monarch Topaz",
        itemId = 40046,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41792,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Luminous Monarch Topaz (390)
    {
        id = 53983,
        name = "Luminous Monarch Topaz",
        itemId = 40047,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41689,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Potent Monarch Topaz (390)
    {
        id = 53984,
        name = "Potent Monarch Topaz",
        itemId = 40048,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41686,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Veiled Monarch Topaz (390)
    {
        id = 53985,
        name = "Veiled Monarch Topaz",
        itemId = 40049,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41688,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Durable Monarch Topaz (390)
    {
        id = 53986,
        name = "Durable Monarch Topaz",
        itemId = 40050,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41730,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Reckless Monarch Topaz (390)
    {
        id = 53987,
        name = "Reckless Monarch Topaz",
        itemId = 40051,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41690,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Wicked Monarch Topaz (390)
    {
        id = 53988,
        name = "Wicked Monarch Topaz",
        itemId = 40052,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1098,
            factionName = "Knights of the Ebon Blade",
            level = "Revered",
            itemId = 41721,
            cost = 40000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Pristine Monarch Topaz (390)
    {
        id = 53989,
        name = "Pristine Monarch Topaz",
        itemId = 40053,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Empowered Monarch Topaz (390)
    {
        id = 53990,
        name = "Empowered Monarch Topaz",
        itemId = 40054,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41732,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stark Monarch Topaz (390)
    {
        id = 53991,
        name = "Stark Monarch Topaz",
        itemId = 40055,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41687,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stalwart Monarch Topaz (390)
    {
        id = 53992,
        name = "Stalwart Monarch Topaz",
        itemId = 40056,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41779,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glimmering Monarch Topaz (390)
    {
        id = 53993,
        name = "Glimmering Monarch Topaz",
        itemId = 40057,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1091,
            factionName = "The Wyrmrest Accord",
            level = "Exalted",
            itemId = 41722,
            cost = 40000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Accurate Monarch Topaz (390)
    {
        id = 53994,
        name = "Accurate Monarch Topaz",
        itemId = 40058,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41818,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Timeless Forest Emerald (390)
    {
        id = 53995,
        name = "Timeless Forest Emerald",
        itemId = 40085,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41795,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Jagged Forest Emerald (390)
    {
        id = 53996,
        name = "Jagged Forest Emerald",
        itemId = 40086,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1104,
            factionName = "Frenzyheart Tribe",
            level = "Revered",
            itemId = 41723,
            cost = 40000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Vivid Forest Emerald (390)
    {
        id = 53997,
        name = "Vivid Forest Emerald",
        itemId = 40088,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41698,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Enduring Forest Emerald (390)
    {
        id = 53998,
        name = "Enduring Forest Emerald",
        itemId = 40089,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41697,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Steady Forest Emerald (390)
    {
        id = 54000,
        name = "Steady Forest Emerald",
        itemId = 40090,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41738,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Forceful Forest Emerald (390)
    {
        id = 54001,
        name = "Forceful Forest Emerald",
        itemId = 40091,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41693,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Seer's Forest Emerald (390)
    {
        id = 54002,
        name = "Seer's Forest Emerald",
        itemId = 40092,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41699,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Misty Forest Emerald (390)
    {
        id = 54003,
        name = "Misty Forest Emerald",
        itemId = 40095,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41781,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Shining Forest Emerald (390)
    {
        id = 54004,
        name = "Shining Forest Emerald",
        itemId = 40099,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41782,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Turbid Forest Emerald (390)
    {
        id = 54005,
        name = "Turbid Forest Emerald",
        itemId = 40102,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41737,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Intricate Forest Emerald (390)
    {
        id = 54006,
        name = "Intricate Forest Emerald",
        itemId = 40104,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41694,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Dazzling Forest Emerald (390)
    {
        id = 54007,
        name = "Dazzling Forest Emerald",
        itemId = 40094,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Sundered Forest Emerald (390)
    {
        id = 54008,
        name = "Sundered Forest Emerald",
        itemId = 40096,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 1105,
            factionName = "The Oracles",
            level = "Revered",
            itemId = 41724,
            cost = 40000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Lambent Forest Emerald (390)
    {
        id = 54009,
        name = "Lambent Forest Emerald",
        itemId = 40100,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41696,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Opaque Forest Emerald (390)
    {
        id = 54010,
        name = "Opaque Forest Emerald",
        itemId = 40103,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41739,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Energized Forest Emerald (390)
    {
        id = 54011,
        name = "Energized Forest Emerald",
        itemId = 40105,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41692,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Radiant Forest Emerald (390)
    {
        id = 54012,
        name = "Radiant Forest Emerald",
        itemId = 40098,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41819,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Tense Forest Emerald (390)
    {
        id = 54013,
        name = "Tense Forest Emerald",
        itemId = 40101,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41736,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Shattered Forest Emerald (390)
    {
        id = 54014,
        name = "Shattered Forest Emerald",
        itemId = 40106,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41735,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Fierce Monarch Topaz (390)
    {
        id = 54019,
        name = "Fierce Monarch Topaz",
        itemId = 40041,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41793,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Resolute Monarch Topaz (390)
    {
        id = 54023,
        name = "Resolute Monarch Topaz",
        itemId = 40059,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41778,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Enchanted Tear (390)
    {
        id = 56531,
        name = "Enchanted Tear",
        itemId = 42702,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 425, gray = 440 },
        reagents = {
            { itemId = 36784, name = "Siren's Tear", count = 1 },
            { itemId = 34054, name = "Infinite Dust", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stoneguard Band (390)
    {
        id = 58145,
        name = "Stoneguard Band",
        itemId = 43248,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 420, gray = 430 },
        reagents = {
            { itemId = 35624, name = "Eternal Earth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Shadowmight Ring (390)
    {
        id = 58146,
        name = "Shadowmight Ring",
        itemId = 43249,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 410, green = 420, gray = 430 },
        reagents = {
            { itemId = 35624, name = "Eternal Earth", count = 1 },
            { itemId = 35627, name = "Eternal Shadow", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Ruby Hare (400)
    {
        id = 56199,
        name = "Ruby Hare",
        itemId = 42341,
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 430, green = 440, gray = 450 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 36918, name = "Scarlet Ruby", count = 2 },
            { itemId = 36921, name = "Autumn's Glow", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 150000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Twilight Serpent (400)
    {
        id = 56201,
        name = "Twilight Serpent",
        itemId = 42395,
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 430, green = 440, gray = 450 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 36927, name = "Twilight Opal", count = 2 },
            { itemId = 36930, name = "Monarch Topaz", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 150000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Sapphire Owl (400)
    {
        id = 56202,
        name = "Sapphire Owl",
        itemId = 42413,
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 430, green = 440, gray = 450 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 36924, name = "Sky Sapphire", count = 2 },
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 150000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Emerald Boar (400)
    {
        id = 56203,
        name = "Emerald Boar",
        itemId = 42418,
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 430, green = 440, gray = 450 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 36933, name = "Forest Emerald", count = 2 },
            { itemId = 36918, name = "Scarlet Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 150000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Monarch Crab (400)
    {
        id = 59759,
        name = "Monarch Crab",
        itemId = 44063,
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 430, green = 440, gray = 450 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 36930, name = "Monarch Topaz", count = 2 },
            { itemId = 36933, name = "Forest Emerald", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 150000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Effulgent Skyflare Diamond (420)
    {
        id = 55384,
        name = "Effulgent Skyflare Diamond",
        itemId = 41377,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41266, name = "Skyflare Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 41414,
            cost = 180000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Tireless Skyflare Diamond (420)
    {
        id = 55386,
        name = "Tireless Skyflare Diamond",
        itemId = 41375,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41266, name = "Skyflare Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 120000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Forlorn Skyflare Diamond (420)
    {
        id = 55387,
        name = "Forlorn Skyflare Diamond",
        itemId = 41378,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41266, name = "Skyflare Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41743,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Impassive Skyflare Diamond (420)
    {
        id = 55388,
        name = "Impassive Skyflare Diamond",
        itemId = 41379,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41266, name = "Skyflare Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41744,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Chaotic Skyflare Diamond (420)
    {
        id = 55389,
        name = "Chaotic Skyflare Diamond",
        itemId = 41285,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41266, name = "Skyflare Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 41418,
            cost = 180000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Destructive Skyflare Diamond (420)
    {
        id = 55390,
        name = "Destructive Skyflare Diamond",
        itemId = 41307,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41266, name = "Skyflare Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41419,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Ember Skyflare Diamond (420)
    {
        id = 55392,
        name = "Ember Skyflare Diamond",
        itemId = 41333,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41266, name = "Skyflare Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 41420,
            cost = 180000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Enigmatic Skyflare Diamond (420)
    {
        id = 55393,
        name = "Enigmatic Skyflare Diamond",
        itemId = 41335,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41266, name = "Skyflare Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 41742,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Swift Skyflare Diamond (420)
    {
        id = 55394,
        name = "Swift Skyflare Diamond",
        itemId = 41339,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41266, name = "Skyflare Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 120000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Thundering Skyflare Diamond (420)
    {
        id = 55395,
        name = "Thundering Skyflare Diamond",
        itemId = 41400,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41266, name = "Skyflare Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41423,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Insightful Earthsiege Diamond (420)
    {
        id = 55396,
        name = "Insightful Earthsiege Diamond",
        itemId = 41401,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41334, name = "Earthsiege Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 41403,
            cost = 180000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Bracing Earthsiege Diamond (420)
    {
        id = 55397,
        name = "Bracing Earthsiege Diamond",
        itemId = 41395,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41334, name = "Earthsiege Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41798,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Eternal Earthsiege Diamond (420)
    {
        id = 55398,
        name = "Eternal Earthsiege Diamond",
        itemId = 41396,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41334, name = "Earthsiege Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41799,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Powerful Earthsiege Diamond (420)
    {
        id = 55399,
        name = "Powerful Earthsiege Diamond",
        itemId = 41397,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41334, name = "Earthsiege Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 120000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Relentless Earthsiege Diamond (420)
    {
        id = 55400,
        name = "Relentless Earthsiege Diamond",
        itemId = 41398,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41334, name = "Earthsiege Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 41407,
            cost = 180000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Austere Earthsiege Diamond (420)
    {
        id = 55401,
        name = "Austere Earthsiege Diamond",
        itemId = 41380,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41334, name = "Earthsiege Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41797,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Persistent Earthsiege Diamond (420)
    {
        id = 55402,
        name = "Persistent Earthsiege Diamond",
        itemId = 41381,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41334, name = "Earthsiege Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 120000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Trenchant Earthsiege Diamond (420)
    {
        id = 55403,
        name = "Trenchant Earthsiege Diamond",
        itemId = 41382,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41334, name = "Earthsiege Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 41410,
            cost = 180000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Invigorating Earthsiege Diamond (420)
    {
        id = 55404,
        name = "Invigorating Earthsiege Diamond",
        itemId = 41385,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41334, name = "Earthsiege Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 41411,
            cost = 180000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Beaming Earthsiege Diamond (420)
    {
        id = 55405,
        name = "Beaming Earthsiege Diamond",
        itemId = 41389,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41334, name = "Earthsiege Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 41412,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Revitalizing Skyflare Diamond (420)
    {
        id = 55407,
        name = "Revitalizing Skyflare Diamond",
        itemId = 41376,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41266, name = "Skyflare Diamond", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 41413,
            cost = 180000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Dream Signet (420)
    {
        id = 56197,
        name = "Dream Signet",
        itemId = 42340,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 1 },
            { itemId = 36933, name = "Forest Emerald", count = 1 },
            { itemId = 34052, name = "Dream Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Ring of Earthen Might (420)
    {
        id = 58147,
        name = "Ring of Earthen Might",
        itemId = 43250,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 35624, name = "Eternal Earth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 43317,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Ring of Scarlet Shadows (420)
    {
        id = 58148,
        name = "Ring of Scarlet Shadows",
        itemId = 43251,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 35627, name = "Eternal Shadow", count = 3 },
            { itemId = 36918, name = "Scarlet Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 43318,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Windfire Band (420)
    {
        id = 58149,
        name = "Windfire Band",
        itemId = 43252,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 35623, name = "Eternal Air", count = 1 },
            { itemId = 36860, name = "Eternal Fire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 43319,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Ring of Northern Tears (420)
    {
        id = 58150,
        name = "Ring of Northern Tears",
        itemId = 43253,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 35622, name = "Eternal Water", count = 1 },
            { itemId = 36783, name = "Northsea Pearl", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 43320,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Savage Titanium Ring (420)
    {
        id = 58492,
        name = "Savage Titanium Ring",
        itemId = 43482,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 4 },
            { itemId = 36860, name = "Eternal Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 43485,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Savage Titanium Band (420)
    {
        id = 58507,
        name = "Savage Titanium Band",
        itemId = 43498,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 4 },
            { itemId = 36860, name = "Eternal Fire", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 43497,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Titanium Frostguard Ring (420)
    {
        id = 58954,
        name = "Titanium Frostguard Ring",
        itemId = 43582,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 35622, name = "Eternal Water", count = 3 },
            { itemId = 36860, name = "Eternal Fire", count = 3 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 43597,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Emerald Choker (420)
    {
        id = 64725,
        name = "Emerald Choker",
        itemId = 45812,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 1 },
            { itemId = 36933, name = "Forest Emerald", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Sky Sapphire Amulet (420)
    {
        id = 64726,
        name = "Sky Sapphire Amulet",
        itemId = 45813,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 36924, name = "Sky Sapphire", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Runed Mana Band (420)
    {
        id = 64727,
        name = "Runed Mana Band",
        itemId = 45808,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 36927, name = "Twilight Opal", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Scarlet Signet (420)
    {
        id = 64728,
        name = "Scarlet Signet",
        itemId = 45809,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 440, green = 450, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 36918, name = "Scarlet Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Icy Prism (425)
    {
        id = 62242,
        name = "Icy Prism",
        itemId = 44943,
        skillRequired = 425,
        skillRange = { orange = 425, yellow = 445, green = 457, gray = 470 },
        reagents = {
            { itemId = 43102, name = "Frozen Orb", count = 1 },
            { itemId = 36923, name = "Chalcedony", count = 1 },
            { itemId = 36926, name = "Shadow Crystal", count = 1 },
            { itemId = 36932, name = "Dark Jade", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Jewelcrafting Trainer",
            trainingCost = 150000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Titanium Impact Band (430)
    {
        id = 56496,
        name = "Titanium Impact Band",
        itemId = 42642,
        skillRequired = 430,
        skillRange = { orange = 430, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 42225, name = "Dragon's Eye", count = 4 },
            { itemId = 36860, name = "Eternal Fire", count = 4 },
            { itemId = 35627, name = "Eternal Shadow", count = 4 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42648,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Titanium Earthguard Ring (430)
    {
        id = 56497,
        name = "Titanium Earthguard Ring",
        itemId = 42643,
        skillRequired = 430,
        skillRange = { orange = 430, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 42225, name = "Dragon's Eye", count = 4 },
            { itemId = 35624, name = "Eternal Earth", count = 4 },
            { itemId = 35625, name = "Eternal Life", count = 4 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42649,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Titanium Spellshock Ring (430)
    {
        id = 56498,
        name = "Titanium Spellshock Ring",
        itemId = 42644,
        skillRequired = 430,
        skillRange = { orange = 430, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 42225, name = "Dragon's Eye", count = 4 },
            { itemId = 35622, name = "Eternal Water", count = 4 },
            { itemId = 35623, name = "Eternal Air", count = 4 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42650,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Titanium Impact Choker (440)
    {
        id = 56499,
        name = "Titanium Impact Choker",
        itemId = 42645,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 42225, name = "Dragon's Eye", count = 4 },
            { itemId = 35623, name = "Eternal Air", count = 6 },
            { itemId = 36860, name = "Eternal Fire", count = 6 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42651,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Titanium Earthguard Chain (440)
    {
        id = 56500,
        name = "Titanium Earthguard Chain",
        itemId = 42646,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 42225, name = "Dragon's Eye", count = 4 },
            { itemId = 35625, name = "Eternal Life", count = 6 },
            { itemId = 35624, name = "Eternal Earth", count = 6 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42652,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Titanium Spellshock Necklace (440)
    {
        id = 56501,
        name = "Titanium Spellshock Necklace",
        itemId = 42647,
        skillRequired = 440,
        skillRange = { orange = 440, yellow = 450, green = 455, gray = 460 },
        reagents = {
            { itemId = 41163, name = "Titanium Bar", count = 2 },
            { itemId = 42225, name = "Dragon's Eye", count = 4 },
            { itemId = 35627, name = "Eternal Shadow", count = 6 },
            { itemId = 35622, name = "Eternal Water", count = 6 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 42653,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Enduring Eye of Zul (450)
    {
        id = 66338,
        name = "Enduring Eye of Zul",
        itemId = 40167,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46897,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Steady Eye of Zul (450)
    {
        id = 66428,
        name = "Steady Eye of Zul",
        itemId = 40168,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46898,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Vivid Eye of Zul (450)
    {
        id = 66429,
        name = "Vivid Eye of Zul",
        itemId = 40166,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46899,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Dazzling Eye of Zul (450)
    {
        id = 66430,
        name = "Dazzling Eye of Zul",
        itemId = 40175,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46900,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Jagged Eye of Zul (450)
    {
        id = 66431,
        name = "Jagged Eye of Zul",
        itemId = 40165,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46901,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Timeless Eye of Zul (450)
    {
        id = 66432,
        name = "Timeless Eye of Zul",
        itemId = 40164,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46902,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Seer's Eye of Zul (450)
    {
        id = 66433,
        name = "Seer's Eye of Zul",
        itemId = 40170,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46903,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Forceful Eye of Zul (450)
    {
        id = 66434,
        name = "Forceful Eye of Zul",
        itemId = 40169,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46904,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Misty Eye of Zul (450)
    {
        id = 66435,
        name = "Misty Eye of Zul",
        itemId = 40171,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46905,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Sundered Eye of Zul (450)
    {
        id = 66436,
        name = "Sundered Eye of Zul",
        itemId = 40176,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46906,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Shining Eye of Zul (450)
    {
        id = 66437,
        name = "Shining Eye of Zul",
        itemId = 40172,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46907,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Tense Eye of Zul (450)
    {
        id = 66438,
        name = "Tense Eye of Zul",
        itemId = 40181,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46908,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Lambent Eye of Zul (450)
    {
        id = 66439,
        name = "Lambent Eye of Zul",
        itemId = 40177,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46909,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Intricate Eye of Zul (450)
    {
        id = 66440,
        name = "Intricate Eye of Zul",
        itemId = 40174,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46910,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Radiant Eye of Zul (450)
    {
        id = 66441,
        name = "Radiant Eye of Zul",
        itemId = 40180,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46911,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Energized Eye of Zul (450)
    {
        id = 66442,
        name = "Energized Eye of Zul",
        itemId = 40179,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46912,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Shattered Eye of Zul (450)
    {
        id = 66443,
        name = "Shattered Eye of Zul",
        itemId = 40182,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46913,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Opaque Eye of Zul (450)
    {
        id = 66444,
        name = "Opaque Eye of Zul",
        itemId = 40178,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46914,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Turbid Eye of Zul (450)
    {
        id = 66445,
        name = "Turbid Eye of Zul",
        itemId = 40173,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36934, name = "Eye of Zul", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46915,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Runed Cardinal Ruby (450)
    {
        id = 66446,
        name = "Runed Cardinal Ruby",
        itemId = 40113,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36919, name = "Cardinal Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46916,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Bold Cardinal Ruby (450)
    {
        id = 66447,
        name = "Bold Cardinal Ruby",
        itemId = 40111,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36919, name = "Cardinal Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46917,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Delicate Cardinal Ruby (450)
    {
        id = 66448,
        name = "Delicate Cardinal Ruby",
        itemId = 40112,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36919, name = "Cardinal Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46918,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Bright Cardinal Ruby (450)
    {
        id = 66449,
        name = "Bright Cardinal Ruby",
        itemId = 40114,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36919, name = "Cardinal Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46919,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Precise Cardinal Ruby (450)
    {
        id = 66450,
        name = "Precise Cardinal Ruby",
        itemId = 40118,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36919, name = "Cardinal Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46920,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Fractured Cardinal Ruby (450)
    {
        id = 66451,
        name = "Fractured Cardinal Ruby",
        itemId = 40117,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36919, name = "Cardinal Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46921,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Subtle Cardinal Ruby (450)
    {
        id = 66452,
        name = "Subtle Cardinal Ruby",
        itemId = 40115,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36919, name = "Cardinal Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46922,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Flashing Cardinal Ruby (450)
    {
        id = 66453,
        name = "Flashing Cardinal Ruby",
        itemId = 40116,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36919, name = "Cardinal Ruby", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46923,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Solid Majestic Zircon (450)
    {
        id = 66497,
        name = "Solid Majestic Zircon",
        itemId = 40119,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36925, name = "Majestic Zircon", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46924,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Sparkling Majestic Zircon (450)
    {
        id = 66498,
        name = "Sparkling Majestic Zircon",
        itemId = 40120,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36925, name = "Majestic Zircon", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46925,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stormy Majestic Zircon (450)
    {
        id = 66499,
        name = "Stormy Majestic Zircon",
        itemId = 40122,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36925, name = "Majestic Zircon", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46926,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Lustrous Majestic Zircon (450)
    {
        id = 66500,
        name = "Lustrous Majestic Zircon",
        itemId = 40121,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36925, name = "Majestic Zircon", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46927,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Rigid King's Amber (450)
    {
        id = 66501,
        name = "Rigid King's Amber",
        itemId = 40125,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36922, name = "King's Amber", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46928,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Smooth King's Amber (450)
    {
        id = 66502,
        name = "Smooth King's Amber",
        itemId = 40124,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36922, name = "King's Amber", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46929,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Brilliant King's Amber (450)
    {
        id = 66503,
        name = "Brilliant King's Amber",
        itemId = 40123,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36922, name = "King's Amber", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46930,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Thick King's Amber (450)
    {
        id = 66504,
        name = "Thick King's Amber",
        itemId = 40126,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36922, name = "King's Amber", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46931,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Mystic King's Amber (450)
    {
        id = 66505,
        name = "Mystic King's Amber",
        itemId = 40127,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36922, name = "King's Amber", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46932,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Quick King's Amber (450)
    {
        id = 66506,
        name = "Quick King's Amber",
        itemId = 40128,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36922, name = "King's Amber", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46933,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Balanced Dreadstone (450)
    {
        id = 66553,
        name = "Balanced Dreadstone",
        itemId = 40136,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36928, name = "Dreadstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46934,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Sovereign Dreadstone (450)
    {
        id = 66554,
        name = "Sovereign Dreadstone",
        itemId = 40129,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36928, name = "Dreadstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46935,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glowing Dreadstone (450)
    {
        id = 66555,
        name = "Glowing Dreadstone",
        itemId = 40132,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36928, name = "Dreadstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46936,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Purified Dreadstone (450)
    {
        id = 66556,
        name = "Purified Dreadstone",
        itemId = 40133,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36928, name = "Dreadstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46937,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Shifting Dreadstone (450)
    {
        id = 66557,
        name = "Shifting Dreadstone",
        itemId = 40130,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36928, name = "Dreadstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46938,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Royal Dreadstone (450)
    {
        id = 66558,
        name = "Royal Dreadstone",
        itemId = 40134,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36928, name = "Dreadstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46939,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Regal Dreadstone (450)
    {
        id = 66559,
        name = "Regal Dreadstone",
        itemId = 40138,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36928, name = "Dreadstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46940,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Defender's Dreadstone (450)
    {
        id = 66560,
        name = "Defender's Dreadstone",
        itemId = 40139,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36928, name = "Dreadstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46941,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Guardian's Dreadstone (450)
    {
        id = 66561,
        name = "Guardian's Dreadstone",
        itemId = 40141,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36928, name = "Dreadstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46942,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Mysterious Dreadstone (450)
    {
        id = 66562,
        name = "Mysterious Dreadstone",
        itemId = 40135,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36928, name = "Dreadstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46943,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Puissant Dreadstone (450)
    {
        id = 66563,
        name = "Puissant Dreadstone",
        itemId = 40140,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36928, name = "Dreadstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46944,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Infused Dreadstone (450)
    {
        id = 66564,
        name = "Infused Dreadstone",
        itemId = 40137,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36928, name = "Dreadstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46945,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Tenuous Dreadstone (450)
    {
        id = 66565,
        name = "Tenuous Dreadstone",
        itemId = 40131,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36928, name = "Dreadstone", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46946,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Luminous Ametrine (450)
    {
        id = 66566,
        name = "Luminous Ametrine",
        itemId = 40151,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46947,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Inscribed Ametrine (450)
    {
        id = 66567,
        name = "Inscribed Ametrine",
        itemId = 40142,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46948,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Deadly Ametrine (450)
    {
        id = 66568,
        name = "Deadly Ametrine",
        itemId = 40147,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46949,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Potent Ametrine (450)
    {
        id = 66569,
        name = "Potent Ametrine",
        itemId = 40152,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46950,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Veiled Ametrine (450)
    {
        id = 66570,
        name = "Veiled Ametrine",
        itemId = 40153,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46951,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Durable Ametrine (450)
    {
        id = 66571,
        name = "Durable Ametrine",
        itemId = 40154,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46952,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Etched Ametrine (450)
    {
        id = 66572,
        name = "Etched Ametrine",
        itemId = 40143,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46953,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Pristine Ametrine (450)
    {
        id = 66573,
        name = "Pristine Ametrine",
        itemId = 40157,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 46956,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Reckless Ametrine (450)
    {
        id = 66574,
        name = "Reckless Ametrine",
        itemId = 40155,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 47007,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glinting Ametrine (450)
    {
        id = 66575,
        name = "Glinting Ametrine",
        itemId = 40148,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 47008,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Accurate Ametrine (450)
    {
        id = 66576,
        name = "Accurate Ametrine",
        itemId = 40162,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 47010,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Wicked Ametrine (450)
    {
        id = 66577,
        name = "Wicked Ametrine",
        itemId = 40156,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 47011,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glimmering Ametrine (450)
    {
        id = 66578,
        name = "Glimmering Ametrine",
        itemId = 40161,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 47012,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Champion's Ametrine (450)
    {
        id = 66579,
        name = "Champion's Ametrine",
        itemId = 40144,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 47015,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Empowered Ametrine (450)
    {
        id = 66580,
        name = "Empowered Ametrine",
        itemId = 40158,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 47016,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stalwart Ametrine (450)
    {
        id = 66581,
        name = "Stalwart Ametrine",
        itemId = 40160,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 47017,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Resplendent Ametrine (450)
    {
        id = 66582,
        name = "Resplendent Ametrine",
        itemId = 40145,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 47018,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Fierce Ametrine (450)
    {
        id = 66583,
        name = "Fierce Ametrine",
        itemId = 40146,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 47019,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Deft Ametrine (450)
    {
        id = 66584,
        name = "Deft Ametrine",
        itemId = 40150,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 47020,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Lucent Ametrine (450)
    {
        id = 66585,
        name = "Lucent Ametrine",
        itemId = 40149,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 47021,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Resolute Ametrine (450)
    {
        id = 66586,
        name = "Resolute Ametrine",
        itemId = 40163,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 47022,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Stark Ametrine (450)
    {
        id = 66587,
        name = "Stark Ametrine",
        itemId = 40159,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 36931, name = "Ametrine", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 47023,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Nightmare Tear (450)
    {
        id = 68253,
        name = "Nightmare Tear",
        itemId = 49110,
        skillRequired = 450,
        skillRange = { orange = 0, yellow = 450, green = 452, gray = 465 },
        reagents = {
            { itemId = 42225, name = "Dragon's Eye", count = 1 },
            { itemId = 34054, name = "Infinite Dust", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 49112,
        },
        expansion = C.EXPANSION.WOTLK,
    },
}

CraftLib:RegisterProfession("jewelcrafting", {
    id = C.PROFESSION_ID.JEWELCRAFTING,
    name = "Jewelcrafting",
    expansion = C.EXPANSION.WOTLK,
    profile = "WOTLK",
    milestones = { 75, 150, 225, 300, 375, 450 },
    recipes = recipes,
})
