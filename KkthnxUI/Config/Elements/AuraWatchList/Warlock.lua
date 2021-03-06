local K = unpack(select(2, ...))
local Module = K:GetModule("AurasTable")

local list = {
	["Player Aura"] = {
		{AuraID = 5697, UnitID = "player"},
		{AuraID = 48018, UnitID = "player"},
		{AuraID = 108366, UnitID = "player"},
		{AuraID = 119899, UnitID = "player"},
		{AuraID = 196099, UnitID = "player"},
	},
	["Target Aura"] = {
		{AuraID = 603, UnitID = "target", Caster = "player"},
		{AuraID = 980, UnitID = "target", Caster = "player"},
		{AuraID = 710, UnitID = "target", Caster = "player"},
		{AuraID = 6358, UnitID = "target", Caster = "pet"},
		{AuraID = 89766, UnitID = "target", Caster = "pet"},
		{AuraID = 6789, UnitID = "target", Caster = "player"},
		{AuraID = 5484, UnitID = "target", Caster = "player"},
		{AuraID = 27243, UnitID = "target", Caster = "player"},
		{AuraID = 17877, UnitID = "target", Caster = "player"},
		{AuraID = 48181, UnitID = "target", Caster = "player"},
		{AuraID = 63106, UnitID = "target", Caster = "player"},
		{AuraID = 30283, UnitID = "target", Caster = "player"},
		{AuraID = 32390, UnitID = "target", Caster = "player"},
		{AuraID = 80240, UnitID = "target", Caster = "player"},
		{AuraID = 146739, UnitID = "target", Caster = "player"},
		{AuraID = 316099, UnitID = "target", Caster = "player"},
		{AuraID = 342938, UnitID = "target", Caster = "player"},
		{AuraID = 118699, UnitID = "target", Caster = "player"},
		{AuraID = 205181, UnitID = "target", Caster = "player"},
		{AuraID = 157736, UnitID = "target", Caster = "player"},
		{AuraID = 196414, UnitID = "target", Caster = "player"},
		{AuraID = 199890, UnitID = "target", Caster = "player"},
		{AuraID = 199892, UnitID = "target", Caster = "player"},
		{AuraID = 270569, UnitID = "target", Caster = "player"},
		{AuraID = 278350, UnitID = "target", Caster = "player"},
		{AuraID = 205179, UnitID = "target", Caster = "player"},
		{AuraID = 265931, UnitID = "target", Caster = "player"},
		{AuraID = 312321, UnitID = "target", Caster = "player"},
		{AuraID = 325640, UnitID = "target", Caster = "player"},
		{AuraID = 322170, UnitID = "target", Caster = "player"},
	},
	["Special Aura"] = {
		{AuraID = 89751, UnitID = "pet"},
		{AuraID = 216695, UnitID = "player"},
		{AuraID = 104773, UnitID = "player"},
		{AuraID = 199281, UnitID = "player"},
		{AuraID = 196606, UnitID = "player"},
		{AuraID = 111400, UnitID = "player"},
		{AuraID = 115831, UnitID = "pet"},
		{AuraID = 193396, UnitID = "pet"},
		{AuraID = 117828, UnitID = "player"},
		{AuraID = 196098, UnitID = "player"},
		{AuraID = 205146, UnitID = "player"},
		{AuraID = 216708, UnitID = "player"},
		{AuraID = 235156, UnitID = "player"},
		{AuraID = 108416, UnitID = "player", Value = true},
		{AuraID = 264173, UnitID = "player"},
		{AuraID = 265273, UnitID = "player"},
		{AuraID = 212295, UnitID = "player"},
		{AuraID = 267218, UnitID = "player"},
		{AuraID = 113858, UnitID = "player"},
		{AuraID = 113860, UnitID = "player"},
		{AuraID = 264571, UnitID = "player"},
		{AuraID = 266030, UnitID = "player"},
	},
	["Focus Aura"] = {
		{AuraID = 980, UnitID = "focus", Caster = "player"},
		{AuraID = 146739, UnitID = "focus", Caster = "player"},
		{AuraID = 233490, UnitID = "focus", Caster = "player"},
		{AuraID = 233496, UnitID = "focus", Caster = "player"},
		{AuraID = 233497, UnitID = "focus", Caster = "player"},
		{AuraID = 233498, UnitID = "focus", Caster = "player"},
		{AuraID = 233499, UnitID = "focus", Caster = "player"},
		{AuraID = 157736, UnitID = "focus", Caster = "player"},
		{AuraID = 265412, UnitID = "focus", Caster = "player"},
	},
	["Spell Cooldown"] = {
		{SlotID = 13},
		{SlotID = 14},
	},
}

Module:AddNewAuraWatch("WARLOCK", list)