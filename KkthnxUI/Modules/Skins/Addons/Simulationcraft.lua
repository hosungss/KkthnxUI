local K = unpack(select(2, ...))
local Module = K:GetModule("Skins")

function Module:ReskinSimulationcraft()
	if not IsAddOnLoaded("Simulationcraft") then
		return
	end

	if not SimcCopyFrame then
		return
	end

	SimcCopyFrame:StripTextures()
	SimcCopyFrame:CreateBorder()
	SimcCopyFrameButton:SkinButton()
	SimcCopyFrameScrollScrollBar:SetAlpha(0)
end