-- Data/WotLK/Inscription/Recipes.lua
-- Inscription recipes for WotLK Classic
-- Generated from DB2 data
local ADDON_NAME, CraftLib = ...
local C = CraftLib.Constants

local recipes = {
    -- Scroll of Stamina (1)
    {
        id = 45382,
        name = "Scroll of Stamina",
        itemId = 1180,
        skillRequired = 1,
        skillRange = { orange = 0, yellow = 35, green = 40, gray = 45 },
        reagents = {
            { itemId = 37101, name = "Ivory Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Intellect (1)
    {
        id = 48114,
        name = "Scroll of Intellect",
        itemId = 955,
        skillRequired = 1,
        skillRange = { orange = 0, yellow = 35, green = 40, gray = 45 },
        reagents = {
            { itemId = 37101, name = "Ivory Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Spirit (1)
    {
        id = 48116,
        name = "Scroll of Spirit",
        itemId = 1181,
        skillRequired = 1,
        skillRange = { orange = 0, yellow = 35, green = 40, gray = 45 },
        reagents = {
            { itemId = 37101, name = "Ivory Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ivory Ink (1)
    {
        id = 52738,
        name = "Ivory Ink",
        itemId = 37101,
        skillRequired = 1,
        skillRange = { orange = 0, yellow = 15, green = 22, gray = 30 },
        reagents = {
            { itemId = 39151, name = "Alabaster Pigment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Agility (15)
    {
        id = 58472,
        name = "Scroll of Agility",
        itemId = 3012,
        skillRequired = 15,
        skillRange = { orange = 15, yellow = 35, green = 40, gray = 45 },
        reagents = {
            { itemId = 37101, name = "Ivory Ink", count = 2 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Strength (15)
    {
        id = 58484,
        name = "Scroll of Strength",
        itemId = 954,
        skillRequired = 15,
        skillRange = { orange = 15, yellow = 35, green = 40, gray = 45 },
        reagents = {
            { itemId = 37101, name = "Ivory Ink", count = 2 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Recall (35)
    {
        id = 48248,
        name = "Scroll of Recall",
        itemId = 37118,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 60, green = 67, gray = 75 },
        reagents = {
            { itemId = 39354, name = "Light Parchment", count = 1 },
            { itemId = 39469, name = "Moonglow Ink", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Armor Vellum (35)
    {
        id = 52739,
        name = "Armor Vellum",
        itemId = 38682,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 75, green = 87, gray = 100 },
        reagents = {
            { itemId = 39469, name = "Moonglow Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 150,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Moonglow Ink (35)
    {
        id = 52843,
        name = "Moonglow Ink",
        itemId = 39469,
        skillRequired = 35,
        skillRange = { orange = 35, yellow = 45, green = 60, gray = 75 },
        reagents = {
            { itemId = 39151, name = "Alabaster Pigment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Intellect II (75)
    {
        id = 50598,
        name = "Scroll of Intellect II",
        itemId = 2290,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 75, green = 80, gray = 85 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Spirit II (75)
    {
        id = 50605,
        name = "Scroll of Spirit II",
        itemId = 1712,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 75, green = 80, gray = 85 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Stamina II (75)
    {
        id = 50612,
        name = "Scroll of Stamina II",
        itemId = 1711,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 75, green = 80, gray = 85 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Weapon Vellum (75)
    {
        id = 52840,
        name = "Weapon Vellum",
        itemId = 39349,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 100, green = 112, gray = 125 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 3 },
            { itemId = 39354, name = "Light Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Midnight Ink (75)
    {
        id = 53462,
        name = "Midnight Ink",
        itemId = 39774,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 75, green = 77, gray = 80 },
        reagents = {
            { itemId = 39334, name = "Dusky Pigment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Typhoon (75)
    {
        id = 56965,
        name = "Glyph of Typhoon",
        itemId = 44922,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Blast Wave (75)
    {
        id = 56990,
        name = "Glyph of Blast Wave",
        itemId = 44920,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Blood Tap (75)
    {
        id = 57209,
        name = "Glyph of Blood Tap",
        itemId = 43535,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 330, green = 335, gray = 340 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Death's Embrace (75)
    {
        id = 57215,
        name = "Glyph of Death's Embrace",
        itemId = 43539,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 305, green = 310, gray = 315 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Horn of Winter (75)
    {
        id = 57217,
        name = "Glyph of Horn of Winter",
        itemId = 43544,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 330, green = 335, gray = 340 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Raise Dead (75)
    {
        id = 57228,
        name = "Glyph of Raise Dead",
        itemId = 43673,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 305, green = 310, gray = 315 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Corpse Explosion (75)
    {
        id = 57229,
        name = "Glyph of Corpse Explosion",
        itemId = 43671,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 305, green = 310, gray = 315 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Pestilence (75)
    {
        id = 57230,
        name = "Glyph of Pestilence",
        itemId = 43672,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 305, green = 310, gray = 315 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Thunderstorm (75)
    {
        id = 57253,
        name = "Glyph of Thunderstorm",
        itemId = 44923,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Aquatic Form (75)
    {
        id = 58286,
        name = "Glyph of Aquatic Form",
        itemId = 43316,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Challenging Roar (75)
    {
        id = 58287,
        name = "Glyph of Challenging Roar",
        itemId = 43334,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 155, green = 160, gray = 165 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Unburdened Rebirth (75)
    {
        id = 58288,
        name = "Glyph of Unburdened Rebirth",
        itemId = 43331,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Thorns (75)
    {
        id = 58289,
        name = "Glyph of Thorns",
        itemId = 43332,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of the Wild (75)
    {
        id = 58296,
        name = "Glyph of the Wild",
        itemId = 43335,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of the Pack (75)
    {
        id = 58297,
        name = "Glyph of the Pack",
        itemId = 43355,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 205, green = 210, gray = 215 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Scare Beast (75)
    {
        id = 58298,
        name = "Glyph of Scare Beast",
        itemId = 43356,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Revive Pet (75)
    {
        id = 58299,
        name = "Glyph of Revive Pet",
        itemId = 43338,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Possessed Strength (75)
    {
        id = 58300,
        name = "Glyph of Possessed Strength",
        itemId = 43354,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Mend Pet (75)
    {
        id = 58301,
        name = "Glyph of Mend Pet",
        itemId = 43350,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Feign Death (75)
    {
        id = 58302,
        name = "Glyph of Feign Death",
        itemId = 43351,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 155, green = 160, gray = 165 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Arcane Intellect (75)
    {
        id = 58303,
        name = "Glyph of Arcane Intellect",
        itemId = 43339,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Fire Ward (75)
    {
        id = 58305,
        name = "Glyph of Fire Ward",
        itemId = 43357,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Frost Armor (75)
    {
        id = 58306,
        name = "Glyph of Frost Armor",
        itemId = 43359,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Frost Ward (75)
    {
        id = 58307,
        name = "Glyph of Frost Ward",
        itemId = 43360,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 130, green = 135, gray = 140 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Slow Fall (75)
    {
        id = 58308,
        name = "Glyph of Slow Fall",
        itemId = 43364,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of the Penguin (75)
    {
        id = 58310,
        name = "Glyph of the Penguin",
        itemId = 43361,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Blessing of Kings (75)
    {
        id = 58311,
        name = "Glyph of Blessing of Kings",
        itemId = 43365,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Blessing of Wisdom (75)
    {
        id = 58312,
        name = "Glyph of Blessing of Wisdom",
        itemId = 43366,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Lay on Hands (75)
    {
        id = 58313,
        name = "Glyph of Lay on Hands",
        itemId = 43367,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Blessing of Might (75)
    {
        id = 58314,
        name = "Glyph of Blessing of Might",
        itemId = 43340,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Sense Undead (75)
    {
        id = 58315,
        name = "Glyph of Sense Undead",
        itemId = 43368,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of the Wise (75)
    {
        id = 58316,
        name = "Glyph of the Wise",
        itemId = 43369,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 155, green = 160, gray = 165 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Fading (75)
    {
        id = 58317,
        name = "Glyph of Fading",
        itemId = 43342,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Fortitude (75)
    {
        id = 58318,
        name = "Glyph of Fortitude",
        itemId = 43371,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Levitate (75)
    {
        id = 58319,
        name = "Glyph of Levitate",
        itemId = 43370,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 180, green = 185, gray = 190 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Shackle Undead (75)
    {
        id = 58320,
        name = "Glyph of Shackle Undead",
        itemId = 43373,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Shadow Protection (75)
    {
        id = 58321,
        name = "Glyph of Shadow Protection",
        itemId = 43372,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 155, green = 160, gray = 165 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Shadowfiend (75)
    {
        id = 58322,
        name = "Glyph of Shadowfiend",
        itemId = 43374,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Blurred Speed (75)
    {
        id = 58323,
        name = "Glyph of Blurred Speed",
        itemId = 43379,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Distract (75)
    {
        id = 58324,
        name = "Glyph of Distract",
        itemId = 43376,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 130, green = 135, gray = 140 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Pick Lock (75)
    {
        id = 58325,
        name = "Glyph of Pick Lock",
        itemId = 43377,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Pick Pocket (75)
    {
        id = 58326,
        name = "Glyph of Pick Pocket",
        itemId = 43343,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Safe Fall (75)
    {
        id = 58327,
        name = "Glyph of Safe Fall",
        itemId = 43378,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 205, green = 210, gray = 215 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Vanish (75)
    {
        id = 58328,
        name = "Glyph of Vanish",
        itemId = 43380,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 130, green = 135, gray = 140 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Astral Recall (75)
    {
        id = 58329,
        name = "Glyph of Astral Recall",
        itemId = 43381,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 155, green = 160, gray = 165 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Renewed Life (75)
    {
        id = 58330,
        name = "Glyph of Renewed Life",
        itemId = 43385,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 155, green = 160, gray = 165 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Water Breathing (75)
    {
        id = 58331,
        name = "Glyph of Water Breathing",
        itemId = 43344,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 130, green = 135, gray = 140 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Water Shield (75)
    {
        id = 58332,
        name = "Glyph of Water Shield",
        itemId = 43386,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Water Walking (75)
    {
        id = 58333,
        name = "Glyph of Water Walking",
        itemId = 43388,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 155, green = 160, gray = 165 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Unending Breath (75)
    {
        id = 58336,
        name = "Glyph of Unending Breath",
        itemId = 43389,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Drain Soul (75)
    {
        id = 58337,
        name = "Glyph of Drain Soul",
        itemId = 43390,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Curse of Exhaustion (75)
    {
        id = 58338,
        name = "Glyph of Curse of Exhaustion",
        itemId = 43392,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 155, green = 160, gray = 165 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Subjugate Demon (75)
    {
        id = 58339,
        name = "Glyph of Subjugate Demon",
        itemId = 43393,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 155, green = 160, gray = 165 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Kilrogg (75)
    {
        id = 58340,
        name = "Glyph of Kilrogg",
        itemId = 43391,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 130, green = 135, gray = 140 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Souls (75)
    {
        id = 58341,
        name = "Glyph of Souls",
        itemId = 43394,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Battle (75)
    {
        id = 58342,
        name = "Glyph of Battle",
        itemId = 43395,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Bloodrage (75)
    {
        id = 58343,
        name = "Glyph of Bloodrage",
        itemId = 43396,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Charge (75)
    {
        id = 58344,
        name = "Glyph of Charge",
        itemId = 43397,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Mocking Blow (75)
    {
        id = 58345,
        name = "Glyph of Mocking Blow",
        itemId = 43398,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Thunder Clap (75)
    {
        id = 58346,
        name = "Glyph of Thunder Clap",
        itemId = 43399,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Enduring Victory (75)
    {
        id = 58347,
        name = "Glyph of Enduring Victory",
        itemId = 43400,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 330, green = 335, gray = 340 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Dash (75)
    {
        id = 59315,
        name = "Glyph of Dash",
        itemId = 43674,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 155, green = 160, gray = 165 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Ghost Wolf (75)
    {
        id = 59326,
        name = "Glyph of Ghost Wolf",
        itemId = 43725,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Minor Inscription Research (75)
    {
        id = 61288,
        name = "Minor Inscription Research",
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 39469, name = "Moonglow Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Enraged Regeneration (75)
    {
        id = 64312,
        name = "Glyph of Enraged Regeneration",
        itemId = 45794,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Command (75)
    {
        id = 68166,
        name = "Glyph of Command",
        itemId = 49084,
        skillRequired = 75,
        skillRange = { orange = 75, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Rejuvenation (80)
    {
        id = 56955,
        name = "Glyph of Rejuvenation",
        itemId = 40913,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 90, green = 100, gray = 110 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Frost Nova (80)
    {
        id = 56976,
        name = "Glyph of Frost Nova",
        itemId = 42741,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 90, green = 100, gray = 110 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Hunter's Mark (80)
    {
        id = 57004,
        name = "Glyph of Hunter's Mark",
        itemId = 42907,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 90, green = 100, gray = 110 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Spiritual Attunement (80)
    {
        id = 57022,
        name = "Glyph of Spiritual Attunement",
        itemId = 41096,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 90, green = 100, gray = 110 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Backstab (80)
    {
        id = 57114,
        name = "Glyph of Backstab",
        itemId = 42956,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 90, green = 100, gray = 110 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Power Word: Shield (80)
    {
        id = 57194,
        name = "Glyph of Power Word: Shield",
        itemId = 42408,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 90, green = 100, gray = 110 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Strength II (80)
    {
        id = 58485,
        name = "Scroll of Strength II",
        itemId = 2289,
        skillRequired = 80,
        skillRange = { orange = 80, yellow = 80, green = 85, gray = 90 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Wrath (85)
    {
        id = 56963,
        name = "Glyph of Wrath",
        itemId = 40922,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 95, green = 105, gray = 115 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Rapid Charge (85)
    {
        id = 57162,
        name = "Glyph of Rapid Charge",
        itemId = 43413,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 95, green = 105, gray = 115 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Flame Shock (85)
    {
        id = 57239,
        name = "Glyph of Flame Shock",
        itemId = 41531,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 95, green = 105, gray = 115 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Corruption (85)
    {
        id = 57259,
        name = "Glyph of Corruption",
        itemId = 42455,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 95, green = 105, gray = 115 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 300,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Hunter's Ink (85)
    {
        id = 57703,
        name = "Hunter's Ink",
        itemId = 43115,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 85, green = 90, gray = 95 },
        reagents = {
            { itemId = 43103, name = "Verdant Pigment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Agility II (85)
    {
        id = 58473,
        name = "Scroll of Agility II",
        itemId = 1477,
        skillRequired = 85,
        skillRange = { orange = 85, yellow = 85, green = 90, gray = 95 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Maul (90)
    {
        id = 56961,
        name = "Glyph of Maul",
        itemId = 40897,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 100, green = 110, gray = 120 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Ice Armor (90)
    {
        id = 56978,
        name = "Glyph of Ice Armor",
        itemId = 42743,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 100, green = 110, gray = 120 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Serpent Sting (90)
    {
        id = 57009,
        name = "Glyph of Serpent Sting",
        itemId = 42912,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 100, green = 110, gray = 120 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Hammer of Justice (90)
    {
        id = 57027,
        name = "Glyph of Hammer of Justice",
        itemId = 41095,
        skillRequired = 90,
        skillRange = { orange = 90, yellow = 100, green = 110, gray = 120 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Evasion (95)
    {
        id = 57119,
        name = "Glyph of Evasion",
        itemId = 42960,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 105, green = 115, gray = 125 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Heroic Strike (95)
    {
        id = 57158,
        name = "Glyph of Heroic Strike",
        itemId = 43418,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 105, green = 115, gray = 125 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Psychic Scream (95)
    {
        id = 57196,
        name = "Glyph of Psychic Scream",
        itemId = 42410,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 105, green = 115, gray = 125 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Lightning Shield (95)
    {
        id = 57246,
        name = "Glyph of Lightning Shield",
        itemId = 41537,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 105, green = 115, gray = 125 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Healthstone (95)
    {
        id = 57266,
        name = "Glyph of Healthstone",
        itemId = 42462,
        skillRequired = 95,
        skillRange = { orange = 95, yellow = 105, green = 115, gray = 125 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Entangling Roots (100)
    {
        id = 48121,
        name = "Glyph of Entangling Roots",
        itemId = 40924,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Arcane Explosion (100)
    {
        id = 56968,
        name = "Glyph of Arcane Explosion",
        itemId = 42734,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Arcane Shot (100)
    {
        id = 56995,
        name = "Glyph of Arcane Shot",
        itemId = 42898,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Lion's Ink (100)
    {
        id = 57704,
        name = "Lion's Ink",
        itemId = 43116,
        skillRequired = 100,
        skillRange = { orange = 0, yellow = 100, green = 100, gray = 105 },
        reagents = {
            { itemId = 39338, name = "Golden Pigment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Claw (100)
    {
        id = 67600,
        name = "Glyph of Claw",
        itemId = 48720,
        skillRequired = 100,
        skillRange = { orange = 100, yellow = 105, green = 110, gray = 115 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 400,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Holy Light (105)
    {
        id = 57029,
        name = "Glyph of Holy Light",
        itemId = 41106,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 110, green = 115, gray = 120 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Eviscerate (105)
    {
        id = 57120,
        name = "Glyph of Eviscerate",
        itemId = 42961,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 110, green = 115, gray = 120 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Fade (105)
    {
        id = 57184,
        name = "Glyph of Fade",
        itemId = 42398,
        skillRequired = 105,
        skillRange = { orange = 105, yellow = 110, green = 115, gray = 120 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Mysterious Tarot (110)
    {
        id = 48247,
        name = "Mysterious Tarot",
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 39354, name = "Light Parchment", count = 1 },
            { itemId = 43115, name = "Hunter's Ink", count = 1 },
            { itemId = 39774, name = "Midnight Ink", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Rending (110)
    {
        id = 57163,
        name = "Glyph of Rending",
        itemId = 43423,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 115, green = 120, gray = 125 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Fire Nova (110)
    {
        id = 57238,
        name = "Glyph of Fire Nova",
        itemId = 41530,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 115, green = 120, gray = 125 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Health Funnel (110)
    {
        id = 57265,
        name = "Glyph of Health Funnel",
        itemId = 42461,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 115, green = 120, gray = 125 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Mystic Tome (110)
    {
        id = 58565,
        name = "Mystic Tome",
        itemId = 43515,
        skillRequired = 110,
        skillRange = { orange = 110, yellow = 125, green = 137, gray = 150 },
        reagents = {
            { itemId = 39354, name = "Light Parchment", count = 10 },
            { itemId = 43115, name = "Hunter's Ink", count = 5 },
            { itemId = 39774, name = "Midnight Ink", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Healing Touch (115)
    {
        id = 56945,
        name = "Glyph of Healing Touch",
        itemId = 40914,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 120, green = 125, gray = 130 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Arcane Missiles (115)
    {
        id = 56971,
        name = "Glyph of Arcane Missiles",
        itemId = 42735,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 120, green = 125, gray = 130 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Mending (115)
    {
        id = 56997,
        name = "Glyph of Mending",
        itemId = 42900,
        skillRequired = 115,
        skillRange = { orange = 115, yellow = 120, green = 125, gray = 130 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Judgement (120)
    {
        id = 57030,
        name = "Glyph of Judgement",
        itemId = 41092,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 125, green = 130, gray = 135 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Expose Armor (120)
    {
        id = 57121,
        name = "Glyph of Expose Armor",
        itemId = 42962,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 125, green = 130, gray = 135 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Flash Heal (120)
    {
        id = 57186,
        name = "Glyph of Flash Heal",
        itemId = 42400,
        skillRequired = 120,
        skillRange = { orange = 120, yellow = 125, green = 130, gray = 135 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Hamstring (125)
    {
        id = 57157,
        name = "Glyph of Hamstring",
        itemId = 43417,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 130, green = 135, gray = 140 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Flametongue Weapon (125)
    {
        id = 57240,
        name = "Glyph of Flametongue Weapon",
        itemId = 41532,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 130, green = 135, gray = 140 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Fear (125)
    {
        id = 57262,
        name = "Glyph of Fear",
        itemId = 42458,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 130, green = 135, gray = 140 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Dawnstar Ink (125)
    {
        id = 57706,
        name = "Dawnstar Ink",
        itemId = 43117,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 125, green = 130, gray = 135 },
        reagents = {
            { itemId = 43104, name = "Burnt Pigment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Tome of the Dawn (125)
    {
        id = 59475,
        name = "Tome of the Dawn",
        itemId = 43654,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 162, gray = 175 },
        reagents = {
            { itemId = 43117, name = "Dawnstar Ink", count = 5 },
            { itemId = 10648, name = "Common Parchment", count = 10 },
            { itemId = 43116, name = "Lion's Ink", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Book of Survival (125)
    {
        id = 59478,
        name = "Book of Survival",
        itemId = 43655,
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 162, gray = 175 },
        reagents = {
            { itemId = 43117, name = "Dawnstar Ink", count = 5 },
            { itemId = 10648, name = "Common Parchment", count = 10 },
            { itemId = 43116, name = "Lion's Ink", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Strange Tarot (125)
    {
        id = 59480,
        name = "Strange Tarot",
        skillRequired = 125,
        skillRange = { orange = 125, yellow = 150, green = 162, gray = 175 },
        reagents = {
            { itemId = 43117, name = "Dawnstar Ink", count = 2 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
            { itemId = 43116, name = "Lion's Ink", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Moonfire (130)
    {
        id = 56951,
        name = "Glyph of Moonfire",
        itemId = 40923,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 135, green = 140, gray = 145 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Blink (130)
    {
        id = 56973,
        name = "Glyph of Blink",
        itemId = 42737,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 135, green = 140, gray = 145 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Immolation Trap (130)
    {
        id = 57005,
        name = "Glyph of Immolation Trap",
        itemId = 42908,
        skillRequired = 130,
        skillRange = { orange = 130, yellow = 135, green = 140, gray = 145 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Divinity (135)
    {
        id = 57031,
        name = "Glyph of Divinity",
        itemId = 41108,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 140, green = 145, gray = 150 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Garrote (135)
    {
        id = 57123,
        name = "Glyph of Garrote",
        itemId = 42964,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 140, green = 145, gray = 150 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Inner Fire (135)
    {
        id = 57188,
        name = "Glyph of Inner Fire",
        itemId = 42402,
        skillRequired = 135,
        skillRange = { orange = 135, yellow = 140, green = 145, gray = 150 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Sunder Armor (140)
    {
        id = 57167,
        name = "Glyph of Sunder Armor",
        itemId = 43427,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 145, green = 150, gray = 155 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Lightning Bolt (140)
    {
        id = 57245,
        name = "Glyph of Lightning Bolt",
        itemId = 41536,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 145, green = 150, gray = 155 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Imp (140)
    {
        id = 57269,
        name = "Glyph of Imp",
        itemId = 42465,
        skillRequired = 140,
        skillRange = { orange = 140, yellow = 145, green = 150, gray = 155 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Insect Swarm (150)
    {
        id = 56948,
        name = "Glyph of Insect Swarm",
        itemId = 40919,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 155, green = 160, gray = 165 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Multi-Shot (150)
    {
        id = 57007,
        name = "Glyph of Multi-Shot",
        itemId = 42910,
        skillRequired = 150,
        skillRange = { orange = 150, yellow = 155, green = 160, gray = 165 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Jadefire Ink (150)
    {
        id = 57707,
        name = "Jadefire Ink",
        itemId = 43118,
        skillRequired = 150,
        skillRange = { orange = 0, yellow = 150, green = 150, gray = 155 },
        reagents = {
            { itemId = 39339, name = "Emerald Pigment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Stamina III (155)
    {
        id = 50614,
        name = "Scroll of Stamina III",
        itemId = 4422,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 160, green = 165, gray = 170 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Evocation (155)
    {
        id = 56974,
        name = "Glyph of Evocation",
        itemId = 42738,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 160, green = 165, gray = 170 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Righteous Defense (155)
    {
        id = 57032,
        name = "Glyph of Righteous Defense",
        itemId = 41100,
        skillRequired = 155,
        skillRange = { orange = 155, yellow = 160, green = 165, gray = 170 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Spirit III (160)
    {
        id = 50606,
        name = "Scroll of Spirit III",
        itemId = 4424,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 165, green = 170, gray = 175 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Gouge (160)
    {
        id = 57125,
        name = "Glyph of Gouge",
        itemId = 42966,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 165, green = 170, gray = 175 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Renew (160)
    {
        id = 57197,
        name = "Glyph of Renew",
        itemId = 42411,
        skillRequired = 160,
        skillRange = { orange = 160, yellow = 165, green = 170, gray = 175 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Intellect III (165)
    {
        id = 50599,
        name = "Scroll of Intellect III",
        itemId = 4419,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 170, green = 175, gray = 180 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Lava Lash (165)
    {
        id = 57249,
        name = "Glyph of Lava Lash",
        itemId = 41540,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 170, green = 175, gray = 180 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Shadow Bolt (165)
    {
        id = 57271,
        name = "Glyph of Shadow Bolt",
        itemId = 42467,
        skillRequired = 165,
        skillRange = { orange = 165, yellow = 170, green = 175, gray = 180 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Rebirth (170)
    {
        id = 56953,
        name = "Glyph of Rebirth",
        itemId = 40909,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 175, green = 180, gray = 185 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Overpower (170)
    {
        id = 57161,
        name = "Glyph of Overpower",
        itemId = 43422,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 175, green = 180, gray = 185 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Strength III (170)
    {
        id = 58486,
        name = "Scroll of Strength III",
        itemId = 4426,
        skillRequired = 170,
        skillRange = { orange = 170, yellow = 175, green = 180, gray = 185 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Icy Veins (175)
    {
        id = 56981,
        name = "Glyph of Icy Veins",
        itemId = 42746,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 180, green = 185, gray = 190 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Aimed Shot (175)
    {
        id = 56994,
        name = "Glyph of Aimed Shot",
        itemId = 42897,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 180, green = 185, gray = 190 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Royal Ink (175)
    {
        id = 57708,
        name = "Royal Ink",
        itemId = 43119,
        skillRequired = 175,
        skillRange = { orange = 0, yellow = 175, green = 175, gray = 180 },
        reagents = {
            { itemId = 43105, name = "Indigo Pigment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Agility III (175)
    {
        id = 58476,
        name = "Scroll of Agility III",
        itemId = 4425,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 180, green = 185, gray = 190 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Tome of Kings (175)
    {
        id = 59484,
        name = "Tome of Kings",
        itemId = 43656,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 200, green = 205, gray = 210 },
        reagents = {
            { itemId = 43119, name = "Royal Ink", count = 5 },
            { itemId = 10648, name = "Common Parchment", count = 10 },
            { itemId = 43118, name = "Jadefire Ink", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Royal Guide of Escape Routes (175)
    {
        id = 59486,
        name = "Royal Guide of Escape Routes",
        itemId = 43657,
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 200, green = 205, gray = 210 },
        reagents = {
            { itemId = 43119, name = "Royal Ink", count = 5 },
            { itemId = 10648, name = "Common Parchment", count = 10 },
            { itemId = 43118, name = "Jadefire Ink", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Arcane Tarot (175)
    {
        id = 59487,
        name = "Arcane Tarot",
        skillRequired = 175,
        skillRange = { orange = 175, yellow = 200, green = 205, gray = 210 },
        reagents = {
            { itemId = 43119, name = "Royal Ink", count = 2 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 750,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Cleansing (180)
    {
        id = 57020,
        name = "Glyph of Cleansing",
        itemId = 41104,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 185, green = 190, gray = 195 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Mind Flay (180)
    {
        id = 57200,
        name = "Glyph of Mind Flay",
        itemId = 42415,
        skillRequired = 180,
        skillRange = { orange = 180, yellow = 185, green = 190, gray = 195 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 1000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Sap (185)
    {
        id = 57129,
        name = "Glyph of Sap",
        itemId = 42970,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 190, green = 195, gray = 200 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Frost Shock (185)
    {
        id = 57241,
        name = "Glyph of Frost Shock",
        itemId = 41547,
        skillRequired = 185,
        skillRange = { orange = 185, yellow = 190, green = 195, gray = 200 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Revenge (190)
    {
        id = 57165,
        name = "Glyph of Revenge",
        itemId = 43424,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 195, green = 200, gray = 205 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Voidwalker (190)
    {
        id = 57277,
        name = "Glyph of Voidwalker",
        itemId = 42473,
        skillRequired = 190,
        skillRange = { orange = 190, yellow = 195, green = 200, gray = 205 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Rip (200)
    {
        id = 56956,
        name = "Glyph of Rip",
        itemId = 40902,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 205, green = 210, gray = 215 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Deterrence (200)
    {
        id = 57000,
        name = "Glyph of Deterrence",
        itemId = 42903,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 205, green = 210, gray = 215 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Celestial Ink (200)
    {
        id = 57709,
        name = "Celestial Ink",
        itemId = 43120,
        skillRequired = 200,
        skillRange = { orange = 0, yellow = 200, green = 200, gray = 205 },
        reagents = {
            { itemId = 39340, name = "Violet Pigment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Certificate of Ownership (200)
    {
        id = 59387,
        name = "Certificate of Ownership",
        itemId = 43850,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 205, green = 210, gray = 215 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 2 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Armor Vellum II (200)
    {
        id = 59499,
        name = "Armor Vellum II",
        itemId = 37602,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 210, green = 215, gray = 220 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Recall II (200)
    {
        id = 60336,
        name = "Scroll of Recall II",
        itemId = 44314,
        skillRequired = 200,
        skillRange = { orange = 200, yellow = 215, green = 220, gray = 225 },
        reagents = {
            { itemId = 10648, name = "Common Parchment", count = 1 },
            { itemId = 43120, name = "Celestial Ink", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 3000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Stamina IV (205)
    {
        id = 50616,
        name = "Scroll of Stamina IV",
        itemId = 10307,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 210, green = 215, gray = 220 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Scorch (205)
    {
        id = 56982,
        name = "Glyph of Scorch",
        itemId = 42747,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 210, green = 215, gray = 220 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Consecration (205)
    {
        id = 57023,
        name = "Glyph of Consecration",
        itemId = 41099,
        skillRequired = 205,
        skillRange = { orange = 205, yellow = 210, green = 215, gray = 220 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Spirit IV (210)
    {
        id = 50607,
        name = "Scroll of Spirit IV",
        itemId = 10306,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 215, green = 220, gray = 225 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Sinister Strike (210)
    {
        id = 57131,
        name = "Glyph of Sinister Strike",
        itemId = 42972,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 215, green = 220, gray = 225 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Smite (210)
    {
        id = 57201,
        name = "Glyph of Smite",
        itemId = 42416,
        skillRequired = 210,
        skillRange = { orange = 210, yellow = 215, green = 220, gray = 225 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Intellect IV (215)
    {
        id = 50600,
        name = "Scroll of Intellect IV",
        itemId = 10308,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 220, green = 225, gray = 230 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Healing Stream Totem (215)
    {
        id = 57242,
        name = "Glyph of Healing Stream Totem",
        itemId = 41533,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 220, green = 225, gray = 230 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Searing Pain (215)
    {
        id = 57270,
        name = "Glyph of Searing Pain",
        itemId = 42466,
        skillRequired = 215,
        skillRange = { orange = 215, yellow = 220, green = 225, gray = 230 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Starfire (220)
    {
        id = 56959,
        name = "Glyph of Starfire",
        itemId = 40916,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Barbaric Insults (220)
    {
        id = 57151,
        name = "Glyph of Barbaric Insults",
        itemId = 43420,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Strength IV (220)
    {
        id = 58487,
        name = "Scroll of Strength IV",
        itemId = 10310,
        skillRequired = 220,
        skillRange = { orange = 220, yellow = 225, green = 230, gray = 235 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Ice Block (225)
    {
        id = 56979,
        name = "Glyph of Ice Block",
        itemId = 42744,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 230, green = 235, gray = 240 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Disengage (225)
    {
        id = 57001,
        name = "Glyph of Disengage",
        itemId = 42904,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 230, green = 235, gray = 240 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fiery Ink (225)
    {
        id = 57710,
        name = "Fiery Ink",
        itemId = 43121,
        skillRequired = 225,
        skillRange = { orange = 0, yellow = 225, green = 225, gray = 230 },
        reagents = {
            { itemId = 43106, name = "Ruby Pigment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Agility IV (225)
    {
        id = 58478,
        name = "Scroll of Agility IV",
        itemId = 10309,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 230, green = 235, gray = 240 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 4500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Fire Eater's Guide (225)
    {
        id = 59489,
        name = "Fire Eater's Guide",
        itemId = 43660,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 245, gray = 250 },
        reagents = {
            { itemId = 43121, name = "Fiery Ink", count = 5 },
            { itemId = 39501, name = "Heavy Parchment", count = 10 },
            { itemId = 43120, name = "Celestial Ink", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Book of Stars (225)
    {
        id = 59490,
        name = "Book of Stars",
        itemId = 43661,
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 245, gray = 250 },
        reagents = {
            { itemId = 43121, name = "Fiery Ink", count = 5 },
            { itemId = 43120, name = "Celestial Ink", count = 2 },
            { itemId = 39501, name = "Heavy Parchment", count = 10 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Shadowy Tarot (225)
    {
        id = 59491,
        name = "Shadowy Tarot",
        skillRequired = 225,
        skillRange = { orange = 225, yellow = 240, green = 245, gray = 250 },
        reagents = {
            { itemId = 43121, name = "Fiery Ink", count = 2 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
            { itemId = 43120, name = "Celestial Ink", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Crusader Strike (230)
    {
        id = 57024,
        name = "Glyph of Crusader Strike",
        itemId = 41098,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 235, green = 240, gray = 245 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Dispel Magic (230)
    {
        id = 57183,
        name = "Glyph of Dispel Magic",
        itemId = 42397,
        skillRequired = 230,
        skillRange = { orange = 230, yellow = 235, green = 240, gray = 245 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Slice and Dice (235)
    {
        id = 57132,
        name = "Glyph of Slice and Dice",
        itemId = 42973,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 240, green = 245, gray = 250 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Lesser Healing Wave (235)
    {
        id = 57244,
        name = "Glyph of Lesser Healing Wave",
        itemId = 41535,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 240, green = 245, gray = 250 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Weapon Vellum II (235)
    {
        id = 59488,
        name = "Weapon Vellum II",
        itemId = 39350,
        skillRequired = 235,
        skillRange = { orange = 235, yellow = 250, green = 255, gray = 260 },
        reagents = {
            { itemId = 43121, name = "Fiery Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
            { itemId = 43120, name = "Celestial Ink", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 6000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Cleaving (240)
    {
        id = 57154,
        name = "Glyph of Cleaving",
        itemId = 43414,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 245, green = 250, gray = 255 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 7500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Soulstone (240)
    {
        id = 57274,
        name = "Glyph of Soulstone",
        itemId = 42470,
        skillRequired = 240,
        skillRange = { orange = 240, yellow = 245, green = 250, gray = 255 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 7500,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Stamina V (250)
    {
        id = 50617,
        name = "Scroll of Stamina V",
        itemId = 27502,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 255, green = 260, gray = 265 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Shimmering Ink (250)
    {
        id = 57711,
        name = "Shimmering Ink",
        itemId = 43122,
        skillRequired = 250,
        skillRange = { orange = 0, yellow = 250, green = 250, gray = 255 },
        reagents = {
            { itemId = 39341, name = "Silvery Pigment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Monsoon (250)
    {
        id = 64258,
        name = "Glyph of Monsoon",
        itemId = 45622,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 255, green = 262, gray = 270 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Earth Shield (250)
    {
        id = 64261,
        name = "Glyph of Earth Shield",
        itemId = 45775,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 255, green = 262, gray = 270 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Eternal Water (250)
    {
        id = 71101,
        name = "Glyph of Eternal Water",
        itemId = 50045,
        skillRequired = 250,
        skillRange = { orange = 250, yellow = 255, green = 260, gray = 265 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 50166,
            cost = 30000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Spirit V (255)
    {
        id = 50608,
        name = "Scroll of Spirit V",
        itemId = 27501,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 260, green = 265, gray = 270 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Pain Suppression (255)
    {
        id = 64259,
        name = "Glyph of Pain Suppression",
        itemId = 45760,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 255, green = 262, gray = 270 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Mutilate (255)
    {
        id = 64260,
        name = "Glyph of Mutilate",
        itemId = 45768,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 255, green = 262, gray = 270 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Totem of Wrath (255)
    {
        id = 64262,
        name = "Glyph of Totem of Wrath",
        itemId = 45776,
        skillRequired = 255,
        skillRange = { orange = 255, yellow = 255, green = 262, gray = 270 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Intellect V (260)
    {
        id = 50601,
        name = "Scroll of Intellect V",
        itemId = 27499,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 265, green = 270, gray = 275 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Shred (260)
    {
        id = 56957,
        name = "Glyph of Shred",
        itemId = 40901,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 265, green = 270, gray = 275 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Freezing Trap (260)
    {
        id = 57002,
        name = "Glyph of Freezing Trap",
        itemId = 42905,
        skillRequired = 260,
        skillRange = { orange = 260, yellow = 265, green = 270, gray = 275 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Exorcism (265)
    {
        id = 57025,
        name = "Glyph of Exorcism",
        itemId = 41103,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 270, green = 275, gray = 280 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Bone Shield (265)
    {
        id = 57210,
        name = "Glyph of Bone Shield",
        itemId = 43536,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 270, green = 275, gray = 280 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Strength V (265)
    {
        id = 58488,
        name = "Scroll of Strength V",
        itemId = 27503,
        skillRequired = 265,
        skillRange = { orange = 265, yellow = 270, green = 275, gray = 280 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Fear Ward (270)
    {
        id = 57185,
        name = "Glyph of Fear Ward",
        itemId = 42399,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 275, green = 280, gray = 285 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Frost Strike (270)
    {
        id = 57216,
        name = "Glyph of Frost Strike",
        itemId = 43543,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 275, green = 280, gray = 285 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Agility V (270)
    {
        id = 58480,
        name = "Scroll of Agility V",
        itemId = 27498,
        skillRequired = 270,
        skillRange = { orange = 270, yellow = 275, green = 280, gray = 285 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Water Mastery (275)
    {
        id = 57251,
        name = "Glyph of Water Mastery",
        itemId = 41541,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 280, green = 285, gray = 290 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Shadowburn (275)
    {
        id = 57272,
        name = "Glyph of Shadowburn",
        itemId = 42468,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 280, green = 285, gray = 290 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ink of the Sky (275)
    {
        id = 57712,
        name = "Ink of the Sky",
        itemId = 43123,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 295, gray = 300 },
        reagents = {
            { itemId = 43107, name = "Sapphire Pigment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Stormbound Tome (275)
    {
        id = 59493,
        name = "Stormbound Tome",
        itemId = 43663,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 295, gray = 300 },
        reagents = {
            { itemId = 43123, name = "Ink of the Sky", count = 8 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
            { itemId = 43122, name = "Shimmering Ink", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Manual of Clouds (275)
    {
        id = 59494,
        name = "Manual of Clouds",
        itemId = 43664,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 295, gray = 300 },
        reagents = {
            { itemId = 43123, name = "Ink of the Sky", count = 8 },
            { itemId = 39501, name = "Heavy Parchment", count = 10 },
            { itemId = 43122, name = "Shimmering Ink", count = 4 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Darkmoon Card (275)
    {
        id = 59502,
        name = "Darkmoon Card",
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 290, green = 295, gray = 300 },
        reagents = {
            { itemId = 43123, name = "Ink of the Sky", count = 5 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
            { itemId = 43122, name = "Shimmering Ink", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Dark Death (275)
    {
        id = 64266,
        name = "Glyph of Dark Death",
        itemId = 45804,
        skillRequired = 275,
        skillRange = { orange = 275, yellow = 280, green = 287, gray = 295 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Mana Gem (280)
    {
        id = 56985,
        name = "Glyph of Mana Gem",
        itemId = 42750,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 285, green = 290, gray = 295 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Icy Touch (280)
    {
        id = 57219,
        name = "Glyph of Icy Touch",
        itemId = 43546,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 285, green = 290, gray = 295 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Disease (280)
    {
        id = 64267,
        name = "Glyph of Disease",
        itemId = 45805,
        skillRequired = 280,
        skillRange = { orange = 280, yellow = 285, green = 290, gray = 295 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 10000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Sprint (285)
    {
        id = 57133,
        name = "Glyph of Sprint",
        itemId = 42974,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 290, green = 295, gray = 300 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Execution (285)
    {
        id = 57156,
        name = "Glyph of Execution",
        itemId = 43416,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 290, green = 295, gray = 300 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Death Grip (285)
    {
        id = 57213,
        name = "Glyph of Death Grip",
        itemId = 43541,
        skillRequired = 285,
        skillRange = { orange = 285, yellow = 290, green = 295, gray = 300 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 15000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Stamina VI (290)
    {
        id = 50618,
        name = "Scroll of Stamina VI",
        itemId = 33461,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 300, green = 305, gray = 310 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Ethereal Ink (290)
    {
        id = 57713,
        name = "Ethereal Ink",
        itemId = 43124,
        skillRequired = 290,
        skillRange = { orange = 290, yellow = 295, green = 300, gray = 305 },
        reagents = {
            { itemId = 39342, name = "Nether Pigment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Scroll of Spirit VI (295)
    {
        id = 50609,
        name = "Scroll of Spirit VI",
        itemId = 33460,
        skillRequired = 295,
        skillRange = { orange = 295, yellow = 305, green = 310, gray = 315 },
        reagents = {
            { itemId = 43122, name = "Shimmering Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Flash of Light (300)
    {
        id = 57026,
        name = "Glyph of Flash of Light",
        itemId = 41105,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 305, green = 310, gray = 315 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Plague Strike (300)
    {
        id = 57221,
        name = "Glyph of Plague Strike",
        itemId = 43548,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 305, green = 310, gray = 315 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Earthliving Weapon (300)
    {
        id = 57236,
        name = "Glyph of Earthliving Weapon",
        itemId = 41527,
        skillRequired = 300,
        skillRange = { orange = 300, yellow = 305, green = 310, gray = 315 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.VANILLA,
    },
    -- Glyph of Feint (305)
    {
        id = 57122,
        name = "Glyph of Feint",
        itemId = 42963,
        skillRequired = 305,
        skillRange = { orange = 305, yellow = 310, green = 315, gray = 320 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Unbreakable Armor (305)
    {
        id = 57226,
        name = "Glyph of Unbreakable Armor",
        itemId = 43553,
        skillRequired = 305,
        skillRange = { orange = 305, yellow = 310, green = 315, gray = 320 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Scroll of Strength VI (305)
    {
        id = 58489,
        name = "Scroll of Strength VI",
        itemId = 33462,
        skillRequired = 305,
        skillRange = { orange = 305, yellow = 315, green = 320, gray = 325 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Scroll of Intellect VI (310)
    {
        id = 50602,
        name = "Scroll of Intellect VI",
        itemId = 33458,
        skillRequired = 310,
        skillRange = { orange = 310, yellow = 310, green = 315, gray = 320 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Rake (310)
    {
        id = 56952,
        name = "Glyph of Rake",
        itemId = 40903,
        skillRequired = 310,
        skillRange = { orange = 310, yellow = 315, green = 320, gray = 325 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Scroll of Agility VI (310)
    {
        id = 58481,
        name = "Scroll of Agility VI",
        itemId = 33457,
        skillRequired = 310,
        skillRange = { orange = 310, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Rune Tap (310)
    {
        id = 59338,
        name = "Glyph of Rune Tap",
        itemId = 43825,
        skillRequired = 310,
        skillRange = { orange = 310, yellow = 315, green = 320, gray = 325 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Arcane Blast (315)
    {
        id = 56991,
        name = "Glyph of Arcane Blast",
        itemId = 44955,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Rapid Fire (315)
    {
        id = 57008,
        name = "Glyph of Rapid Fire",
        itemId = 42911,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Holy Nova (315)
    {
        id = 57187,
        name = "Glyph of Holy Nova",
        itemId = 42401,
        skillRequired = 315,
        skillRange = { orange = 315, yellow = 320, green = 325, gray = 330 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Sweeping Strikes (320)
    {
        id = 57168,
        name = "Glyph of Sweeping Strikes",
        itemId = 43428,
        skillRequired = 320,
        skillRange = { orange = 320, yellow = 325, green = 330, gray = 335 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Blood Strike (320)
    {
        id = 59339,
        name = "Glyph of Blood Strike",
        itemId = 43826,
        skillRequired = 320,
        skillRange = { orange = 320, yellow = 325, green = 330, gray = 335 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Mage Armor (325)
    {
        id = 56984,
        name = "Glyph of Mage Armor",
        itemId = 42749,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 330, green = 335, gray = 340 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Succubus (325)
    {
        id = 57275,
        name = "Glyph of Succubus",
        itemId = 42471,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 330, green = 335, gray = 340 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Darkflame Ink (325)
    {
        id = 57714,
        name = "Darkflame Ink",
        itemId = 43125,
        skillRequired = 325,
        skillRange = { orange = 0, yellow = 325, green = 325, gray = 330 },
        reagents = {
            { itemId = 43108, name = "Ebon Pigment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Hellfire Tome (325)
    {
        id = 59495,
        name = "Hellfire Tome",
        itemId = 43666,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 340, green = 345, gray = 350 },
        reagents = {
            { itemId = 43125, name = "Darkflame Ink", count = 6 },
            { itemId = 39502, name = "Resilient Parchment", count = 10 },
            { itemId = 43124, name = "Ethereal Ink", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Book of Clever Tricks (325)
    {
        id = 59496,
        name = "Book of Clever Tricks",
        itemId = 43667,
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 340, green = 345, gray = 350 },
        reagents = {
            { itemId = 43125, name = "Darkflame Ink", count = 6 },
            { itemId = 39502, name = "Resilient Parchment", count = 10 },
            { itemId = 43124, name = "Ethereal Ink", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Greater Darkmoon Card (325)
    {
        id = 59503,
        name = "Greater Darkmoon Card",
        skillRequired = 325,
        skillRange = { orange = 325, yellow = 350, green = 365, gray = 380 },
        reagents = {
            { itemId = 43125, name = "Darkflame Ink", count = 3 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
            { itemId = 21886, name = "Primal Life", count = 3 },
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 20000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Scourge Strike (330)
    {
        id = 57224,
        name = "Glyph of Scourge Strike",
        itemId = 43551,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 335, green = 340, gray = 345 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Windfury Weapon (330)
    {
        id = 57252,
        name = "Glyph of Windfury Weapon",
        itemId = 41542,
        skillRequired = 330,
        skillRange = { orange = 330, yellow = 335, green = 340, gray = 345 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Arcane Power (335)
    {
        id = 56972,
        name = "Glyph of Arcane Power",
        itemId = 42736,
        skillRequired = 335,
        skillRange = { orange = 335, yellow = 340, green = 345, gray = 350 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Seal of Command (335)
    {
        id = 57033,
        name = "Glyph of Seal of Command",
        itemId = 41094,
        skillRequired = 335,
        skillRange = { orange = 335, yellow = 340, green = 345, gray = 350 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Ambush (340)
    {
        id = 57113,
        name = "Glyph of Ambush",
        itemId = 42955,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 345, green = 350, gray = 355 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Death Strike (340)
    {
        id = 59340,
        name = "Glyph of Death Strike",
        itemId = 43827,
        skillRequired = 340,
        skillRange = { orange = 340, yellow = 345, green = 350, gray = 355 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Whirlwind (345)
    {
        id = 57172,
        name = "Glyph of Whirlwind",
        itemId = 43432,
        skillRequired = 345,
        skillRange = { orange = 345, yellow = 350, green = 355, gray = 360 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Vampiric Blood (345)
    {
        id = 57227,
        name = "Glyph of Vampiric Blood",
        itemId = 43554,
        skillRequired = 345,
        skillRange = { orange = 345, yellow = 350, green = 355, gray = 360 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Scroll of Stamina VII (350)
    {
        id = 50619,
        name = "Scroll of Stamina VII",
        itemId = 37093,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Frenzied Regeneration (350)
    {
        id = 56943,
        name = "Glyph of Frenzied Regeneration",
        itemId = 40896,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Frost Trap (350)
    {
        id = 57003,
        name = "Glyph of Frost Trap",
        itemId = 42906,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Shadow Word: Pain (350)
    {
        id = 57192,
        name = "Glyph of Shadow Word: Pain",
        itemId = 42406,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of the Ghoul (350)
    {
        id = 57222,
        name = "Glyph of the Ghoul",
        itemId = 43549,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Incinerate (350)
    {
        id = 57257,
        name = "Glyph of Incinerate",
        itemId = 42453,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 355, green = 360, gray = 365 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 30000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Ink of the Sea (350)
    {
        id = 57715,
        name = "Ink of the Sea",
        itemId = 43126,
        skillRequired = 350,
        skillRange = { orange = 0, yellow = 350, green = 350, gray = 355 },
        reagents = {
            { itemId = 39343, name = "Azure Pigment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Armor Vellum III (350)
    {
        id = 59500,
        name = "Armor Vellum III",
        itemId = 43145,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 355, green = 370, gray = 385 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Scroll of Recall III (350)
    {
        id = 60337,
        name = "Scroll of Recall III",
        itemId = 44315,
        skillRequired = 350,
        skillRange = { orange = 0, yellow = 350, green = 350, gray = 355 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Rituals of the New Moon (350)
    {
        id = 64051,
        name = "Rituals of the New Moon",
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 387, gray = 400 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 5 },
            { itemId = 39502, name = "Resilient Parchment", count = 10 },
            { itemId = 35627, name = "Eternal Shadow", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.DROP,
            itemId = 46108,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Twilight Tome (350)
    {
        id = 64053,
        name = "Twilight Tome",
        itemId = 45849,
        skillRequired = 350,
        skillRange = { orange = 350, yellow = 375, green = 387, gray = 400 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 5 },
            { itemId = 39502, name = "Resilient Parchment", count = 10 },
            { itemId = 35625, name = "Eternal Life", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Scroll of Spirit VII (355)
    {
        id = 50610,
        name = "Scroll of Spirit VII",
        itemId = 37097,
        skillRequired = 355,
        skillRange = { orange = 355, yellow = 360, green = 365, gray = 370 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Scroll of Intellect VII (360)
    {
        id = 50603,
        name = "Scroll of Intellect VII",
        itemId = 37091,
        skillRequired = 360,
        skillRange = { orange = 360, yellow = 365, green = 370, gray = 375 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Scroll of Strength VII (365)
    {
        id = 58490,
        name = "Scroll of Strength VII",
        itemId = 43465,
        skillRequired = 365,
        skillRange = { orange = 365, yellow = 370, green = 375, gray = 380 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Scroll of Agility VII (370)
    {
        id = 58482,
        name = "Scroll of Agility VII",
        itemId = 43463,
        skillRequired = 370,
        skillRange = { orange = 370, yellow = 375, green = 380, gray = 385 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Ice Lance (375)
    {
        id = 56980,
        name = "Glyph of Ice Lance",
        itemId = 42745,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 380, green = 385, gray = 390 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of the Hawk (375)
    {
        id = 57006,
        name = "Glyph of the Hawk",
        itemId = 42909,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 380, green = 385, gray = 390 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Turn Evil (375)
    {
        id = 57036,
        name = "Glyph of Turn Evil",
        itemId = 41102,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 380, green = 385, gray = 390 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Scourge Imprisonment (375)
    {
        id = 57198,
        name = "Glyph of Scourge Imprisonment",
        itemId = 42412,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 380, green = 385, gray = 390 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Strangulate (375)
    {
        id = 57225,
        name = "Glyph of Strangulate",
        itemId = 43552,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 380, green = 385, gray = 390 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Stormstrike (375)
    {
        id = 57248,
        name = "Glyph of Stormstrike",
        itemId = 41539,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 380, green = 385, gray = 390 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Snowfall Ink (375)
    {
        id = 57716,
        name = "Snowfall Ink",
        itemId = 43127,
        skillRequired = 375,
        skillRange = { orange = 0, yellow = 375, green = 375, gray = 380 },
        reagents = {
            { itemId = 43109, name = "Icy Pigment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Focus (375)
    {
        id = 62162,
        name = "Glyph of Focus",
        itemId = 44928,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 380, green = 385, gray = 390 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Rapid Rejuvenation (375)
    {
        id = 71015,
        name = "Glyph of Rapid Rejuvenation",
        itemId = 50125,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 380, green = 382, gray = 385 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 50167,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Quick Decay (375)
    {
        id = 71102,
        name = "Glyph of Quick Decay",
        itemId = 50077,
        skillRequired = 375,
        skillRange = { orange = 375, yellow = 380, green = 382, gray = 385 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.VENDOR,
            itemId = 50168,
            cost = 80000,
        },
        expansion = C.EXPANSION.TBC,
    },
    -- Glyph of Growl (385)
    {
        id = 56944,
        name = "Glyph of Growl",
        itemId = 40899,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Hurricane (385)
    {
        id = 56946,
        name = "Glyph of Hurricane",
        itemId = 40920,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Innervate (385)
    {
        id = 56947,
        name = "Glyph of Innervate",
        itemId = 40908,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Lifebloom (385)
    {
        id = 56949,
        name = "Glyph of Lifebloom",
        itemId = 40915,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Mangle (385)
    {
        id = 56950,
        name = "Glyph of Mangle",
        itemId = 40900,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Regrowth (385)
    {
        id = 56954,
        name = "Glyph of Regrowth",
        itemId = 40912,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Starfall (385)
    {
        id = 56958,
        name = "Glyph of Starfall",
        itemId = 40921,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Swiftmend (385)
    {
        id = 56960,
        name = "Glyph of Swiftmend",
        itemId = 40906,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Fireball (385)
    {
        id = 56975,
        name = "Glyph of Fireball",
        itemId = 42739,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Frostbolt (385)
    {
        id = 56977,
        name = "Glyph of Frostbolt",
        itemId = 42742,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Invisibility (385)
    {
        id = 56983,
        name = "Glyph of Invisibility",
        itemId = 42748,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Molten Armor (385)
    {
        id = 56986,
        name = "Glyph of Molten Armor",
        itemId = 42751,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Remove Curse (385)
    {
        id = 56988,
        name = "Glyph of Remove Curse",
        itemId = 42753,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Water Elemental (385)
    {
        id = 56989,
        name = "Glyph of Water Elemental",
        itemId = 42754,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of the Beast (385)
    {
        id = 56996,
        name = "Glyph of the Beast",
        itemId = 42899,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Aspect of the Viper (385)
    {
        id = 56998,
        name = "Glyph of Aspect of the Viper",
        itemId = 42901,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Bestial Wrath (385)
    {
        id = 56999,
        name = "Glyph of Bestial Wrath",
        itemId = 42902,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Snake Trap (385)
    {
        id = 57010,
        name = "Glyph of Snake Trap",
        itemId = 42913,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Steady Shot (385)
    {
        id = 57011,
        name = "Glyph of Steady Shot",
        itemId = 42914,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Trueshot Aura (385)
    {
        id = 57012,
        name = "Glyph of Trueshot Aura",
        itemId = 42915,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Volley (385)
    {
        id = 57013,
        name = "Glyph of Volley",
        itemId = 42916,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Wyvern Sting (385)
    {
        id = 57014,
        name = "Glyph of Wyvern Sting",
        itemId = 42917,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Avenger's Shield (385)
    {
        id = 57019,
        name = "Glyph of Avenger's Shield",
        itemId = 41101,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Avenging Wrath (385)
    {
        id = 57021,
        name = "Glyph of Avenging Wrath",
        itemId = 41107,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Hammer of Wrath (385)
    {
        id = 57028,
        name = "Glyph of Hammer of Wrath",
        itemId = 41097,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Seal of Light (385)
    {
        id = 57034,
        name = "Glyph of Seal of Light",
        itemId = 41110,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Seal of Wisdom (385)
    {
        id = 57035,
        name = "Glyph of Seal of Wisdom",
        itemId = 41109,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Adrenaline Rush (385)
    {
        id = 57112,
        name = "Glyph of Adrenaline Rush",
        itemId = 42954,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Blade Flurry (385)
    {
        id = 57115,
        name = "Glyph of Blade Flurry",
        itemId = 42957,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Crippling Poison (385)
    {
        id = 57116,
        name = "Glyph of Crippling Poison",
        itemId = 42958,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Deadly Throw (385)
    {
        id = 57117,
        name = "Glyph of Deadly Throw",
        itemId = 42959,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Ghostly Strike (385)
    {
        id = 57124,
        name = "Glyph of Ghostly Strike",
        itemId = 42965,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Hemorrhage (385)
    {
        id = 57126,
        name = "Glyph of Hemorrhage",
        itemId = 42967,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Preparation (385)
    {
        id = 57127,
        name = "Glyph of Preparation",
        itemId = 42968,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Rupture (385)
    {
        id = 57128,
        name = "Glyph of Rupture",
        itemId = 42969,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Vigor (385)
    {
        id = 57130,
        name = "Glyph of Vigor",
        itemId = 42971,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Blocking (385)
    {
        id = 57152,
        name = "Glyph of Blocking",
        itemId = 43425,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Bloodthirst (385)
    {
        id = 57153,
        name = "Glyph of Bloodthirst",
        itemId = 43412,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Devastate (385)
    {
        id = 57155,
        name = "Glyph of Devastate",
        itemId = 43415,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Intervene (385)
    {
        id = 57159,
        name = "Glyph of Intervene",
        itemId = 43419,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Mortal Strike (385)
    {
        id = 57160,
        name = "Glyph of Mortal Strike",
        itemId = 43421,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Resonating Power (385)
    {
        id = 57164,
        name = "Glyph of Resonating Power",
        itemId = 43430,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Last Stand (385)
    {
        id = 57166,
        name = "Glyph of Last Stand",
        itemId = 43426,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Taunt (385)
    {
        id = 57169,
        name = "Glyph of Taunt",
        itemId = 43429,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Victory Rush (385)
    {
        id = 57170,
        name = "Glyph of Victory Rush",
        itemId = 43431,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Circle of Healing (385)
    {
        id = 57181,
        name = "Glyph of Circle of Healing",
        itemId = 42396,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Lightwell (385)
    {
        id = 57189,
        name = "Glyph of Lightwell",
        itemId = 42403,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Mass Dispel (385)
    {
        id = 57190,
        name = "Glyph of Mass Dispel",
        itemId = 42404,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Mind Control (385)
    {
        id = 57191,
        name = "Glyph of Mind Control",
        itemId = 42405,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Shadow (385)
    {
        id = 57193,
        name = "Glyph of Shadow",
        itemId = 42407,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Prayer of Healing (385)
    {
        id = 57195,
        name = "Glyph of Prayer of Healing",
        itemId = 42409,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Shadow Word: Death (385)
    {
        id = 57199,
        name = "Glyph of Shadow Word: Death",
        itemId = 42414,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Spirit of Redemption (385)
    {
        id = 57202,
        name = "Glyph of Spirit of Redemption",
        itemId = 42417,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Anti-Magic Shell (385)
    {
        id = 57207,
        name = "Glyph of Anti-Magic Shell",
        itemId = 43533,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Heart Strike (385)
    {
        id = 57208,
        name = "Glyph of Heart Strike",
        itemId = 43534,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Chains of Ice (385)
    {
        id = 57211,
        name = "Glyph of Chains of Ice",
        itemId = 43537,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Dark Command (385)
    {
        id = 57212,
        name = "Glyph of Dark Command",
        itemId = 43538,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Death and Decay (385)
    {
        id = 57214,
        name = "Glyph of Death and Decay",
        itemId = 43542,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Icebound Fortitude (385)
    {
        id = 57218,
        name = "Glyph of Icebound Fortitude",
        itemId = 43545,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Obliterate (385)
    {
        id = 57220,
        name = "Glyph of Obliterate",
        itemId = 43547,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Rune Strike (385)
    {
        id = 57223,
        name = "Glyph of Rune Strike",
        itemId = 43550,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Chain Heal (385)
    {
        id = 57232,
        name = "Glyph of Chain Heal",
        itemId = 41517,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Chain Lightning (385)
    {
        id = 57233,
        name = "Glyph of Chain Lightning",
        itemId = 41518,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Lava (385)
    {
        id = 57234,
        name = "Glyph of Lava",
        itemId = 41524,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 395, gray = 400 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Shocking (385)
    {
        id = 57235,
        name = "Glyph of Shocking",
        itemId = 41526,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Fire Elemental Totem (385)
    {
        id = 57237,
        name = "Glyph of Fire Elemental Totem",
        itemId = 41529,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Healing Wave (385)
    {
        id = 57243,
        name = "Glyph of Healing Wave",
        itemId = 41534,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Mana Tide Totem (385)
    {
        id = 57247,
        name = "Glyph of Mana Tide Totem",
        itemId = 41538,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Elemental Mastery (385)
    {
        id = 57250,
        name = "Glyph of Elemental Mastery",
        itemId = 41552,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Conflagrate (385)
    {
        id = 57258,
        name = "Glyph of Conflagrate",
        itemId = 42454,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Curse of Agony (385)
    {
        id = 57260,
        name = "Glyph of Curse of Agony",
        itemId = 42456,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Death Coil (385)
    {
        id = 57261,
        name = "Glyph of Death Coil",
        itemId = 42457,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Felguard (385)
    {
        id = 57263,
        name = "Glyph of Felguard",
        itemId = 42459,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Felhunter (385)
    {
        id = 57264,
        name = "Glyph of Felhunter",
        itemId = 42460,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Howl of Terror (385)
    {
        id = 57267,
        name = "Glyph of Howl of Terror",
        itemId = 42463,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Immolate (385)
    {
        id = 57268,
        name = "Glyph of Immolate",
        itemId = 42464,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Siphon Life (385)
    {
        id = 57273,
        name = "Glyph of Siphon Life",
        itemId = 42469,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Unstable Affliction (385)
    {
        id = 57276,
        name = "Glyph of Unstable Affliction",
        itemId = 42472,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Fire Blast (385)
    {
        id = 57719,
        name = "Glyph of Fire Blast",
        itemId = 42740,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Holy Wrath (385)
    {
        id = 59559,
        name = "Glyph of Holy Wrath",
        itemId = 43867,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Seal of Righteousness (385)
    {
        id = 59560,
        name = "Glyph of Seal of Righteousness",
        itemId = 43868,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Seal of Vengeance (385)
    {
        id = 59561,
        name = "Glyph of Seal of Vengeance",
        itemId = 43869,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Northrend Inscription Research (385)
    {
        id = 61177,
        name = "Northrend Inscription Research",
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 425, green = 437, gray = 450 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 3 },
            { itemId = 43127, name = "Snowfall Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Frostfire (385)
    {
        id = 61677,
        name = "Glyph of Frostfire",
        itemId = 44684,
        skillRequired = 385,
        skillRange = { orange = 385, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Reckoning (390)
    {
        id = 405005,
        name = "Glyph of Reckoning",
        itemId = 204385,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 60000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Omen of Clarity (390)
    {
        id = 413897,
        name = "Glyph of Omen of Clarity",
        itemId = 206580,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 60000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Shattering Throw (390)
    {
        id = 414814,
        name = "Glyph of Shattering Throw",
        itemId = 206953,
        skillRequired = 390,
        skillRange = { orange = 390, yellow = 390, green = 397, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 60000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Scroll of Stamina VIII (400)
    {
        id = 50620,
        name = "Scroll of Stamina VIII",
        itemId = 37094,
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 405, green = 410, gray = 415 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 60000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Iron-bound Tome (400)
    {
        id = 59497,
        name = "Iron-bound Tome",
        itemId = 38322,
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 425, green = 437, gray = 450 },
        reagents = {
            { itemId = 43127, name = "Snowfall Ink", count = 5 },
            { itemId = 39502, name = "Resilient Parchment", count = 10 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
            { itemId = 43126, name = "Ink of the Sea", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Faces of Doom (400)
    {
        id = 59498,
        name = "Faces of Doom",
        itemId = 44210,
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 425, green = 437, gray = 450 },
        reagents = {
            { itemId = 43127, name = "Snowfall Ink", count = 5 },
            { itemId = 39502, name = "Resilient Parchment", count = 10 },
            { itemId = 43102, name = "Frozen Orb", count = 1 },
            { itemId = 43126, name = "Ink of the Sea", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Weapon Vellum III (400)
    {
        id = 59501,
        name = "Weapon Vellum III",
        itemId = 43146,
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 405, green = 410, gray = 415 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 3 },
            { itemId = 39502, name = "Resilient Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 100000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Darkmoon Card of the North (400)
    {
        id = 59504,
        name = "Darkmoon Card of the North",
        skillRequired = 400,
        skillRange = { orange = 400, yellow = 450, green = 462, gray = 475 },
        reagents = {
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
            { itemId = 43127, name = "Snowfall Ink", count = 6 },
            { itemId = 35625, name = "Eternal Life", count = 3 },
            { itemId = 43126, name = "Ink of the Sea", count = 3 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 50000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Master's Inscription of the Axe (400)
    {
        id = 61117,
        name = "Master's Inscription of the Axe",
        skillRequired = 400,
        skillRange = { orange = 0, yellow = 400, green = 400, gray = 405 },
        reagents = {
            { itemId = 43127, name = "Snowfall Ink", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 75000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Master's Inscription of the Crag (400)
    {
        id = 61118,
        name = "Master's Inscription of the Crag",
        skillRequired = 400,
        skillRange = { orange = 0, yellow = 400, green = 400, gray = 405 },
        reagents = {
            { itemId = 43127, name = "Snowfall Ink", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 75000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Master's Inscription of the Pinnacle (400)
    {
        id = 61119,
        name = "Master's Inscription of the Pinnacle",
        skillRequired = 400,
        skillRange = { orange = 0, yellow = 400, green = 400, gray = 405 },
        reagents = {
            { itemId = 43127, name = "Snowfall Ink", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 75000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Master's Inscription of the Storm (400)
    {
        id = 61120,
        name = "Master's Inscription of the Storm",
        skillRequired = 400,
        skillRange = { orange = 0, yellow = 400, green = 400, gray = 405 },
        reagents = {
            { itemId = 43127, name = "Snowfall Ink", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 75000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Scroll of Spirit VIII (405)
    {
        id = 50611,
        name = "Scroll of Spirit VIII",
        itemId = 37098,
        skillRequired = 405,
        skillRange = { orange = 405, yellow = 410, green = 415, gray = 420 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 60000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Polymorph (405)
    {
        id = 56987,
        name = "Glyph of Polymorph",
        itemId = 42752,
        skillRequired = 405,
        skillRange = { orange = 0, yellow = 0, green = 400, gray = 405 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 125000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Scroll of Intellect VIII (410)
    {
        id = 50604,
        name = "Scroll of Intellect VIII",
        itemId = 37092,
        skillRequired = 410,
        skillRange = { orange = 410, yellow = 415, green = 420, gray = 425 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 60000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Scroll of Strength VIII (415)
    {
        id = 58491,
        name = "Scroll of Strength VIII",
        itemId = 43466,
        skillRequired = 415,
        skillRange = { orange = 415, yellow = 420, green = 425, gray = 430 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 60000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Scroll of Agility VIII (420)
    {
        id = 58483,
        name = "Scroll of Agility VIII",
        itemId = 43464,
        skillRequired = 420,
        skillRange = { orange = 420, yellow = 425, green = 430, gray = 435 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 2 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 60000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Raptor Strike (430)
    {
        id = 64246,
        name = "Glyph of Raptor Strike",
        itemId = 45735,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Stoneclaw Totem (430)
    {
        id = 64247,
        name = "Glyph of Stoneclaw Totem",
        itemId = 45778,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Life Tap (430)
    {
        id = 64248,
        name = "Glyph of Life Tap",
        itemId = 45785,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 39774, name = "Midnight Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Scatter Shot (430)
    {
        id = 64249,
        name = "Glyph of Scatter Shot",
        itemId = 45734,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Soul Link (430)
    {
        id = 64250,
        name = "Glyph of Soul Link",
        itemId = 45789,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Salvation (430)
    {
        id = 64251,
        name = "Glyph of Salvation",
        itemId = 45747,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Shield Wall (430)
    {
        id = 64252,
        name = "Glyph of Shield Wall",
        itemId = 45797,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43116, name = "Lion's Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Explosive Trap (430)
    {
        id = 64253,
        name = "Glyph of Explosive Trap",
        itemId = 45733,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43118, name = "Jadefire Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Holy Shock (430)
    {
        id = 64254,
        name = "Glyph of Holy Shock",
        itemId = 45746,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Vigilance (430)
    {
        id = 64255,
        name = "Glyph of Vigilance",
        itemId = 45793,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 10648, name = "Common Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Barkskin (430)
    {
        id = 64256,
        name = "Glyph of Barkskin",
        itemId = 45623,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Ice Barrier (430)
    {
        id = 64257,
        name = "Glyph of Ice Barrier",
        itemId = 45740,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43120, name = "Celestial Ink", count = 1 },
            { itemId = 39501, name = "Heavy Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Berserk (430)
    {
        id = 64268,
        name = "Glyph of Berserk",
        itemId = 45601,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Wild Growth (430)
    {
        id = 64270,
        name = "Glyph of Wild Growth",
        itemId = 45602,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Chimera Shot (430)
    {
        id = 64271,
        name = "Glyph of Chimera Shot",
        itemId = 45625,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Explosive Shot (430)
    {
        id = 64273,
        name = "Glyph of Explosive Shot",
        itemId = 45731,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Deep Freeze (430)
    {
        id = 64274,
        name = "Glyph of Deep Freeze",
        itemId = 45736,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Living Bomb (430)
    {
        id = 64275,
        name = "Glyph of Living Bomb",
        itemId = 45737,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Arcane Barrage (430)
    {
        id = 64276,
        name = "Glyph of Arcane Barrage",
        itemId = 45738,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Beacon of Light (430)
    {
        id = 64277,
        name = "Glyph of Beacon of Light",
        itemId = 45741,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Hammer of the Righteous (430)
    {
        id = 64278,
        name = "Glyph of Hammer of the Righteous",
        itemId = 45742,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Divine Storm (430)
    {
        id = 64279,
        name = "Glyph of Divine Storm",
        itemId = 45743,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Dispersion (430)
    {
        id = 64280,
        name = "Glyph of Dispersion",
        itemId = 45753,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Guardian Spirit (430)
    {
        id = 64281,
        name = "Glyph of Guardian Spirit",
        itemId = 45755,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Penance (430)
    {
        id = 64282,
        name = "Glyph of Penance",
        itemId = 45756,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Hymn of Hope (430)
    {
        id = 64283,
        name = "Glyph of Hymn of Hope",
        itemId = 45758,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Hunger for Blood (430)
    {
        id = 64284,
        name = "Glyph of Hunger for Blood",
        itemId = 45761,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Killing Spree (430)
    {
        id = 64285,
        name = "Glyph of Killing Spree",
        itemId = 45762,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Shadow Dance (430)
    {
        id = 64286,
        name = "Glyph of Shadow Dance",
        itemId = 45764,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Thunder (430)
    {
        id = 64287,
        name = "Glyph of Thunder",
        itemId = 45770,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Feral Spirit (430)
    {
        id = 64288,
        name = "Glyph of Feral Spirit",
        itemId = 45771,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Riptide (430)
    {
        id = 64289,
        name = "Glyph of Riptide",
        itemId = 45772,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Haunt (430)
    {
        id = 64291,
        name = "Glyph of Haunt",
        itemId = 45779,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Chaos Bolt (430)
    {
        id = 64294,
        name = "Glyph of Chaos Bolt",
        itemId = 45781,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Bladestorm (430)
    {
        id = 64295,
        name = "Glyph of Bladestorm",
        itemId = 45790,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Shockwave (430)
    {
        id = 64296,
        name = "Glyph of Shockwave",
        itemId = 45792,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Dancing Rune Weapon (430)
    {
        id = 64297,
        name = "Glyph of Dancing Rune Weapon",
        itemId = 45799,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Hungering Cold (430)
    {
        id = 64298,
        name = "Glyph of Hungering Cold",
        itemId = 45800,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Unholy Blight (430)
    {
        id = 64299,
        name = "Glyph of Unholy Blight",
        itemId = 45803,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Howling Blast (430)
    {
        id = 64300,
        name = "Glyph of Howling Blast",
        itemId = 45806,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Spell Reflection (430)
    {
        id = 64302,
        name = "Glyph of Spell Reflection",
        itemId = 45795,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Cloak of Shadows (430)
    {
        id = 64303,
        name = "Glyph of Cloak of Shadows",
        itemId = 45769,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Kill Shot (430)
    {
        id = 64304,
        name = "Glyph of Kill Shot",
        itemId = 45732,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Divine Plea (430)
    {
        id = 64305,
        name = "Glyph of Divine Plea",
        itemId = 45745,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Savage Roar (430)
    {
        id = 64307,
        name = "Glyph of Savage Roar",
        itemId = 45604,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Shield of Righteousness (430)
    {
        id = 64308,
        name = "Glyph of Shield of Righteousness",
        itemId = 45744,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Mind Sear (430)
    {
        id = 64309,
        name = "Glyph of Mind Sear",
        itemId = 45757,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Tricks of the Trade (430)
    {
        id = 64310,
        name = "Glyph of Tricks of the Trade",
        itemId = 45767,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Shadowflame (430)
    {
        id = 64311,
        name = "Glyph of Shadowflame",
        itemId = 45783,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Nourish (430)
    {
        id = 64313,
        name = "Glyph of Nourish",
        itemId = 45603,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Mirror Image (430)
    {
        id = 64314,
        name = "Glyph of Mirror Image",
        itemId = 45739,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Fan of Knives (430)
    {
        id = 64315,
        name = "Glyph of Fan of Knives",
        itemId = 45766,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Hex (430)
    {
        id = 64316,
        name = "Glyph of Hex",
        itemId = 45777,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Demonic Circle (430)
    {
        id = 64317,
        name = "Glyph of Demonic Circle",
        itemId = 45782,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Metamorphosis (430)
    {
        id = 64318,
        name = "Glyph of Metamorphosis",
        itemId = 45780,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43124, name = "Ethereal Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Glyph of Survival Instincts (430)
    {
        id = 65245,
        name = "Glyph of Survival Instincts",
        itemId = 46372,
        skillRequired = 430,
        skillRange = { orange = 0, yellow = 430, green = 435, gray = 440 },
        reagents = {
            { itemId = 43126, name = "Ink of the Sea", count = 1 },
            { itemId = 39354, name = "Light Parchment", count = 1 },
        },
        source = {
            type = C.SOURCE_TYPE.DISCOVERY,
            itemId = 43086,
        },
        expansion = C.EXPANSION.WOTLK,
    },
    -- Runescroll of Fortitude (440)
    {
        id = 69385,
        name = "Runescroll of Fortitude",
        itemId = 49632,
        skillRequired = 440,
        skillRange = { orange = 0, yellow = 440, green = 442, gray = 460 },
        reagents = {
            { itemId = 43127, name = "Snowfall Ink", count = 1 },
            { itemId = 39502, name = "Resilient Parchment", count = 5 },
        },
        source = {
            type = C.SOURCE_TYPE.TRAINER,
            npcName = "Any Inscription Trainer",
            trainingCost = 200000,
        },
        expansion = C.EXPANSION.WOTLK,
    },
}

CraftLib:RegisterProfession("inscription", {
    id = C.PROFESSION_ID.INSCRIPTION,
    name = "Inscription",
    expansion = C.EXPANSION.WOTLK,
    profile = "WOTLK",
    milestones = { 75, 150, 225, 300, 375, 450 },
    recipes = recipes,
})
