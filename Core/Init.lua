-- Core/Init.lua
-- CraftLib public API
local ADDON_NAME, CraftLib = ...

-- Internal storage
CraftLib.professions = {}
CraftLib.items = {}
CraftLib.productIndex = {}  -- Reverse lookup: itemId -> recipes that produce it

-- Build-time-generated per-unit vendor BUY prices (copper): itemId -> perUnit, populated
-- ONLY for confirmed vendor-stocked reagents (see Data/<Flavor>/VendorPrices.lua). Kept as
-- a separate keyed table rather than a field on each reagent to avoid duplicating one
-- reagent's price across the hundreds of recipes that use it.
CraftLib.vendorBuyPrices = {}

--------------------------------------------------------------------------------
-- Flavor detection (client lineage)
--------------------------------------------------------------------------------

-- Detect the running client's lineage. SoD is the only reliable discriminator:
-- C_Seasons.GetActiveSeason() == Enum.SeasonID.SeasonOfDiscovery (numeric 2).
-- C_Seasons / Enum.SeasonID are absent on TBC 2.5.5, so both are nil-guarded.
function CraftLib:DetectFlavor()
    if C_Seasons and C_Seasons.GetActiveSeason then
        local season = C_Seasons.GetActiveSeason()
        local sod = (Enum and Enum.SeasonID and Enum.SeasonID.SeasonOfDiscovery) or 2
        if season == sod then
            return self.Constants.FLAVOR.SOD
        end
    end
    return self.Constants.FLAVOR.DEFAULT
end

-- Computed once at load time (Init.lua runs before any Data/* file via TOC order).
CraftLib.activeFlavor = CraftLib:DetectFlavor()

--- Get the active client flavor ("DEFAULT" or "SOD").
-- @return string
function CraftLib:GetActiveFlavor()
    return self.activeFlavor
end

--------------------------------------------------------------------------------
-- Profession Registration API
--------------------------------------------------------------------------------

--- Register a profession's recipe data
-- @param professionKey string Unique key (e.g., "firstAid", "cooking")
-- @param data table Profession data table
function CraftLib:RegisterProfession(professionKey, data)
    -- Skip datasets that do not match the running client's flavor.
    -- Missing flavor field => DEFAULT (backward compatible with existing Data/TBC files).
    if (data.flavor or self.Constants.FLAVOR.DEFAULT) ~= self.activeFlavor then
        return
    end

    if self.professions[professionKey] then
        -- Merge data if already exists (allows multi-file registration)
        local existing = self.professions[professionKey]
        for _, recipe in ipairs(data.recipes or {}) do
            table.insert(existing.recipes, recipe)
        end
    else
        self.professions[professionKey] = {
            id = data.id,
            name = data.name,
            expansion = data.expansion,
            milestones = data.milestones or {},
            recipes = data.recipes or {},
        }
    end

    -- Index items for fast lookup
    for _, recipe in ipairs(data.recipes or {}) do
        if recipe.itemId then
            self.items[recipe.itemId] = recipe

            -- Build reverse lookup (itemId -> recipes that produce it)
            self.productIndex[recipe.itemId] = self.productIndex[recipe.itemId] or {}
            table.insert(self.productIndex[recipe.itemId], {
                recipe = recipe,
                professionKey = professionKey,
                yield = recipe.yield or 1,
            })
        end
    end
end

--- Register a curated table of per-unit vendor BUY prices (copper).
-- @param data table { flavor = "SOD"|nil, prices = { [itemId] = perUnitCopper, ... } }
function CraftLib:RegisterVendorPrices(data)
    -- WHY mirror RegisterProfession's flavor guard EXACTLY: only the active flavor's bucket
    -- may register, preserving the SoD/non-SoD non-mixing invariant the whole data
    -- architecture depends on. A SoD-only price must never leak onto a TBC client.
    if (data.flavor or self.Constants.FLAVOR.DEFAULT) ~= self.activeFlavor then
        return
    end
    for itemId, perUnit in pairs(data.prices or {}) do
        self.vendorBuyPrices[itemId] = perUnit
    end
end

--------------------------------------------------------------------------------
-- Query API
--------------------------------------------------------------------------------

--- Get all registered professions
-- @return table Map of professionKey -> profession data
function CraftLib:GetProfessions()
    return self.professions
end

--- Get a specific profession by key
-- @param professionKey string
-- @return table|nil Profession data or nil if not found
function CraftLib:GetProfession(professionKey)
    return self.professions[professionKey]
end

--- Get all recipes for a profession
-- @param professionKey string
-- @return table Array of recipe data
function CraftLib:GetRecipes(professionKey)
    local profession = self.professions[professionKey]
    return profession and profession.recipes or {}
end

--- Get recipes available at a specific skill level
-- @param professionKey string
-- @param skillLevel number Current skill level
-- @return table Array of available recipes
function CraftLib:GetAvailableRecipes(professionKey, skillLevel)
    local recipes = self:GetRecipes(professionKey)
    local available = {}

    for _, recipe in ipairs(recipes) do
        if recipe.skillRequired <= skillLevel then
            table.insert(available, recipe)
        end
    end

    return available
end

--- Get recipe by spell ID
-- @param professionKey string
-- @param spellId number
-- @return table|nil Recipe data or nil
function CraftLib:GetRecipeBySpellId(professionKey, spellId)
    local recipes = self:GetRecipes(professionKey)

    for _, recipe in ipairs(recipes) do
        if recipe.id == spellId then
            return recipe
        end
    end

    return nil
end

--- Get recipe by crafted item ID
-- @param itemId number
-- @return table|nil Recipe data or nil
function CraftLib:GetRecipeByItemId(itemId)
    return self.items[itemId]
end

--- Get the per-unit vendor BUY price (copper) for a confirmed vendor-stocked reagent.
-- @param itemId number Reagent item ID
-- @return number|nil per-unit copper, or nil if not a confirmed vendor reagent
function CraftLib:GetVendorBuyPrice(itemId)
    -- WHY nil (never 0): downstream a 0 reads as "free", which corrupts the cheapest path.
    -- nil means "not a confirmed vendor reagent - price it some other way" (ADR-004
    -- nil-not-zero contract, mirroring GetRecipeByItemId).
    return self.vendorBuyPrices[itemId]
end

--- Get all recipes that produce a given item (reverse lookup)
-- @param itemId number The item ID to look up
-- @return table|nil Array of {recipe, professionKey, yield} or nil if not craftable
function CraftLib:GetRecipeByProduct(itemId)
    return self.productIndex[itemId]
end

--- Get difficulty color for a recipe at given skill level
-- @param recipe table Recipe data
-- @param skillLevel number Current skill level
-- @return string "orange", "yellow", "green", or "gray"
function CraftLib:GetRecipeDifficulty(recipe, skillLevel)
    local range = recipe.skillRange
    if not range then return "gray" end

    if skillLevel < range.yellow then
        return "orange"
    elseif skillLevel < range.green then
        return "yellow"
    elseif skillLevel < range.gray then
        return "green"
    else
        return "gray"
    end
end

--- Check if CraftLib is loaded and has data
-- @return boolean
function CraftLib:IsReady()
    return next(self.professions) ~= nil
end

--------------------------------------------------------------------------------
-- Global access
--------------------------------------------------------------------------------

-- Make CraftLib globally accessible
_G.CraftLib = CraftLib

--------------------------------------------------------------------------------
-- Initialization
--------------------------------------------------------------------------------

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, loadedAddon)
    if loadedAddon == ADDON_NAME then
        local version = C_AddOns.GetAddOnMetadata(ADDON_NAME, "Version") or "?"
        print("|cff33ff99CraftLib|r v" .. version .. " loaded.")
        self:UnregisterEvent("ADDON_LOADED")
    end
end)
