-- Data/Forever/Enchanting/Recipes.lua
-- Enchanting recipes for Forever Classic
-- Generated from DB2 data
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    -- Runed Copper Rod (1)
    {
        id = 7421,
        name = "Runed Copper Rod",
        itemId = 6218,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 5, green = 7, gray = 10 },
        reagents = {
            { itemId = 6217, name = "Copper Rod", count = 1 },
            { itemId = 247786, name = "Mote of Magic", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dust to Motes (1)
    {
        id = 1245320,
        name = "Dust to Motes",
        itemId = 247786,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 10, green = 12, gray = 15 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Novice's Practice Wand (1)
    {
        id = 1245321,
        name = "Novice's Practice Wand",
        itemId = 247789,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 10, green = 12, gray = 15 },
        reagents = {
            { itemId = 4470, name = "Simple Wood", count = 1 },
            { itemId = 247786, name = "Mote of Magic", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Minor Wizard Oil (5)
    {
        id = 25124,
        name = "Minor Wizard Oil",
        itemId = 20744,
        skillRequired = 5,
        skillRange = { orange = 5, yellow = 30, green = 47, gray = 65 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 1 },
            { itemId = 17034, name = "Maple Seed", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20758,
            cost = 500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Magic Wand (10)
    {
        id = 14293,
        name = "Lesser Magic Wand",
        itemId = 11287,
        skillRequired = 10,
        skillRange = { orange = 10, yellow = 75, green = 95, gray = 115 },
        reagents = {
            { itemId = 4470, name = "Simple Wood", count = 1 },
            { itemId = 10938, name = "Lesser Magic Essence", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Inferior Stamina (15)
    {
        id = 7420,
        name = "Enchant Chest - Inferior Stamina",
        skillRequired = 15,
        skillRange = { orange = 15, yellow = 70, green = 90, gray = 110 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Minor Intellect (20)
    {
        id = 7443,
        name = "Enchant Chest - Minor Intellect",
        skillRequired = 20,
        skillRange = { orange = 20, yellow = 80, green = 100, gray = 120 },
        reagents = {
            { itemId = 10938, name = "Lesser Magic Essence", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6342,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Minor Absorption (40)
    {
        id = 7426,
        name = "Enchant Chest - Minor Absorption",
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 90, green = 110, gray = 130 },
        reagents = {
            { itemId = 10938, name = "Lesser Magic Essence", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Minor Resistance (45)
    {
        id = 7454,
        name = "Enchant Cloak - Minor Resistance",
        skillRequired = 45,
        skillRange = { orange = 45, yellow = 95, green = 115, gray = 135 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 1 },
            { itemId = 10938, name = "Lesser Magic Essence", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Minor Stamina (50)
    {
        id = 7457,
        name = "Enchant Bracer - Minor Stamina",
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 100, green = 120, gray = 140 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 2 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Lesser Stamina (60)
    {
        id = 7748,
        name = "Enchant Chest - Lesser Stamina",
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 105, green = 125, gray = 145 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 1 },
            { itemId = 10938, name = "Lesser Magic Essence", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Minor Spirit (60)
    {
        id = 7766,
        name = "Enchant Bracer - Minor Spirit",
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 105, green = 125, gray = 145 },
        reagents = {
            { itemId = 10938, name = "Lesser Magic Essence", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6344,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Greater Magic Wand (70)
    {
        id = 14807,
        name = "Greater Magic Wand",
        itemId = 11288,
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 110, green = 130, gray = 150 },
        reagents = {
            { itemId = 4470, name = "Simple Wood", count = 1 },
            { itemId = 10938, name = "Lesser Magic Essence", count = 2 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Minor Intellect (70)
    {
        id = 1248458,
        name = "Enchant Bracer - Minor Intellect",
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 110, green = 130, gray = 150 },
        reagents = {
            { itemId = 10938, name = "Lesser Magic Essence", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 249474,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Lesser Intellect (80)
    {
        id = 7776,
        name = "Enchant Chest - Lesser Intellect",
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 115, green = 135, gray = 155 },
        reagents = {
            { itemId = 10938, name = "Lesser Magic Essence", count = 2 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6346,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Minor Agility (80)
    {
        id = 7779,
        name = "Enchant Bracer - Minor Agility",
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 115, green = 135, gray = 155 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 1 },
            { itemId = 10938, name = "Lesser Magic Essence", count = 2 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Minor Strength (80)
    {
        id = 7782,
        name = "Enchant Bracer - Minor Strength",
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 115, green = 135, gray = 155 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 3 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6347,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Minor Beastslayer (90)
    {
        id = 7786,
        name = "Enchant Weapon - Minor Beastslayer",
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 2 },
            { itemId = 10939, name = "Greater Magic Essence", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6348,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Minor Striking (90)
    {
        id = 7788,
        name = "Enchant Weapon - Minor Striking",
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 1 },
            { itemId = 10938, name = "Lesser Magic Essence", count = 1 },
            { itemId = 10978, name = "Small Glimmering Shard", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Minor Healing Power (90)
    {
        id = 1248459,
        name = "Enchant Bracer - Minor Healing Power",
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 10938, name = "Lesser Magic Essence", count = 2 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 249475,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Minor Impact (100)
    {
        id = 7745,
        name = "Enchant 2H Weapon - Minor Impact",
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 1 },
            { itemId = 10978, name = "Small Glimmering Shard", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Lesser Intellect (100)
    {
        id = 7793,
        name = "Enchant 2H Weapon - Lesser Intellect",
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 10938, name = "Lesser Magic Essence", count = 4 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6349,
            cost = 500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runed Silver Rod (100)
    {
        id = 7795,
        name = "Runed Silver Rod",
        itemId = 6339,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 6338, name = "Silver Rod", count = 1 },
            { itemId = 10940, name = "Strange Dust", count = 3 },
            { itemId = 10938, name = "Lesser Magic Essence", count = 4 },
            { itemId = 1210, name = "Shadowgem", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Shield - Minor Stamina (105)
    {
        id = 13378,
        name = "Enchant Shield - Minor Stamina",
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
            { itemId = 10940, name = "Strange Dust", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Lesser Spirit (110)
    {
        id = 13380,
        name = "Enchant 2H Weapon - Lesser Spirit",
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 155, gray = 175 },
        reagents = {
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
            { itemId = 10940, name = "Strange Dust", count = 3 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11038,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Minor Agility (110)
    {
        id = 13419,
        name = "Enchant Cloak - Minor Agility",
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 155, gray = 175 },
        reagents = {
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11039,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Lesser Protection (115)
    {
        id = 13421,
        name = "Enchant Cloak - Lesser Protection",
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 3 },
            { itemId = 10978, name = "Small Glimmering Shard", count = 1 },
        },
        tools = { { categoryId = 373, name = "Runed Copper Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Shield - Lesser Protection (115)
    {
        id = 13464,
        name = "Enchant Shield - Lesser Protection",
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 1 },
            { itemId = 10978, name = "Small Glimmering Shard", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11081,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Stamina (120)
    {
        id = 7857,
        name = "Enchant Chest - Stamina",
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 165, gray = 185 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 2 },
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Lesser Spirit (120)
    {
        id = 7859,
        name = "Enchant Bracer - Lesser Spirit",
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 165, gray = 185 },
        reagents = {
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 6375,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Scroll of Spatial Mending (120)
    {
        id = 448624,
        name = "Scroll of Spatial Mending",
        itemId = 220792,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 4470, name = "Simple Wood", count = 1 },
            { itemId = 10940, name = "Strange Dust", count = 4 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 223163,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Lesser Fire Resistance (125)
    {
        id = 7861,
        name = "Enchant Cloak - Lesser Fire Resistance",
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 170, gray = 190 },
        reagents = {
            { itemId = 6371, name = "Fire Oil", count = 1 },
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Boots - Minor Agility (125)
    {
        id = 7867,
        name = "Enchant Boots - Minor Agility",
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 170, gray = 190 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 3 },
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 6377,
            cost = 1000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Shield - Lesser Spirit (130)
    {
        id = 13485,
        name = "Enchant Shield - Lesser Spirit",
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 155, green = 175, gray = 195 },
        reagents = {
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
            { itemId = 10940, name = "Strange Dust", count = 2 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Lesser Stamina (130)
    {
        id = 13501,
        name = "Enchant Bracer - Lesser Stamina",
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 155, green = 175, gray = 195 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Tenets of the Silver Hand (130)
    {
        id = 1248754,
        name = "Tenets of the Silver Hand",
        itemId = 249397,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 11084, name = "Large Glimmering Shard", count = 1 },
            { itemId = 10939, name = "Greater Magic Essence", count = 1 },
            { itemId = 10940, name = "Strange Dust", count = 2 },
            { itemId = 3013, name = "Scroll of Protection", count = 5 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249477,
            cost = 3250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Polished Driftwood Icon (130)
    {
        id = 1248755,
        name = "Polished Driftwood Icon",
        itemId = 249398,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 11084, name = "Large Glimmering Shard", count = 1 },
            { itemId = 10939, name = "Greater Magic Essence", count = 2 },
            { itemId = 10940, name = "Strange Dust", count = 3 },
            { itemId = 4470, name = "Simple Wood", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249478,
            cost = 3250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Lesser Shadow Resistance (135)
    {
        id = 13522,
        name = "Enchant Cloak - Lesser Shadow Resistance",
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 160, green = 180, gray = 200 },
        reagents = {
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
            { itemId = 6048, name = "Shadow Protection Potion", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11098,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Lesser Striking (140)
    {
        id = 13503,
        name = "Enchant Weapon - Lesser Striking",
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 165, green = 185, gray = 205 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 1 },
            { itemId = 11084, name = "Large Glimmering Shard", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Lesser Strength (140)
    {
        id = 13536,
        name = "Enchant Bracer - Lesser Strength",
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 165, green = 185, gray = 205 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 11101,
            cost = 2500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Lesser Absorption (140)
    {
        id = 13538,
        name = "Enchant Chest - Lesser Absorption",
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 165, green = 185, gray = 205 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 1 },
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
            { itemId = 11084, name = "Large Glimmering Shard", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Lesser Agility (140)
    {
        id = 1248460,
        name = "Enchant Bracer - Lesser Agility",
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 165, green = 185, gray = 205 },
        reagents = {
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 249486,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Glimmering Staff (140)
    {
        id = 1248703,
        name = "Glimmering Staff",
        itemId = 249392,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 11084, name = "Large Glimmering Shard", count = 4 },
            { itemId = 10978, name = "Small Glimmering Shard", count = 2 },
            { itemId = 11291, name = "Star Wood", count = 4 },
            { itemId = 11082, name = "Greater Astral Essence", count = 1 },
            { itemId = 10940, name = "Strange Dust", count = 5 },
            { itemId = 249391, name = "Pyrite", count = 3 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249482,
            cost = 3500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Soulstaff (140)
    {
        id = 1248739,
        name = "Soulstaff",
        itemId = 249393,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 11084, name = "Large Glimmering Shard", count = 2 },
            { itemId = 10978, name = "Small Glimmering Shard", count = 1 },
            { itemId = 11291, name = "Star Wood", count = 4 },
            { itemId = 11082, name = "Greater Astral Essence", count = 1 },
            { itemId = 11083, name = "Soul Dust", count = 6 },
            { itemId = 1210, name = "Shadowgem", count = 2 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249483,
            cost = 3500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Orb of Mystic Insight (140)
    {
        id = 1248745,
        name = "Orb of Mystic Insight",
        itemId = 249394,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 10978, name = "Small Glimmering Shard", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
            { itemId = 10940, name = "Strange Dust", count = 5 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249484,
            cost = 3500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Orb of Souls (140)
    {
        id = 1248748,
        name = "Orb of Souls",
        itemId = 249395,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 10978, name = "Small Glimmering Shard", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
            { itemId = 11083, name = "Soul Dust", count = 2 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249485,
            cost = 3500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Insight (140)
    {
        id = 1248757,
        name = "Enchant Weapon - Insight",
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 10 },
            { itemId = 11084, name = "Large Glimmering Shard", count = 4 },
            { itemId = 11082, name = "Greater Astral Essence", count = 4 },
            { itemId = 249391, name = "Pyrite", count = 4 },
            { itemId = 249399, name = "Frilled Lichen", count = 4 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249479,
            cost = 3500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Recovery (140)
    {
        id = 1248760,
        name = "Enchant Weapon - Recovery",
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 6 },
            { itemId = 11084, name = "Large Glimmering Shard", count = 4 },
            { itemId = 11082, name = "Greater Astral Essence", count = 6 },
            { itemId = 249391, name = "Pyrite", count = 4 },
            { itemId = 2775, name = "Silver Ore", count = 4 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249480,
            cost = 3500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Revelation (140)
    {
        id = 1248805,
        name = "Enchant Weapon - Revelation",
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 8 },
            { itemId = 11084, name = "Large Glimmering Shard", count = 6 },
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 249410, name = "Sulfuric Acid", count = 4 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249481,
            cost = 3500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Lesser Impact (145)
    {
        id = 13529,
        name = "Enchant 2H Weapon - Lesser Impact",
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 170, green = 190, gray = 210 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 1 },
            { itemId = 11084, name = "Large Glimmering Shard", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Intellect (145)
    {
        id = 13607,
        name = "Enchant Chest - Intellect",
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 170, green = 190, gray = 210 },
        reagents = {
            { itemId = 11082, name = "Greater Astral Essence", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Mining (145)
    {
        id = 13612,
        name = "Enchant Gloves - Mining",
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 170, green = 190, gray = 210 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 1 },
            { itemId = 2772, name = "Iron Ore", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11150,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Herbalism (145)
    {
        id = 13617,
        name = "Enchant Gloves - Herbalism",
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 170, green = 190, gray = 210 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 1 },
            { itemId = 3356, name = "Kingsblood", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11151,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Fishing (145)
    {
        id = 13620,
        name = "Enchant Gloves - Fishing",
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 170, green = 190, gray = 210 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 1 },
            { itemId = 6370, name = "Blackmouth Oil", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11152,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Lesser Intellect (150)
    {
        id = 13622,
        name = "Enchant Bracer - Lesser Intellect",
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 11082, name = "Greater Astral Essence", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Minor Stats (150)
    {
        id = 13626,
        name = "Enchant Chest - Minor Stats",
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
            { itemId = 11083, name = "Soul Dust", count = 1 },
            { itemId = 11084, name = "Large Glimmering Shard", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runed Golden Rod (150)
    {
        id = 13628,
        name = "Runed Golden Rod",
        itemId = 11130,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 11128, name = "Golden Rod", count = 1 },
            { itemId = 5500, name = "Iridescent Pearl", count = 1 },
            { itemId = 11082, name = "Greater Astral Essence", count = 1 },
            { itemId = 11083, name = "Soul Dust", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Minor Mana Oil (150)
    {
        id = 25125,
        name = "Minor Mana Oil",
        itemId = 20745,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 160, green = 170, gray = 180 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 1 },
            { itemId = 17034, name = "Maple Seed", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20752,
            cost = 3000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Shield - Lesser Stamina (155)
    {
        id = 13631,
        name = "Enchant Shield - Lesser Stamina",
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Defense (155)
    {
        id = 13635,
        name = "Enchant Cloak - Defense",
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 11138, name = "Small Glowing Shard", count = 1 },
            { itemId = 11083, name = "Soul Dust", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Mystic Wand (155)
    {
        id = 14809,
        name = "Lesser Mystic Wand",
        itemId = 11289,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 11291, name = "Star Wood", count = 1 },
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Boots - Lesser Agility (160)
    {
        id = 13637,
        name = "Enchant Boots - Lesser Agility",
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 200, gray = 220 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Greater Stamina (160)
    {
        id = 13640,
        name = "Enchant Chest - Greater Stamina",
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 200, gray = 220 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 2 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Spirit (165)
    {
        id = 13642,
        name = "Enchant Bracer - Spirit",
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 185, green = 205, gray = 225 },
        reagents = {
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Boots - Lesser Stamina (170)
    {
        id = 13644,
        name = "Enchant Boots - Lesser Stamina",
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 190, green = 210, gray = 230 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 2 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Lesser Deflection (170)
    {
        id = 13646,
        name = "Enchant Bracer - Lesser Deflection",
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 190, green = 210, gray = 230 },
        reagents = {
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
            { itemId = 11083, name = "Soul Dust", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 11163,
            cost = 3000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Stamina (170)
    {
        id = 13648,
        name = "Enchant Bracer - Stamina",
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 190, green = 210, gray = 230 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 3 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Lesser Beastslayer (175)
    {
        id = 13653,
        name = "Enchant Weapon - Lesser Beastslayer",
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 215, gray = 235 },
        reagents = {
            { itemId = 5637, name = "Large Fang", count = 1 },
            { itemId = 11138, name = "Small Glowing Shard", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11164,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Lesser Elemental Slayer (175)
    {
        id = 13655,
        name = "Enchant Weapon - Lesser Elemental Slayer",
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 215, gray = 235 },
        reagents = {
            { itemId = 7067, name = "Elemental Earth", count = 1 },
            { itemId = 11138, name = "Small Glowing Shard", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11165,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Fire Resistance (175)
    {
        id = 13657,
        name = "Enchant Cloak - Fire Resistance",
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 215, gray = 235 },
        reagents = {
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
            { itemId = 7068, name = "Elemental Fire", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Shield - Spirit (180)
    {
        id = 13659,
        name = "Enchant Shield - Spirit",
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 200, green = 220, gray = 240 },
        reagents = {
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
            { itemId = 11137, name = "Vision Dust", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Strength (180)
    {
        id = 13661,
        name = "Enchant Bracer - Strength",
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 200, green = 220, gray = 240 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Greater Intellect (185)
    {
        id = 13663,
        name = "Enchant Chest - Greater Intellect",
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 225, gray = 245 },
        reagents = {
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Twisted Nether Wand (185)
    {
        id = 1248461,
        name = "Twisted Nether Wand",
        itemId = 249144,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 225, gray = 245 },
        reagents = {
            { itemId = 11174, name = "Lesser Nether Essence", count = 1 },
            { itemId = 11176, name = "Dream Dust", count = 1 },
            { itemId = 11291, name = "Star Wood", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 249487,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Boots - Lesser Spirit (190)
    {
        id = 13687,
        name = "Enchant Boots - Lesser Spirit",
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 230, gray = 250 },
        reagents = {
            { itemId = 11134, name = "Lesser Mystic Essence", count = 2 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11167,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Winter's Might (190)
    {
        id = 21931,
        name = "Enchant Weapon - Winter's Might",
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 230, gray = 250 },
        reagents = {
            { itemId = 11135, name = "Greater Mystic Essence", count = 1 },
            { itemId = 11137, name = "Vision Dust", count = 1 },
            { itemId = 11139, name = "Large Glowing Shard", count = 1 },
            { itemId = 3819, name = "Wintersbite", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 17725,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Agility (190)
    {
        id = 1248497,
        name = "Enchant Bracer - Agility",
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 249488,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Shield - Lesser Block (195)
    {
        id = 13689,
        name = "Enchant Shield - Lesser Block",
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 11135, name = "Greater Mystic Essence", count = 1 },
            { itemId = 11137, name = "Vision Dust", count = 1 },
            { itemId = 11139, name = "Large Glowing Shard", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11168,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Striking (195)
    {
        id = 13693,
        name = "Enchant Weapon - Striking",
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 11135, name = "Greater Mystic Essence", count = 1 },
            { itemId = 11139, name = "Large Glowing Shard", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Impact (200)
    {
        id = 13695,
        name = "Enchant 2H Weapon - Impact",
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 2 },
            { itemId = 11139, name = "Large Glowing Shard", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Skinning (200)
    {
        id = 13698,
        name = "Enchant Gloves - Skinning",
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 1 },
            { itemId = 7392, name = "Green Whelp Scale", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11166,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Lesser Stats (200)
    {
        id = 13700,
        name = "Enchant Chest - Lesser Stats",
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 11135, name = "Greater Mystic Essence", count = 1 },
            { itemId = 11137, name = "Vision Dust", count = 1 },
            { itemId = 11139, name = "Large Glowing Shard", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runed Truesilver Rod (200)
    {
        id = 13702,
        name = "Runed Truesilver Rod",
        itemId = 11145,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 11144, name = "Truesilver Rod", count = 1 },
            { itemId = 7971, name = "Black Pearl", count = 1 },
            { itemId = 11135, name = "Greater Mystic Essence", count = 1 },
            { itemId = 11137, name = "Vision Dust", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Wizard Oil (200)
    {
        id = 25126,
        name = "Lesser Wizard Oil",
        itemId = 20746,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 210, green = 220, gray = 230 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 1 },
            { itemId = 17035, name = "Stranglethorn Seed", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20753,
            cost = 4000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Greater Defense (205)
    {
        id = 13746,
        name = "Enchant Cloak - Greater Defense",
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Resistance (205)
    {
        id = 13794,
        name = "Enchant Cloak - Resistance",
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11174, name = "Lesser Nether Essence", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Lesser Healing Power (205)
    {
        id = 1248498,
        name = "Enchant Bracer - Lesser Healing Power",
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11134, name = "Lesser Mystic Essence", count = 2 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.QUEST,
            itemId = 249489,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Agility (210)
    {
        id = 13815,
        name = "Enchant Gloves - Agility",
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Shield - Stamina (210)
    {
        id = 13817,
        name = "Enchant Shield - Stamina",
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 2 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11202,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Intellect (210)
    {
        id = 13822,
        name = "Enchant Bracer - Intellect",
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 11174, name = "Lesser Nether Essence", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Lesser Agility (210)
    {
        id = 1248510,
        name = "Enchant 2H Weapon - Lesser Agility",
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 2 },
            { itemId = 11139, name = "Large Glowing Shard", count = 1 },
            { itemId = 11174, name = "Lesser Nether Essence", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 249511,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Talons of Wrath (210)
    {
        id = 1248974,
        name = "Talons of Wrath",
        itemId = 249441,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 2 },
            { itemId = 11175, name = "Greater Nether Essence", count = 4 },
            { itemId = 11176, name = "Dream Dust", count = 6 },
            { itemId = 249430, name = "Magenta Dye", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 1 },
            { itemId = 11291, name = "Star Wood", count = 1 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249493,
            cost = 5250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Totem of Ancestral Protection (210)
    {
        id = 1249015,
        name = "Totem of Ancestral Protection",
        itemId = 249443,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 4 },
            { itemId = 11175, name = "Greater Nether Essence", count = 2 },
            { itemId = 11176, name = "Dream Dust", count = 2 },
            { itemId = 249432, name = "Sandpaper", count = 4 },
            { itemId = 249410, name = "Sulfuric Acid", count = 2 },
            { itemId = 11291, name = "Star Wood", count = 2 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249495,
            cost = 5250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Necklace - Strength (210)
    {
        id = 1249019,
        name = "Enchant Necklace - Strength",
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11175, name = "Greater Nether Essence", count = 4 },
            { itemId = 11178, name = "Large Radiant Shard", count = 4 },
            { itemId = 11176, name = "Dream Dust", count = 10 },
            { itemId = 249410, name = "Sulfuric Acid", count = 4 },
            { itemId = 249425, name = "Bauxite", count = 4 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249496,
            cost = 5250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Necklace - Spell Power (210)
    {
        id = 1249057,
        name = "Enchant Necklace - Spell Power",
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11175, name = "Greater Nether Essence", count = 5 },
            { itemId = 11178, name = "Large Radiant Shard", count = 3 },
            { itemId = 11176, name = "Dream Dust", count = 8 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249502,
            cost = 5250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Necklace - Healing Power (210)
    {
        id = 1249058,
        name = "Enchant Necklace - Healing Power",
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11175, name = "Greater Nether Essence", count = 3 },
            { itemId = 11178, name = "Large Radiant Shard", count = 5 },
            { itemId = 11176, name = "Dream Dust", count = 4 },
            { itemId = 249391, name = "Pyrite", count = 4 },
            { itemId = 249424, name = "Rosecap", count = 4 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249503,
            cost = 5250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Necklace - Agility (210)
    {
        id = 1249059,
        name = "Enchant Necklace - Agility",
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11175, name = "Greater Nether Essence", count = 2 },
            { itemId = 11178, name = "Large Radiant Shard", count = 8 },
            { itemId = 11176, name = "Dream Dust", count = 6 },
            { itemId = 249410, name = "Sulfuric Acid", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249504,
            cost = 5250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Necklace - Deflection (210)
    {
        id = 1249060,
        name = "Enchant Necklace - Deflection",
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11175, name = "Greater Nether Essence", count = 8 },
            { itemId = 11178, name = "Large Radiant Shard", count = 2 },
            { itemId = 11176, name = "Dream Dust", count = 2 },
            { itemId = 249409, name = "Cerulean Dye", count = 4 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249505,
            cost = 5250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Boots - Stamina (215)
    {
        id = 13836,
        name = "Enchant Boots - Stamina",
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 235, green = 255, gray = 275 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 2 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Advanced Mining (215)
    {
        id = 13841,
        name = "Enchant Gloves - Advanced Mining",
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 235, green = 255, gray = 275 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 2 },
            { itemId = 6037, name = "Truesilver Bar", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11203,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dreambough Wand (215)
    {
        id = 1248509,
        name = "Dreambough Wand",
        itemId = 249234,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 235, green = 255, gray = 275 },
        reagents = {
            { itemId = 11174, name = "Lesser Nether Essence", count = 2 },
            { itemId = 11137, name = "Vision Dust", count = 1 },
            { itemId = 11291, name = "Star Wood", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 249512,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Greater Spirit (220)
    {
        id = 13846,
        name = "Enchant Bracer - Greater Spirit",
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 11174, name = "Lesser Nether Essence", count = 1 },
            { itemId = 11137, name = "Vision Dust", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11204,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Superior Stamina (220)
    {
        id = 13858,
        name = "Enchant Chest - Superior Stamina",
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 3 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Lesser Strength (220)
    {
        id = 1248511,
        name = "Enchant 2H Weapon - Lesser Strength",
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 1 },
            { itemId = 11139, name = "Large Glowing Shard", count = 1 },
            { itemId = 11174, name = "Lesser Nether Essence", count = 2 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 249513,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Radiant Staff (220)
    {
        id = 1249061,
        name = "Radiant Staff",
        itemId = 249453,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 6 },
            { itemId = 11177, name = "Small Radiant Shard", count = 2 },
            { itemId = 11291, name = "Star Wood", count = 4 },
            { itemId = 11175, name = "Greater Nether Essence", count = 4 },
            { itemId = 11176, name = "Dream Dust", count = 6 },
            { itemId = 249409, name = "Cerulean Dye", count = 2 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249506,
            cost = 5500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dreamstaff (220)
    {
        id = 1249064,
        name = "Dreamstaff",
        itemId = 249454,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 4 },
            { itemId = 11177, name = "Small Radiant Shard", count = 4 },
            { itemId = 11291, name = "Star Wood", count = 4 },
            { itemId = 11175, name = "Greater Nether Essence", count = 6 },
            { itemId = 11176, name = "Dream Dust", count = 8 },
            { itemId = 249409, name = "Cerulean Dye", count = 2 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249507,
            cost = 5500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Truesilver Conduit (220)
    {
        id = 1249069,
        name = "Truesilver Conduit",
        itemId = 249455,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 3 },
            { itemId = 11177, name = "Small Radiant Shard", count = 1 },
            { itemId = 11291, name = "Star Wood", count = 2 },
            { itemId = 11175, name = "Greater Nether Essence", count = 2 },
            { itemId = 11176, name = "Dream Dust", count = 3 },
            { itemId = 249409, name = "Cerulean Dye", count = 1 },
            { itemId = 249430, name = "Magenta Dye", count = 2 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249508,
            cost = 5500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Twisting Essence Jar (220)
    {
        id = 1249070,
        name = "Twisting Essence Jar",
        itemId = 249456,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 6037, name = "Truesilver Bar", count = 4 },
            { itemId = 11175, name = "Greater Nether Essence", count = 12 },
            { itemId = 11135, name = "Greater Mystic Essence", count = 12 },
            { itemId = 249409, name = "Cerulean Dye", count = 1 },
            { itemId = 249430, name = "Magenta Dye", count = 2 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249509,
            cost = 5500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Absorption (220)
    {
        id = 1249071,
        name = "Enchant Chest - Absorption",
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 10 },
            { itemId = 11175, name = "Greater Nether Essence", count = 4 },
            { itemId = 11178, name = "Large Radiant Shard", count = 2 },
        },
        tools = { { categoryId = 374, name = "Runed Silver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249510,
            cost = 5500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Advanced Herbalism (225)
    {
        id = 13868,
        name = "Enchant Gloves - Advanced Herbalism",
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 265, gray = 285 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 2 },
            { itemId = 8838, name = "Sungrass", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11205,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Strength (225)
    {
        id = 13887,
        name = "Enchant Gloves - Strength",
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 265, gray = 285 },
        reagents = {
            { itemId = 11174, name = "Lesser Nether Essence", count = 1 },
            { itemId = 11137, name = "Vision Dust", count = 2 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Boots - Minor Speed (225)
    {
        id = 13890,
        name = "Enchant Boots - Minor Speed",
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 265, gray = 285 },
        reagents = {
            { itemId = 11177, name = "Small Radiant Shard", count = 1 },
            { itemId = 7909, name = "Aquamarine", count = 1 },
            { itemId = 11174, name = "Lesser Nether Essence", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Sigil of Innovation (225)
    {
        id = 439156,
        name = "Sigil of Innovation",
        itemId = 217308,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 225, green = 227, gray = 230 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 5 },
        },
        tools = { { categoryId = 375, name = "Runed Golden Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 215141,
            cost = 50000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Shield - Greater Spirit (230)
    {
        id = 13905,
        name = "Enchant Shield - Greater Spirit",
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 270, gray = 290 },
        reagents = {
            { itemId = 11174, name = "Lesser Nether Essence", count = 2 },
            { itemId = 11176, name = "Dream Dust", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Demonslaying (230)
    {
        id = 13915,
        name = "Enchant Weapon - Demonslaying",
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 270, gray = 290 },
        reagents = {
            { itemId = 11177, name = "Small Radiant Shard", count = 1 },
            { itemId = 11176, name = "Dream Dust", count = 1 },
            { itemId = 9224, name = "Potion of Demon Slaying", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11208,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Superior Intellect (230)
    {
        id = 13917,
        name = "Enchant Chest - Superior Intellect",
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 270, gray = 290 },
        reagents = {
            { itemId = 11175, name = "Greater Nether Essence", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Deflection (235)
    {
        id = 13931,
        name = "Enchant Bracer - Deflection",
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 275, gray = 295 },
        reagents = {
            { itemId = 11174, name = "Lesser Nether Essence", count = 2 },
            { itemId = 11176, name = "Dream Dust", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 11223,
            cost = 5800,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Shield - Frost Resistance (235)
    {
        id = 13933,
        name = "Enchant Shield - Frost Resistance",
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 275, gray = 295 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 1 },
            { itemId = 3829, name = "Frost Oil", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11224,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Boots - Agility (235)
    {
        id = 13935,
        name = "Enchant Boots - Agility",
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 275, gray = 295 },
        reagents = {
            { itemId = 11175, name = "Greater Nether Essence", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Greater Impact (240)
    {
        id = 13937,
        name = "Enchant 2H Weapon - Greater Impact",
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 280, gray = 300 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 1 },
            { itemId = 11176, name = "Dream Dust", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Greater Strength (240)
    {
        id = 13939,
        name = "Enchant Bracer - Greater Strength",
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 280, gray = 300 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 1 },
            { itemId = 11174, name = "Lesser Nether Essence", count = 2 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Greater Agility (240)
    {
        id = 1248500,
        name = "Enchant Bracer - Greater Agility",
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 280, gray = 300 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 3 },
            { itemId = 11174, name = "Lesser Nether Essence", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 249514,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Stats (245)
    {
        id = 13941,
        name = "Enchant Chest - Stats",
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 1 },
            { itemId = 11176, name = "Dream Dust", count = 1 },
            { itemId = 11175, name = "Greater Nether Essence", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Greater Striking (245)
    {
        id = 13943,
        name = "Enchant Weapon - Greater Striking",
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 1 },
            { itemId = 11175, name = "Greater Nether Essence", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Greater Stamina (245)
    {
        id = 13945,
        name = "Enchant Bracer - Greater Stamina",
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 3 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11225,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Eternal Wand (245)
    {
        id = 1248505,
        name = "Lesser Eternal Wand",
        itemId = 249232,
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 16202, name = "Lesser Eternal Essence", count = 1 },
            { itemId = 11176, name = "Dream Dust", count = 1 },
            { itemId = 11291, name = "Star Wood", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 249515,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Riding Skill (250)
    {
        id = 13947,
        name = "Enchant Gloves - Riding Skill",
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 290, gray = 310 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 1 },
            { itemId = 11176, name = "Dream Dust", count = 2 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11226,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Minor Haste (250)
    {
        id = 13948,
        name = "Enchant Gloves - Minor Haste",
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 290, gray = 310 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 1 },
            { itemId = 8153, name = "Wildvine", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchanted Thorium (250)
    {
        id = 17180,
        name = "Enchanted Thorium",
        itemId = 12655,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 12359, name = "Thorium Bar", count = 1 },
            { itemId = 11176, name = "Dream Dust", count = 3 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchanted Leather (250)
    {
        id = 17181,
        name = "Enchanted Leather",
        itemId = 12810,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 8170, name = "Rugged Leather", count = 1 },
            { itemId = 16202, name = "Lesser Eternal Essence", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Lesser Mana Oil (250)
    {
        id = 25127,
        name = "Lesser Mana Oil",
        itemId = 20747,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 1 },
            { itemId = 8831, name = "Purple Lotus", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20754,
            cost = 10000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Advanced Skinning (250)
    {
        id = 1248528,
        name = "Enchant Gloves - Advanced Skinning",
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 290, gray = 310 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 2 },
            { itemId = 15407, name = "Cured Rugged Hide", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 249516,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Greater Intellect (255)
    {
        id = 20008,
        name = "Enchant Bracer - Greater Intellect",
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 295, gray = 315 },
        reagents = {
            { itemId = 16202, name = "Lesser Eternal Essence", count = 2 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16214,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Boots - Greater Stamina (260)
    {
        id = 20020,
        name = "Enchant Boots - Greater Stamina",
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 300, gray = 320 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 6 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16215,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Fiery Weapon (265)
    {
        id = 13898,
        name = "Enchant Weapon - Fiery Weapon",
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 305, gray = 325 },
        reagents = {
            { itemId = 11177, name = "Small Radiant Shard", count = 2 },
            { itemId = 7078, name = "Essence of Fire", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11207,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Smoking Heart of the Mountain (265)
    {
        id = 15596,
        name = "Smoking Heart of the Mountain",
        itemId = 11811,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 305, gray = 325 },
        reagents = {
            { itemId = 11382, name = "Blood of the Mountain", count = 1 },
            { itemId = 7078, name = "Essence of Fire", count = 1 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 11813,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Greater Resistance (265)
    {
        id = 20014,
        name = "Enchant Cloak - Greater Resistance",
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 305, gray = 325 },
        reagents = {
            { itemId = 16202, name = "Lesser Eternal Essence", count = 1 },
            { itemId = 7077, name = "Heart of Fire", count = 1 },
            { itemId = 7075, name = "Core of Earth", count = 1 },
            { itemId = 7079, name = "Globe of Water", count = 1 },
            { itemId = 7081, name = "Breath of Wind", count = 1 },
            { itemId = 7972, name = "Ichor of Undeath", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16216,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Shield - Greater Stamina (265)
    {
        id = 20017,
        name = "Enchant Shield - Greater Stamina",
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 305, gray = 325 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 6 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16217,
            cost = 12000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Frozen Heart of the Mountain (265)
    {
        id = 1249107,
        name = "Frozen Heart of the Mountain",
        itemId = 249469,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 305, gray = 325 },
        reagents = {
            { itemId = 11382, name = "Blood of the Mountain", count = 1 },
            { itemId = 12808, name = "Essence of Undeath", count = 1 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 249519,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Molten Heart of the Mountain (265)
    {
        id = 1249112,
        name = "Molten Heart of the Mountain",
        itemId = 249470,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 305, gray = 325 },
        reagents = {
            { itemId = 11382, name = "Blood of the Mountain", count = 1 },
            { itemId = 7076, name = "Essence of Earth", count = 1 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 249520,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Dormant Heart of the Mountain (265)
    {
        id = 1249114,
        name = "Dormant Heart of the Mountain",
        itemId = 249473,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 305, gray = 325 },
        reagents = {
            { itemId = 11382, name = "Blood of the Mountain", count = 1 },
            { itemId = 7080, name = "Essence of Water", count = 1 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 249521,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Superior Spirit (270)
    {
        id = 20009,
        name = "Enchant Bracer - Superior Spirit",
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 310, gray = 330 },
        reagents = {
            { itemId = 16202, name = "Lesser Eternal Essence", count = 2 },
            { itemId = 11176, name = "Dream Dust", count = 7 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16218,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Greater Agility (270)
    {
        id = 20012,
        name = "Enchant Gloves - Greater Agility",
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 310, gray = 330 },
        reagents = {
            { itemId = 16202, name = "Lesser Eternal Essence", count = 2 },
            { itemId = 16204, name = "Illusion Dust", count = 2 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16219,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Boots - Spirit (275)
    {
        id = 20024,
        name = "Enchant Boots - Spirit",
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 315, gray = 335 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 2 },
            { itemId = 16202, name = "Lesser Eternal Essence", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16220,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Major Stamina (275)
    {
        id = 20026,
        name = "Enchant Chest - Major Stamina",
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 315, gray = 335 },
        reagents = {
            { itemId = 16204, name = "Illusion Dust", count = 6 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16221,
            cost = 16000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Wizard Oil (275)
    {
        id = 25128,
        name = "Wizard Oil",
        itemId = 20750,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 16204, name = "Illusion Dust", count = 3 },
            { itemId = 4625, name = "Firebloom", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 20755,
            cost = 20000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Conductive Shield Coating (275)
    {
        id = 463869,
        name = "Conductive Shield Coating",
        itemId = 228980,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 16204, name = "Illusion Dust", count = 2 },
            { itemId = 4625, name = "Firebloom", count = 1 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 228981,
            cost = 20000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Greater Eternal Wand (275)
    {
        id = 1248515,
        name = "Greater Eternal Wand",
        itemId = 249237,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 285, green = 295, gray = 305 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 2 },
            { itemId = 16204, name = "Illusion Dust", count = 1 },
            { itemId = 11291, name = "Star Wood", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 249522,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brilliant Wand (275)
    {
        id = 1248650,
        name = "Brilliant Wand",
        itemId = 249385,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 1 },
            { itemId = 16204, name = "Illusion Dust", count = 3 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 2 },
            { itemId = 11291, name = "Star Wood", count = 1 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249537,
            cost = 6875,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Shield - Superior Spirit (280)
    {
        id = 20016,
        name = "Enchant Shield - Superior Spirit",
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 300, green = 320, gray = 340 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 2 },
            { itemId = 16204, name = "Illusion Dust", count = 4 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16222,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Grand Arcanist (280)
    {
        id = 1231139,
        name = "Enchant 2H Weapon - Grand Arcanist",
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 305, green = 307, gray = 310 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 10 },
            { itemId = 12811, name = "Righteous Orb", count = 4 },
            { itemId = 20725, name = "Nexus Crystal", count = 4 },
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 241195,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Grand Inquisitor (280)
    {
        id = 1232172,
        name = "Enchant 2H Weapon - Grand Inquisitor",
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 305, green = 307, gray = 310 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 10 },
            { itemId = 12811, name = "Righteous Orb", count = 6 },
            { itemId = 20725, name = "Nexus Crystal", count = 4 },
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 242361,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Superior Defense (285)
    {
        id = 20015,
        name = "Enchant Cloak - Superior Defense",
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 16204, name = "Illusion Dust", count = 8 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16224,
            cost = 20000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Icy Chill (285)
    {
        id = 20029,
        name = "Enchant Weapon - Icy Chill",
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 305, green = 325, gray = 345 },
        reagents = {
            { itemId = 14343, name = "Small Brilliant Shard", count = 4 },
            { itemId = 7080, name = "Essence of Water", count = 1 },
            { itemId = 7082, name = "Essence of Air", count = 1 },
            { itemId = 13467, name = "Icecap", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16223,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Major Intellect (290)
    {
        id = 20028,
        name = "Enchant Chest - Major Intellect",
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 330, gray = 350 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 3 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16242,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Runed Arcanite Rod (290)
    {
        id = 20051,
        name = "Runed Arcanite Rod",
        itemId = 16207,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 330, gray = 350 },
        reagents = {
            { itemId = 16206, name = "Arcanite Rod", count = 1 },
            { itemId = 13926, name = "Golden Pearl", count = 1 },
            { itemId = 16204, name = "Illusion Dust", count = 10 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 4 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 4 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 16243,
            cost = 22000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Strength (290)
    {
        id = 23799,
        name = "Enchant Weapon - Strength",
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 330, gray = 350 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 6 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 6 },
            { itemId = 16204, name = "Illusion Dust", count = 4 },
            { itemId = 7076, name = "Essence of Earth", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Friendly",
            itemId = 19444,
            cost = 30000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Agility (290)
    {
        id = 23800,
        name = "Enchant Weapon - Agility",
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 330, gray = 350 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 6 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 6 },
            { itemId = 16204, name = "Illusion Dust", count = 4 },
            { itemId = 7082, name = "Essence of Air", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 576,
            factionName = "Timbermaw Hold",
            level = "Honored",
            itemId = 19445,
            cost = 30000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Mana Regeneration (290)
    {
        id = 23801,
        name = "Enchant Bracer - Mana Regeneration",
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 330, gray = 350 },
        reagents = {
            { itemId = 16204, name = "Illusion Dust", count = 16 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 4 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Honored",
            itemId = 19446,
            cost = 30000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Agility (290)
    {
        id = 27837,
        name = "Enchant 2H Weapon - Agility",
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 330, gray = 350 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 10 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 6 },
            { itemId = 16204, name = "Illusion Dust", count = 14 },
            { itemId = 7082, name = "Essence of Air", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 576,
            factionName = "Timbermaw Hold",
            level = "Friendly",
            itemId = 22392,
            cost = 25000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Sigil of Flowing Waters (290)
    {
        id = 463866,
        name = "Sigil of Flowing Waters",
        itemId = 228978,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 305, green = 312, gray = 320 },
        reagents = {
            { itemId = 16204, name = "Illusion Dust", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 749,
            factionName = "Hydraxian Waterlords",
            level = "Revered",
            itemId = 228979,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Strength (290)
    {
        id = 1248668,
        name = "Enchant 2H Weapon - Strength",
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 8 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 10 },
            { itemId = 16204, name = "Illusion Dust", count = 8 },
            { itemId = 12363, name = "Arcane Crystal", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 249523,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Superior Strength (295)
    {
        id = 20010,
        name = "Enchant Bracer - Superior Strength",
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 16204, name = "Illusion Dust", count = 6 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 6 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16246,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Greater Strength (295)
    {
        id = 20013,
        name = "Enchant Gloves - Greater Strength",
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 4 },
            { itemId = 16204, name = "Illusion Dust", count = 4 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16244,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Boots - Greater Agility (295)
    {
        id = 20023,
        name = "Enchant Boots - Greater Agility",
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 8 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16245,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Superior Impact (295)
    {
        id = 20030,
        name = "Enchant 2H Weapon - Superior Impact",
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 4 },
            { itemId = 16204, name = "Illusion Dust", count = 10 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16247,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Unholy Weapon (295)
    {
        id = 20033,
        name = "Enchant Weapon - Unholy Weapon",
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 4 },
            { itemId = 12808, name = "Essence of Undeath", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16248,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Superior Agility (295)
    {
        id = 1248599,
        name = "Enchant Bracer - Superior Agility",
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 16204, name = "Illusion Dust", count = 3 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 3 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 1 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 249524,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Lotus Claw (295)
    {
        id = 1294054,
        name = "Enchant Gloves - Lotus Claw",
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 295, green = 297, gray = 300 },
        reagents = {
            { itemId = 248822, name = "Death Lotus", count = 1 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 2 },
            { itemId = 16204, name = "Illusion Dust", count = 12 },
            { itemId = 16202, name = "Lesser Eternal Essence", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 274424,
            cost = 5000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Superior Stamina (300)
    {
        id = 20011,
        name = "Enchant Bracer - Superior Stamina",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 16204, name = "Illusion Dust", count = 15 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16251,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Chest - Greater Stats (300)
    {
        id = 20025,
        name = "Enchant Chest - Greater Stats",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 4 },
            { itemId = 16204, name = "Illusion Dust", count = 15 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 10 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16253,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Superior Striking (300)
    {
        id = 20031,
        name = "Enchant Weapon - Superior Striking",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 2 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 10 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16250,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Lifestealing (300)
    {
        id = 20032,
        name = "Enchant Weapon - Lifestealing",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 6 },
            { itemId = 12808, name = "Essence of Undeath", count = 6 },
            { itemId = 12803, name = "Living Essence", count = 6 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16254,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Crusader (300)
    {
        id = 20034,
        name = "Enchant Weapon - Crusader",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 4 },
            { itemId = 12811, name = "Righteous Orb", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16252,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Major Spirit (300)
    {
        id = 20035,
        name = "Enchant 2H Weapon - Major Spirit",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 12 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16255,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Major Intellect (300)
    {
        id = 20036,
        name = "Enchant 2H Weapon - Major Intellect",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 12 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 16249,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Spell Power (300)
    {
        id = 22749,
        name = "Enchant Weapon - Spell Power",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 4 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 12 },
            { itemId = 7078, name = "Essence of Fire", count = 4 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
            { itemId = 7082, name = "Essence of Air", count = 4 },
            { itemId = 13926, name = "Golden Pearl", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 18259,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Healing Power (300)
    {
        id = 22750,
        name = "Enchant Weapon - Healing Power",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 4 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 8 },
            { itemId = 12803, name = "Living Essence", count = 6 },
            { itemId = 7080, name = "Essence of Water", count = 6 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 18260,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Healing Power (300)
    {
        id = 23802,
        name = "Enchant Bracer - Healing Power",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 2 },
            { itemId = 16204, name = "Illusion Dust", count = 20 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 4 },
            { itemId = 12803, name = "Living Essence", count = 6 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 529,
            factionName = "Argent Dawn",
            level = "Revered",
            itemId = 19447,
            cost = 60000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Mighty Spirit (300)
    {
        id = 23803,
        name = "Enchant Weapon - Mighty Spirit",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 10 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 8 },
            { itemId = 16204, name = "Illusion Dust", count = 15 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 19448,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Weapon - Mighty Intellect (300)
    {
        id = 23804,
        name = "Enchant Weapon - Mighty Intellect",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 15 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 12 },
            { itemId = 16204, name = "Illusion Dust", count = 20 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 59,
            factionName = "Thorium Brotherhood",
            level = "Revered",
            itemId = 19449,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Threat (300)
    {
        id = 25072,
        name = "Enchant Gloves - Threat",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 4 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 6 },
            { itemId = 18512, name = "Larval Acid", count = 8 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20726,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Shadow Power (300)
    {
        id = 25073,
        name = "Enchant Gloves - Shadow Power",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 3 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 10 },
            { itemId = 12808, name = "Essence of Undeath", count = 6 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20727,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Frost Power (300)
    {
        id = 25074,
        name = "Enchant Gloves - Frost Power",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 3 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 10 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20728,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Fire Power (300)
    {
        id = 25078,
        name = "Enchant Gloves - Fire Power",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 2 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 10 },
            { itemId = 7078, name = "Essence of Fire", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20729,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Healing Power (300)
    {
        id = 25079,
        name = "Enchant Gloves - Healing Power",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 3 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 8 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 20730,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Superior Agility (300)
    {
        id = 25080,
        name = "Enchant Gloves - Superior Agility",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 3 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 8 },
            { itemId = 7082, name = "Essence of Air", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20731,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Greater Fire Resistance (300)
    {
        id = 25081,
        name = "Enchant Cloak - Greater Fire Resistance",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 3 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 8 },
            { itemId = 7078, name = "Essence of Fire", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Friendly",
            itemId = 20732,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Greater Nature Resistance (300)
    {
        id = 25082,
        name = "Enchant Cloak - Greater Nature Resistance",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 2 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 8 },
            { itemId = 12803, name = "Living Essence", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 609,
            factionName = "Cenarion Circle",
            level = "Honored",
            itemId = 20733,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Stealth (300)
    {
        id = 25083,
        name = "Enchant Cloak - Stealth",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 3 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 8 },
            { itemId = 13468, name = "Black Lotus", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 20734,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Subtlety (300)
    {
        id = 25084,
        name = "Enchant Cloak - Subtlety",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 4 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 6 },
            { itemId = 11754, name = "Black Diamond", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20735,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Dodge (300)
    {
        id = 25086,
        name = "Enchant Cloak - Dodge",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 3 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 8 },
            { itemId = 12809, name = "Guardian Stone", count = 8 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 20736,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brilliant Wizard Oil (300)
    {
        id = 25129,
        name = "Brilliant Wizard Oil",
        itemId = 20749,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 2 },
            { itemId = 4625, name = "Firebloom", count = 3 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Honored",
            itemId = 20756,
            cost = 40000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Brilliant Mana Oil (300)
    {
        id = 25130,
        name = "Brilliant Mana Oil",
        itemId = 20748,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 2 },
            { itemId = 8831, name = "Purple Lotus", count = 3 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Friendly",
            itemId = 20757,
            cost = 40000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Shield - Law of Nature (300)
    {
        id = 463871,
        name = "Enchant Shield - Law of Nature",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 4 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 12 },
            { itemId = 7078, name = "Essence of Fire", count = 4 },
            { itemId = 7080, name = "Essence of Water", count = 4 },
            { itemId = 7076, name = "Essence of Earth", count = 1 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 576,
            factionName = "Timbermaw Hold",
            level = "Revered",
            itemId = 228982,
            cost = 100000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Magnificent Trollshine (300)
    {
        id = 471400,
        name = "Magnificent Trollshine",
        itemId = 232611,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 320, gray = 330 },
        reagents = {
            { itemId = 8151, name = "Flask of Mojo", count = 3 },
            { itemId = 8152, name = "Flask of Big Mojo", count = 3 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 2 },
            { itemId = 18256, name = "Imbued Vial", count = 1 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.REPUTATION,
            factionId = 270,
            factionName = "Zandalar Tribe",
            level = "Honored",
            itemId = 232610,
            cost = 40000,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Holy Power (300)
    {
        id = 1213622,
        name = "Enchant Gloves - Holy Power",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 2 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 5 },
            { itemId = 13180, name = "Stratholme Holy Water", count = 5 },
            { itemId = 12735, name = "Frayed Abomination Stitching", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249536,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Arcane Power (300)
    {
        id = 1213626,
        name = "Enchant Gloves - Arcane Power",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 2 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 5 },
            { itemId = 12753, name = "Skin of Shadow", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249534,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Off-Hand - Superior Intellect (300)
    {
        id = 1219577,
        name = "Enchant Off-Hand - Superior Intellect",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 2 },
            { itemId = 16204, name = "Illusion Dust", count = 18 },
            { itemId = 7082, name = "Essence of Air", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274391,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Off-Hand - Excellent Spirit (300)
    {
        id = 1219578,
        name = "Enchant Off-Hand - Excellent Spirit",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 2 },
            { itemId = 16204, name = "Illusion Dust", count = 18 },
            { itemId = 7080, name = "Essence of Water", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274392,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Off-Hand - Wisdom (300)
    {
        id = 1219579,
        name = "Enchant Off-Hand - Wisdom",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 6 },
            { itemId = 16204, name = "Illusion Dust", count = 18 },
            { itemId = 7082, name = "Essence of Air", count = 1 },
            { itemId = 7080, name = "Essence of Water", count = 1 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 274393,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Spellblasting (300)
    {
        id = 1219580,
        name = "Enchant 2H Weapon - Spellblasting",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 3 },
            { itemId = 16204, name = "Illusion Dust", count = 24 },
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
            { itemId = 8831, name = "Purple Lotus", count = 6 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 274394,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Shield - Excellent Stamina (300)
    {
        id = 1219581,
        name = "Enchant Shield - Excellent Stamina",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 6 },
            { itemId = 16204, name = "Illusion Dust", count = 18 },
            { itemId = 7076, name = "Essence of Earth", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274395,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Cloak - Agility (300)
    {
        id = 1219587,
        name = "Enchant Cloak - Agility",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 3 },
            { itemId = 16204, name = "Illusion Dust", count = 9 },
            { itemId = 7078, name = "Essence of Fire", count = 1 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 274399,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Shield - Critical Strike (300)
    {
        id = 1220623,
        name = "Enchant Shield - Critical Strike",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 5 },
            { itemId = 16204, name = "Illusion Dust", count = 15 },
            { itemId = 12938, name = "Blood of Heroes", count = 1 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 274400,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Greater Spellpower (300)
    {
        id = 1220624,
        name = "Enchant Bracer - Greater Spellpower",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 3 },
            { itemId = 16204, name = "Illusion Dust", count = 9 },
            { itemId = 12808, name = "Essence of Undeath", count = 12 },
            { itemId = 8831, name = "Purple Lotus", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 274401,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Mighty Spell Power (300)
    {
        id = 1248607,
        name = "Enchant 2H Weapon - Mighty Spell Power",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 248819, name = "Fel Crystal", count = 4 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 6 },
            { itemId = 7076, name = "Essence of Earth", count = 4 },
            { itemId = 12808, name = "Essence of Undeath", count = 4 },
            { itemId = 20725, name = "Nexus Crystal", count = 4 },
            { itemId = 248820, name = "Torbernite", count = 2 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249525,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant 2H Weapon - Mighty Healing Power (300)
    {
        id = 1248636,
        name = "Enchant 2H Weapon - Mighty Healing Power",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 248819, name = "Fel Crystal", count = 4 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 6 },
            { itemId = 249726, name = "Azerothium Bar", count = 4 },
            { itemId = 249274, name = "Stranglevine", count = 4 },
            { itemId = 20725, name = "Nexus Crystal", count = 4 },
            { itemId = 248820, name = "Torbernite", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249526,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Superior Strength (300)
    {
        id = 1248640,
        name = "Enchant Gloves - Superior Strength",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 4 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 8 },
            { itemId = 7076, name = "Essence of Earth", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 274398,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Gloves - Natural Power (300)
    {
        id = 1248645,
        name = "Enchant Gloves - Natural Power",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 20725, name = "Nexus Crystal", count = 2 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 5 },
            { itemId = 248822, name = "Death Lotus", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249535,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Superior Intellect (300)
    {
        id = 1248661,
        name = "Enchant Bracer - Superior Intellect",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 10 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249538,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Enchant Bracer - Superior Deflection (300)
    {
        id = 1248665,
        name = "Enchant Bracer - Superior Deflection",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 3 },
        },
        tools = { { categoryId = 376, name = "Runed Truesilver Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249539,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Idol of the Dream (300)
    {
        id = 1249128,
        name = "Idol of the Dream",
        itemId = 220606,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 2 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 4 },
            { itemId = 16204, name = "Illusion Dust", count = 6 },
            { itemId = 249431, name = "Viridian Dye", count = 8 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 2 },
            { itemId = 11291, name = "Star Wood", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249529,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Libram of Holy Alacrity (300)
    {
        id = 1249152,
        name = "Libram of Holy Alacrity",
        itemId = 228175,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 4 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 3 },
            { itemId = 16204, name = "Illusion Dust", count = 4 },
            { itemId = 249431, name = "Viridian Dye", count = 8 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 2 },
            { itemId = 10308, name = "Scroll of Intellect IV", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249530,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Totem of Thunder (300)
    {
        id = 1249154,
        name = "Totem of Thunder",
        itemId = 228176,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 1 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 8 },
            { itemId = 16204, name = "Illusion Dust", count = 10 },
            { itemId = 249431, name = "Viridian Dye", count = 8 },
            { itemId = 249430, name = "Magenta Dye", count = 4 },
            { itemId = 249409, name = "Cerulean Dye", count = 2 },
            { itemId = 11291, name = "Star Wood", count = 4 },
        },
        tools = { { categoryId = 377, name = "Runed Arcanite Rod" } },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 249532,
            cost = 7500,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Torch of Light (300)
    {
        id = 1306520,
        name = "Torch of Light",
        itemId = 279246,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 2 },
            { itemId = 20725, name = "Nexus Crystal", count = 1 },
            { itemId = 14344, name = "Large Brilliant Shard", count = 6 },
            { itemId = 16202, name = "Lesser Eternal Essence", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279295,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Steadfast Libram (300)
    {
        id = 1306521,
        name = "Steadfast Libram",
        itemId = 279247,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 1 },
            { itemId = 20725, name = "Nexus Crystal", count = 1 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 2 },
            { itemId = 16204, name = "Illusion Dust", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279296,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Libram of Infusion (300)
    {
        id = 1306522,
        name = "Libram of Infusion",
        itemId = 279248,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 1 },
            { itemId = 20725, name = "Nexus Crystal", count = 1 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 2 },
            { itemId = 16204, name = "Illusion Dust", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279297,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Totem of Urgency (300)
    {
        id = 1306523,
        name = "Totem of Urgency",
        itemId = 279249,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 1 },
            { itemId = 20725, name = "Nexus Crystal", count = 1 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 2 },
            { itemId = 16204, name = "Illusion Dust", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279298,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Idol of Swiftness (300)
    {
        id = 1306524,
        name = "Idol of Swiftness",
        itemId = 279250,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 1 },
            { itemId = 20725, name = "Nexus Crystal", count = 1 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 2 },
            { itemId = 16204, name = "Illusion Dust", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279299,
        },
        expansion = C.EXPANSION.FOREVER,
    },
    -- Idol of the Ursine Twins (300)
    {
        id = 1306525,
        name = "Idol of the Ursine Twins",
        itemId = 279251,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 310, green = 317, gray = 325 },
        reagents = {
            { itemId = 274030, name = "Malleable Essence of Nature", count = 1 },
            { itemId = 20725, name = "Nexus Crystal", count = 1 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 2 },
            { itemId = 16204, name = "Illusion Dust", count = 12 },
        },
        source = {
            type = C.SOURCE_TYPE.UNKNOWN,
            itemId = 279300,
        },
        expansion = C.EXPANSION.FOREVER,
    },
}

CraftLib:RegisterProfession("enchanting", {
    id = C.PROFESSION_ID.ENCHANTING,
    name = "Enchanting",
    expansion = C.EXPANSION.FOREVER,
    profile = "FOREVER",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
