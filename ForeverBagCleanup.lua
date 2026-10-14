local ADDON_NAME = ...

local combinedBags = ContainerFrameCombinedBags
if not combinedBags then
	return
end

local anchor = BagItemSearchBox
if not anchor then
	return
end

local button = CreateFrame("Button", ADDON_NAME .. "Button", combinedBags)
button:SetSize(24, 24)
button:SetPoint("RIGHT", anchor, "LEFT", -5, 0)
button:SetFrameLevel(math.max(combinedBags:GetFrameLevel(), anchor:GetFrameLevel()) + 1)

button:SetNormalAtlas("bags-button-autosort-up")
button:SetPushedAtlas("bags-button-autosort-down")

local highlight = button:CreateTexture(nil, "HIGHLIGHT")
highlight:SetTexture("Interface\\Buttons\\ButtonHilight-Square")
highlight:SetBlendMode("ADD")
highlight:SetPoint("CENTER")
highlight:SetSize(22, 22)

button:SetScript("OnClick", function()
	PlaySound(SOUNDKIT.UI_BAG_SORTING_01)
	C_Container.SortBags()
end)

button:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
	GameTooltip_SetTitle(GameTooltip, BAG_CLEANUP_BAGS, HIGHLIGHT_FONT_COLOR)
	GameTooltip_AddNormalLine(GameTooltip, BAG_CLEANUP_BAGS_DESCRIPTION)
	GameTooltip:Show()
end)

button:SetScript("OnLeave", GameTooltip_Hide)
