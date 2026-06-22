-- scripts/tests/test_flavor.lua
-- Pure-Lua tests for CraftLib flavor detection + RegisterProfession guard.
-- Run from the CraftLib repo root: lua5.1 scripts/tests/test_flavor.lua

local CORE = "Core/"
-- Save the real print: loadCraftLib stubs _G.print to silence addon load noise,
-- and that stub must not swallow this harness's own reporting.
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

-- Build a fresh CraftLib instance under a given season environment.
local function loadCraftLib(activeSeason)
    _G.CreateFrame = function() return stubFrame() end
    _G.C_AddOns = { GetAddOnMetadata = function() return "test" end }
    _G.print = function() end
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

-- Scenario A: SoD client (season 2)
local sod = loadCraftLib(2)
check("FLAVOR constants present", sod.Constants.FLAVOR.SOD == "SOD" and sod.Constants.FLAVOR.DEFAULT == "DEFAULT")
check("DetectFlavor returns SOD on season 2", sod:DetectFlavor() == "SOD")
check("activeFlavor is SOD", sod:GetActiveFlavor() == "SOD")

-- Scenario B: non-seasonal client (C_Seasons absent, e.g. TBC 2.5.5)
local def = loadCraftLib(nil)
check("DetectFlavor returns DEFAULT when C_Seasons absent", def:DetectFlavor() == "DEFAULT")
check("activeFlavor is DEFAULT", def:GetActiveFlavor() == "DEFAULT")

-- Scenario C: plain Era / Hardcore (season present but not SoD)
local era = loadCraftLib(0)
check("DetectFlavor returns DEFAULT on non-SoD season", era:DetectFlavor() == "DEFAULT")

report(string.format("\n%d passed, %d failed", passed, failed))
os.exit(failed == 0 and 0 or 1)
