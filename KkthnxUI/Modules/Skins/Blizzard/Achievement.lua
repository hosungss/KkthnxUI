local K, C = unpack(select(2, ...))
local Module = K:GetModule("Skins")

local _G = _G
local table_insert = _G.table.insert

local hooksecurefunc = _G.hooksecurefunc

local function SkinStatusBar(bar)
	bar:StripTextures()
	bar:SetStatusBarTexture(K.GetTexture(C["UITextures"].SkinTextures))
	bar:SetStatusBarColor(4/255, 179/255, 30/255)
	bar:CreateBorder()

	local StatusBarName = bar:GetName()
	if _G[StatusBarName.."Title"] then
		_G[StatusBarName.."Title"]:SetPoint("LEFT", 4, 0)
	end

	if _G[StatusBarName.."Label"] then
		_G[StatusBarName.."Label"]:SetPoint("LEFT", 4, 0)
	end

	if _G[StatusBarName.."Text"] then
		_G[StatusBarName.."Text"]:SetPoint("RIGHT", -4, 0)
	end
end

local function SkinAchievementBars()
	if not IsAddOnLoaded("Blizzard_AchievementUI") then
		return
	end

	SkinStatusBar(_G.AchievementFrameSummaryCategoriesStatusBar)
	SkinStatusBar(_G.AchievementFrameComparisonSummaryPlayerStatusBar)
	SkinStatusBar(_G.AchievementFrameComparisonSummaryFriendStatusBar)

	for i = 1, 12 do
		local frame = _G["AchievementFrameSummaryCategoriesCategory"..i]
		local button = _G["AchievementFrameSummaryCategoriesCategory"..i.."Button"]
		local highlight = _G["AchievementFrameSummaryCategoriesCategory"..i.."ButtonHighlight"]

		SkinStatusBar(frame)
		button:StripTextures()
		highlight:StripTextures()

		_G[highlight:GetName().."Middle"]:SetColorTexture(1, 1, 1, 0.2)
		_G[highlight:GetName().."Middle"]:SetPoint("TOPLEFT", frame, "TOPLEFT", 2, -2)
		_G[highlight:GetName().."Middle"]:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -2, 2)
	end

	hooksecurefunc("AchievementButton_GetProgressBar", function(index)
		local frame = _G["AchievementFrameProgressBar"..index]
		if frame then
			if not frame.skinned then
				frame:StripTextures()
				frame:SetStatusBarTexture(K.GetTexture(C["UITextures"].SkinTextures))
				frame:SetStatusBarColor(4/255, 179/255, 30/255)
				frame:CreateBorder()
				frame:SetFrameLevel(frame:GetFrameLevel() + 3)
				frame:SetHeight(frame:GetHeight() - 2)

				frame.text:ClearAllPoints()
				frame.text:SetPoint("CENTER", frame, "CENTER")
				frame.text:SetJustifyH("CENTER")

				if index > 1 then
					frame:ClearAllPoints()
					frame:SetPoint("TOP", _G["AchievementFrameProgressBar"..index - 1], "BOTTOM", 0, -5)
					frame.SetPoint = K.Noop
					frame.ClearAllPoints = K.Noop
				end

				frame.skinned = true
			end
		end
	end)
end

Module.NewSkin["Blizzard_AchievementUI"] = SkinAchievementBars