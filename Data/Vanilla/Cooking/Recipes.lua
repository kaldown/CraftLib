-- Data/Vanilla/Cooking/Recipes.lua
-- Cooking recipes for Vanilla Classic
-- Generated from DB2 data
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    -- Basic Campfire (1)
    {
        id = 818,
        name = "Basic Campfire",
        skillRequired = 1,
        skillRange = { orange = 0, yellow = 25, green = 50, gray = 75 },
        reagents = {
            { itemId = 4470, name = "Simple Wood", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Charred Wolf Meat (1)
    {
        id = 2538,
        name = "Charred Wolf Meat",
        itemId = 2679,
        skillRequired = 1,
        skillRange = { orange = 0, yellow = 45, green = 65, gray = 85 },
        reagents = {
            { itemId = 2672, name = "Stringy Wolf Meat", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Roasted Boar Meat (1)
    {
        id = 2540,
        name = "Roasted Boar Meat",
        itemId = 2681,
        skillRequired = 1,
        skillRange = { orange = 0, yellow = 45, green = 65, gray = 85 },
        reagents = {
            { itemId = 769, name = "Chunk of Boar Meat", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Brilliant Smallfish (1)
    {
        id = 7751,
        name = "Brilliant Smallfish",
        itemId = 6290,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 45, green = 65, gray = 85 },
        reagents = {
            { itemId = 6291, name = "Raw Brilliant Smallfish", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Slitherskin Mackerel (1)
    {
        id = 7752,
        name = "Slitherskin Mackerel",
        itemId = 787,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 45, green = 65, gray = 85 },
        reagents = {
            { itemId = 6303, name = "Raw Slitherskin Mackerel", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Herb Baked Egg (1)
    {
        id = 8604,
        name = "Herb Baked Egg",
        itemId = 6888,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 45, green = 65, gray = 85 },
        reagents = {
            { itemId = 6889, name = "Small Egg", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Crispy Bat Wing (1)
    {
        id = 15935,
        name = "Crispy Bat Wing",
        itemId = 12224,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 45, green = 65, gray = 85 },
        reagents = {
            { itemId = 12223, name = "Meaty Bat Wing", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Gingerbread Cookie (1)
    {
        id = 21143,
        name = "Gingerbread Cookie",
        itemId = 17197,
        skillRequired = 1,
        skillRange = { orange = 1, yellow = 45, green = 65, gray = 85 },
        reagents = {
            { itemId = 6889, name = "Small Egg", count = 1 },
            { itemId = 17194, name = "Holiday Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Spiced Wolf Meat (10)
    {
        id = 2539,
        name = "Spiced Wolf Meat",
        itemId = 2680,
        skillRequired = 10,
        skillRange = { orange = 10, yellow = 50, green = 70, gray = 90 },
        reagents = {
            { itemId = 2672, name = "Stringy Wolf Meat", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Kaldorei Spider Kabob (10)
    {
        id = 6412,
        name = "Kaldorei Spider Kabob",
        itemId = 5472,
        skillRequired = 10,
        skillRange = { orange = 10, yellow = 50, green = 70, gray = 90 },
        reagents = {
            { itemId = 5465, name = "Small Spider Leg", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scorpid Surprise (20)
    {
        id = 6413,
        name = "Scorpid Surprise",
        itemId = 5473,
        skillRequired = 20,
        skillRange = { orange = 20, yellow = 60, green = 80, gray = 100 },
        reagents = {
            { itemId = 5466, name = "Scorpid Stinger", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Beer Basted Boar Ribs (25)
    {
        id = 2795,
        name = "Beer Basted Boar Ribs",
        itemId = 2888,
        skillRequired = 25,
        skillRange = { orange = 25, yellow = 60, green = 80, gray = 100 },
        reagents = {
            { itemId = 2886, name = "Crag Boar Rib", count = 1 },
            { itemId = 2894, name = "Rhapsody Malt", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Roasted Kodo Meat (35)
    {
        id = 6414,
        name = "Roasted Kodo Meat",
        itemId = 5474,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 75, green = 95, gray = 115 },
        reagents = {
            { itemId = 5467, name = "Kodo Meat", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Egg Nog (35)
    {
        id = 21144,
        name = "Egg Nog",
        itemId = 17198,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 75, green = 95, gray = 115 },
        reagents = {
            { itemId = 6889, name = "Small Egg", count = 1 },
            { itemId = 1179, name = "Ice Cold Milk", count = 1 },
            { itemId = 17196, name = "Holiday Spirits", count = 1 },
            { itemId = 17194, name = "Holiday Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smoked Bear Meat (40)
    {
        id = 8607,
        name = "Smoked Bear Meat",
        itemId = 6890,
        skillRequired = 40,
        skillRange = { orange = 40, yellow = 80, green = 100, gray = 120 },
        reagents = {
            { itemId = 3173, name = "Bear Meat", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Coyote Steak (50)
    {
        id = 2541,
        name = "Coyote Steak",
        itemId = 2684,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 90, green = 110, gray = 130 },
        reagents = {
            { itemId = 2673, name = "Coyote Meat", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Goretusk Liver Pie (50)
    {
        id = 2542,
        name = "Goretusk Liver Pie",
        itemId = 724,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 90, green = 110, gray = 130 },
        reagents = {
            { itemId = 723, name = "Goretusk Liver", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fillet of Frenzy (50)
    {
        id = 6415,
        name = "Fillet of Frenzy",
        itemId = 5476,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 90, green = 110, gray = 130 },
        reagents = {
            { itemId = 5468, name = "Soft Frenzy Flesh", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Strider Stew (50)
    {
        id = 6416,
        name = "Strider Stew",
        itemId = 5477,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 90, green = 110, gray = 130 },
        reagents = {
            { itemId = 5469, name = "Strider Meat", count = 1 },
            { itemId = 4536, name = "Shiny Red Apple", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Boiled Clams (50)
    {
        id = 6499,
        name = "Boiled Clams",
        itemId = 5525,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 90, green = 110, gray = 130 },
        reagents = {
            { itemId = 5503, name = "Clam Meat", count = 1 },
            { itemId = 159, name = "Refreshing Spring Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
            trainingCost = 100,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Longjaw Mud Snapper (50)
    {
        id = 7753,
        name = "Longjaw Mud Snapper",
        itemId = 4592,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 90, green = 110, gray = 130 },
        reagents = {
            { itemId = 6289, name = "Raw Longjaw Mud Snapper", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Loch Frenzy Delight (50)
    {
        id = 7754,
        name = "Loch Frenzy Delight",
        itemId = 6316,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 90, green = 110, gray = 130 },
        reagents = {
            { itemId = 6317, name = "Raw Loch Frenzy", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Rainbow Fin Albacore (50)
    {
        id = 7827,
        name = "Rainbow Fin Albacore",
        itemId = 5095,
        skillRequired = 50,
        skillRange = { orange = 50, yellow = 90, green = 110, gray = 130 },
        reagents = {
            { itemId = 6361, name = "Raw Rainbow Fin Albacore", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Blood Sausage (60)
    {
        id = 3371,
        name = "Blood Sausage",
        itemId = 3220,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 100, green = 120, gray = 140 },
        reagents = {
            { itemId = 3173, name = "Bear Meat", count = 1 },
            { itemId = 3172, name = "Boar Intestines", count = 1 },
            { itemId = 3174, name = "Spider Ichor", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Thistle Tea (60)
    {
        id = 9513,
        name = "Thistle Tea",
        itemId = 7676,
        skillRequired = 60,
        skillRange = { orange = 60, yellow = 100, green = 120, gray = 140 },
        reagents = {
            { itemId = 2452, name = "Swiftthistle", count = 1 },
            { itemId = 159, name = "Refreshing Spring Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Westfall Stew (75)
    {
        id = 2543,
        name = "Westfall Stew",
        itemId = 733,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 115, green = 135, gray = 155 },
        reagents = {
            { itemId = 729, name = "Stringy Vulture Meat", count = 1 },
            { itemId = 730, name = "Murloc Eye", count = 1 },
            { itemId = 731, name = "Goretusk Snout", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Crab Cake (75)
    {
        id = 2544,
        name = "Crab Cake",
        itemId = 2683,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 115, green = 135, gray = 155 },
        reagents = {
            { itemId = 2674, name = "Crawler Meat", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
            trainingCost = 200,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Dry Pork Ribs (80)
    {
        id = 2546,
        name = "Dry Pork Ribs",
        itemId = 2687,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 2677, name = "Boar Ribs", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
            trainingCost = 150,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Crocolisk Steak (80)
    {
        id = 3370,
        name = "Crocolisk Steak",
        itemId = 3662,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 2924, name = "Crocolisk Meat", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smoked Sagefish (80)
    {
        id = 25704,
        name = "Smoked Sagefish",
        itemId = 21072,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 120, green = 140, gray = 160 },
        reagents = {
            { itemId = 21071, name = "Raw Sagefish", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Cooked Crab Claw (85)
    {
        id = 2545,
        name = "Cooked Crab Claw",
        itemId = 2682,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 125, green = 145, gray = 165 },
        reagents = {
            { itemId = 2675, name = "Crawler Claw", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Savory Deviate Delight (85)
    {
        id = 8238,
        name = "Savory Deviate Delight",
        itemId = 6657,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 125, green = 145, gray = 165 },
        reagents = {
            { itemId = 6522, name = "Deviate Fish", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Murloc Fin Soup (90)
    {
        id = 3372,
        name = "Murloc Fin Soup",
        itemId = 3663,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 1468, name = "Murloc Fin", count = 2 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Dig Rat Stew (90)
    {
        id = 6417,
        name = "Dig Rat Stew",
        itemId = 5478,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 5051, name = "Dig Rat", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Clam Chowder (90)
    {
        id = 6501,
        name = "Clam Chowder",
        itemId = 5526,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 5503, name = "Clam Meat", count = 1 },
            { itemId = 1179, name = "Ice Cold Milk", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Redridge Goulash (100)
    {
        id = 2547,
        name = "Redridge Goulash",
        itemId = 1082,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 135, green = 155, gray = 175 },
        reagents = {
            { itemId = 1081, name = "Crisp Spider Meat", count = 1 },
            { itemId = 1080, name = "Tough Condor Meat", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Seasoned Wolf Kabob (100)
    {
        id = 2549,
        name = "Seasoned Wolf Kabob",
        itemId = 1017,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 1015, name = "Lean Wolf Flank", count = 2 },
            { itemId = 2665, name = "Stormwind Seasoning Herbs", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Crispy Lizard Tail (100)
    {
        id = 6418,
        name = "Crispy Lizard Tail",
        itemId = 5479,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 5470, name = "Thunder Lizard Tail", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Bristle Whisker Catfish (100)
    {
        id = 7755,
        name = "Bristle Whisker Catfish",
        itemId = 4593,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 140, green = 160, gray = 180 },
        reagents = {
            { itemId = 6308, name = "Raw Bristle Whisker Catfish", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Succulent Pork Ribs (110)
    {
        id = 2548,
        name = "Succulent Pork Ribs",
        itemId = 2685,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 130, green = 150, gray = 170 },
        reagents = {
            { itemId = 2677, name = "Boar Ribs", count = 2 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Gooey Spider Cake (110)
    {
        id = 3377,
        name = "Gooey Spider Cake",
        itemId = 3666,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 150, green = 170, gray = 190 },
        reagents = {
            { itemId = 2251, name = "Gooey Spider Leg", count = 2 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Big Bear Steak (110)
    {
        id = 3397,
        name = "Big Bear Steak",
        itemId = 3726,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 150, green = 170, gray = 190 },
        reagents = {
            { itemId = 3730, name = "Big Bear Meat", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Lean Venison (110)
    {
        id = 6419,
        name = "Lean Venison",
        itemId = 5480,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 150, green = 170, gray = 190 },
        reagents = {
            { itemId = 5471, name = "Stag Meat", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Crocolisk Gumbo (120)
    {
        id = 3373,
        name = "Crocolisk Gumbo",
        itemId = 3664,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 160, green = 180, gray = 200 },
        reagents = {
            { itemId = 3667, name = "Tender Crocolisk Meat", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Hot Lion Chops (125)
    {
        id = 3398,
        name = "Hot Lion Chops",
        itemId = 3727,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 175, green = 195, gray = 215 },
        reagents = {
            { itemId = 3731, name = "Lion Meat", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Goblin Deviled Clams (125)
    {
        id = 6500,
        name = "Goblin Deviled Clams",
        itemId = 5527,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 165, green = 185, gray = 205 },
        reagents = {
            { itemId = 5504, name = "Tangy Clam Meat", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Lean Wolf Steak (125)
    {
        id = 15853,
        name = "Lean Wolf Steak",
        itemId = 12209,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 165, green = 185, gray = 205 },
        reagents = {
            { itemId = 1015, name = "Lean Wolf Flank", count = 1 },
            { itemId = 2678, name = "Mild Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Curiously Tasty Omelet (130)
    {
        id = 3376,
        name = "Curiously Tasty Omelet",
        itemId = 3665,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 170, green = 190, gray = 210 },
        reagents = {
            { itemId = 3685, name = "Raptor Egg", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Tasty Lion Steak (150)
    {
        id = 3399,
        name = "Tasty Lion Steak",
        itemId = 3728,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 190, green = 210, gray = 230 },
        reagents = {
            { itemId = 3731, name = "Lion Meat", count = 2 },
            { itemId = 3713, name = "Soothing Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Crocolisk Stew (150)
    {
        id = 24418,
        name = "Heavy Crocolisk Stew",
        itemId = 20074,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 160, green = 180, gray = 200 },
        reagents = {
            { itemId = 3667, name = "Tender Crocolisk Meat", count = 2 },
            { itemId = 3713, name = "Soothing Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Soothing Turtle Bisque (175)
    {
        id = 3400,
        name = "Soothing Turtle Bisque",
        itemId = 3729,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 3712, name = "Turtle Meat", count = 1 },
            { itemId = 3713, name = "Soothing Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Barbecued Buzzard Wing (175)
    {
        id = 4094,
        name = "Barbecued Buzzard Wing",
        itemId = 4457,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 3404, name = "Buzzard Wing", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
            trainingCost = 450,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Giant Clam Scorcho (175)
    {
        id = 7213,
        name = "Giant Clam Scorcho",
        itemId = 6038,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 4655, name = "Giant Clam Meat", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Rockscale Cod (175)
    {
        id = 7828,
        name = "Rockscale Cod",
        itemId = 4594,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 190, green = 210, gray = 230 },
        reagents = {
            { itemId = 6362, name = "Raw Rockscale Cod", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Goldthorn Tea (175)
    {
        id = 13028,
        name = "Goldthorn Tea",
        itemId = 10841,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 3821, name = "Goldthorn", count = 1 },
            { itemId = 159, name = "Refreshing Spring Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Roast Raptor (175)
    {
        id = 15855,
        name = "Roast Raptor",
        itemId = 12210,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 12184, name = "Raptor Flesh", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Hot Wolf Ribs (175)
    {
        id = 15856,
        name = "Hot Wolf Ribs",
        itemId = 13851,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 12203, name = "Red Wolf Meat", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Jungle Stew (175)
    {
        id = 15861,
        name = "Jungle Stew",
        itemId = 12212,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 12202, name = "Tiger Meat", count = 1 },
            { itemId = 159, name = "Refreshing Spring Water", count = 1 },
            { itemId = 4536, name = "Shiny Red Apple", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Carrion Surprise (175)
    {
        id = 15863,
        name = "Carrion Surprise",
        itemId = 12213,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 12037, name = "Mystery Meat", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Mystery Stew (175)
    {
        id = 15865,
        name = "Mystery Stew",
        itemId = 12214,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 12037, name = "Mystery Meat", count = 1 },
            { itemId = 2596, name = "Skin of Dwarven Stout", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Mithril Headed Trout (175)
    {
        id = 20916,
        name = "Mithril Headed Trout",
        itemId = 8364,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 8365, name = "Raw Mithril Head Trout", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Sagefish Delight (175)
    {
        id = 25954,
        name = "Sagefish Delight",
        itemId = 21217,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 215, green = 235, gray = 255 },
        reagents = {
            { itemId = 21153, name = "Raw Greater Sagefish", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Dragonbreath Chili (200)
    {
        id = 15906,
        name = "Dragonbreath Chili",
        itemId = 12217,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 12037, name = "Mystery Meat", count = 1 },
            { itemId = 4402, name = "Small Flame Sac", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Heavy Kodo Stew (200)
    {
        id = 15910,
        name = "Heavy Kodo Stew",
        itemId = 12215,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 12204, name = "Heavy Kodo Meat", count = 2 },
            { itemId = 3713, name = "Soothing Spices", count = 1 },
            { itemId = 159, name = "Refreshing Spring Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Spider Sausage (200)
    {
        id = 21175,
        name = "Spider Sausage",
        itemId = 17222,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 240, green = 260, gray = 280 },
        reagents = {
            { itemId = 12205, name = "White Spider Meat", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
            trainingCost = 4000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Spiced Chili Crab (225)
    {
        id = 15915,
        name = "Spiced Chili Crab",
        itemId = 12216,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 12206, name = "Tender Crab Meat", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Monster Omelet (225)
    {
        id = 15933,
        name = "Monster Omelet",
        itemId = 12218,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 12207, name = "Giant Egg", count = 1 },
            { itemId = 3713, name = "Soothing Spices", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Spotted Yellowtail (225)
    {
        id = 18238,
        name = "Spotted Yellowtail",
        itemId = 6887,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 4603, name = "Raw Spotted Yellowtail", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Cooked Glossy Mightfish (225)
    {
        id = 18239,
        name = "Cooked Glossy Mightfish",
        itemId = 13927,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 13754, name = "Raw Glossy Mightfish", count = 1 },
            { itemId = 3713, name = "Soothing Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Filet of Redgill (225)
    {
        id = 18241,
        name = "Filet of Redgill",
        itemId = 13930,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 13758, name = "Raw Redgill", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Undermine Clam Chowder (225)
    {
        id = 20626,
        name = "Undermine Clam Chowder",
        itemId = 16766,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 7974, name = "Zesty Clam Meat", count = 2 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
            { itemId = 1179, name = "Ice Cold Milk", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Tender Wolf Steak (225)
    {
        id = 22480,
        name = "Tender Wolf Steak",
        itemId = 18045,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 265, green = 285, gray = 305 },
        reagents = {
            { itemId = 12208, name = "Tender Wolf Meat", count = 1 },
            { itemId = 3713, name = "Soothing Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Grilled Squid (240)
    {
        id = 18240,
        name = "Grilled Squid",
        itemId = 13928,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 280, green = 300, gray = 320 },
        reagents = {
            { itemId = 13755, name = "Winter Squid", count = 1 },
            { itemId = 3713, name = "Soothing Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Hot Smoked Bass (240)
    {
        id = 18242,
        name = "Hot Smoked Bass",
        itemId = 13929,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 280, green = 300, gray = 320 },
        reagents = {
            { itemId = 13756, name = "Raw Summer Bass", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Nightfin Soup (250)
    {
        id = 18243,
        name = "Nightfin Soup",
        itemId = 13931,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 290, green = 310, gray = 330 },
        reagents = {
            { itemId = 13759, name = "Raw Nightfin Snapper", count = 1 },
            { itemId = 159, name = "Refreshing Spring Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Poached Sunscale Salmon (250)
    {
        id = 18244,
        name = "Poached Sunscale Salmon",
        itemId = 13932,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 290, green = 310, gray = 330 },
        reagents = {
            { itemId = 13760, name = "Raw Sunscale Salmon", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Lobster Stew (275)
    {
        id = 18245,
        name = "Lobster Stew",
        itemId = 13933,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 13888, name = "Darkclaw Lobster", count = 1 },
            { itemId = 159, name = "Refreshing Spring Water", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Mightfish Steak (275)
    {
        id = 18246,
        name = "Mightfish Steak",
        itemId = 13934,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 13893, name = "Large Raw Mightfish", count = 1 },
            { itemId = 2692, name = "Hot Spices", count = 1 },
            { itemId = 3713, name = "Soothing Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Baked Salmon (275)
    {
        id = 18247,
        name = "Baked Salmon",
        itemId = 13935,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 13889, name = "Raw Whitescale Salmon", count = 1 },
            { itemId = 3713, name = "Soothing Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Runn Tum Tuber Surprise (275)
    {
        id = 22761,
        name = "Runn Tum Tuber Surprise",
        itemId = 18254,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 315, green = 335, gray = 355 },
        reagents = {
            { itemId = 18255, name = "Runn Tum Tuber", count = 1 },
            { itemId = 3713, name = "Soothing Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Smoked Desert Dumplings (285)
    {
        id = 24801,
        name = "Smoked Desert Dumplings",
        itemId = 20452,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 325, green = 345, gray = 365 },
        reagents = {
            { itemId = 20424, name = "Sandworm Meat", count = 1 },
            { itemId = 3713, name = "Soothing Spices", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Dirge's Kickin' Chimaerok Chops (300)
    {
        id = 25659,
        name = "Dirge's Kickin' Chimaerok Chops",
        itemId = 21023,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 325, green = 345, gray = 365 },
        reagents = {
            { itemId = 2692, name = "Hot Spices", count = 1 },
            { itemId = 9061, name = "Goblin Rocket Fuel", count = 1 },
            { itemId = 8150, name = "Deeprock Salt", count = 1 },
            { itemId = 21024, name = "Chimaerok Tenderloin", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Cooking Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
}

CraftLib:RegisterProfession("cooking", {
    id = C.PROFESSION_ID.COOKING,
    name = "Cooking",
    expansion = C.EXPANSION.VANILLA,
    profile = "VANILLA",
    milestones = { 75, 150, 225, 300 },
    recipes = recipes,
})
