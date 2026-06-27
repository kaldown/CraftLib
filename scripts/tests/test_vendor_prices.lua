-- scripts/tests/test_vendor_prices.lua
-- Pure-Lua tests for RegisterVendorPrices flavor guard + GetVendorBuyPrice nil contract.
-- Run from the CraftLib repo root: lua5.1 scripts/tests/test_vendor_prices.lua
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
check("vendorBuyPrices table initialized", type(sod.vendorBuyPrices) == "table")
sod:RegisterVendorPrices({ flavor = "SOD", prices = { [8925] = 500, [3371] = 4 } })
sod:RegisterVendorPrices({ prices = { [9999] = 7 } })  -- no flavor => DEFAULT, must be skipped on SoD
check("SOD prices register on SoD", sod:GetVendorBuyPrice(8925) == 500 and sod:GetVendorBuyPrice(3371) == 4)
check("DEFAULT prices skipped on SoD", sod:GetVendorBuyPrice(9999) == nil)
check("nil for non-allowlisted item (never 0)", sod:GetVendorBuyPrice(123456) == nil)

-- Scenario B: DEFAULT client (C_Seasons absent, e.g. TBC 2.5.5)
local def = loadCraftLib(nil)
def:RegisterVendorPrices({ flavor = "SOD", prices = { [8925] = 500 } })  -- skipped on DEFAULT
def:RegisterVendorPrices({ prices = { [3371] = 4 } })                    -- registers on DEFAULT
check("SOD prices skipped on DEFAULT", def:GetVendorBuyPrice(8925) == nil)
check("DEFAULT prices register on DEFAULT", def:GetVendorBuyPrice(3371) == 4)

report(string.format("\n%d passed, %d failed", passed, failed))
os.exit(failed == 0 and 0 or 1)
