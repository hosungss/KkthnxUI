local K, _, L = unpack(select(2, ...))
local Module = K:GetModule("AurasTable")

local list = {
	["Enchant Aura"] = {
		{AuraID = 26297, UnitID = "player"},
		{AuraID = 20572, UnitID = "player"},
		{AuraID = 33697, UnitID = "player"},
		{AuraID = 292463, UnitID = "player"},
		{AuraID = 307159, UnitID = "player"},
		{AuraID = 307162, UnitID = "player"},
		{AuraID = 307163, UnitID = "player"},
		{AuraID = 307164, UnitID = "player"},
		{AuraID = 307494, UnitID = "player"},
		{AuraID = 307495, UnitID = "player"},
		{AuraID = 307496, UnitID = "player"},
		{AuraID = 307497, UnitID = "player"},
		{AuraID = 344314, UnitID = "player"},
		{AuraID = 345228, UnitID = "player"},
		{AuraID = 344662, UnitID = "player"},
		{AuraID = 345439, UnitID = "player"},
		{AuraID = 345019, UnitID = "player"},
		{AuraID = 345530, UnitID = "player"},
		{AuraID = 345541, UnitID = "player"},
		{AuraID = 336588, UnitID = "player"},
		{AuraID = 348139, UnitID = "player"},
		{AuraID = 311444, UnitID = "player", Value = true},
		{AuraID = 336465, UnitID = "player", Value = true},
		{AuraID = 330366, UnitID = "player", Text = L["Crit"]},
		{AuraID = 330367, UnitID = "player", Text = L["Versa"]},
		{AuraID = 330368, UnitID = "player", Text = L["Haste"]},
		{AuraID = 330380, UnitID = "player", Text = L["Mastery"]},
		{AuraID = 331937, UnitID = "player", Flash = true},
		{AuraID = 323546, UnitID = "player"},
		{AuraID = 326860, UnitID = "player"},
		{AuraID = 310143, UnitID = "player", Combat = true},
		{AuraID = 327104, UnitID = "player"},
		{AuraID = 327710, UnitID = "player"},
		{AuraID = 328933, UnitID = "player"},
		{AuraID = 328281, UnitID = "player"},
		{AuraID = 328282, UnitID = "player"},
		{AuraID = 328620, UnitID = "player"},
		{AuraID = 328622, UnitID = "player"},
		{AuraID = 324867, UnitID = "player", Value = true},
		{AuraID = 328204, UnitID = "player"},
		{AuraID = 325748, UnitID = "player"},
		{AuraID = 315443, UnitID = "player"},
		{AuraID = 325299, UnitID = "player"},
		{AuraID = 327164, UnitID = "player"},
		{AuraID = 325216, UnitID = "player"},
		{AuraID = 343672, UnitID = "player"},
		{AuraID = 324220, UnitID = "player"},
		{AuraID = 311648, UnitID = "player"},
		{AuraID = 323558, UnitID = "player"},
		{AuraID = 323559, UnitID = "player"},
		{AuraID = 323560, UnitID = "player"},
		{AuraID = 338142, UnitID = "player"},
		{AuraID = 310454, UnitID = "player"},
		{AuraID = 325013, UnitID = "player"},
		{AuraID = 308495, UnitID = "player"},
		{AuraID = 328908, UnitID = "player"},
		{AuraID = 345499, UnitID = "player"},
		{AuraID = 60233, UnitID = "player"},
		{AuraID = 60229, UnitID = "player"},
		{AuraID = 60234, UnitID = "player"},
		{AuraID = 187616, UnitID = "player"},
		{AuraID = 187617, UnitID = "player"},
		{AuraID = 187618, UnitID = "player"},
		{AuraID = 187619, UnitID = "player"},
		{AuraID = 187620, UnitID = "player"},
		{AuraID = 201405, UnitID = "player"},
		{AuraID = 201408, UnitID = "player"},
		{AuraID = 201410, UnitID = "player"},
		{AuraID = 202052, UnitID = "player", Value = true},
	},
	["Raid Buff"] = {
		{AuraID = 54861, UnitID = "player"},
		{AuraID = 2825, UnitID = "player"},
		{AuraID = 32182, UnitID = "player"},
		{AuraID = 80353, UnitID = "player"},
		{AuraID = 264667, UnitID = "player"},
		{AuraID = 178207, UnitID = "player"},
		{AuraID = 230935, UnitID = "player"},
		{AuraID = 256740, UnitID = "player"},
		{AuraID = 309658, UnitID = "player"},
		{AuraID = 102364, UnitID = "player"},
		{AuraID = 292686, UnitID = "player"},
		{AuraID = 1022, UnitID = "player"},
		{AuraID = 6940, UnitID = "player"},
		{AuraID = 1044, UnitID = "player"},
		{AuraID = 10060, UnitID = "player"},
		{AuraID = 77761, UnitID = "player"},
		{AuraID = 77764, UnitID = "player"},
		{AuraID = 31821, UnitID = "player"},
		{AuraID = 97463, UnitID = "player"},
		{AuraID = 64843, UnitID = "player"},
		{AuraID = 64901, UnitID = "player"},
		{AuraID = 81782, UnitID = "player"},
		{AuraID = 29166, UnitID = "player"},
		{AuraID = 47788, UnitID = "player"},
		{AuraID = 33206, UnitID = "player"},
		{AuraID = 53563, UnitID = "player"},
		{AuraID = 98007, UnitID = "player"},
		{AuraID = 223658, UnitID = "player"},
		{AuraID = 115310, UnitID = "player"},
		{AuraID = 116849, UnitID = "player"},
		{AuraID = 204018, UnitID = "player"},
		{AuraID = 102342, UnitID = "player"},
		{AuraID = 145629, UnitID = "player"},
		{AuraID = 156910, UnitID = "player"},
		{AuraID = 192082, UnitID = "player"},
		{AuraID = 201633, UnitID = "player"},
		{AuraID = 207498, UnitID = "player"},
		{AuraID = 238698, UnitID = "player"},
		{AuraID = 209426, UnitID = "player"},
		{AuraID = 114018, UnitID = "player", Flash = true},
		{AuraID = 115834, UnitID = "player", Flash = true},
	},
	["Raid Debuff"] = {
		{AuraID = 311390, UnitID = "player"},
		{AuraID = 306583, UnitID = "player"},
		{AuraID = 313698, UnitID = "player", Flash = true},
		{AuraID = 342466, UnitID = "player"},
		{AuraID = 209858, UnitID = "player"},
		{AuraID = 240559, UnitID = "player"},
		{AuraID = 340880, UnitID = "player"},
		{AuraID = 226512, UnitID = "player"},
		{AuraID = 240447, UnitID = "player", Flash = true},
		{AuraID = 240443, UnitID = "player", Flash = true},
		{AuraID = 327107, UnitID = "player"},
		{AuraID = 324092, UnitID = "player", Flash = true},
		{AuraID = 328737, UnitID = "player", Flash = true},
		{AuraID = 333299, UnitID = "player"},
		{AuraID = 319637, UnitID = "player"},
		{AuraID = 336258, UnitID = "player", Flash = true},
		{AuraID = 327401, UnitID = "player", Flash = true},
		{AuraID = 323471, UnitID = "player", Flash = true},
		{AuraID = 327397, UnitID = "player"},
		{AuraID = 322681, UnitID = "player"},
		{AuraID = 335161, UnitID = "player"},
		{AuraID = 345323, UnitID = "player", Flash = true},
		{AuraID = 322746, UnitID = "player"},
		{AuraID = 323687, UnitID = "player", Flash = true},
		{AuraID = 323692, UnitID = "player"},
		{AuraID = 331379, UnitID = "player"},
		{AuraID = 327893, UnitID = "player", Flash = true},
		{AuraID = 339978, UnitID = "player", Flash = true},
		{AuraID = 323569, UnitID = "player", Flash = true},
		{AuraID = 328453, UnitID = "player"},
		{AuraID = 335805, UnitID = "player", Flash = true},
		{AuraID = 325027, UnitID = "player", Flash = true},
		{AuraID = 334496, UnitID = "player"},
		{AuraID = 342077, UnitID = "player"},
		{AuraID = 329725, UnitID = "player"},
		{AuraID = 329298, UnitID = "player"},
		{AuraID = 325936, UnitID = "player"},
		{AuraID = 346035, UnitID = "player"},
		{AuraID = 331636, UnitID = "player", Flash = true},
		{AuraID = 335293, UnitID = "player"},
		{AuraID = 327039, UnitID = "player"},
		{AuraID = 327089, UnitID = "player"},
	},
	["Warning"] = {
		{AuraID = 304975, UnitID = "target", Value = true},
		{AuraID = 319643, UnitID = "target", Value = true},
		{AuraID = 226510, UnitID = "target"},
		{AuraID = 343502, UnitID = "target"},
		{AuraID = 321754, UnitID = "target", Value = true},
		{AuraID = 343470, UnitID = "target", Value = true},
		{AuraID = 322773, UnitID = "target", Value = true},
		{AuraID = 333227, UnitID = "target", Flash = true},
		{AuraID = 228626, UnitID = "target"},
		{AuraID = 324010, UnitID = "target"},
		{AuraID = 320132, UnitID = "target"},
		{AuraID = 320293, UnitID = "target", Value = true},
		{AuraID = 331275, UnitID = "target", Flash = true},
		{AuraID = 336449, UnitID = "target"},
		{AuraID = 336451, UnitID = "target"},
		{AuraID = 333737, UnitID = "target"},
		{AuraID = 328175, UnitID = "target"},
		{AuraID = 321368, UnitID = "target", Value = true},
		{AuraID = 327416, UnitID = "target", Value = true},
		{AuraID = 345561, UnitID = "target", Value = true},
		{AuraID = 317936, UnitID = "target"},
		{AuraID = 327812, UnitID = "target"},
		{AuraID = 323149, UnitID = "target", Value = true},
		{AuraID = 340191, UnitID = "target", Value = true},
		{AuraID = 323059, UnitID = "target", Flash = true},
		{AuraID = 336499, UnitID = "target"},
		{AuraID = 326771, UnitID = "target"},
		{AuraID = 326450, UnitID = "target"},
		{AuraID = 322433, UnitID = "target"},
		{AuraID = 321402, UnitID = "target"},
		{AuraID = 345902, UnitID = "target"},
		{AuraID = 334695, UnitID = "target"},
		{AuraID = 346792, UnitID = "target"},
		{AuraID = 331314, UnitID = "target"},
		{AuraID = 341250, UnitID = "target"},
		{AuraID = 329636, UnitID = "target", Value = true},
		{AuraID = 329808, UnitID = "target", Value = true},
		{AuraID = 498, UnitID = "target"},
		{AuraID = 642, UnitID = "target"},
		{AuraID = 871, UnitID = "target"},
		{AuraID = 5277, UnitID = "target"},
		{AuraID = 1044, UnitID = "target"},
		{AuraID = 6940, UnitID = "target"},
		{AuraID = 1022, UnitID = "target"},
		{AuraID = 19574, UnitID = "target"},
		{AuraID = 23920, UnitID = "target"},
		{AuraID = 31884, UnitID = "target"},
		{AuraID = 33206, UnitID = "target"},
		{AuraID = 45438, UnitID = "target"},
		{AuraID = 47585, UnitID = "target"},
		{AuraID = 47788, UnitID = "target"},
		{AuraID = 48792, UnitID = "target"},
		{AuraID = 48707, UnitID = "target"},
		{AuraID = 61336, UnitID = "target"},
		{AuraID = 197690, UnitID = "target"},
		{AuraID = 147833, UnitID = "target"},
		{AuraID = 186265, UnitID = "target"},
		{AuraID = 113862, UnitID = "target"},
		{AuraID = 118038, UnitID = "target"},
		{AuraID = 114050, UnitID = "target"},
		{AuraID = 114051, UnitID = "target"},
		{AuraID = 114052, UnitID = "target"},
		{AuraID = 204018, UnitID = "target"},
		{AuraID = 205191, UnitID = "target"},
		{AuraID = 104773, UnitID = "target"},
		{AuraID = 199754, UnitID = "target"},
		{AuraID = 120954, UnitID = "target"},
		{AuraID = 122278, UnitID = "target"},
		{AuraID = 122783, UnitID = "target"},
		{AuraID = 188499, UnitID = "target"},
		{AuraID = 210152, UnitID = "target"},
		{AuraID = 247938, UnitID = "target"},
		{AuraID = 212800, UnitID = "target"},
		{AuraID = 162264, UnitID = "target"},
		{AuraID = 187827, UnitID = "target"},
		{AuraID = 125174, UnitID = "target"},
		{AuraID = 171607, UnitID = "target"},
		{AuraID = 228323, UnitID = "target", Value = true},
	},
	["InternalCD"] = {
		{IntID = 240447, Duration = 20},
		{IntID = 114018, Duration = 15, OnSuccess = true, UnitID = "all"},
	},
}

Module:AddNewAuraWatch("ALL", list)