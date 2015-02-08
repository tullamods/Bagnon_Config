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

Bagnon.Options:NewPanel(nil, 'Bagnon', L.GeneralTitle, function(self)
	self:CreateCheck('locked')
	self:CreateCheck('fading')
	self:CreateCheck('tipCount')
	self:CreateCheck('flashFind')
	self:CreateCheck('useBlizzard', function()
		StaticPopup_Show('BAGNON_REQUIRES_RESTART')
	end)
end)

Bagnon.Options:NewPanel('Bagnon', L.FrameSettings, L.FrameSettingsTitle, function(self)
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
		frames:AddLine('voidstorage', VOID_STORAGE)
	end

	self.sets = Bagnon.sets.frames[self.frameID]
	self:CreateCheck('enabled'):SetDisabled(self.frameID ~= 'inventory' and self.frameID ~= 'bank')

	if self.sets.enabled then
		self:CreateHeader(DISPLAY, 'GameFontHighlight', true)
		self:CreateRow(70, function(self)
			self:CreateCheck('bagFrame')
			self:CreateCheck('sort')
			self:CreateCheck('search')
			self:CreateCheck('options')
			self:CreateCheck('money')
			self:CreateCheck('broker')
		end)

		self:CreateHeader(L.Appearance, 'GameFontHighlight', true)
		self:CreateRow(70, function(self)
			self:CreateColor('color')
			self:CreateColor('borderColor')
			self:CreateCheck('bagBreak')
			self:CreateCheck('reverseSlots')
		end)

		self:CreateRow(200, function(self)
			self:CreatePercentSlider('alpha', 1, 100)
			self:CreatePercentSlider('scale', 20, 300)

			self.sets = Bagnon:GetProfile()[self.frameID]
			self:Break()
			self:CreatePercentSlider('itemScale', 20, 300)
			self:CreateSlider('spacing', 0, 15)
			self:CreateSlider('columns', 1, 30)
		end)
	end
end)

Bagnon.Options:NewPanel('Bagnon', L.DisplaySettings, L.DisplaySettingsTitle, function(self)
	self:CreateHeader(L.DisplayInventory, 'GameFontHighlight', true)
	for i, event in ipairs {'Bank', 'Auction', 'Guildbank', 'Mail', 'Player', 'Trade', 'Gems', 'Craft'} do
		self:CreateCheck('display' .. event)
	end

	self:CreateHeader(L.CloseInventory, 'GameFontHighlight', true)
	for i, event in ipairs {'Combat', 'Vehicle', 'Vendor'} do
		self:CreateCheck('close' .. event)
	end
end)

Bagnon.Options:NewPanel('Bagnon', L.ColorSettings, L.ColorSettingsTitle, function(self)
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