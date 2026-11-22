-- Data/Forever/Leatherworking/Recipes.lua
-- Leatherworking recipes for WoW Forever
-- Generated from DB2 data, Wowhead guide tables and the Warcraft Wiki recipe tables
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
            type = C.SOURCE_TYPE.STARTER,
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.STARTER,
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.STARTER,
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.STARTER,
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.STARTER,
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.STARTER,
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Light Leather Quiver (25)
    {
        id = 9060,
        name = "Light Leather Quiver",
        itemId = 7278,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 55, green = 70, gray = 85 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Small Leather Ammo Pouch (25)
    {
        id = 9062,
        name = "Small Leather Ammo Pouch",
        itemId = 7279,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 55, green = 70, gray = 85 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cured Light Hide (30)
    {
        id = 3816,
        name = "Cured Light Hide",
        itemId = 4231,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 50, green = 60, gray = 70 },
        reagents = {
            { itemId = 783, name = "Light Hide", count = 1 },
            { itemId = 4289, name = "Salt", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Rugged Leather Pants (30)
    {
        id = 9064,
        name = "Rugged Leather Pants",
        itemId = 7280,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 60, green = 75, gray = 90 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 5 },
            { itemId = 2320, name = "Coarse Thread", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7288,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Light Leather Reagent Bag (30)
    {
        id = 1302604,
        name = "Light Leather Reagent Bag",
        itemId = 277715,
        skillRequired = 30,
        skillRange = { orange = 30, yellow = 40, green = 45, gray = 50 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 8 },
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 277716,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Embossed Leather Vest (35)
    {
        id = 2160,
        name = "Embossed Leather Vest",
        itemId = 2300,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 65, green = 80, gray = 95 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 8 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Kodo Hide Bag (35)
    {
        id = 5244,
        name = "Kodo Hide Bag",
        itemId = 5081,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 65, green = 80, gray = 95 },
        reagents = {
            { itemId = 5082, name = "Thin Kodo Leather", count = 3 },
            { itemId = 2318, name = "Light Leather", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 5083,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Embossed Leather Cloak (40)
    {
        id = 2162,
        name = "Embossed Leather Cloak",
        itemId = 2310,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 70, green = 85, gray = 100 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 5 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- White Leather Jerkin (40)
    {
        id = 2163,
        name = "White Leather Jerkin",
        itemId = 2311,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 70, green = 85, gray = 100 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 8 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
            { itemId = 2324, name = "Bleach", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2407,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Embossed Leather Gloves (40)
    {
        id = 3756,
        name = "Embossed Leather Gloves",
        itemId = 4239,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 70, green = 85, gray = 100 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 3 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Light Leather Bracers (45)
    {
        id = 9065,
        name = "Light Leather Bracers",
        itemId = 7281,
        skillRequired = 45,
        skillRange = { orange = 45, yellow = 75, green = 90, gray = 105 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Fine Leather Cloak (50)
    {
        id = 2159,
        name = "Fine Leather Cloak",
        itemId = 2308,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 70, green = 85, gray = 100 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 10 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Embossed Leather Boots (50)
    {
        id = 2161,
        name = "Embossed Leather Boots",
        itemId = 2309,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 80, green = 95, gray = 110 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 8 },
            { itemId = 2320, name = "Coarse Thread", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Fine Leather Gloves (50)
    {
        id = 2164,
        name = "Fine Leather Gloves",
        itemId = 2312,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 80, green = 95, gray = 110 },
        reagents = {
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2318, name = "Light Leather", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2408,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Embossed Leather Pants (50)
    {
        id = 3759,
        name = "Embossed Leather Pants",
        itemId = 4242,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 80, green = 95, gray = 110 },
        reagents = {
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Gustwoven Bracers (50)
    {
        id = 1301428,
        name = "Cloudy Gustwoven Bracers",
        itemId = 276999,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 55, green = 57, gray = 60 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276935,
            cost = 950,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Gustwoven Belt (50)
    {
        id = 1301430,
        name = "Cloudy Gustwoven Belt",
        itemId = 277001,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 55, green = 57, gray = 60 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 5 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276937,
            cost = 950,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Windraveled Armguards (50)
    {
        id = 1301434,
        name = "Cloudy Windraveled Armguards",
        itemId = 277005,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 55, green = 57, gray = 60 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276941,
            cost = 950,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Windraveled Strap (50)
    {
        id = 1301436,
        name = "Cloudy Windraveled Strap",
        itemId = 277007,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 55, green = 57, gray = 60 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 5 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276943,
            cost = 950,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Gustwoven Bracers (50)
    {
        id = 1301452,
        name = "Azure Gustwoven Bracers",
        itemId = 277023,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 55, green = 57, gray = 60 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276959,
            cost = 950,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Gustwoven Belt (50)
    {
        id = 1301454,
        name = "Azure Gustwoven Belt",
        itemId = 277025,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 55, green = 57, gray = 60 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 5 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276961,
            cost = 950,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Windraveled Armguards (50)
    {
        id = 1301458,
        name = "Azure Windraveled Armguards",
        itemId = 277029,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 55, green = 57, gray = 60 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276965,
            cost = 950,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Windraveled Strap (50)
    {
        id = 1301460,
        name = "Azure Windraveled Strap",
        itemId = 277031,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 55, green = 57, gray = 60 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 5 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276967,
            cost = 950,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Fine Leather Belt (55)
    {
        id = 3763,
        name = "Fine Leather Belt",
        itemId = 4246,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 85, green = 100, gray = 115 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Gustwoven Gloves (55)
    {
        id = 1301429,
        name = "Cloudy Gustwoven Gloves",
        itemId = 277000,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 60, green = 62, gray = 65 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276936,
            cost = 1100,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Gustwoven Boots (55)
    {
        id = 1301432,
        name = "Cloudy Gustwoven Boots",
        itemId = 277003,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 60, green = 62, gray = 65 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276939,
            cost = 1100,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Windraveled Mitts (55)
    {
        id = 1301435,
        name = "Cloudy Windraveled Mitts",
        itemId = 277006,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 60, green = 62, gray = 65 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276942,
            cost = 1100,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Windraveled Footwraps (55)
    {
        id = 1301438,
        name = "Cloudy Windraveled Footwraps",
        itemId = 277009,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 60, green = 62, gray = 65 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276945,
            cost = 1100,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Gustwoven Gloves (55)
    {
        id = 1301453,
        name = "Azure Gustwoven Gloves",
        itemId = 277024,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 60, green = 62, gray = 65 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276960,
            cost = 1100,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Gustwoven Boots (55)
    {
        id = 1301456,
        name = "Azure Gustwoven Boots",
        itemId = 277027,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 60, green = 62, gray = 65 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276963,
            cost = 1100,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Windraveled Mitts (55)
    {
        id = 1301459,
        name = "Azure Windraveled Mitts",
        itemId = 277030,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 60, green = 62, gray = 65 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276966,
            cost = 1100,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Windraveled Footwraps (55)
    {
        id = 1301462,
        name = "Azure Windraveled Footwraps",
        itemId = 277033,
        skillRequired = 55,
        skillRange = { orange = 55, yellow = 60, green = 62, gray = 65 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Friendly",
            itemId = 276969,
            cost = 1100,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Fine Leather Tunic (60)
    {
        id = 3761,
        name = "Fine Leather Tunic",
        itemId = 4243,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 90, green = 105, gray = 120 },
        reagents = {
            { itemId = 4231, name = "Cured Light Hide", count = 3 },
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2320, name = "Coarse Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wisdom's Leather Belt (60)
    {
        id = 1255137,
        name = "Wisdom's Leather Belt",
        itemId = 252433,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 90, green = 105, gray = 120 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 10 },
            { itemId = 4231, name = "Cured Light Hide", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252770,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stormrider's Leather Belt (60)
    {
        id = 1255138,
        name = "Stormrider's Leather Belt",
        itemId = 252432,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 90, green = 105, gray = 120 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 10 },
            { itemId = 4231, name = "Cured Light Hide", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 249409, name = "Cerulean Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252769,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Totemic Leather Belt (60)
    {
        id = 1255139,
        name = "Totemic Leather Belt",
        itemId = 252431,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 90, green = 105, gray = 120 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 10 },
            { itemId = 4231, name = "Cured Light Hide", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 249410, name = "Sulfuric Acid", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252768,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Defender's Leather Belt (60)
    {
        id = 1255140,
        name = "Defender's Leather Belt",
        itemId = 252430,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 90, green = 105, gray = 120 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 10 },
            { itemId = 4231, name = "Cured Light Hide", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 2458, name = "Elixir of Minor Fortitude", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252767,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Trapper's Leather Belt (60)
    {
        id = 1255141,
        name = "Trapper's Leather Belt",
        itemId = 252429,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 90, green = 105, gray = 120 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 10 },
            { itemId = 4231, name = "Cured Light Hide", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 6470, name = "Deviate Scale", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252766,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brawler's Leather Belt (60)
    {
        id = 1255142,
        name = "Brawler's Leather Belt",
        itemId = 252428,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 90, green = 105, gray = 120 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 10 },
            { itemId = 4231, name = "Cured Light Hide", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
            { itemId = 1210, name = "Shadowgem", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252765,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Gustwoven Harness (60)
    {
        id = 1301427,
        name = "Cloudy Gustwoven Harness",
        itemId = 276998,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 65, green = 67, gray = 70 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 7 },
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Honored",
            itemId = 276934,
            cost = 1250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Gustwoven Trousers (60)
    {
        id = 1301431,
        name = "Cloudy Gustwoven Trousers",
        itemId = 277002,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 65, green = 67, gray = 70 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 7 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Honored",
            itemId = 276938,
            cost = 1250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Windraveled Jerkin (60)
    {
        id = 1301433,
        name = "Cloudy Windraveled Jerkin",
        itemId = 277004,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 65, green = 67, gray = 70 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 7 },
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Honored",
            itemId = 276940,
            cost = 1250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Windraveled Pants (60)
    {
        id = 1301437,
        name = "Cloudy Windraveled Pants",
        itemId = 277008,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 65, green = 67, gray = 70 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 7 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Honored",
            itemId = 276944,
            cost = 1250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Gustwoven Harness (60)
    {
        id = 1301451,
        name = "Azure Gustwoven Harness",
        itemId = 277022,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 65, green = 67, gray = 70 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 7 },
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Honored",
            itemId = 276958,
            cost = 1250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Gustwoven Trousers (60)
    {
        id = 1301455,
        name = "Azure Gustwoven Trousers",
        itemId = 277026,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 65, green = 67, gray = 70 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 7 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Honored",
            itemId = 276962,
            cost = 1250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Windraveled Jerkin (60)
    {
        id = 1301457,
        name = "Azure Windraveled Jerkin",
        itemId = 277028,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 65, green = 67, gray = 70 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 7 },
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Honored",
            itemId = 276964,
            cost = 1250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Windraveled Pants (60)
    {
        id = 1301461,
        name = "Azure Windraveled Pants",
        itemId = 277032,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 65, green = 67, gray = 70 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 7 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2758,
            factionName = "Nightclaw Druids",
            level = "Honored",
            itemId = 276968,
            cost = 1250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Fine Leather Boots (65)
    {
        id = 2158,
        name = "Fine Leather Boots",
        itemId = 2307,
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 95, green = 110, gray = 125 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 7 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2406,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Murloc Scale Belt (65)
    {
        id = 6702,
        name = "Murloc Scale Belt",
        itemId = 5780,
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 95, green = 110, gray = 125 },
        reagents = {
            { itemId = 5784, name = "Slimy Murloc Scale", count = 8 },
            { itemId = 2318, name = "Light Leather", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5786,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Deviate Scale Cloak (65)
    {
        id = 7953,
        name = "Deviate Scale Cloak",
        itemId = 6466,
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 95, green = 110, gray = 125 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Moonglow Vest (65)
    {
        id = 8322,
        name = "Moonglow Vest",
        itemId = 6709,
        skillRequired = 65,
        skillRange = { orange = 65, yellow = 90, green = 105, gray = 120 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Murloc Scale Breastplate (70)
    {
        id = 6703,
        name = "Murloc Scale Breastplate",
        itemId = 5781,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 100, green = 115, gray = 130 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Light Leather Pants (70)
    {
        id = 9068,
        name = "Light Leather Pants",
        itemId = 7282,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 100, green = 115, gray = 130 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 10 },
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Medium Armor Kit (75)
    {
        id = 2165,
        name = "Medium Armor Kit",
        itemId = 2313,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 90, green = 97, gray = 105 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 2320, name = "Coarse Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gray Leather Boots (75)
    {
        id = 2167,
        name = "Gray Leather Boots",
        itemId = 2315,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 112, gray = 125 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dark Leather Tunic (75)
    {
        id = 2169,
        name = "Dark Leather Tunic",
        itemId = 2317,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 112, gray = 125 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 2409,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hillman's Leather Vest (75)
    {
        id = 3762,
        name = "Hillman's Leather Vest",
        itemId = 4244,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 112, gray = 125 },
        reagents = {
            { itemId = 4243, name = "Fine Leather Tunic", count = 1 },
            { itemId = 4231, name = "Cured Light Hide", count = 2 },
            { itemId = 2320, name = "Coarse Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4293,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cured Medium Hide (75)
    {
        id = 3817,
        name = "Cured Medium Hide",
        itemId = 4233,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 90, green = 97, gray = 105 },
        reagents = {
            { itemId = 4232, name = "Medium Hide", count = 1 },
            { itemId = 4289, name = "Salt", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Whelp Cloak (75)
    {
        id = 9070,
        name = "Black Whelp Cloak",
        itemId = 7283,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 112, gray = 125 },
        reagents = {
            { itemId = 7286, name = "Black Whelp Scale", count = 12 },
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7289,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Medium Leather (75)
    {
        id = 20648,
        name = "Medium Leather",
        itemId = 2319,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 75, green = 80, gray = 85 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Whelp Tunic (75)
    {
        id = 24940,
        name = "Black Whelp Tunic",
        itemId = 20575,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 112, gray = 125 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 7286, name = "Black Whelp Scale", count = 8 },
            { itemId = 4231, name = "Cured Light Hide", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20576,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wisdom's Leather Gloves (75)
    {
        id = 1255125,
        name = "Wisdom's Leather Gloves",
        itemId = 252499,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 112, gray = 125 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 12 },
            { itemId = 4231, name = "Cured Light Hide", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252782,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stormrider's Leather Gloves (75)
    {
        id = 1255126,
        name = "Stormrider's Leather Gloves",
        itemId = 252498,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 112, gray = 125 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 12 },
            { itemId = 4231, name = "Cured Light Hide", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 249409, name = "Cerulean Dye", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252781,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Totemic Leather Gloves (75)
    {
        id = 1255127,
        name = "Totemic Leather Gloves",
        itemId = 252497,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 112, gray = 125 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 12 },
            { itemId = 4231, name = "Cured Light Hide", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 249410, name = "Sulfuric Acid", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252780,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Defender's Leather Gloves (75)
    {
        id = 1255128,
        name = "Defender's Leather Gloves",
        itemId = 252496,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 112, gray = 125 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 12 },
            { itemId = 4231, name = "Cured Light Hide", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 2458, name = "Elixir of Minor Fortitude", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252779,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Trapper's Leather Gloves (75)
    {
        id = 1255129,
        name = "Trapper's Leather Gloves",
        itemId = 252495,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 112, gray = 125 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 12 },
            { itemId = 4231, name = "Cured Light Hide", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 6470, name = "Deviate Scale", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252778,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brawler's Leather Gloves (75)
    {
        id = 1255130,
        name = "Brawler's Leather Gloves",
        itemId = 252494,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 112, gray = 125 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 12 },
            { itemId = 4231, name = "Cured Light Hide", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 1210, name = "Shadowgem", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252777,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Fine Leather Pants (80)
    {
        id = 7133,
        name = "Fine Leather Pants",
        itemId = 5958,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 105, green = 117, gray = 130 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 2997, name = "Bolt of Woolen Cloth", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5972,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Deviate Scale Gloves (80)
    {
        id = 7954,
        name = "Deviate Scale Gloves",
        itemId = 6467,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 105, green = 117, gray = 130 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Forceful Medium Armor Kit (80)
    {
        id = 1255123,
        name = "Forceful Medium Armor Kit",
        itemId = 252437,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 95, green = 102, gray = 110 },
        reagents = {
            { itemId = 2313, name = "Medium Armor Kit", count = 1 },
            { itemId = 10940, name = "Strange Dust", count = 2 },
            { itemId = 2454, name = "Elixir of Minor Strength", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252784,
            cost = 500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mystic Medium Armor Kit (80)
    {
        id = 1255124,
        name = "Mystic Medium Armor Kit",
        itemId = 252436,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 95, green = 102, gray = 110 },
        reagents = {
            { itemId = 2313, name = "Medium Armor Kit", count = 1 },
            { itemId = 10940, name = "Strange Dust", count = 2 },
            { itemId = 2455, name = "Minor Mana Potion", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252783,
            cost = 500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dark Leather Cloak (85)
    {
        id = 2168,
        name = "Dark Leather Cloak",
        itemId = 2316,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 122, gray = 135 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wisdom's Leather Boots (85)
    {
        id = 1255116,
        name = "Wisdom's Leather Boots",
        itemId = 252444,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 122, gray = 135 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 14 },
            { itemId = 4231, name = "Cured Light Hide", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252791,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stormrider's Leather Boots (85)
    {
        id = 1255117,
        name = "Stormrider's Leather Boots",
        itemId = 252443,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 122, gray = 135 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 14 },
            { itemId = 4231, name = "Cured Light Hide", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 249409, name = "Cerulean Dye", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252790,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Totemic Leather Boots (85)
    {
        id = 1255118,
        name = "Totemic Leather Boots",
        itemId = 252442,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 122, gray = 135 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 14 },
            { itemId = 4231, name = "Cured Light Hide", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 249410, name = "Sulfuric Acid", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252789,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Defender's Leather Boots (85)
    {
        id = 1255119,
        name = "Defender's Leather Boots",
        itemId = 252441,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 122, gray = 135 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 14 },
            { itemId = 4231, name = "Cured Light Hide", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 2458, name = "Elixir of Minor Fortitude", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252788,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Trapper's Leather Boots (85)
    {
        id = 1255120,
        name = "Trapper's Leather Boots",
        itemId = 252440,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 122, gray = 135 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 14 },
            { itemId = 4231, name = "Cured Light Hide", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 6470, name = "Deviate Scale", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252787,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brawler's Leather Boots (85)
    {
        id = 1255121,
        name = "Brawler's Leather Boots",
        itemId = 252439,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 110, green = 122, gray = 135 },
        reagents = {
            { itemId = 2318, name = "Light Leather", count = 14 },
            { itemId = 4231, name = "Cured Light Hide", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
            { itemId = 1210, name = "Shadowgem", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252786,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dark Leather Pants (90)
    {
        id = 7135,
        name = "Dark Leather Pants",
        itemId = 5961,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 115, green = 127, gray = 140 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 12 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Deviate Scale Belt (90)
    {
        id = 7955,
        name = "Deviate Scale Belt",
        itemId = 6468,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 115, green = 127, gray = 140 },
        reagents = {
            { itemId = 6471, name = "Perfect Deviate Scale", count = 10 },
            { itemId = 6470, name = "Deviate Scale", count = 10 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 6476,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Toughened Leather Armor (95)
    {
        id = 2166,
        name = "Toughened Leather Armor",
        itemId = 2314,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 120, green = 132, gray = 145 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 10 },
            { itemId = 4231, name = "Cured Light Hide", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dark Leather Gloves (95)
    {
        id = 3765,
        name = "Dark Leather Gloves",
        itemId = 4248,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 140, green = 152, gray = 165 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hillman's Belt (95)
    {
        id = 3767,
        name = "Hillman's Belt",
        itemId = 4250,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 3383, name = "Elixir of Wisdom", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4294,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Whelp Gloves (95)
    {
        id = 9072,
        name = "Red Whelp Gloves",
        itemId = 7284,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 120, green = 132, gray = 145 },
        reagents = {
            { itemId = 7287, name = "Red Whelp Scale", count = 6 },
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7290,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Nimble Leather Gloves (95)
    {
        id = 9074,
        name = "Nimble Leather Gloves",
        itemId = 7285,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 120, green = 132, gray = 145 },
        reagents = {
            { itemId = 2457, name = "Elixir of Minor Agility", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dark Leather Belt (100)
    {
        id = 3766,
        name = "Dark Leather Belt",
        itemId = 4249,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 4246, name = "Fine Leather Belt", count = 1 },
            { itemId = 4233, name = "Cured Medium Hide", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 4340, name = "Gray Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Fletcher's Gloves (100)
    {
        id = 9145,
        name = "Fletcher's Gloves",
        itemId = 7348,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 5116, name = "Long Tail Feather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wisdom's Leather Hood (100)
    {
        id = 1255104,
        name = "Wisdom's Leather Hood",
        itemId = 252507,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 4233, name = "Cured Medium Hide", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252803,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stormrider's Leather Hood (100)
    {
        id = 1255105,
        name = "Stormrider's Leather Hood",
        itemId = 252506,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 4233, name = "Cured Medium Hide", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252802,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Totemic Leather Hood (100)
    {
        id = 1255106,
        name = "Totemic Leather Hood",
        itemId = 252448,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 4233, name = "Cured Medium Hide", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 249410, name = "Sulfuric Acid", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252801,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Defender's Leather Hood (100)
    {
        id = 1255107,
        name = "Defender's Leather Hood",
        itemId = 252447,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 4233, name = "Cured Medium Hide", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 2458, name = "Elixir of Minor Fortitude", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252800,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Trapper's Leather Hood (100)
    {
        id = 1255108,
        name = "Trapper's Leather Hood",
        itemId = 252505,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 4233, name = "Cured Medium Hide", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 6470, name = "Deviate Scale", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252799,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brawler's Leather Hood (100)
    {
        id = 1255109,
        name = "Brawler's Leather Hood",
        itemId = 252504,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 4233, name = "Cured Medium Hide", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 1210, name = "Shadowgem", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252798,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hillman's Shoulders (105)
    {
        id = 3768,
        name = "Hillman's Shoulders",
        itemId = 4251,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 130, green = 142, gray = 155 },
        reagents = {
            { itemId = 4233, name = "Cured Medium Hide", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Toughened Leather Gloves (110)
    {
        id = 3770,
        name = "Toughened Leather Gloves",
        itemId = 4253,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 147, gray = 160 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 4 },
            { itemId = 4233, name = "Cured Medium Hide", count = 2 },
            { itemId = 3389, name = "Elixir of Lesser Defense", count = 2 },
            { itemId = 3182, name = "Spider's Silk", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Herbalist's Gloves (110)
    {
        id = 9146,
        name = "Herbalist's Gloves",
        itemId = 7349,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 147, gray = 160 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 8 },
            { itemId = 3356, name = "Kingsblood", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7361,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Earthen Leather Shoulders (110)
    {
        id = 9147,
        name = "Earthen Leather Shoulders",
        itemId = 7352,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 147, gray = 160 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wisdom's Leather Tunic (110)
    {
        id = 1255097,
        name = "Wisdom's Leather Tunic",
        itemId = 252511,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 147, gray = 160 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 10 },
            { itemId = 4233, name = "Cured Medium Hide", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252810,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stormrider's Leather Tunic (110)
    {
        id = 1255098,
        name = "Stormrider's Leather Tunic",
        itemId = 252510,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 147, gray = 160 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 10 },
            { itemId = 4233, name = "Cured Medium Hide", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 249409, name = "Cerulean Dye", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252809,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Totemic Leather Tunic (110)
    {
        id = 1255099,
        name = "Totemic Leather Tunic",
        itemId = 252451,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 147, gray = 160 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 10 },
            { itemId = 4233, name = "Cured Medium Hide", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 249410, name = "Sulfuric Acid", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252808,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Defender's Leather Tunic (110)
    {
        id = 1255100,
        name = "Defender's Leather Tunic",
        itemId = 252450,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 147, gray = 160 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 10 },
            { itemId = 4233, name = "Cured Medium Hide", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 2458, name = "Elixir of Minor Fortitude", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252807,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Trapper's Leather Tunic (110)
    {
        id = 1255101,
        name = "Trapper's Leather Tunic",
        itemId = 252509,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 147, gray = 160 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 10 },
            { itemId = 4233, name = "Cured Medium Hide", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 6470, name = "Deviate Scale", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252806,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brawler's Leather Tunic (110)
    {
        id = 1255102,
        name = "Brawler's Leather Tunic",
        itemId = 252508,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 147, gray = 160 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 10 },
            { itemId = 4233, name = "Cured Medium Hide", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 1210, name = "Shadowgem", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252805,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hillman's Leather Boots (110)
    {
        id = 1255103,
        name = "Hillman's Leather Boots",
        itemId = 252449,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 147, gray = 160 },
        reagents = {
            { itemId = 4233, name = "Cured Medium Hide", count = 1 },
            { itemId = 2319, name = "Medium Leather", count = 6 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 252804,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dark Leather Shoulders (115)
    {
        id = 3769,
        name = "Dark Leather Shoulders",
        itemId = 4252,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 140, green = 152, gray = 165 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pilferer's Gloves (115)
    {
        id = 9148,
        name = "Pilferer's Gloves",
        itemId = 7358,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 140, green = 152, gray = 165 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 10 },
            { itemId = 5373, name = "Lucky Charm", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7363,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hillman's Leather Gloves (120)
    {
        id = 3764,
        name = "Hillman's Leather Gloves",
        itemId = 4247,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 157, gray = 170 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 14 },
            { itemId = 2321, name = "Fine Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Earthen Gloves (120)
    {
        id = 9149,
        name = "Heavy Earthen Gloves",
        itemId = 7359,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 157, gray = 170 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hillman's Cloak (125)
    {
        id = 3760,
        name = "Hillman's Cloak",
        itemId = 3719,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 145, green = 155, gray = 165 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 5 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Barbaric Gloves (125)
    {
        id = 3771,
        name = "Barbaric Gloves",
        itemId = 4254,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 160, gray = 170 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 6 },
            { itemId = 5637, name = "Large Fang", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4297,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Armor Kit (125)
    {
        id = 3780,
        name = "Heavy Armor Kit",
        itemId = 4265,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 145, green = 155, gray = 165 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 5 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cured Heavy Hide (125)
    {
        id = 3818,
        name = "Cured Heavy Hide",
        itemId = 4236,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 135, green = 140, gray = 145 },
        reagents = {
            { itemId = 4235, name = "Heavy Hide", count = 1 },
            { itemId = 4289, name = "Salt", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Quiver (125)
    {
        id = 9193,
        name = "Heavy Quiver",
        itemId = 7371,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 145, green = 155, gray = 165 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Leather Ammo Pouch (125)
    {
        id = 9194,
        name = "Heavy Leather Ammo Pouch",
        itemId = 7372,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 145, green = 155, gray = 165 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Leather (125)
    {
        id = 20649,
        name = "Heavy Leather",
        itemId = 4234,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 130, gray = 135 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Leather Ball (125)
    {
        id = 23190,
        name = "Heavy Leather Ball",
        itemId = 18662,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 130, gray = 135 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 18731,
            cost = 2000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wisdom's Leather Leggings (125)
    {
        id = 1255082,
        name = "Wisdom's Leather Leggings",
        itemId = 252519,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 160, gray = 170 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 12 },
            { itemId = 4233, name = "Cured Medium Hide", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 5498, name = "Small Lustrous Pearl", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252825,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stormrider's Leather Kilt (125)
    {
        id = 1255083,
        name = "Stormrider's Leather Kilt",
        itemId = 252518,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 160, gray = 170 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 12 },
            { itemId = 4233, name = "Cured Medium Hide", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 249409, name = "Cerulean Dye", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252824,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Totemic Leather Leggings (125)
    {
        id = 1255084,
        name = "Totemic Leather Leggings",
        itemId = 252458,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 160, gray = 170 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 12 },
            { itemId = 4233, name = "Cured Medium Hide", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 249410, name = "Sulfuric Acid", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252823,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Defender's Leather Kilt (125)
    {
        id = 1255085,
        name = "Defender's Leather Kilt",
        itemId = 252457,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 160, gray = 170 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 12 },
            { itemId = 4233, name = "Cured Medium Hide", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 2458, name = "Elixir of Minor Fortitude", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252822,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Trapper's Leather Legguards (125)
    {
        id = 1255086,
        name = "Trapper's Leather Legguards",
        itemId = 252517,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 160, gray = 170 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 12 },
            { itemId = 4233, name = "Cured Medium Hide", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 6470, name = "Deviate Scale", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252821,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brawler's Leather Legguards (125)
    {
        id = 1255087,
        name = "Brawler's Leather Legguards",
        itemId = 252516,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 160, gray = 170 },
        reagents = {
            { itemId = 2319, name = "Medium Leather", count = 12 },
            { itemId = 4233, name = "Cured Medium Hide", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 8 },
            { itemId = 2321, name = "Fine Thread", count = 3 },
            { itemId = 1210, name = "Shadowgem", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252820,
            currency = { name = "Merchant's Favor", amount = 30 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Leather Armor (130)
    {
        id = 3772,
        name = "Green Leather Armor",
        itemId = 4255,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 150, green = 160, gray = 170 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Barbaric Bracers (130)
    {
        id = 23399,
        name = "Barbaric Bracers",
        itemId = 18948,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 155, green = 165, gray = 175 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Leather Belt (135)
    {
        id = 3774,
        name = "Green Leather Belt",
        itemId = 4257,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 155, green = 165, gray = 175 },
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
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Forceful Heavy Armor Kit (135)
    {
        id = 1255095,
        name = "Forceful Heavy Armor Kit",
        itemId = 252453,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 155, green = 165, gray = 175 },
        reagents = {
            { itemId = 4265, name = "Heavy Armor Kit", count = 1 },
            { itemId = 11083, name = "Soul Dust", count = 2 },
            { itemId = 6662, name = "Elixir of Giant Growth", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252812,
            cost = 2000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mystic Heavy Armor Kit (135)
    {
        id = 1255096,
        name = "Mystic Heavy Armor Kit",
        itemId = 252452,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 155, green = 165, gray = 175 },
        reagents = {
            { itemId = 4265, name = "Heavy Armor Kit", count = 1 },
            { itemId = 11083, name = "Soul Dust", count = 2 },
            { itemId = 3385, name = "Lesser Mana Potion", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252811,
            cost = 2000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Raptor Hide Harness (140)
    {
        id = 4096,
        name = "Raptor Hide Harness",
        itemId = 4455,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 160, green = 170, gray = 180 },
        reagents = {
            { itemId = 4461, name = "Raptor Hide", count = 6 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13287,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Raptor Hide Belt (140)
    {
        id = 4097,
        name = "Raptor Hide Belt",
        itemId = 4456,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 160, green = 170, gray = 180 },
        reagents = {
            { itemId = 4461, name = "Raptor Hide", count = 4 },
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 13288,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dusky Leather Leggings (140)
    {
        id = 9195,
        name = "Dusky Leather Leggings",
        itemId = 7373,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 160, green = 170, gray = 180 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 10 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7449,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Guardian Belt (145)
    {
        id = 3775,
        name = "Guardian Belt",
        itemId = 4258,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 165, green = 175, gray = 185 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Thick Murloc Armor (145)
    {
        id = 6704,
        name = "Thick Murloc Armor",
        itemId = 5782,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 165, green = 175, gray = 185 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Barbaric Leggings (145)
    {
        id = 7149,
        name = "Barbaric Leggings",
        itemId = 5963,
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 165, green = 175, gray = 185 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Guardian Armor (150)
    {
        id = 3773,
        name = "Guardian Armor",
        itemId = 4256,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 180, gray = 190 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Barbaric Shoulders (150)
    {
        id = 7151,
        name = "Barbaric Shoulders",
        itemId = 5964,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 180, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 8 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dusky Leather Armor (150)
    {
        id = 9196,
        name = "Dusky Leather Armor",
        itemId = 7374,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 180, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 10 },
            { itemId = 3824, name = "Shadow Oil", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Whelp Armor (150)
    {
        id = 9197,
        name = "Green Whelp Armor",
        itemId = 7375,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 170, green = 180, gray = 190 },
        reagents = {
            { itemId = 7392, name = "Green Whelp Scale", count = 4 },
            { itemId = 4234, name = "Heavy Leather", count = 10 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 7450,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Leather Bracers (155)
    {
        id = 3776,
        name = "Green Leather Bracers",
        itemId = 4259,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 185, gray = 195 },
        reagents = {
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 4234, name = "Heavy Leather", count = 6 },
            { itemId = 2605, name = "Green Dye", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Frost Leather Cloak (155)
    {
        id = 9198,
        name = "Frost Leather Cloak",
        itemId = 7377,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 185, gray = 195 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 6 },
            { itemId = 7067, name = "Elemental Earth", count = 2 },
            { itemId = 7070, name = "Elemental Water", count = 2 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gem-studded Leather Belt (160)
    {
        id = 3778,
        name = "Gem-studded Leather Belt",
        itemId = 4262,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 190, gray = 200 },
        reagents = {
            { itemId = 4236, name = "Cured Heavy Hide", count = 4 },
            { itemId = 5500, name = "Iridescent Pearl", count = 2 },
            { itemId = 1529, name = "Jade", count = 2 },
            { itemId = 3864, name = "Citrine", count = 1 },
            { itemId = 2321, name = "Fine Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 14635,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Guardian Cloak (160)
    {
        id = 7153,
        name = "Guardian Cloak",
        itemId = 5965,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 190, gray = 200 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 14 },
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 5974,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dusky Bracers (160)
    {
        id = 9201,
        name = "Dusky Bracers",
        itemId = 7378,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 190, gray = 200 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 16 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Barbaric Harness (165)
    {
        id = 6661,
        name = "Barbaric Harness",
        itemId = 5739,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 195, gray = 205 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 14 },
            { itemId = 2321, name = "Fine Thread", count = 2 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Murloc Scale Bracers (165)
    {
        id = 6705,
        name = "Murloc Scale Bracers",
        itemId = 5783,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 195, gray = 205 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Guardian Gloves (165)
    {
        id = 7156,
        name = "Guardian Gloves",
        itemId = 5966,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 195, gray = 205 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 4 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Whelp Bracers (165)
    {
        id = 9202,
        name = "Green Whelp Bracers",
        itemId = 7386,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 195, gray = 205 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Gloves of the Greatfather (165)
    {
        id = 21943,
        name = "Gloves of the Greatfather",
        itemId = 17721,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 195, gray = 205 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 8 },
            { itemId = 7067, name = "Elemental Earth", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 17722,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Guardian Leather Bracers (170)
    {
        id = 3777,
        name = "Guardian Leather Bracers",
        itemId = 4260,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 190, green = 200, gray = 210 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 6 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 4300,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dusky Belt (170)
    {
        id = 9206,
        name = "Dusky Belt",
        itemId = 7387,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 190, green = 200, gray = 210 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 10 },
            { itemId = 4305, name = "Bolt of Silk Cloth", count = 2 },
            { itemId = 2325, name = "Black Dye", count = 2 },
            { itemId = 7071, name = "Iron Buckle", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Barbaric Belt (175)
    {
        id = 3779,
        name = "Barbaric Belt",
        itemId = 4264,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dusky Boots (175)
    {
        id = 9207,
        name = "Dusky Boots",
        itemId = 7390,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Swift Boots (175)
    {
        id = 9208,
        name = "Swift Boots",
        itemId = 7391,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Thick Armor Kit (175)
    {
        id = 10487,
        name = "Thick Armor Kit",
        itemId = 8173,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 5 },
            { itemId = 4291, name = "Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Comfortable Leather Hat (175)
    {
        id = 10490,
        name = "Comfortable Leather Hat",
        itemId = 8174,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8384,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Thick Leather (175)
    {
        id = 20650,
        name = "Thick Leather",
        itemId = 4304,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 175, green = 177, gray = 180 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Shadowskin Gloves (175)
    {
        id = 22711,
        name = "Shadowskin Gloves",
        itemId = 18238,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 185, green = 195, gray = 205 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mender's Leather Gloves (175)
    {
        id = 1255065,
        name = "Mender's Leather Gloves",
        itemId = 252530,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 16 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 5500, name = "Iridescent Pearl", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252842,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skycaller's Leather Gloves (175)
    {
        id = 1255066,
        name = "Skycaller's Leather Gloves",
        itemId = 252529,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 16 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 7070, name = "Elemental Water", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252841,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skirmisher's Leather Gloves (175)
    {
        id = 1255067,
        name = "Skirmisher's Leather Gloves",
        itemId = 252528,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 16 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 3864, name = "Citrine", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252840,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Warden's Leather Gloves (175)
    {
        id = 1255068,
        name = "Warden's Leather Gloves",
        itemId = 252527,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 16 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 7067, name = "Elemental Earth", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252839,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stalker's Leather Gloves (175)
    {
        id = 1255069,
        name = "Stalker's Leather Gloves",
        itemId = 252526,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 16 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 7069, name = "Elemental Air", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252838,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skulker's Leather Gloves (175)
    {
        id = 1255070,
        name = "Skulker's Leather Gloves",
        itemId = 252525,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 16 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 3182, name = "Spider's Silk", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252837,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Prowler's Leather Gloves (175)
    {
        id = 1255071,
        name = "Prowler's Leather Gloves",
        itemId = 252524,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 205, gray = 215 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 16 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 2 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 1529, name = "Jade", count = 2 },
            { itemId = 249427, name = "Pristine Leather", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252836,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Gustwoven Hood (175)
    {
        id = 1301528,
        name = "Cloudy Gustwoven Hood",
        itemId = 277042,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 185, green = 187, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 15 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 3 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
            { itemId = 2324, name = "Bleach", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2787,
            factionName = "Earthen Ring",
            level = "Friendly",
            itemId = 276978,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Gustwoven Spaulders (175)
    {
        id = 1301529,
        name = "Cloudy Gustwoven Spaulders",
        itemId = 277043,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 185, green = 187, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
            { itemId = 2324, name = "Bleach", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2787,
            factionName = "Earthen Ring",
            level = "Friendly",
            itemId = 276979,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Windraveled Cover (175)
    {
        id = 1301530,
        name = "Cloudy Windraveled Cover",
        itemId = 277044,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 185, green = 187, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 15 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 3 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
            { itemId = 2324, name = "Bleach", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2787,
            factionName = "Earthen Ring",
            level = "Friendly",
            itemId = 276980,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cloudy Windraveled Drapes (175)
    {
        id = 1301531,
        name = "Cloudy Windraveled Drapes",
        itemId = 277045,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 185, green = 187, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
            { itemId = 2324, name = "Bleach", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2787,
            factionName = "Earthen Ring",
            level = "Friendly",
            itemId = 276981,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Gustwoven Hood (175)
    {
        id = 1301536,
        name = "Azure Gustwoven Hood",
        itemId = 277050,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 185, green = 187, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 15 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 3 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2740,
            factionName = "Kirin Tor",
            level = "Friendly",
            itemId = 276986,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Gustwoven Spaulders (175)
    {
        id = 1301537,
        name = "Azure Gustwoven Spaulders",
        itemId = 277051,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 185, green = 187, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2740,
            factionName = "Kirin Tor",
            level = "Friendly",
            itemId = 276987,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Windraveled Cover (175)
    {
        id = 1301538,
        name = "Azure Windraveled Cover",
        itemId = 277052,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 185, green = 187, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 15 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 3 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2740,
            factionName = "Kirin Tor",
            level = "Friendly",
            itemId = 276988,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Azure Windraveled Drapes (175)
    {
        id = 1301539,
        name = "Azure Windraveled Drapes",
        itemId = 277053,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 185, green = 187, gray = 190 },
        reagents = {
            { itemId = 4234, name = "Heavy Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 2 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 2740,
            factionName = "Kirin Tor",
            level = "Friendly",
            itemId = 276989,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Nightscape Tunic (180)
    {
        id = 10499,
        name = "Nightscape Tunic",
        itemId = 8175,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 7 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Nightscape Headband (180)
    {
        id = 10507,
        name = "Nightscape Headband",
        itemId = 8176,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 5 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Turtle Scale Gloves (180)
    {
        id = 10509,
        name = "Turtle Scale Gloves",
        itemId = 8187,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 6 },
            { itemId = 8167, name = "Turtle Scale", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8385,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Nightscape Shoulders (185)
    {
        id = 10516,
        name = "Nightscape Shoulders",
        itemId = 8192,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 215, gray = 225 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Turtle Scale Bracers (185)
    {
        id = 10518,
        name = "Turtle Scale Bracers",
        itemId = 8198,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 215, gray = 225 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 8 },
            { itemId = 8167, name = "Turtle Scale", count = 12 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Forceful Thick Armor Kit (185)
    {
        id = 1255073,
        name = "Forceful Thick Armor Kit",
        itemId = 252463,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 215, gray = 225 },
        reagents = {
            { itemId = 8173, name = "Thick Armor Kit", count = 1 },
            { itemId = 11137, name = "Vision Dust", count = 2 },
            { itemId = 3391, name = "Elixir of Ogre Strength", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252834,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mystic Thick Armor Kit (185)
    {
        id = 1255074,
        name = "Mystic Thick Armor Kit",
        itemId = 252462,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 215, gray = 225 },
        reagents = {
            { itemId = 8173, name = "Thick Armor Kit", count = 1 },
            { itemId = 11137, name = "Vision Dust", count = 2 },
            { itemId = 3827, name = "Mana Potion", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 252833,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Big Voodoo Robe (190)
    {
        id = 10520,
        name = "Big Voodoo Robe",
        itemId = 8200,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 220, gray = 230 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8151, name = "Flask of Mojo", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8386,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tough Scorpid Breastplate (195)
    {
        id = 10525,
        name = "Tough Scorpid Breastplate",
        itemId = 8203,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 225, gray = 235 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 8154, name = "Scorpid Scale", count = 12 },
            { itemId = 4291, name = "Silken Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8395,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wild Leather Shoulders (195)
    {
        id = 10529,
        name = "Wild Leather Shoulders",
        itemId = 8210,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 225, gray = 235 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8153, name = "Wildvine", count = 1 },
            { itemId = 8172, name = "Cured Thick Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 8403,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Big Voodoo Mask (195)
    {
        id = 10531,
        name = "Big Voodoo Mask",
        itemId = 8201,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 225, gray = 235 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 8 },
            { itemId = 8151, name = "Flask of Mojo", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8387,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tough Scorpid Bracers (195)
    {
        id = 10533,
        name = "Tough Scorpid Bracers",
        itemId = 8205,
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 225, gray = 235 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8154, name = "Scorpid Scale", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8397,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tough Scorpid Gloves (200)
    {
        id = 10542,
        name = "Tough Scorpid Gloves",
        itemId = 8204,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 6 },
            { itemId = 8154, name = "Scorpid Scale", count = 8 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8398,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wild Leather Vest (200)
    {
        id = 10544,
        name = "Wild Leather Vest",
        itemId = 8211,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 8153, name = "Wildvine", count = 2 },
            { itemId = 8172, name = "Cured Thick Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 8404,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wild Leather Helmet (200)
    {
        id = 10546,
        name = "Wild Leather Helmet",
        itemId = 8214,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8153, name = "Wildvine", count = 2 },
            { itemId = 8172, name = "Cured Thick Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 8405,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Quickdraw Quiver (200)
    {
        id = 14930,
        name = "Quickdraw Quiver",
        itemId = 8217,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 8172, name = "Cured Thick Hide", count = 1 },
            { itemId = 8949, name = "Elixir of Agility", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Thick Leather Ammo Pouch (200)
    {
        id = 14932,
        name = "Thick Leather Ammo Pouch",
        itemId = 8218,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8172, name = "Cured Thick Hide", count = 1 },
            { itemId = 8951, name = "Elixir of Defense", count = 1 },
            { itemId = 4291, name = "Silken Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Faintly Glowing Leather (200)
    {
        id = 435819,
        name = "Faintly Glowing Leather",
        itemId = 213369,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 200, green = 210, gray = 220 },
        reagents = {
            { itemId = 8172, name = "Cured Thick Hide", count = 1 },
            { itemId = 213370, name = "Irradiated Leather Scraps", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 215367,
            cost = 25000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Nightscape Pants (205)
    {
        id = 10548,
        name = "Nightscape Pants",
        itemId = 8193,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 14 },
            { itemId = 4291, name = "Silken Thread", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Turtle Scale Helm (205)
    {
        id = 10552,
        name = "Turtle Scale Helm",
        itemId = 8191,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 14 },
            { itemId = 8167, name = "Turtle Scale", count = 24 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Turtle Scale Gloves (205)
    {
        id = 439118,
        name = "Turtle Scale Gloves",
        itemId = 217270,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 6 },
            { itemId = 8167, name = "Turtle Scale", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 217271,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tough Scorpid Boots (210)
    {
        id = 10554,
        name = "Tough Scorpid Boots",
        itemId = 8209,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 8154, name = "Scorpid Scale", count = 12 },
            { itemId = 4291, name = "Silken Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8399,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Turtle Scale Leggings (210)
    {
        id = 10556,
        name = "Turtle Scale Leggings",
        itemId = 8185,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 14 },
            { itemId = 8167, name = "Turtle Scale", count = 28 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Nightscape Boots (210)
    {
        id = 10558,
        name = "Nightscape Boots",
        itemId = 8197,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mender's Mail Shoulders (210)
    {
        id = 1255004,
        name = "Mender's Mail Shoulders",
        itemId = 252569,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 3 },
            { itemId = 249428, name = "Pristine Hide", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 5500, name = "Iridescent Pearl", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252903,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skirmisher's Mail Shoulders (210)
    {
        id = 1255005,
        name = "Skirmisher's Mail Shoulders",
        itemId = 252568,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 3 },
            { itemId = 249428, name = "Pristine Hide", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 3864, name = "Citrine", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252902,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skycaller's Mail Shoulders (210)
    {
        id = 1255006,
        name = "Skycaller's Mail Shoulders",
        itemId = 252567,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 3 },
            { itemId = 249428, name = "Pristine Hide", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 7070, name = "Elemental Water", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252901,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stalker's Mail Shoulders (210)
    {
        id = 1255007,
        name = "Stalker's Mail Shoulders",
        itemId = 252566,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 3 },
            { itemId = 249428, name = "Pristine Hide", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 7069, name = "Elemental Air", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252900,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mender's Leather Shoulders (210)
    {
        id = 1255055,
        name = "Mender's Leather Shoulders",
        itemId = 252538,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 3 },
            { itemId = 249428, name = "Pristine Hide", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 5500, name = "Iridescent Pearl", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252852,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skycaller's Leather Shoulders (210)
    {
        id = 1255056,
        name = "Skycaller's Leather Shoulders",
        itemId = 252537,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 3 },
            { itemId = 249428, name = "Pristine Hide", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 7070, name = "Elemental Water", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252851,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Warden's Leather Shoulders (210)
    {
        id = 1255057,
        name = "Warden's Leather Shoulders",
        itemId = 252536,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 3 },
            { itemId = 249428, name = "Pristine Hide", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 7067, name = "Elemental Earth", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252850,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skulker's Leather Shoulders (210)
    {
        id = 1255058,
        name = "Skulker's Leather Shoulders",
        itemId = 252535,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 3 },
            { itemId = 249428, name = "Pristine Hide", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 3182, name = "Spider's Silk", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252849,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Prowler's Leather Shoulders (210)
    {
        id = 1255059,
        name = "Prowler's Leather Shoulders",
        itemId = 252534,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 3 },
            { itemId = 249428, name = "Pristine Hide", count = 4 },
            { itemId = 4291, name = "Silken Thread", count = 2 },
            { itemId = 1529, name = "Jade", count = 3 },
            { itemId = 249427, name = "Pristine Leather", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252848,
            currency = { name = "Merchant's Favor", amount = 60 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Big Voodoo Pants (215)
    {
        id = 10560,
        name = "Big Voodoo Pants",
        itemId = 8202,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 230, green = 240, gray = 250 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8152, name = "Flask of Big Mojo", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8389,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Big Voodoo Cloak (215)
    {
        id = 10562,
        name = "Big Voodoo Cloak",
        itemId = 8216,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 235, green = 245, gray = 255 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 14 },
            { itemId = 8152, name = "Flask of Big Mojo", count = 4 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8390,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tough Scorpid Shoulders (215)
    {
        id = 10564,
        name = "Tough Scorpid Shoulders",
        itemId = 8207,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 235, green = 245, gray = 255 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 8154, name = "Scorpid Scale", count = 16 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8400,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wild Leather Boots (220)
    {
        id = 10566,
        name = "Wild Leather Boots",
        itemId = 8213,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 250, gray = 260 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 14 },
            { itemId = 8153, name = "Wildvine", count = 4 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 8406,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tough Scorpid Leggings (220)
    {
        id = 10568,
        name = "Tough Scorpid Leggings",
        itemId = 8206,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 250, gray = 260 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 14 },
            { itemId = 8154, name = "Scorpid Scale", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8401,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tough Scorpid Helm (225)
    {
        id = 10570,
        name = "Tough Scorpid Helm",
        itemId = 8208,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 10 },
            { itemId = 8154, name = "Scorpid Scale", count = 20 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 8402,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wild Leather Leggings (225)
    {
        id = 10572,
        name = "Wild Leather Leggings",
        itemId = 8212,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8153, name = "Wildvine", count = 2 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 8407,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wild Leather Cloak (225)
    {
        id = 10574,
        name = "Wild Leather Cloak",
        itemId = 8215,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8153, name = "Wildvine", count = 2 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 8408,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Cured Rugged Hide (225)
    {
        id = 19047,
        name = "Cured Rugged Hide",
        itemId = 15407,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 8171, name = "Rugged Hide", count = 1 },
            { itemId = 15409, name = "Refined Deeprock Salt", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Rugged Armor Kit (225)
    {
        id = 19058,
        name = "Rugged Armor Kit",
        itemId = 15564,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 225, green = 235, gray = 245 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Leatherworking Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mender's Mail Bracers (225)
    {
        id = 1255000,
        name = "Mender's Mail Bracers",
        itemId = 252573,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 5500, name = "Iridescent Pearl", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252907,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skirmisher's Mail Bracers (225)
    {
        id = 1255001,
        name = "Skirmisher's Mail Bracers",
        itemId = 252572,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 3864, name = "Citrine", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252906,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skycaller's Mail Bracers (225)
    {
        id = 1255002,
        name = "Skycaller's Mail Bracers",
        itemId = 252571,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 7070, name = "Elemental Water", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252905,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stalker's Mail Bracers (225)
    {
        id = 1255003,
        name = "Stalker's Mail Bracers",
        itemId = 252570,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 220, green = 230, gray = 240 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 7069, name = "Elemental Air", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252904,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mender's Leather Bracers (225)
    {
        id = 1255050,
        name = "Mender's Leather Bracers",
        itemId = 252543,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 5500, name = "Iridescent Pearl", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252857,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skycaller's Leather Bracers (225)
    {
        id = 1255051,
        name = "Skycaller's Leather Bracers",
        itemId = 252542,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 7070, name = "Elemental Water", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252856,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Warden's Leather Bracers (225)
    {
        id = 1255052,
        name = "Warden's Leather Bracers",
        itemId = 252541,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 7067, name = "Elemental Earth", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252855,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skulker's Leather Bracers (225)
    {
        id = 1255053,
        name = "Skulker's Leather Bracers",
        itemId = 252540,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 3182, name = "Spider's Silk", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252854,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Prowler's Leather Bracers (225)
    {
        id = 1255054,
        name = "Prowler's Leather Bracers",
        itemId = 252539,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 255, gray = 265 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 12 },
            { itemId = 4236, name = "Cured Heavy Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 6 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 1529, name = "Jade", count = 4 },
            { itemId = 249427, name = "Pristine Leather", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252853,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Charged Scorpid Belt (230)
    {
        id = 1254998,
        name = "Charged Scorpid Belt",
        itemId = 252575,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 260, gray = 270 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252909,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Supple Scorpid Boots (230)
    {
        id = 1254999,
        name = "Supple Scorpid Boots",
        itemId = 252574,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 260, gray = 270 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252908,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wicked Leather Gauntlets (235)
    {
        id = 19049,
        name = "Wicked Leather Gauntlets",
        itemId = 15083,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Dragonscale Breastplate (235)
    {
        id = 19050,
        name = "Green Dragonscale Breastplate",
        itemId = 15045,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Forceful Rugged Armor Kit (235)
    {
        id = 1254965,
        name = "Forceful Rugged Armor Kit",
        itemId = 252488,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 235, green = 245, gray = 255 },
        reagents = {
            { itemId = 15564, name = "Rugged Armor Kit", count = 1 },
            { itemId = 11176, name = "Dream Dust", count = 2 },
            { itemId = 9206, name = "Elixir of Greater Strength", count = 2 },
            { itemId = 249429, name = "Pristine Scale", count = 1 },
            { itemId = 248824, name = "Fel Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252942,
            cost = 5500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mystic Rugged Armor Kit (235)
    {
        id = 1254966,
        name = "Mystic Rugged Armor Kit",
        itemId = 252487,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 235, green = 245, gray = 255 },
        reagents = {
            { itemId = 15564, name = "Rugged Armor Kit", count = 1 },
            { itemId = 11176, name = "Dream Dust", count = 2 },
            { itemId = 13444, name = "Major Mana Potion", count = 2 },
            { itemId = 249429, name = "Pristine Scale", count = 1 },
            { itemId = 248824, name = "Fel Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252941,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mender's Mail Sabatons (235)
    {
        id = 1254994,
        name = "Mender's Mail Sabatons",
        itemId = 252579,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 5500, name = "Iridescent Pearl", count = 6 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252913,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skirmisher's Mail Sabatons (235)
    {
        id = 1254995,
        name = "Skirmisher's Mail Sabatons",
        itemId = 252578,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 3864, name = "Citrine", count = 6 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252912,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skycaller's Mail Sabatons (235)
    {
        id = 1254996,
        name = "Skycaller's Mail Sabatons",
        itemId = 252577,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 7070, name = "Elemental Water", count = 6 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252911,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stalker's Mail Sabatons (235)
    {
        id = 1254997,
        name = "Stalker's Mail Sabatons",
        itemId = 252576,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 7069, name = "Elemental Air", count = 6 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252910,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mender's Leather Boots (235)
    {
        id = 1255043,
        name = "Mender's Leather Boots",
        itemId = 252472,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 5500, name = "Iridescent Pearl", count = 6 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252864,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skycaller's Leather Boots (235)
    {
        id = 1255044,
        name = "Skycaller's Leather Boots",
        itemId = 252471,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 7070, name = "Elemental Water", count = 6 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252863,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Warden's Leather Boots (235)
    {
        id = 1255045,
        name = "Warden's Leather Boots",
        itemId = 252470,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 7067, name = "Elemental Earth", count = 6 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252862,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skulker's Leather Boots (235)
    {
        id = 1255046,
        name = "Skulker's Leather Boots",
        itemId = 252469,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 3182, name = "Spider's Silk", count = 6 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252861,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Prowler's Leather Boots (235)
    {
        id = 1255047,
        name = "Prowler's Leather Boots",
        itemId = 252468,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 4304, name = "Thick Leather", count = 16 },
            { itemId = 8172, name = "Cured Thick Hide", count = 2 },
            { itemId = 249428, name = "Pristine Hide", count = 8 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 1529, name = "Jade", count = 6 },
            { itemId = 249427, name = "Pristine Leather", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252860,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Suede Shoes (235)
    {
        id = 1255048,
        name = "Blue Suede Shoes",
        itemId = 252467,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252859,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tooled Leather Belt (235)
    {
        id = 1255049,
        name = "Tooled Leather Belt",
        itemId = 252544,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 265, gray = 275 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6261, name = "Orange Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252858,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Scorpid Vest (240)
    {
        id = 19051,
        name = "Heavy Scorpid Vest",
        itemId = 15076,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15727,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wicked Leather Bracers (240)
    {
        id = 19052,
        name = "Wicked Leather Bracers",
        itemId = 15084,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15728,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Chimeric Gloves (240)
    {
        id = 19053,
        name = "Chimeric Gloves",
        itemId = 15074,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 270, gray = 280 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Charged Scorpid Helm (240)
    {
        id = 1254992,
        name = "Charged Scorpid Helm",
        itemId = 252581,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 7069, name = "Elemental Air", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252915,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Supple Scorpid Leggings (240)
    {
        id = 1254993,
        name = "Supple Scorpid Leggings",
        itemId = 252580,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 9 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252914,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Suede Gloves (240)
    {
        id = 1255041,
        name = "Blue Suede Gloves",
        itemId = 252546,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252866,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tooled Leather Boots (240)
    {
        id = 1255042,
        name = "Tooled Leather Boots",
        itemId = 252545,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6261, name = "Orange Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252865,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wildthorn Mail (245)
    {
        id = 16650,
        name = "Wildthorn Mail",
        itemId = 12624,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 275, gray = 285 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 40 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 12803, name = "Living Essence", count = 4 },
            { itemId = 8153, name = "Wildvine", count = 4 },
            { itemId = 12364, name = "Huge Emerald", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12691,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runic Leather Gauntlets (245)
    {
        id = 19055,
        name = "Runic Leather Gauntlets",
        itemId = 15091,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 275, gray = 285 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 14047, name = "Runecloth", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15731,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Volcanic Leggings (245)
    {
        id = 19059,
        name = "Volcanic Leggings",
        itemId = 15054,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 275, gray = 285 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Green Dragonscale Leggings (245)
    {
        id = 19060,
        name = "Green Dragonscale Leggings",
        itemId = 15046,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 275, gray = 285 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15412, name = "Green Dragonscale", count = 25 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15733,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Living Shoulders (245)
    {
        id = 19061,
        name = "Living Shoulders",
        itemId = 15061,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 275, gray = 285 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ironfeather Shoulders (245)
    {
        id = 19062,
        name = "Ironfeather Shoulders",
        itemId = 15067,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 275, gray = 285 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Chimeric Boots (250)
    {
        id = 19063,
        name = "Chimeric Boots",
        itemId = 15073,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 15423, name = "Chimera Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15737,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Scorpid Gauntlets (250)
    {
        id = 19064,
        name = "Heavy Scorpid Gauntlets",
        itemId = 15078,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15738,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runic Leather Bracers (250)
    {
        id = 19065,
        name = "Runic Leather Bracers",
        itemId = 15092,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 7971, name = "Black Pearl", count = 1 },
            { itemId = 14047, name = "Runecloth", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15739,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Frostsaber Boots (250)
    {
        id = 19066,
        name = "Frostsaber Boots",
        itemId = 15071,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stormshroud Pants (250)
    {
        id = 19067,
        name = "Stormshroud Pants",
        itemId = 15057,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Warbear Harness (250)
    {
        id = 19068,
        name = "Warbear Harness",
        itemId = 15064,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 28 },
            { itemId = 15419, name = "Warbear Leather", count = 12 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15742,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mender's Mail Belt (250)
    {
        id = 1254982,
        name = "Mender's Mail Belt",
        itemId = 252591,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 8172, name = "Cured Thick Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 5500, name = "Iridescent Pearl", count = 8 },
            { itemId = 249427, name = "Pristine Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252925,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skirmisher's Mail Belt (250)
    {
        id = 1254983,
        name = "Skirmisher's Mail Belt",
        itemId = 252590,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 8172, name = "Cured Thick Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 3864, name = "Citrine", count = 8 },
            { itemId = 249427, name = "Pristine Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252924,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skycaller's Mail Belt (250)
    {
        id = 1254984,
        name = "Skycaller's Mail Belt",
        itemId = 252589,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 8172, name = "Cured Thick Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 7070, name = "Elemental Water", count = 8 },
            { itemId = 249427, name = "Pristine Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252923,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stalker's Mail Belt (250)
    {
        id = 1254985,
        name = "Stalker's Mail Belt",
        itemId = 252588,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 8172, name = "Cured Thick Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 7069, name = "Elemental Air", count = 8 },
            { itemId = 249427, name = "Pristine Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252922,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Charged Scorpid Shoulders (250)
    {
        id = 1254990,
        name = "Charged Scorpid Shoulders",
        itemId = 252583,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 7069, name = "Elemental Air", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252917,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Supple Scorpid Bracers (250)
    {
        id = 1254991,
        name = "Supple Scorpid Bracers",
        itemId = 252582,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 7 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252916,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mender's Leather Waistguard (250)
    {
        id = 1255031,
        name = "Mender's Leather Waistguard",
        itemId = 252477,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 8172, name = "Cured Thick Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 5500, name = "Iridescent Pearl", count = 8 },
            { itemId = 249427, name = "Pristine Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252876,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skycaller's Leather Waistguard (250)
    {
        id = 1255032,
        name = "Skycaller's Leather Waistguard",
        itemId = 252476,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 8172, name = "Cured Thick Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 7070, name = "Elemental Water", count = 8 },
            { itemId = 249427, name = "Pristine Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252875,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Warden's Leather Waistguard (250)
    {
        id = 1255033,
        name = "Warden's Leather Waistguard",
        itemId = 252475,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 8172, name = "Cured Thick Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 7067, name = "Elemental Earth", count = 8 },
            { itemId = 249427, name = "Pristine Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252874,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Skulker's Leather Waistguard (250)
    {
        id = 1255034,
        name = "Skulker's Leather Waistguard",
        itemId = 252474,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 8172, name = "Cured Thick Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 3182, name = "Spider's Silk", count = 8 },
            { itemId = 249427, name = "Pristine Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252873,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Prowler's Leather Waistguard (250)
    {
        id = 1255035,
        name = "Prowler's Leather Waistguard",
        itemId = 252473,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 280, gray = 290 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 8172, name = "Cured Thick Hide", count = 4 },
            { itemId = 249428, name = "Pristine Hide", count = 10 },
            { itemId = 8343, name = "Heavy Silken Thread", count = 2 },
            { itemId = 1529, name = "Jade", count = 8 },
            { itemId = 249427, name = "Pristine Leather", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252872,
            currency = { name = "Merchant's Favor", amount = 90 },
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Scorpid Bracers (255)
    {
        id = 19048,
        name = "Heavy Scorpid Bracers",
        itemId = 15077,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 250, green = 260, gray = 270 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Scorpid Belt (255)
    {
        id = 19070,
        name = "Heavy Scorpid Belt",
        itemId = 15082,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15743,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wicked Leather Headband (255)
    {
        id = 19071,
        name = "Wicked Leather Headband",
        itemId = 15086,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15744,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runic Leather Belt (255)
    {
        id = 19072,
        name = "Runic Leather Belt",
        itemId = 15093,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 14047, name = "Runecloth", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15745,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Chimeric Leggings (255)
    {
        id = 19073,
        name = "Chimeric Leggings",
        itemId = 15072,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 15423, name = "Chimera Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15746,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Charged Scorpid Gauntlets (255)
    {
        id = 1254977,
        name = "Charged Scorpid Gauntlets",
        itemId = 252596,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 4 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 7069, name = "Elemental Air", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252930,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Supple Scorpid Belt (255)
    {
        id = 1254978,
        name = "Supple Scorpid Belt",
        itemId = 252595,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 9 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252929,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Scorpid Boots (255)
    {
        id = 1254979,
        name = "Heavy Scorpid Boots",
        itemId = 252594,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252928,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Charged Scorpid Bracers (255)
    {
        id = 1254980,
        name = "Charged Scorpid Bracers",
        itemId = 252593,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 2 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 7069, name = "Elemental Air", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252927,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Supple Scorpid Shoulders (255)
    {
        id = 1254981,
        name = "Supple Scorpid Shoulders",
        itemId = 252592,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 9 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252926,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Suede Pants (255)
    {
        id = 1255029,
        name = "Blue Suede Pants",
        itemId = 252478,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 14 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252878,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tooled Leather Armor (255)
    {
        id = 1255030,
        name = "Tooled Leather Armor",
        itemId = 252552,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 285, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 16 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6261, name = "Orange Dye", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 13423, name = "Stonescale Oil", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252877,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Frostsaber Leggings (260)
    {
        id = 19074,
        name = "Frostsaber Leggings",
        itemId = 15069,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 15422, name = "Frostsaber Leather", count = 8 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15747,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Scorpid Leggings (260)
    {
        id = 19075,
        name = "Heavy Scorpid Leggings",
        itemId = 15079,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 8 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 12 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15748,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Volcanic Breastplate (260)
    {
        id = 19076,
        name = "Volcanic Breastplate",
        itemId = 15053,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Dragonscale Breastplate (260)
    {
        id = 19077,
        name = "Blue Dragonscale Breastplate",
        itemId = 15048,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Living Leggings (260)
    {
        id = 19078,
        name = "Living Leggings",
        itemId = 15060,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stormshroud Armor (260)
    {
        id = 19079,
        name = "Stormshroud Armor",
        itemId = 15056,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Warbear Woolies (260)
    {
        id = 19080,
        name = "Warbear Woolies",
        itemId = 15065,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 24 },
            { itemId = 15419, name = "Warbear Leather", count = 14 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 576,
            factionName = "Timbermaw Hold",
            level = "Friendly",
            itemId = 20254,
            cost = 20000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Charged Scorpid Vest (260)
    {
        id = 1254975,
        name = "Charged Scorpid Vest",
        itemId = 252598,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 12 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 7069, name = "Elemental Air", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252932,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Supple Scorpid Helm (260)
    {
        id = 1254976,
        name = "Supple Scorpid Helm",
        itemId = 252597,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 11 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252931,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Suede Shoulders (260)
    {
        id = 1255026,
        name = "Blue Suede Shoulders",
        itemId = 252554,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252881,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tooled Leather Gauntlets (260)
    {
        id = 1255027,
        name = "Tooled Leather Gauntlets",
        itemId = 252553,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6261, name = "Orange Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252880,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wicked Leather Boots (260)
    {
        id = 1255028,
        name = "Wicked Leather Boots",
        itemId = 252479,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 290, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 2325, name = "Black Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252879,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Chimeric Vest (265)
    {
        id = 19081,
        name = "Chimeric Vest",
        itemId = 15075,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 15423, name = "Chimera Leather", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15755,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runic Leather Headband (265)
    {
        id = 19082,
        name = "Runic Leather Headband",
        itemId = 15094,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 14 },
            { itemId = 14047, name = "Runecloth", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 15756,
            cost = 22000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wicked Leather Pants (265)
    {
        id = 19083,
        name = "Wicked Leather Pants",
        itemId = 15087,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 16 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 2325, name = "Black Dye", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15757,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Devilsaur Gauntlets (265)
    {
        id = 19084,
        name = "Devilsaur Gauntlets",
        itemId = 15063,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Dragonscale Breastplate (265)
    {
        id = 19085,
        name = "Black Dragonscale Breastplate",
        itemId = 15050,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ironfeather Breastplate (265)
    {
        id = 19086,
        name = "Ironfeather Breastplate",
        itemId = 15066,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Timbermaw Belt (265)
    {
        id = 23628,
        name = "Heavy Timbermaw Belt",
        itemId = 19043,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 7076, name = "Essence of Earth", count = 3 },
            { itemId = 12803, name = "Living Essence", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 576,
            factionName = "Timbermaw Hold",
            level = "Honored",
            itemId = 19202,
            cost = 22000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Might of the Timbermaw (265)
    {
        id = 23703,
        name = "Might of the Timbermaw",
        itemId = 19044,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dawn Treaders (265)
    {
        id = 23705,
        name = "Dawn Treaders",
        itemId = 19052,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Suede Armor (265)
    {
        id = 1255024,
        name = "Blue Suede Armor",
        itemId = 252480,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 14 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
            { itemId = 6260, name = "Blue Dye", count = 4 },
            { itemId = 15415, name = "Blue Dragonscale", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 252883,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tooled Leather Crown (265)
    {
        id = 1255025,
        name = "Tooled Leather Crown",
        itemId = 252555,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 14 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6261, name = "Orange Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252882,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Storm Gauntlets (270)
    {
        id = 16661,
        name = "Storm Gauntlets",
        itemId = 12632,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
            { itemId = 12361, name = "Blue Sapphire", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12703,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Frostsaber Gloves (270)
    {
        id = 19087,
        name = "Frostsaber Gloves",
        itemId = 15070,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 6 },
            { itemId = 15422, name = "Frostsaber Leather", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15761,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Scorpid Helm (270)
    {
        id = 19088,
        name = "Heavy Scorpid Helm",
        itemId = 15080,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Dragonscale Shoulders (270)
    {
        id = 19089,
        name = "Blue Dragonscale Shoulders",
        itemId = 15049,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stormshroud Shoulders (270)
    {
        id = 19090,
        name = "Stormshroud Shoulders",
        itemId = 15058,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Dragonscale Shoulders (270)
    {
        id = 19094,
        name = "Black Dragonscale Shoulders",
        itemId = 15051,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 310, green = 320, gray = 330 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Charged Scorpid Leggings (270)
    {
        id = 1254973,
        name = "Charged Scorpid Leggings",
        itemId = 252600,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 14 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 7069, name = "Elemental Air", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252934,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Supple Scorpid Vest (270)
    {
        id = 1254974,
        name = "Supple Scorpid Vest",
        itemId = 252599,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 252933,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Suede Belt (270)
    {
        id = 1255021,
        name = "Blue Suede Belt",
        itemId = 252481,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 14 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252886,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tooled Leather Bracers (270)
    {
        id = 1255022,
        name = "Tooled Leather Bracers",
        itemId = 252557,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6261, name = "Orange Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252885,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wicked Leather Shoulders (270)
    {
        id = 1255023,
        name = "Wicked Leather Shoulders",
        itemId = 252556,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 2325, name = "Black Dye", count = 1 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252884,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runic Leather Pants (275)
    {
        id = 19091,
        name = "Runic Leather Pants",
        itemId = 15095,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 18 },
            { itemId = 14047, name = "Runecloth", count = 12 },
            { itemId = 12810, name = "Enchanted Leather", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15765,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wicked Leather Belt (275)
    {
        id = 19092,
        name = "Wicked Leather Belt",
        itemId = 15088,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 14 },
            { itemId = 2325, name = "Black Dye", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15768,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Suede Bracers (275)
    {
        id = 1255019,
        name = "Blue Suede Bracers",
        itemId = 252559,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252888,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tooled Leather Epaulets (275)
    {
        id = 1255020,
        name = "Tooled Leather Epaulets",
        itemId = 252558,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 305, gray = 315 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6261, name = "Orange Dye", count = 1 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252887,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wicked Leather Armor (280)
    {
        id = 19098,
        name = "Wicked Leather Armor",
        itemId = 15085,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14256, name = "Felcloth", count = 6 },
            { itemId = 2325, name = "Black Dye", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15773,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Scorpid Shoulders (280)
    {
        id = 19100,
        name = "Heavy Scorpid Shoulders",
        itemId = 15081,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Volcanic Shoulders (280)
    {
        id = 19101,
        name = "Volcanic Shoulders",
        itemId = 15055,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Charged Scorpid Boots (280)
    {
        id = 1254971,
        name = "Charged Scorpid Boots",
        itemId = 252602,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 14 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 7069, name = "Elemental Air", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252936,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Supple Scorpid Sabatons (280)
    {
        id = 1254972,
        name = "Supple Scorpid Sabatons",
        itemId = 252601,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252935,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Suede Hat (280)
    {
        id = 1255017,
        name = "Blue Suede Hat",
        itemId = 252482,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 16 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6260, name = "Blue Dye", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252890,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tooled Leather Pants (280)
    {
        id = 1255018,
        name = "Tooled Leather Pants",
        itemId = 252560,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
            { itemId = 6261, name = "Orange Dye", count = 1 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252889,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runic Leather Armor (285)
    {
        id = 19102,
        name = "Runic Leather Armor",
        itemId = 15090,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 22 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 14047, name = "Runecloth", count = 16 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15776,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runic Leather Shoulders (285)
    {
        id = 19103,
        name = "Runic Leather Shoulders",
        itemId = 15096,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 315, gray = 325 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 16 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 14047, name = "Runecloth", count = 18 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15777,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bileblister Claws (285)
    {
        id = 1297126,
        name = "Bileblister Claws",
        itemId = 275610,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 290, green = 292, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 12810, name = "Enchanted Leather", count = 3 },
            { itemId = 7082, name = "Essence of Air", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 275586,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hivethrasher's Claws (285)
    {
        id = 1297129,
        name = "Hivethrasher's Claws",
        itemId = 275613,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 290, green = 292, gray = 295 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 12 },
            { itemId = 12810, name = "Enchanted Leather", count = 3 },
            { itemId = 7076, name = "Essence of Earth", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 275589,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Scalegut Clenchers (285)
    {
        id = 1297132,
        name = "Scalegut Clenchers",
        itemId = 275616,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 290, green = 292, gray = 295 },
        reagents = {
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 5 },
            { itemId = 12810, name = "Enchanted Leather", count = 3 },
            { itemId = 7078, name = "Essence of Fire", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 275592,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Broodwatcher's Clenchers (285)
    {
        id = 1297135,
        name = "Broodwatcher's Clenchers",
        itemId = 275619,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 290, green = 292, gray = 295 },
        reagents = {
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 5 },
            { itemId = 12810, name = "Enchanted Leather", count = 3 },
            { itemId = 7080, name = "Essence of Water", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 275595,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Helm of the Great Chief (290)
    {
        id = 16728,
        name = "Helm of the Great Chief",
        itemId = 12636,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 290, green = 300, gray = 310 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 40 },
            { itemId = 12810, name = "Enchanted Leather", count = 4 },
            { itemId = 8168, name = "Jet Black Feather", count = 60 },
            { itemId = 12799, name = "Large Opal", count = 6 },
            { itemId = 12364, name = "Huge Emerald", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12716,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Dragonscale Breastplate (290)
    {
        id = 19054,
        name = "Red Dragonscale Breastplate",
        itemId = 15047,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 40 },
            { itemId = 15414, name = "Red Dragonscale", count = 30 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 15730,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Living Breastplate (290)
    {
        id = 19095,
        name = "Living Breastplate",
        itemId = 15059,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Devilsaur Leggings (290)
    {
        id = 19097,
        name = "Devilsaur Leggings",
        itemId = 15062,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Frostsaber Tunic (290)
    {
        id = 19104,
        name = "Frostsaber Tunic",
        itemId = 15068,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Dragonscale Leggings (290)
    {
        id = 19107,
        name = "Black Dragonscale Leggings",
        itemId = 15052,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Girdle of Insight (290)
    {
        id = 22921,
        name = "Girdle of Insight",
        itemId = 18504,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mongoose Boots (290)
    {
        id = 22922,
        name = "Mongoose Boots",
        itemId = 18506,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Swift Flight Bracers (290)
    {
        id = 22923,
        name = "Swift Flight Bracers",
        itemId = 18508,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Stormshroud Gloves (290)
    {
        id = 26279,
        name = "Stormshroud Gloves",
        itemId = 21278,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 320, gray = 330 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bileblister Girdle (290)
    {
        id = 1297127,
        name = "Bileblister Girdle",
        itemId = 275611,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 18 },
            { itemId = 12810, name = "Enchanted Leather", count = 3 },
            { itemId = 7082, name = "Essence of Air", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 275587,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hivethrasher's Girdle (290)
    {
        id = 1297130,
        name = "Hivethrasher's Girdle",
        itemId = 275614,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 18 },
            { itemId = 12810, name = "Enchanted Leather", count = 3 },
            { itemId = 7076, name = "Essence of Earth", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 275590,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Scalegut Belt (290)
    {
        id = 1297133,
        name = "Scalegut Belt",
        itemId = 275617,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 7 },
            { itemId = 12810, name = "Enchanted Leather", count = 3 },
            { itemId = 7078, name = "Essence of Fire", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 275593,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Broodwatcher's Belt (290)
    {
        id = 1297136,
        name = "Broodwatcher's Belt",
        itemId = 275620,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 7 },
            { itemId = 12810, name = "Enchanted Leather", count = 3 },
            { itemId = 7080, name = "Essence of Water", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 275596,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Invulnerable Mail (295)
    {
        id = 16746,
        name = "Invulnerable Mail",
        itemId = 12641,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 295, green = 302, gray = 310 },
        reagents = {
            { itemId = 249427, name = "Pristine Leather", count = 20 },
            { itemId = 12810, name = "Enchanted Leather", count = 30 },
            { itemId = 12364, name = "Huge Emerald", count = 6 },
            { itemId = 12800, name = "Azerothian Diamond", count = 6 },
            { itemId = 249429, name = "Pristine Scale", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 12728,
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Friendly",
            itemId = 17022,
            cost = 150000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Heavy Timbermaw Boots (295)
    {
        id = 23629,
        name = "Heavy Timbermaw Boots",
        itemId = 19048,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 300, green = 310, gray = 320 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 7076, name = "Essence of Earth", count = 6 },
            { itemId = 12803, name = "Living Essence", count = 6 },
            { itemId = 14341, name = "Rune Thread", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 576,
            factionName = "Timbermaw Hold",
            level = "Revered",
            itemId = 19204,
            cost = 40000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Timbermaw Brawlers (295)
    {
        id = 23704,
        name = "Timbermaw Brawlers",
        itemId = 19049,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Golden Mantle of the Dawn (295)
    {
        id = 23706,
        name = "Golden Mantle of the Dawn",
        itemId = 19058,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 325, gray = 335 },
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Bileblister Boots (295)
    {
        id = 1297128,
        name = "Bileblister Boots",
        itemId = 275612,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 15 },
            { itemId = 12810, name = "Enchanted Leather", count = 3 },
            { itemId = 7082, name = "Essence of Air", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 275588,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Hivethrasher's Boots (295)
    {
        id = 1297131,
        name = "Hivethrasher's Boots",
        itemId = 275615,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 15 },
            { itemId = 12810, name = "Enchanted Leather", count = 3 },
            { itemId = 7076, name = "Essence of Earth", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 275591,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Scalegut Treaders (295)
    {
        id = 1297134,
        name = "Scalegut Treaders",
        itemId = 275618,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 6 },
            { itemId = 12810, name = "Enchanted Leather", count = 3 },
            { itemId = 7078, name = "Essence of Fire", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 275594,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Broodwatcher's Treaders (295)
    {
        id = 1297137,
        name = "Broodwatcher's Treaders",
        itemId = 275621,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 6 },
            { itemId = 12810, name = "Enchanted Leather", count = 3 },
            { itemId = 7080, name = "Essence of Water", count = 3 },
            { itemId = 14341, name = "Rune Thread", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 275597,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Onyxia Scale Breastplate (300)
    {
        id = 19106,
        name = "Onyxia Scale Breastplate",
        itemId = 15141,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 40 },
            { itemId = 15410, name = "Scale of Onyxia", count = 12 },
            { itemId = 15416, name = "Black Dragonscale", count = 60 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 15780,
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Friendly",
            itemId = 17023,
            cost = 160000,
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Honored",
            itemId = 17025,
            cost = 160000,
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Honored",
            itemId = 19330,
            cost = 60000,
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Revered",
            itemId = 19331,
            cost = 90000,
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Revered",
            itemId = 19332,
            cost = 90000,
        },
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Revered",
            itemId = 19333,
            cost = 90000,
        },
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
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
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Dragonscale Leggings (300)
    {
        id = 24654,
        name = "Blue Dragonscale Leggings",
        itemId = 20295,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 320, gray = 330 },
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
        expansion = C.EXPANSION.FOREVER,
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
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 20382,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Pristine Scorpid Leggings (300)
    {
        id = 1254967,
        name = "Pristine Scorpid Leggings",
        itemId = 252606,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15408, name = "Heavy Scorpid Scale", count = 40 },
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 249429, name = "Pristine Scale", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252940,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Black Dragonscale Helm (300)
    {
        id = 1254968,
        name = "Black Dragonscale Helm",
        itemId = 252605,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15416, name = "Black Dragonscale", count = 40 },
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 249429, name = "Pristine Scale", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252939,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Blue Dragonscale Helm (300)
    {
        id = 1254969,
        name = "Blue Dragonscale Helm",
        itemId = 252604,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15415, name = "Blue Dragonscale", count = 40 },
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 6 },
            { itemId = 249429, name = "Pristine Scale", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252938,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Red Dragonscale Leggings (300)
    {
        id = 1254970,
        name = "Red Dragonscale Leggings",
        itemId = 252603,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15414, name = "Red Dragonscale", count = 40 },
            { itemId = 12810, name = "Enchanted Leather", count = 12 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 249429, name = "Pristine Scale", count = 10 },
            { itemId = 14341, name = "Rune Thread", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252937,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Ironfeather Leggings (300)
    {
        id = 1255012,
        name = "Ironfeather Leggings",
        itemId = 252486,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15420, name = "Ironfeather", count = 120 },
            { itemId = 1529, name = "Jade", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 14341, name = "Rune Thread", count = 4 },
            { itemId = 249429, name = "Pristine Scale", count = 10 },
            { itemId = 248825, name = "Fel Leather", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252895,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Warbear Helm (300)
    {
        id = 1255013,
        name = "Warbear Helm",
        itemId = 252485,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 15419, name = "Warbear Leather", count = 20 },
            { itemId = 14341, name = "Rune Thread", count = 4 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 249429, name = "Pristine Scale", count = 10 },
            { itemId = 248825, name = "Fel Leather", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252894,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Timbermaw Tunic (300)
    {
        id = 1255014,
        name = "Timbermaw Tunic",
        itemId = 252484,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
            { itemId = 12804, name = "Powerful Mojo", count = 20 },
            { itemId = 12803, name = "Living Essence", count = 20 },
            { itemId = 249429, name = "Pristine Scale", count = 10 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 10 },
            { itemId = 248825, name = "Fel Leather", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252893,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dawn Armor (300)
    {
        id = 1255015,
        name = "Dawn Armor",
        itemId = 252483,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 12810, name = "Enchanted Leather", count = 6 },
            { itemId = 12809, name = "Guardian Stone", count = 10 },
            { itemId = 7080, name = "Essence of Water", count = 20 },
            { itemId = 249429, name = "Pristine Scale", count = 10 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 10 },
            { itemId = 248825, name = "Fel Leather", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252892,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Living Crown (300)
    {
        id = 1255016,
        name = "Living Crown",
        itemId = 252561,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 330, gray = 340 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 20 },
            { itemId = 12803, name = "Living Essence", count = 20 },
            { itemId = 7080, name = "Essence of Water", count = 20 },
            { itemId = 249429, name = "Pristine Scale", count = 10 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 14341, name = "Rune Thread", count = 10 },
            { itemId = 248825, name = "Fel Leather", count = 20 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 252891,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Trousers (300)
    {
        id = 1292920,
        name = "Grovekeeper Trousers",
        itemId = 273884,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 5 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 248825, name = "Fel Leather", count = 24 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273952,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Grips (300)
    {
        id = 1292921,
        name = "Grovekeeper Grips",
        itemId = 273885,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273953,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Shoulderpads (300)
    {
        id = 1292923,
        name = "Grovekeeper Shoulderpads",
        itemId = 273886,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273954,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Stompers (300)
    {
        id = 1292924,
        name = "Grovekeeper Stompers",
        itemId = 273887,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273955,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Kilt (300)
    {
        id = 1292925,
        name = "Grovekeeper Kilt",
        itemId = 273888,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 5 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 248825, name = "Fel Leather", count = 24 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273956,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Mitts (300)
    {
        id = 1292926,
        name = "Grovekeeper Mitts",
        itemId = 273889,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273957,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Mantle (300)
    {
        id = 1292927,
        name = "Grovekeeper Mantle",
        itemId = 273890,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273958,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Sandals (300)
    {
        id = 1292928,
        name = "Grovekeeper Sandals",
        itemId = 273891,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273959,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Legguards (300)
    {
        id = 1292929,
        name = "Grovekeeper Legguards",
        itemId = 273892,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 5 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 248825, name = "Fel Leather", count = 24 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273960,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Handguards (300)
    {
        id = 1292930,
        name = "Grovekeeper Handguards",
        itemId = 273893,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273961,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Pauldrons (300)
    {
        id = 1292931,
        name = "Grovekeeper Pauldrons",
        itemId = 273894,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273962,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Boots (300)
    {
        id = 1292932,
        name = "Grovekeeper Boots",
        itemId = 273895,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273963,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Leggings (300)
    {
        id = 1292933,
        name = "Grovekeeper Leggings",
        itemId = 273896,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 5 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 248825, name = "Fel Leather", count = 24 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273964,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Gauntlets (300)
    {
        id = 1292934,
        name = "Grovekeeper Gauntlets",
        itemId = 273897,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273965,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Spaulders (300)
    {
        id = 1292935,
        name = "Grovekeeper Spaulders",
        itemId = 273898,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273966,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grovekeeper Treads (300)
    {
        id = 1292936,
        name = "Grovekeeper Treads",
        itemId = 273899,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273967,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wildstalker's Legguards (300)
    {
        id = 1292937,
        name = "Wildstalker's Legguards",
        itemId = 273900,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 5 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 248825, name = "Fel Leather", count = 24 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273968,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wildstalker's Gauntlets (300)
    {
        id = 1292938,
        name = "Wildstalker's Gauntlets",
        itemId = 273901,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273969,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wildstalker's Spaulders (300)
    {
        id = 1292939,
        name = "Wildstalker's Spaulders",
        itemId = 273902,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273970,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wildstalker's Greaves (300)
    {
        id = 1292940,
        name = "Wildstalker's Greaves",
        itemId = 273903,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273971,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grimstitch Pants (300)
    {
        id = 1292965,
        name = "Grimstitch Pants",
        itemId = 273928,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 5 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 248825, name = "Fel Leather", count = 24 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273996,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grimstitch Gloves (300)
    {
        id = 1292966,
        name = "Grimstitch Gloves",
        itemId = 273929,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273997,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grimstitch Spaulders (300)
    {
        id = 1292967,
        name = "Grimstitch Spaulders",
        itemId = 273930,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273998,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Grimstitch Boots (300)
    {
        id = 1292968,
        name = "Grimstitch Boots",
        itemId = 273931,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 273999,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spiritcaller Leggings (300)
    {
        id = 1292969,
        name = "Spiritcaller Leggings",
        itemId = 273932,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 5 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 248825, name = "Fel Leather", count = 24 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spiritcaller Grips (300)
    {
        id = 1292970,
        name = "Spiritcaller Grips",
        itemId = 273933,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274001,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spiritcaller Spaulders (300)
    {
        id = 1292971,
        name = "Spiritcaller Spaulders",
        itemId = 273934,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274002,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spiritcaller Treads (300)
    {
        id = 1292972,
        name = "Spiritcaller Treads",
        itemId = 273935,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274003,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spiritcaller Pants (300)
    {
        id = 1292973,
        name = "Spiritcaller Pants",
        itemId = 273936,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 5 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 248825, name = "Fel Leather", count = 24 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274004,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spiritcaller Gauntlets (300)
    {
        id = 1292974,
        name = "Spiritcaller Gauntlets",
        itemId = 273937,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274005,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spiritcaller Epaulets (300)
    {
        id = 1292975,
        name = "Spiritcaller Epaulets",
        itemId = 273938,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274006,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spiritcaller Greaves (300)
    {
        id = 1292976,
        name = "Spiritcaller Greaves",
        itemId = 273939,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274007,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spiritcaller Kilt (300)
    {
        id = 1299914,
        name = "Spiritcaller Kilt",
        itemId = 276538,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 5 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 4 },
            { itemId = 248825, name = "Fel Leather", count = 24 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 276542,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spiritcaller Gloves (300)
    {
        id = 1299915,
        name = "Spiritcaller Gloves",
        itemId = 276539,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 276543,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spiritcaller Mantle (300)
    {
        id = 1299916,
        name = "Spiritcaller Mantle",
        itemId = 276540,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 276544,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Spiritcaller Boots (300)
    {
        id = 1299917,
        name = "Spiritcaller Boots",
        itemId = 276541,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
            { itemId = 14341, name = "Rune Thread", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 276545,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elderwild Waistcord (300)
    {
        id = 1306526,
        name = "Elderwild Waistcord",
        itemId = 279252,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 2 },
            { itemId = 248824, name = "Fel Hide", count = 1 },
            { itemId = 248825, name = "Fel Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279301,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Outlaw's Collar (300)
    {
        id = 1306527,
        name = "Outlaw's Collar",
        itemId = 279253,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 248824, name = "Fel Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 22 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279302,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Elderwild Pants (300)
    {
        id = 1306528,
        name = "Elderwild Pants",
        itemId = 279254,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 3 },
            { itemId = 248824, name = "Fel Hide", count = 2 },
            { itemId = 248825, name = "Fel Leather", count = 18 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279303,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Eternity Pauldrons (300)
    {
        id = 1306529,
        name = "Eternity Pauldrons",
        itemId = 279255,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 2 },
            { itemId = 248824, name = "Fel Hide", count = 1 },
            { itemId = 248825, name = "Fel Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279304,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tranquil Wristguards (300)
    {
        id = 1306530,
        name = "Tranquil Wristguards",
        itemId = 279256,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 1 },
            { itemId = 248824, name = "Fel Hide", count = 1 },
            { itemId = 248825, name = "Fel Leather", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279305,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Mourning Handguards (300)
    {
        id = 1306531,
        name = "Mourning Handguards",
        itemId = 279257,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 2 },
            { itemId = 248824, name = "Fel Hide", count = 1 },
            { itemId = 248825, name = "Fel Leather", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279306,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wild Leather Armor Kit (300)
    {
        id = 1306532,
        name = "Wild Leather Armor Kit",
        itemId = 279258,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 248825, name = "Fel Leather", count = 22 },
            { itemId = 14341, name = "Rune Thread", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279307,
        },
        expansion = C.EXPANSION.FOREVER,
    },
}

CraftLib:RegisterProfession("leatherworking", {
    id = C.PROFESSION_ID.LEATHERWORKING,
    name = "Leatherworking",
    expansion = C.EXPANSION.FOREVER,
    profile = "FOREVER",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
