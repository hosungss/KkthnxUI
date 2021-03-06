local K, C = unpack(select(2, ...))
local Module = K:GetModule("Bags")

local _G = _G

local C_AzeriteEmpoweredItem_IsAzeriteEmpoweredItemByID = _G.C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID
local C_ToyBox_GetToyInfo = _G.C_ToyBox.GetToyInfo
local LE_ITEM_CLASS_ARMOR = _G.LE_ITEM_CLASS_ARMOR
local LE_ITEM_CLASS_CONSUMABLE = _G.LE_ITEM_CLASS_CONSUMABLE
local LE_ITEM_CLASS_GEM = _G.LE_ITEM_CLASS_GEM
local LE_ITEM_CLASS_ITEM_ENHANCEMENT = _G.LE_ITEM_CLASS_ITEM_ENHANCEMENT
local LE_ITEM_CLASS_MISCELLANEOUS = _G.LE_ITEM_CLASS_MISCELLANEOUS
local LE_ITEM_CLASS_TRADEGOODS = _G.LE_ITEM_CLASS_TRADEGOODS
local LE_ITEM_CLASS_WEAPON = _G.LE_ITEM_CLASS_WEAPON
local LE_ITEM_GEM_ARTIFACTRELIC = _G.LE_ITEM_GEM_ARTIFACTRELIC
local LE_ITEM_MISCELLANEOUS_COMPANION_PET = _G.LE_ITEM_MISCELLANEOUS_COMPANION_PET
local LE_ITEM_MISCELLANEOUS_MOUNT = _G.LE_ITEM_MISCELLANEOUS_MOUNT
local LE_ITEM_QUALITY_COMMON = _G.LE_ITEM_QUALITY_COMMON
local LE_ITEM_QUALITY_LEGENDARY = _G.LE_ITEM_QUALITY_LEGENDARY
local LE_ITEM_QUALITY_POOR = _G.LE_ITEM_QUALITY_POOR

-- Custom filter
local CustomFilterList = {
	[37863] = false,
	[141333] = true,
	[141446] = true,
	[153646] = true,
	[153647] = true,
	[161053] = true,
}

local isPetToy = {
	[174925] = true,
}

local function isCustomFilter(item)
	if not C["Inventory"].ItemFilter then
		return
	end

	return CustomFilterList[item.id]
end

-- Default filter
local function isItemInBag(item)
	return item.bagID >= 0 and item.bagID <= 4
end

local function isItemInBank(item)
	return item.bagID == -1 or item.bagID >= 5 and item.bagID <= 11
end

local function isItemJunk(item)
	if not C["Inventory"].ItemFilter then
		return
	end

	if not C["Inventory"].FilterJunk then
		return
	end

	return (item.rarity == LE_ITEM_QUALITY_POOR or KkthnxUIData[K.Realm][K.Name].CustomJunkList[item.id]) and item.sellPrice and item.sellPrice > 0
end

local function isItemEquipSet(item)
	if not C["Inventory"].ItemFilter then
		return
	end

	if not C["Inventory"].FilterEquipSet then
		return
	end

	return item.isInSet
end

local function isAzeriteArmor(item)
	if not C["Inventory"].ItemFilter then
		return
	end

	if not C["Inventory"].FilterAzerite then
		return
	end

	if not item.link then
		return
	end

	return C_AzeriteEmpoweredItem_IsAzeriteEmpoweredItemByID(item.link)
end

function Module:IsArtifactRelic(item)
	return item.classID == LE_ITEM_CLASS_GEM and item.subClassID == LE_ITEM_GEM_ARTIFACTRELIC
end

local function isItemEquipment(item)
	if not C["Inventory"].ItemFilter then
		return
	end

	if not C["Inventory"].FilterEquipment then
		return
	end

	return item.level and item.rarity > LE_ITEM_QUALITY_COMMON and (Module:IsArtifactRelic(item) or item.classID == LE_ITEM_CLASS_WEAPON or item.classID == LE_ITEM_CLASS_ARMOR)
end

local function isItemConsumable(item)
	if not C["Inventory"].ItemFilter then
		return
	end

	if not C["Inventory"].FilterConsumable then
		return
	end

	if isCustomFilter(item) == false then
		return
	end

	return isCustomFilter(item) or (item.classID and (item.classID == LE_ITEM_CLASS_CONSUMABLE or item.classID == LE_ITEM_CLASS_ITEM_ENHANCEMENT))
end

local function isItemLegendary(item)
	if not C["Inventory"].ItemFilter then
		return
	end

	if not C["Inventory"].FilterLegendary then
		return
	end

	return item.rarity == LE_ITEM_QUALITY_LEGENDARY
end

local function isItemCollection(item)
	if not C["Inventory"].ItemFilter then
		return
	end

	if not C["Inventory"].FilterCollection then
		return
	end

	return item.id and C_ToyBox_GetToyInfo(item.id) or (not isPetToy[item.id]) and item.classID == LE_ITEM_CLASS_MISCELLANEOUS and (item.subClassID == LE_ITEM_MISCELLANEOUS_MOUNT or item.subClassID == LE_ITEM_MISCELLANEOUS_COMPANION_PET)
end

local function isItemFavourite(item)
	if not C["Inventory"].ItemFilter then
		return
	end

	if not C["Inventory"].FilterFavourite then
		return
	end

	return item.id and KkthnxUIData[K.Realm][K.Name].FavouriteItems[item.id]
end

local function isEmptySlot(item)
	if not C["Inventory"].GatherEmpty then
		return
	end

	return Module.initComplete and not item.texture and Module.BagsType[item.bagID] == 0
end

local function isTradeGoods(item)
	if not C["Inventory"].ItemFilter then
		return
	end

	if not C["Inventory"].FilterGoods then
		return
	end

	return item.classID == LE_ITEM_CLASS_TRADEGOODS
end

local function isQuestItem(item)
	if not C["Inventory"].ItemFilter then
		return
	end

	if not C["Inventory"].FilterQuest then
		return
	end

	return item.questID or item.isQuestItem
end

function Module:GetFilters()
	local filters = {}

	filters.onlyBags = function(item)
		return isItemInBag(item) and not isEmptySlot(item)
	end

	filters.bagAzeriteItem = function(item)
		return isItemInBag(item) and isAzeriteArmor(item)
	end

	filters.bagEquipment = function(item)
		return isItemInBag(item) and isItemEquipment(item)
	end

	filters.bagEquipSet = function(item)
		return isItemInBag(item) and isItemEquipSet(item)
	end

	filters.bagConsumable = function(item)
		return isItemInBag(item) and isItemConsumable(item)
	end

	filters.bagsJunk = function(item)
		return isItemInBag(item) and isItemJunk(item)
	end

	filters.onlyBank = function(item)
		return isItemInBank(item) and not isEmptySlot(item)
	end

	filters.bankAzeriteItem = function(item)
		return isItemInBank(item) and isAzeriteArmor(item)
	end

	filters.bankLegendary = function(item)
		return isItemInBank(item) and isItemLegendary(item)
	end

	filters.bankEquipment = function(item)
		return isItemInBank(item) and isItemEquipment(item)
	end

	filters.bankEquipSet = function(item)
		return isItemInBank(item) and isItemEquipSet(item)
	end

	filters.bankConsumable = function(item)
		return isItemInBank(item) and isItemConsumable(item)
	end

	filters.onlyReagent = function(item)
		return item.bagID == -3 and not isEmptySlot(item)
	end

	filters.bagCollection = function(item)
		return isItemInBag(item) and isItemCollection(item)
	end

	filters.bankCollection = function(item)
		return isItemInBank(item) and isItemCollection(item)
	end

	filters.bagFavourite = function(item)
		return isItemInBag(item) and isItemFavourite(item)
	end

	filters.bankFavourite = function(item)
		return isItemInBank(item) and isItemFavourite(item)
	end

	filters.bagGoods = function(item)
		return isItemInBag(item) and isTradeGoods(item)
	end

	filters.bankGoods = function(item)
		return isItemInBank(item) and isTradeGoods(item)
	end

	filters.bagQuest = function(item)
		return isItemInBag(item) and isQuestItem(item)
	end

	filters.bankQuest = function(item)
		return isItemInBank(item) and isQuestItem(item)
	end

	return filters
end