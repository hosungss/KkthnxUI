local K, C = unpack(select(2, ...))
local Module = K:GetModule("Infobar")

local _G = _G
local unpack = _G.unpack
local string_format = _G.string.format
local select = _G.select

local COMBAT_ZONE = _G.COMBAT_ZONE
local CONTESTED_TERRITORY = _G.CONTESTED_TERRITORY
local FACTION_CONTROLLED_TERRITORY = _G.FACTION_CONTROLLED_TERRITORY
local FACTION_STANDING_LABEL4 = _G.FACTION_STANDING_LABEL4
local FREE_FOR_ALL_TERRITORY = _G.FREE_FOR_ALL_TERRITORY
local GetZonePVPInfo = _G.GetZonePVPInfo
local GetZoneText = _G.GetZoneText
local SANCTUARY_TERRITORY = _G.SANCTUARY_TERRITORY

local zone, pvpType

local zoneInfo = {
	arena = {FREE_FOR_ALL_TERRITORY, {0.84, 0.03, 0.03}},
	combat = {COMBAT_ZONE, {0.84, 0.03, 0.03}},
	contested = {CONTESTED_TERRITORY, {0.9, 0.85, 0.05}},
	friendly = {FACTION_CONTROLLED_TERRITORY, {0.05, 0.85, 0.03}},
	hostile = {FACTION_CONTROLLED_TERRITORY, {0.84, 0.03, 0.03}},
	neutral = {string_format(FACTION_CONTROLLED_TERRITORY, FACTION_STANDING_LABEL4), {0.9, 0.85, 0.05}},
	sanctuary = {SANCTUARY_TERRITORY, {0.035, 0.58, 0.84}},
}

function Module:LocationOnEvent(self)
	if C["Minimap"].LocationText.Value == "HIDE" or not C["Minimap"].Enable then
		return
	end

	zone = GetZoneText()
	pvpType = GetZonePVPInfo()
	pvpType = pvpType or "neutral"

	local r, g, b = unpack(zoneInfo[pvpType][2])
	Module.LocationFont:SetText(zone)
	Module.LocationFont:SetTextColor(r, g, b)
end

function Module:CreateLocationDataText()
	if not C["DataText"].Location then
		return
	end

	if not Minimap then
		return
	end

	Minimap:HookScript("OnEnter", function()
		if C["Minimap"].LocationText.Value ~= "MOUSEOVER" or not C["Minimap"].Enable then
			return
		end

		Module.LocationFrame:Show()
	end)

	Minimap:HookScript("OnLeave", function()
		if C["Minimap"].LocationText.Value ~= "MOUSEOVER" or not C["Minimap"].Enable then
			return
		end

		Module.LocationFrame:Hide()
	end)

	Module.LocationFrame = CreateFrame("Frame", "KKUI_LocationDataText", UIParent)
	Module.LocationFrame:SetPoint("TOP", Minimap, "TOP", 0, -4)
	Module.LocationFrame:SetSize(Minimap:GetWidth() - 12, 14)
	Module.LocationFrame:SetFrameLevel(Minimap:GetFrameLevel() + 2)
	if C["Minimap"].LocationText.Value ~= "SHOW" or not C["Minimap"].Enable then
		Module.LocationFrame:Hide()
	end

	Module.LocationFont = Module.LocationFrame:CreateFontString("OVERLAY")
	Module.LocationFont:SetFontObject(K.GetFont(C["UIFonts"].DataTextFonts))
	Module.LocationFont:SetFont(select(1, Module.LocationFont:GetFont()), 13, select(3, Module.LocationFont:GetFont()))
	Module.LocationFont:SetAllPoints(Module.LocationFrame)

	K:RegisterEvent("ZONE_CHANGED", Module.LocationOnEvent)
	K:RegisterEvent("ZONE_CHANGED_INDOORS", Module.LocationOnEvent)
	K:RegisterEvent("ZONE_CHANGED_NEW_AREA", Module.LocationOnEvent)
	K:RegisterEvent("PLAYER_ENTERING_WORLD", Module.LocationOnEvent)

	Module.LocationFrame:SetScript("OnEvent", Module.LocationOnUpdate)
end