-- Data/Vanilla/Enchanting/Recipes.lua
-- Enchanting recipes for Vanilla Classic
-- Generated from DB2 data
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    -- Enchant Bracer - Minor Health (1)
    {
        id = 7418,
        name = "Enchant Bracer - Minor Health",
        skillRequired = 1,
        skillRange = { orange = 0, yellow = 70, green = 90, gray = 110 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Runed Copper Rod (1)
    {
        id = 7421,
        name = "Runed Copper Rod",
        itemId = 6218,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 5, green = 7, gray = 10 },
        reagents = {
            { itemId = 6217, name = "Copper Rod", count = 1 },
            { itemId = 10940, name = "Strange Dust", count = 1 },
            { itemId = 10938, name = "Lesser Magic Essence", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Minor Health (15)
    {
        id = 7420,
        name = "Enchant Chest - Minor Health",
        skillRequired = 15,
        skillRange = { orange = 15, yellow = 70, green = 90, gray = 110 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Minor Mana (20)
    {
        id = 7443,
        name = "Enchant Chest - Minor Mana",
        skillRequired = 20,
        skillRange = { orange = 20, yellow = 80, green = 100, gray = 120 },
        reagents = {
            { itemId = 10938, name = "Lesser Magic Essence", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Minor Absorption (40)
    {
        id = 7426,
        name = "Enchant Chest - Minor Absorption",
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 90, green = 110, gray = 130 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 2 },
            { itemId = 10938, name = "Lesser Magic Essence", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Cloak - Minor Resistance (45)
    {
        id = 7454,
        name = "Enchant Cloak - Minor Resistance",
        skillRequired = 45,
        skillRange = { orange = 45, yellow = 95, green = 115, gray = 135 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 1 },
            { itemId = 10938, name = "Lesser Magic Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Minor Wizard Oil (45)
    {
        id = 25124,
        name = "Minor Wizard Oil",
        itemId = 20744,
        skillRequired = 45,
        skillRange = { orange = 45, yellow = 55, green = 65, gray = 75 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 2 },
            { itemId = 17034, name = "Maple Seed", count = 1 },
            { itemId = 3371, name = "Empty Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Minor Stamina (50)
    {
        id = 7457,
        name = "Enchant Bracer - Minor Stamina",
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 100, green = 120, gray = 140 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Lesser Health (60)
    {
        id = 7748,
        name = "Enchant Chest - Lesser Health",
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 105, green = 125, gray = 145 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 2 },
            { itemId = 10938, name = "Lesser Magic Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 250,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Minor Spirit (60)
    {
        id = 7766,
        name = "Enchant Bracer - Minor Spirit",
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 105, green = 125, gray = 145 },
        reagents = {
            { itemId = 10938, name = "Lesser Magic Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Cloak - Minor Protection (70)
    {
        id = 7771,
        name = "Enchant Cloak - Minor Protection",
        skillRequired = 70,
        skillRange = { orange = 70, yellow = 110, green = 130, gray = 150 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 3 },
            { itemId = 10939, name = "Greater Magic Essence", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 10939, name = "Greater Magic Essence", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Minor Deflect (80)
    {
        id = 7428,
        name = "Enchant Bracer - Minor Deflect",
        skillRequired = 80,
        skillRange = { orange = 0, yellow = 80, green = 100, gray = 120 },
        reagents = {
            { itemId = 10938, name = "Lesser Magic Essence", count = 1 },
            { itemId = 10940, name = "Strange Dust", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Lesser Mana (80)
    {
        id = 7776,
        name = "Enchant Chest - Lesser Mana",
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 115, green = 135, gray = 155 },
        reagents = {
            { itemId = 10939, name = "Greater Magic Essence", count = 1 },
            { itemId = 10938, name = "Lesser Magic Essence", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Minor Agility (80)
    {
        id = 7779,
        name = "Enchant Bracer - Minor Agility",
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 115, green = 135, gray = 155 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 2 },
            { itemId = 10939, name = "Greater Magic Essence", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Minor Strength (80)
    {
        id = 7782,
        name = "Enchant Bracer - Minor Strength",
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 115, green = 135, gray = 155 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Weapon - Minor Beastslayer (90)
    {
        id = 7786,
        name = "Enchant Weapon - Minor Beastslayer",
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 4 },
            { itemId = 10939, name = "Greater Magic Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Weapon - Minor Striking (90)
    {
        id = 7788,
        name = "Enchant Weapon - Minor Striking",
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 2 },
            { itemId = 10939, name = "Greater Magic Essence", count = 1 },
            { itemId = 10978, name = "Small Glimmering Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant 2H Weapon - Minor Impact (100)
    {
        id = 7745,
        name = "Enchant 2H Weapon - Minor Impact",
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 4 },
            { itemId = 10978, name = "Small Glimmering Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant 2H Weapon - Lesser Intellect (100)
    {
        id = 7793,
        name = "Enchant 2H Weapon - Lesser Intellect",
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 10939, name = "Greater Magic Essence", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 10940, name = "Strange Dust", count = 6 },
            { itemId = 10939, name = "Greater Magic Essence", count = 3 },
            { itemId = 1210, name = "Shadowgem", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Shield - Minor Stamina (105)
    {
        id = 13378,
        name = "Enchant Shield - Minor Stamina",
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
            { itemId = 10940, name = "Strange Dust", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 600,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant 2H Weapon - Lesser Spirit (110)
    {
        id = 13380,
        name = "Enchant 2H Weapon - Lesser Spirit",
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 135, green = 155, gray = 175 },
        reagents = {
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
            { itemId = 10940, name = "Strange Dust", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Cloak - Lesser Protection (115)
    {
        id = 13421,
        name = "Enchant Cloak - Lesser Protection",
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 6 },
            { itemId = 10978, name = "Small Glimmering Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 800,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Shield - Lesser Protection (115)
    {
        id = 13464,
        name = "Enchant Shield - Lesser Protection",
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
            { itemId = 10940, name = "Strange Dust", count = 1 },
            { itemId = 10978, name = "Small Glimmering Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Health (120)
    {
        id = 7857,
        name = "Enchant Chest - Health",
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 165, gray = 185 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 4 },
            { itemId = 10998, name = "Lesser Astral Essence", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Lesser Spirit (120)
    {
        id = 7859,
        name = "Enchant Bracer - Lesser Spirit",
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 145, green = 165, gray = 185 },
        reagents = {
            { itemId = 10998, name = "Lesser Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 1250,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Boots - Minor Stamina (125)
    {
        id = 7863,
        name = "Enchant Boots - Minor Stamina",
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 170, gray = 190 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 8 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 1400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Boots - Minor Agility (125)
    {
        id = 7867,
        name = "Enchant Boots - Minor Agility",
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 170, gray = 190 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 6 },
            { itemId = 10998, name = "Lesser Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Shield - Lesser Spirit (130)
    {
        id = 13485,
        name = "Enchant Shield - Lesser Spirit",
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 155, green = 175, gray = 195 },
        reagents = {
            { itemId = 10998, name = "Lesser Astral Essence", count = 2 },
            { itemId = 10940, name = "Strange Dust", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Lesser Stamina (130)
    {
        id = 13501,
        name = "Enchant Bracer - Lesser Stamina",
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 155, green = 175, gray = 195 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 1500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Cloak - Lesser Shadow Resistance (135)
    {
        id = 13522,
        name = "Enchant Cloak - Lesser Shadow Resistance",
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 160, green = 180, gray = 200 },
        reagents = {
            { itemId = 11082, name = "Greater Astral Essence", count = 1 },
            { itemId = 6048, name = "Shadow Protection Potion", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Weapon - Lesser Striking (140)
    {
        id = 13503,
        name = "Enchant Weapon - Lesser Striking",
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 165, green = 185, gray = 205 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 2 },
            { itemId = 11084, name = "Large Glimmering Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Lesser Strength (140)
    {
        id = 13536,
        name = "Enchant Bracer - Lesser Strength",
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 165, green = 185, gray = 205 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Lesser Absorption (140)
    {
        id = 13538,
        name = "Enchant Chest - Lesser Absorption",
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 165, green = 185, gray = 205 },
        reagents = {
            { itemId = 10940, name = "Strange Dust", count = 2 },
            { itemId = 11082, name = "Greater Astral Essence", count = 1 },
            { itemId = 11084, name = "Large Glimmering Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant 2H Weapon - Lesser Impact (145)
    {
        id = 13529,
        name = "Enchant 2H Weapon - Lesser Impact",
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 170, green = 190, gray = 210 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 3 },
            { itemId = 11084, name = "Large Glimmering Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Mana (145)
    {
        id = 13607,
        name = "Enchant Chest - Mana",
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 170, green = 190, gray = 210 },
        reagents = {
            { itemId = 11082, name = "Greater Astral Essence", count = 1 },
            { itemId = 10998, name = "Lesser Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Gloves - Mining (145)
    {
        id = 13612,
        name = "Enchant Gloves - Mining",
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 170, green = 190, gray = 210 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 1 },
            { itemId = 2772, name = "Iron Ore", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Gloves - Herbalism (145)
    {
        id = 13617,
        name = "Enchant Gloves - Herbalism",
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 170, green = 190, gray = 210 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 1 },
            { itemId = 3356, name = "Kingsblood", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Gloves - Fishing (145)
    {
        id = 13620,
        name = "Enchant Gloves - Fishing",
        skillRequired = 145,
        skillRange = { orange = 145, yellow = 170, green = 190, gray = 210 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 1 },
            { itemId = 6370, name = "Blackmouth Oil", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Lesser Intellect (150)
    {
        id = 13622,
        name = "Enchant Bracer - Lesser Intellect",
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Minor Stats (150)
    {
        id = 13626,
        name = "Enchant Chest - Minor Stats",
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 11082, name = "Greater Astral Essence", count = 1 },
            { itemId = 11083, name = "Soul Dust", count = 1 },
            { itemId = 11084, name = "Large Glimmering Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 11082, name = "Greater Astral Essence", count = 2 },
            { itemId = 11083, name = "Soul Dust", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Minor Mana Oil (150)
    {
        id = 25125,
        name = "Minor Mana Oil",
        itemId = 20745,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 160, green = 170, gray = 180 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 3 },
            { itemId = 17034, name = "Maple Seed", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Shield - Lesser Stamina (155)
    {
        id = 13631,
        name = "Enchant Shield - Lesser Stamina",
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
            { itemId = 11083, name = "Soul Dust", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2600,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Cloak - Defense (155)
    {
        id = 13635,
        name = "Enchant Cloak - Defense",
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 11138, name = "Small Glowing Shard", count = 1 },
            { itemId = 11083, name = "Soul Dust", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2600,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 11083, name = "Soul Dust", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2600,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Boots - Lesser Agility (160)
    {
        id = 13637,
        name = "Enchant Boots - Lesser Agility",
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 200, gray = 220 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 1 },
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2800,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Greater Health (160)
    {
        id = 13640,
        name = "Enchant Chest - Greater Health",
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 180, green = 200, gray = 220 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2700,
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2800,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Boots - Lesser Stamina (170)
    {
        id = 13644,
        name = "Enchant Boots - Lesser Stamina",
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 190, green = 210, gray = 230 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2800,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Lesser Deflection (170)
    {
        id = 13646,
        name = "Enchant Bracer - Lesser Deflection",
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 190, green = 210, gray = 230 },
        reagents = {
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
            { itemId = 11083, name = "Soul Dust", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Stamina (170)
    {
        id = 13648,
        name = "Enchant Bracer - Stamina",
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 190, green = 210, gray = 230 },
        reagents = {
            { itemId = 11083, name = "Soul Dust", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 2800,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Weapon - Lesser Beastslayer (175)
    {
        id = 13653,
        name = "Enchant Weapon - Lesser Beastslayer",
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 215, gray = 235 },
        reagents = {
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
            { itemId = 5637, name = "Large Fang", count = 2 },
            { itemId = 11138, name = "Small Glowing Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Weapon - Lesser Elemental Slayer (175)
    {
        id = 13655,
        name = "Enchant Weapon - Lesser Elemental Slayer",
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 215, gray = 235 },
        reagents = {
            { itemId = 11134, name = "Lesser Mystic Essence", count = 1 },
            { itemId = 7067, name = "Elemental Earth", count = 1 },
            { itemId = 11138, name = "Small Glowing Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Greater Mystic Wand (175)
    {
        id = 14810,
        name = "Greater Mystic Wand",
        itemId = 11290,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 195, green = 215, gray = 235 },
        reagents = {
            { itemId = 11291, name = "Star Wood", count = 1 },
            { itemId = 11135, name = "Greater Mystic Essence", count = 1 },
            { itemId = 11137, name = "Vision Dust", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Shield - Spirit (180)
    {
        id = 13659,
        name = "Enchant Shield - Spirit",
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 200, green = 220, gray = 240 },
        reagents = {
            { itemId = 11135, name = "Greater Mystic Essence", count = 1 },
            { itemId = 11137, name = "Vision Dust", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 3200,
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 3600,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Greater Mana (185)
    {
        id = 13663,
        name = "Enchant Chest - Greater Mana",
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 205, green = 225, gray = 245 },
        reagents = {
            { itemId = 11135, name = "Greater Mystic Essence", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 3800,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Boots - Lesser Spirit (190)
    {
        id = 13687,
        name = "Enchant Boots - Lesser Spirit",
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 230, gray = 250 },
        reagents = {
            { itemId = 11135, name = "Greater Mystic Essence", count = 1 },
            { itemId = 11134, name = "Lesser Mystic Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Weapon - Winter's Might (190)
    {
        id = 21931,
        name = "Enchant Weapon - Winter's Might",
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 210, green = 230, gray = 250 },
        reagents = {
            { itemId = 11135, name = "Greater Mystic Essence", count = 3 },
            { itemId = 11137, name = "Vision Dust", count = 3 },
            { itemId = 11139, name = "Large Glowing Shard", count = 1 },
            { itemId = 3819, name = "Wintersbite", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Shield - Lesser Block (195)
    {
        id = 13689,
        name = "Enchant Shield - Lesser Block",
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 11135, name = "Greater Mystic Essence", count = 2 },
            { itemId = 11137, name = "Vision Dust", count = 2 },
            { itemId = 11139, name = "Large Glowing Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Weapon - Striking (195)
    {
        id = 13693,
        name = "Enchant Weapon - Striking",
        skillRequired = 195,
        skillRange = { orange = 195, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 11135, name = "Greater Mystic Essence", count = 2 },
            { itemId = 11139, name = "Large Glowing Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant 2H Weapon - Impact (200)
    {
        id = 13695,
        name = "Enchant 2H Weapon - Impact",
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 4 },
            { itemId = 11139, name = "Large Glowing Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Gloves - Skinning (200)
    {
        id = 13698,
        name = "Enchant Gloves - Skinning",
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 1 },
            { itemId = 7392, name = "Green Whelp Scale", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Lesser Stats (200)
    {
        id = 13700,
        name = "Enchant Chest - Lesser Stats",
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 220, green = 240, gray = 260 },
        reagents = {
            { itemId = 11135, name = "Greater Mystic Essence", count = 2 },
            { itemId = 11137, name = "Vision Dust", count = 2 },
            { itemId = 11139, name = "Large Glowing Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.VANILLA,
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
            { itemId = 11135, name = "Greater Mystic Essence", count = 2 },
            { itemId = 11137, name = "Vision Dust", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Lesser Wizard Oil (200)
    {
        id = 25126,
        name = "Lesser Wizard Oil",
        itemId = 20746,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 210, green = 220, gray = 230 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 3 },
            { itemId = 17035, name = "Stranglethorn Seed", count = 2 },
            { itemId = 3372, name = "Leaded Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Cloak - Greater Defense (205)
    {
        id = 13746,
        name = "Enchant Cloak - Greater Defense",
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 225, green = 245, gray = 265 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 4200,
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 4200,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Gloves - Agility (210)
    {
        id = 13815,
        name = "Enchant Gloves - Agility",
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 11174, name = "Lesser Nether Essence", count = 1 },
            { itemId = 11137, name = "Vision Dust", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 4400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Shield - Stamina (210)
    {
        id = 13817,
        name = "Enchant Shield - Stamina",
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Intellect (210)
    {
        id = 13822,
        name = "Enchant Bracer - Intellect",
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 230, green = 250, gray = 270 },
        reagents = {
            { itemId = 11174, name = "Lesser Nether Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 4400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Boots - Stamina (215)
    {
        id = 13836,
        name = "Enchant Boots - Stamina",
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 235, green = 255, gray = 275 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 4600,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Gloves - Advanced Mining (215)
    {
        id = 13841,
        name = "Enchant Gloves - Advanced Mining",
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 235, green = 255, gray = 275 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 3 },
            { itemId = 6037, name = "Truesilver Bar", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Greater Spirit (220)
    {
        id = 13846,
        name = "Enchant Bracer - Greater Spirit",
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 11174, name = "Lesser Nether Essence", count = 3 },
            { itemId = 11137, name = "Vision Dust", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Superior Health (220)
    {
        id = 13858,
        name = "Enchant Chest - Superior Health",
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 6 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 4800,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Gloves - Advanced Herbalism (225)
    {
        id = 13868,
        name = "Enchant Gloves - Advanced Herbalism",
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 265, gray = 285 },
        reagents = {
            { itemId = 11137, name = "Vision Dust", count = 3 },
            { itemId = 8838, name = "Sungrass", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Cloak - Lesser Agility (225)
    {
        id = 13882,
        name = "Enchant Cloak - Lesser Agility",
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 265, gray = 285 },
        reagents = {
            { itemId = 11174, name = "Lesser Nether Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Gloves - Strength (225)
    {
        id = 13887,
        name = "Enchant Gloves - Strength",
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 245, green = 265, gray = 285 },
        reagents = {
            { itemId = 11174, name = "Lesser Nether Essence", count = 2 },
            { itemId = 11137, name = "Vision Dust", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 5000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Shield - Greater Spirit (230)
    {
        id = 13905,
        name = "Enchant Shield - Greater Spirit",
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 270, gray = 290 },
        reagents = {
            { itemId = 11175, name = "Greater Nether Essence", count = 1 },
            { itemId = 11176, name = "Dream Dust", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 5400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Weapon - Demonslaying (230)
    {
        id = 13915,
        name = "Enchant Weapon - Demonslaying",
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 270, gray = 290 },
        reagents = {
            { itemId = 11177, name = "Small Radiant Shard", count = 1 },
            { itemId = 11176, name = "Dream Dust", count = 2 },
            { itemId = 9224, name = "Elixir of Demonslaying", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Superior Mana (230)
    {
        id = 13917,
        name = "Enchant Chest - Superior Mana",
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 250, green = 270, gray = 290 },
        reagents = {
            { itemId = 11175, name = "Greater Nether Essence", count = 1 },
            { itemId = 11174, name = "Lesser Nether Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 5400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Deflection (235)
    {
        id = 13931,
        name = "Enchant Bracer - Deflection",
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 275, gray = 295 },
        reagents = {
            { itemId = 11175, name = "Greater Nether Essence", count = 1 },
            { itemId = 11176, name = "Dream Dust", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Boots - Agility (235)
    {
        id = 13935,
        name = "Enchant Boots - Agility",
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 255, green = 275, gray = 295 },
        reagents = {
            { itemId = 11175, name = "Greater Nether Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 5800,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant 2H Weapon - Greater Impact (240)
    {
        id = 13937,
        name = "Enchant 2H Weapon - Greater Impact",
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 280, gray = 300 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 2 },
            { itemId = 11176, name = "Dream Dust", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 6200,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Greater Strength (240)
    {
        id = 13939,
        name = "Enchant Bracer - Greater Strength",
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 260, green = 280, gray = 300 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 2 },
            { itemId = 11175, name = "Greater Nether Essence", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 6200,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Stats (245)
    {
        id = 13941,
        name = "Enchant Chest - Stats",
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 1 },
            { itemId = 11176, name = "Dream Dust", count = 3 },
            { itemId = 11175, name = "Greater Nether Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 6200,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Weapon - Greater Striking (245)
    {
        id = 13943,
        name = "Enchant Weapon - Greater Striking",
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 2 },
            { itemId = 11175, name = "Greater Nether Essence", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 6200,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Greater Stamina (245)
    {
        id = 13945,
        name = "Enchant Bracer - Greater Stamina",
        skillRequired = 245,
        skillRange = { orange = 245, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Gloves - Riding Skill (250)
    {
        id = 13947,
        name = "Enchant Gloves - Riding Skill",
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 290, gray = 310 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 2 },
            { itemId = 11176, name = "Dream Dust", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Gloves - Minor Haste (250)
    {
        id = 13948,
        name = "Enchant Gloves - Minor Haste",
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 270, green = 290, gray = 310 },
        reagents = {
            { itemId = 11178, name = "Large Radiant Shard", count = 2 },
            { itemId = 8153, name = "Wildvine", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 6500,
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Lesser Mana Oil (250)
    {
        id = 25127,
        name = "Lesser Mana Oil",
        itemId = 20747,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 260, green = 270, gray = 280 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 3 },
            { itemId = 8831, name = "Purple Lotus", count = 2 },
            { itemId = 8925, name = "Crystal Vial", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Greater Intellect (255)
    {
        id = 20008,
        name = "Enchant Bracer - Greater Intellect",
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 275, green = 295, gray = 315 },
        reagents = {
            { itemId = 16202, name = "Lesser Eternal Essence", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Boots - Greater Stamina (260)
    {
        id = 20020,
        name = "Enchant Boots - Greater Stamina",
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 280, green = 300, gray = 320 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Weapon - Fiery Weapon (265)
    {
        id = 13898,
        name = "Enchant Weapon - Fiery Weapon",
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 305, gray = 325 },
        reagents = {
            { itemId = 11177, name = "Small Radiant Shard", count = 4 },
            { itemId = 7078, name = "Essence of Fire", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Cloak - Greater Resistance (265)
    {
        id = 20014,
        name = "Enchant Cloak - Greater Resistance",
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 305, gray = 325 },
        reagents = {
            { itemId = 16202, name = "Lesser Eternal Essence", count = 2 },
            { itemId = 7077, name = "Heart of Fire", count = 1 },
            { itemId = 7075, name = "Core of Earth", count = 1 },
            { itemId = 7079, name = "Globe of Water", count = 1 },
            { itemId = 7081, name = "Breath of Wind", count = 1 },
            { itemId = 7972, name = "Ichor of Undeath", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Shield - Greater Stamina (265)
    {
        id = 20017,
        name = "Enchant Shield - Greater Stamina",
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 285, green = 305, gray = 325 },
        reagents = {
            { itemId = 11176, name = "Dream Dust", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Bracer - Superior Spirit (270)
    {
        id = 20009,
        name = "Enchant Bracer - Superior Spirit",
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 310, gray = 330 },
        reagents = {
            { itemId = 16202, name = "Lesser Eternal Essence", count = 3 },
            { itemId = 11176, name = "Dream Dust", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Gloves - Greater Agility (270)
    {
        id = 20012,
        name = "Enchant Gloves - Greater Agility",
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 290, green = 310, gray = 330 },
        reagents = {
            { itemId = 16202, name = "Lesser Eternal Essence", count = 3 },
            { itemId = 16204, name = "Illusion Dust", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Major Health (275)
    {
        id = 20026,
        name = "Enchant Chest - Major Health",
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 295, green = 315, gray = 335 },
        reagents = {
            { itemId = 16204, name = "Illusion Dust", count = 6 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant Chest - Major Mana (290)
    {
        id = 20028,
        name = "Enchant Chest - Major Mana",
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 310, green = 330, gray = 350 },
        reagents = {
            { itemId = 16203, name = "Greater Eternal Essence", count = 3 },
            { itemId = 14343, name = "Small Brilliant Shard", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant  Weapon - Spell Power (300)
    {
        id = 22749,
        name = "Enchant  Weapon - Spell Power",
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Enchant  Weapon - Healing Power (300)
    {
        id = 22750,
        name = "Enchant  Weapon - Healing Power",
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 320, green = 340, gray = 360 },
        reagents = {
            { itemId = 14344, name = "Large Brilliant Shard", count = 4 },
            { itemId = 16203, name = "Greater Eternal Essence", count = 8 },
            { itemId = 12803, name = "Living Essence", count = 6 },
            { itemId = 7080, name = "Essence of Water", count = 6 },
            { itemId = 12811, name = "Righteous Orb", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
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
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Enchanting Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
}

CraftLib:RegisterProfession("enchanting", {
    id = C.PROFESSION_ID.ENCHANTING,
    name = "Enchanting",
    expansion = C.EXPANSION.VANILLA,
    profile = "VANILLA",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
