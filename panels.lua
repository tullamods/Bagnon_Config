--[[
	panels.lua
		Configuration panels
--]]

local L = LibStub('AceLocale-3.0'):GetLocale('Bagnon-Config')
local SLOT_COLOR_TYPES = {}
for id, name in pairs(Bagnon.BAG_TYPES) do
	tinsert(SLOT_COLOR_TYPES, name)
end

sort(SLOT_COLOR_TYPES)
tinsert(SLOT_COLOR_TYPES, 1, 'normal')
StaticPopupDialogs['BAGNON_REQUIRES_RESTART'] = {
	text = L.RequiresRestart,
	button1 = OKAY,
	timeout = 0, exclusive = 1, hideOnEscape = 1,
	preferredIndex = STATICPOPUP_NUMDIALOGS - 2
}


--[[ Panels ]]--

Bagnon.GeneralOptions = Bagnon.Options:NewPanel(nil, 'Bagnon', L.GeneralDesc, function(self)
	self:CreateCheck('locked')
	self:CreateCheck('fading')
	self:CreateCheck('tipCount')
	self:CreateCheck('flashFind')
	self:CreateCheck('emptySlots')
	self:CreateCheck('useBlizzard', function()
		StaticPopup_Show('BAGNON_REQUIRES_RESTART')
	end)
end)

Bagnon.FrameOptions = Bagnon.Options:NewPanel('Bagnon', L.FrameSettings, L.FrameSettingsDesc, function(self)
	local frames = self:Create('Dropdown')
	frames:SetLabel(L.Frame)
	frames:SetValue(self.frameID)
	frames:AddLine('inventory', INVENTORY_TOOLTIP)
	frames:AddLine('bank', BANK)
	frames:SetCall('OnInput', function(_, v)
		self.frameID = v
	end)
	
	if GetAddOnEnableState(UnitName('player'), 'Bagnon_GuildBank') >= 2 then
		frames:AddLine('guildbank', GUILD_BANK)
	end
	
	if GetAddOnEnableState(UnitName('player'), 'Bagnon_VoidStorage') >= 2 then
		frames:AddLine('vault', VOID_STORAGE)
	end

	self.sets = Bagnon.sets.frames[self.frameID]
	self:CreateCheck('enabled'):SetDisabled(self.frameID ~= 'inventory' and self.frameID ~= 'bank')

	if self.sets.enabled then
		if self.frameID == 'bank' then
			self:CreateCheck('exclusiveReagent')
		end

		-- Display
		self:CreateHeader(DISPLAY, 'GameFontHighlight', true)
		self:CreateRow(70, function(row)
			row:CreateCheck('bagFrame')
			row:CreateCheck('sort')
			row:CreateCheck('search')
			row:CreateCheck('options')
			row:CreateCheck('money')
			row:CreateCheck('broker')
		end)

		-- Appearance
		self:CreateHeader(L.Appearance, 'GameFontHighlight', true)
		self:CreateRow(70, function(row)
			row:CreateColor('color')
			row:CreateColor('borderColor')
			row:CreateCheck('reverseBags')
			row:CreateCheck('reverseSlots')
			row:CreateCheck('bagBreak')
		end)

		self:CreateRow(170, function(row)
			row.sets = self.sets
			row:CreateDropdown('strata', 'LOW',LOW, 'MEDIUM',AUCTION_TIME_LEFT2, 'HIGH',HIGH)
			row:CreatePercentSlider('alpha', 1, 100)
			row:CreatePercentSlider('scale', 20, 300)
			row:Break()

			row.sets = Bagnon:GetProfile()[self.frameID]
			row:CreatePercentSlider('itemScale', 20, 300)
			row:CreateSlider('spacing', 0, 15)
			row:CreateSlider('columns', 1, 30)
		end)
	end
end)

Bagnon.DisplayOptions = Bagnon.Options:NewPanel('Bagnon', L.DisplaySettings, L.DisplaySettingsDesc, function(self)
	self:CreateHeader(L.DisplayInventory, 'GameFontHighlight', true)
	for i, event in ipairs {'Bank', 'Auction', 'Guildbank', 'Mail', 'Player', 'Trade', 'Gems', 'Craft'} do
		self:CreateCheck('display' .. event)
	end

	self:CreateHeader(L.CloseInventory, 'GameFontHighlight', true)
	for i, event in ipairs {'Bank', 'Combat', 'Vehicle', 'Vendor'} do
		self:CreateCheck('close' .. event)
	end
end)

Bagnon.ColorOptions = Bagnon.Options:NewPanel('Bagnon', L.ColorSettings, L.ColorSettingsDesc, function(self)
	self:CreateCheck('glowQuality')
	self:CreateCheck('glowNew')
	self:CreateCheck('glowQuest')
	self:CreateCheck('glowUnusable')
	self:CreateCheck('glowSets')
	self:CreateCheck('emptySlots')
	self:CreateCheck('colorSlots').bottom = 11

	if self.sets.colorSlots then
		self:CreateRow(140, function(self)
			for i, name in ipairs(SLOT_COLOR_TYPES) do
				self:CreateColor(name .. 'Color').right = 144
			end
		end)

		self:CreatePercentSlider('glowAlpha', 1, 100):SetWidth(585)
	end
end)