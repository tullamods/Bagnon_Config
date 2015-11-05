--[[
	Russian Localization
		***
--]]

local L = LibStub('AceLocale-3.0'):NewLocale('Bagnon-Config', 'ruRU')
if not L then return end

-- general
L.GeneralDesc = 'Основные настройки Bagnon.'
L.Locked = 'Закрепить позицию окна'
L.Fading = 'Включить затухание окна'
L.TipCount = 'Включить в подсказки предметов их количество'
L.FlashFind = 'Включить вспышку поиска'
L.EmptySlots = 'Отображать фон пустых ячеек'
L.DisplayBlizzard = 'Открывать стандартные окна для отключенных сумок.'

-- frame
L.FrameSettings = 'Настройки окна'
L.FrameSettingsDesc = 'Настройка окна Bagnon.'
L.Frame = 'Окно'
L.Enabled = 'Включить область'
--L.CharacterSpecific = 'Character Specific Settings'
--L.ExclusiveReagent = 'Separate Reagent Bank'

L.BagFrame = 'Кнопки сумок'
L.Money = 'Денег'
L.Broker = 'DataBroker'
--L.Sort = 'Sort Button'
L.Search = 'Кнопка поиска'
L.Options = 'Кнопка настройки'

--L.Appearance = 'Appearance'
L.Layer = 'Слой окна'
L.BagBreak = 'Включить прерывание размещения сумок'
--L.ReverseBags = 'Reverse Bag Order'
L.ReverseSlots = 'Обратить порядок ячеек сумкок'

L.Color = 'Цвет окна'
L.BorderColor = 'Цвет границы окна'

L.Strata = 'Слой окна'
L.Columns = 'Колонок'
L.Scale = 'Масштаб'
--L.ItemScale = 'Item Scale'
L.Spacing = 'Промежуток'
L.Alpha = 'Прозрачность'

-- auto display
L.DisplaySettings = 'Автопоявление'
L.DisplaySettingsDesc = 'Настройки автоматического открытия окна.'
L.DisplayInventory = 'Показать инвентарь'
L.CloseInventory = 'Закрыть инвентарь'

L.DisplayBank = 'при посещении банка'
L.DisplayAuction = 'при посещении аукциона'
L.DisplayTrade = 'при обмене предметами'
L.DisplayCraft = 'во время изготовления'
L.DisplayMail = 'во время просмотра почты'
L.DisplayGuildbank = 'при посещении банка гильдии'
L.DisplayPlayer = 'при открытии окна игрока'
L.DisplayGems = 'при вставке камней в предметы'

L.CloseCombat = 'в режиме боя'
L.CloseVehicle = 'при посадке на средство передвижения'
--L.CloseBank = 'Leaving the Bank'
--L.CloseVendor = 'Leaving a Vendor'

-- colors
L.ColorSettings = 'Настройка окраски'
L.ColorSettingsDesc = 'Настройки окраски ячеек предметов'
--L.GlowQuality = 'Highlight Items by Quality' 
L.GlowNew = 'Подсветка предметов по качеству' 
L.GlowQuest = 'Подсветка предметов для задания'
L.GlowUnusable = 'Подсветка неиспользуемых предметов'
--L.GlowSets = 'Highlight Equipment Set Items'
L.ColorSlots = 'Цвет пустых ячеек по типу сумки'

L.NormalColor = 'Обычный'
L.LeatherColor = 'Сумки кожевника'
L.InscribeColor = 'Сумки начертателя'
L.HerbColor = 'Сумки травника'
L.EnchantColor = 'Сумки зачарователя'
L.EngineerColor = 'Сумки инженера'
L.GemColor = 'Сумки ювелира'
L.MineColor = 'Сумки шахтера'
L.TackleColor = 'Сумки рыбака'
L.RefrigeColor = 'Кулинарные сумки'
L.ReagentColor = 'Банк материалов'
L.GlowAlpha = 'Яркость подсветки предметов'