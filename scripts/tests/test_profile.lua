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

local lastFrame
local printed = {}
local function stubFrame()
    local f = {}
    function f:RegisterEvent() end
    function f:UnregisterEvent() end
    function f:SetScript(_, fn) self.onEvent = fn end
    lastFrame = f
    return f
end

-- Build a fresh CraftLib under a given season + interface number.
-- iface == false removes GetBuildInfo. metadata: "c_addons" (default) | "global" | "none".
local function loadCraftLib(activeSeason, iface, metadata)
    metadata = metadata or "c_addons"
    printed = {}
    _G.CreateFrame = function() return stubFrame() end
    _G.C_AddOns = (metadata == "c_addons") and { GetAddOnMetadata = function() return "test" end } or nil
    _G.GetAddOnMetadata = (metadata == "global") and function() return "gtest" end or nil
    _G.print = function(m) printed[#printed + 1] = m end
    if iface == false then
        _G.GetBuildInfo = nil
    else
        _G.GetBuildInfo = function() return "x", "00000", "date", iface or 11508 end
    end
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

-- DetectProfile table
local function det(i, season) return loadCraftLib(season, i):DetectProfile() end
check("0 -> nil", det(0) == nil)
check("no GetBuildInfo -> nil", loadCraftLib(nil, false):DetectProfile() == nil)
check("11404 -> nil", det(11404) == nil)
check("11508 -> VANILLA", det(11508) == "VANILLA")
check("16001 -> FOREVER", det(16001) == "FOREVER")
check("16999 -> FOREVER", det(16999) == "FOREVER")
check("20505 -> TBC", det(20505) == "TBC")
check("20506 -> TBC", det(20506) == "TBC")
check("30300 -> WOTLK", det(30300) == "WOTLK")
check("30403 -> WOTLK", det(30403) == "WOTLK")
check("30405 -> WOTLK", det(30405) == "WOTLK")
check("38001 -> WOTLK", det(38001) == "WOTLK")
check("40400 -> nil", det(40400) == nil)
check("season 2 on 11508 -> SOD", det(11508, 2) == "SOD")

-- WoW Forever: own bucket, selected by interface or by the camelot project id
local f = loadCraftLib(nil, 16001)
check("16001 GetActiveProfile FOREVER", f:GetActiveProfile() == "FOREVER")
check("16001 GetActiveFlavor DEFAULT", f:GetActiveFlavor() == "DEFAULT")
f:RegisterProfession("fv", { id = 7, name = "F", profile = "FOREVER", milestones = {75}, recipes = {} })
f:RegisterProfession("vanilla", { id = 1, name = "V", profile = "VANILLA", milestones = {75}, recipes = {} })
check("FOREVER dataset registers on Forever", f:GetProfession("fv") ~= nil)
check("VANILLA dataset skipped on Forever", f:GetProfession("vanilla") == nil)
local fs = (function()
    _G.C_Seasons = nil
    local c = loadCraftLib(2, 16001) -- C_Seasons stub reporting SoD
    return c
end)()
check("16001 with SoD season stub -> FOREVER", fs:DetectProfile() == "FOREVER")
_G.WOW_PROJECT_ID, _G.WOW_PROJECT_CAMELOT = 18, 18
check("camelot project id on 11508 -> FOREVER", loadCraftLib(nil, 11508):DetectProfile() == "FOREVER")
_G.WOW_PROJECT_ID, _G.WOW_PROJECT_CAMELOT = 2, 18
check("classic project id on 11508 -> VANILLA", loadCraftLib(nil, 11508):DetectProfile() == "VANILLA")
_G.WOW_PROJECT_ID, _G.WOW_PROJECT_CAMELOT = nil, nil

-- Unsupported client (unknown interface 40400)
local u = loadCraftLib(nil, 40400)
regAll(u)
u:RegisterProfession("sodlegacy", { id = 6, name = "X", flavor = "SOD", milestones = {75}, recipes = {} })
check("40400 registers nothing", next(u:GetProfessions()) == nil)
check("40400 IsReady false", u:IsReady() == false)
check("40400 GetActiveProfile nil", u:GetActiveProfile() == nil)
check("40400 GetActiveFlavor nil", u:GetActiveFlavor() == nil)
u:RegisterVendorPrices({ profile = "VANILLA", prices = { [1] = 2 } })
check("40400 vendor prices not registered", u:GetVendorBuyPrice(1) == nil)
lastFrame.onEvent(lastFrame, "ADDON_LOADED", "CraftLib")
local msg = printed[1] or ""
check("40400 message says not supported", msg:find("is not supported", 1, true) and msg:find("40400", 1, true))

local ok = loadCraftLib(nil, 20505)
lastFrame.onEvent(lastFrame, "ADDON_LOADED", "CraftLib")
check("20505 message ends with loaded.", (printed[1] or ""):sub(-8) == " loaded.")

local g = loadCraftLib(nil, 20505, "global")
local gok = pcall(lastFrame.onEvent, lastFrame, "ADDON_LOADED", "CraftLib")
check("global metadata works", gok and (printed[1] or ""):find("vgtest", 1, true))
local n = loadCraftLib(nil, 20505, "none")
local nok = pcall(lastFrame.onEvent, lastFrame, "ADDON_LOADED", "CraftLib")
check("no metadata prints v?", nok and (printed[1] or ""):find("v? loaded", 1, true))

-- TOC consistency
local toc = io.open("CraftLib.toc"):read("*l")
local listed = toc:match("^## Interface:%s*(.+)$")
for num in listed:gmatch("%d+") do
    check("TOC interface " .. num .. " detected", det(tonumber(num)) ~= nil)
end

report(string.format("\n%d passed, %d failed", passed, failed))
os.exit(failed == 0 and 0 or 1)
