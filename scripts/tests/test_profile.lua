-- scripts/tests/test_profile.lua
-- Pure-Lua tests for CraftLib profile detection + RegisterProfession guard.
-- Run from the CraftLib repo root: lua5.1 scripts/tests/test_profile.lua

local CORE = "Core/"
local report = print
local passed, failed = 0, 0
local function check(name, cond)
    if cond then passed = passed + 1; report("ok   - " .. name)
    else failed = failed + 1; report("FAIL - " .. name) end
end

local function stubFrame()
    local f = {}
    function f:RegisterEvent() end
    function f:UnregisterEvent() end
    function f:SetScript() end
    return f
end

-- Build a fresh CraftLib under a given season + interface number.
local function loadCraftLib(activeSeason, iface)
    _G.CreateFrame = function() return stubFrame() end
    _G.C_AddOns = { GetAddOnMetadata = function() return "test" end }
    _G.print = function() end
    _G.GetBuildInfo = function() return "x", "00000", "date", iface or 11508 end
    if activeSeason ~= nil then
        _G.C_Seasons = { GetActiveSeason = function() return activeSeason end }
        _G.Enum = { SeasonID = { SeasonOfDiscovery = 2 } }
    else
        _G.C_Seasons = nil
        _G.Enum = nil
    end
    local CraftLib = {}
    assert(loadfile(CORE .. "Constants.lua"))("CraftLib", CraftLib)
    assert(loadfile(CORE .. "Init.lua"))("CraftLib", CraftLib)
    return CraftLib
end

local function regAll(c)
    c:RegisterProfession("vanilla", { id = 1, name = "V", profile = "VANILLA", milestones = {75}, recipes = {} })
    c:RegisterProfession("tbc",     { id = 2, name = "T", profile = "TBC",     milestones = {75}, recipes = {} })
    c:RegisterProfession("wotlk",   { id = 3, name = "W", profile = "WOTLK",   milestones = {75}, recipes = {} })
    c:RegisterProfession("sod",     { id = 4, name = "S", profile = "SOD",     milestones = {75}, recipes = {} })
    c:RegisterProfession("legacy",  { id = 5, name = "L",                      milestones = {75}, recipes = {} }) -- untagged => TBC
end

-- Scenario WotLK (interface 30403, no season)
local w = loadCraftLib(nil, 30403)
check("PROFILE constants present", w.Constants.PROFILE.WOTLK == "WOTLK")
check("DetectProfile WOTLK on 30403", w:DetectProfile() == "WOTLK")
check("GetActiveFlavor collapses WOTLK->DEFAULT", w:GetActiveFlavor() == "DEFAULT")
regAll(w)
check("WOTLK registers on WotLK", w:GetProfession("wotlk") ~= nil)
check("TBC skipped on WotLK", w:GetProfession("tbc") == nil)
check("VANILLA skipped on WotLK", w:GetProfession("vanilla") == nil)

-- Scenario TBC (20505)
local t = loadCraftLib(nil, 20505)
check("DetectProfile TBC on 20505", t:DetectProfile() == "TBC")
regAll(t)
check("TBC registers on TBC", t:GetProfession("tbc") ~= nil)
check("untagged(legacy) registers as TBC", t:GetProfession("legacy") ~= nil)
check("WOTLK skipped on TBC", t:GetProfession("wotlk") == nil)

-- Scenario Vanilla (11508, no season)
local v = loadCraftLib(nil, 11508)
check("DetectProfile VANILLA on 11508 non-season", v:DetectProfile() == "VANILLA")
regAll(v)
check("VANILLA registers on Vanilla", v:GetProfession("vanilla") ~= nil)
check("TBC skipped on Vanilla", v:GetProfession("tbc") == nil)

-- Scenario SoD (season 2 on 11508)
local s = loadCraftLib(2, 11508)
check("DetectProfile SOD on season 2", s:DetectProfile() == "SOD")
check("GetActiveFlavor SOD->SOD", s:GetActiveFlavor() == "SOD")
regAll(s)
check("SOD registers on SoD", s:GetProfession("sod") ~= nil)
check("VANILLA skipped on SoD (season overrides interface)", s:GetProfession("vanilla") == nil)

report(string.format("\n%d passed, %d failed", passed, failed))
os.exit(failed == 0 and 0 or 1)
