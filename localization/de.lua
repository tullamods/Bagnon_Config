--[[
	German Localization
		Credits/Blame: Phanx
--]]

local L = LibStub('AceLocale-3.0'):NewLocale('Bagnon-Config', 'deDE')
if not L then return end

-- general
L.GeneralDesc = 'Allgemeine Einstellungen für Bagnon anpassen'
L.Locked = 'Fensterpositionen sperren'
L.Fading = 'Ermögliche Ausblenden des Fensters'
L.TipCount = 'Ermögliche tooltip item count'
L.FlashFind = 'Ermögliche Blitzsuche'
L.EmptySlots = 'Zeige einen Hintergrund für leere Gegenstandslots'
L.DisplayBlizzard = 'Blizzard Fenster für die deaktivierten Taschen anzeigen'

-- frame
L.FrameSettings = 'Fenstereinstellungen'
L.FrameSettingsDesc = 'Einstellungen für ein bestimmtes Bagnon Fenster anpassen'
L.Frame = 'Fenster'
L.Enabled = 'Aktiviert'
L.CharacterSpecific = 'Charakterspezifische Einstellungen'
L.ExclusiveReagent = 'Getrenntes Materiallager'

L.BagFrame = 'Taschenschaltflächen'
L.Money = 'Gold'
L.Broker = 'Databroker'
L.Sort = 'Sortierschaltfläche'
L.Search = 'Suchsschaltfläche'
L.Options = 'Optionenschaltfläche'

L.Appearance = 'Erscheinung'
L.Layer = 'Ebene'
L.BagBreak = 'Trennen der Taschen aktivieren'
L.ReverseBags = 'Ordnung der Taschen umdrehen'
L.ReverseSlots = 'Ordnung der Slots umdrehen'

L.Color = 'Farbe des Fensters'
L.BorderColor = 'Farbe des Fensterrands'

L.Strata = 'Ebene'
L.Columns = 'Spalten'
L.Scale = 'Skalierung'
L.ItemScale = 'Gegenstandsskalierung'
L.Spacing = 'Abstand'
L.Alpha = 'Transparenz'

-- auto display
L.DisplaySettings = 'Automatische Anzeige'
L.DisplaySettingsDesc = 'Einstellungen für das automatische öffnen der Fenster'
L.DisplayInventory = 'Inventar anzeigen...'
L.CloseInventory = 'Inventar schließen...'

L.DisplayBank = 'beim Öffnen der Bank'
L.DisplayAuction = 'beim Öffnen des Auktionshauses'
L.DisplayTrade = 'beim Handel von Gegenständen'
L.DisplayCraft = 'beim Herstellen'
L.DisplayMail = 'beim Abholen der Post'
L.DisplayGuildbank = 'beim Öffnen der Gildenbank'
L.DisplayPlayer = 'beim Öffnen des Spielerfensters'
L.DisplayGems = 'beim Gesockeln eines Gegenstands'

L.CloseCombat = 'beim Kampfbeginn'
L.CloseVehicle = 'beim Eintritt in ein Fahrzeugs'
L.CloseBank = 'beim Verlassen der Bank'
L.CloseVendor = 'beim Verlassen des Handlers'

-- colors
L.ColorSettings = 'Farbeinstellungen'
L.ColorSettingsDesc = 'Einstellungen für das Einfärben der Gegenstandslots'
L.GlowQuality = 'Gegenstände nach der Seltenheit hervorheben'
L.GlowNew = 'Neue Gegenstände hervorheben'
L.GlowQuest = 'Questgegenstände hervorheben'
L.GlowUnusable = 'Unbrauchbare Gegenstände hervorheben'
L.GlowSets = 'Ausrüstungsset-Gegenstände hervorheben'
L.ColorSlots = 'Leere Gegenstandslots nach der Taschen-Art einfärben'

L.NormalColor = 'Plätze der Universaltasche'
L.LeatherColor = 'Plätze der Lederertasche'
L.InscribeColor = 'Plätze der Schreibertasche'
L.HerbColor = 'Plätze der Kräutertasche'
L.EnchantColor = 'Plätze der Verzauberertasche'
L.EngineerColor = 'Plätze der Ingnieurstasche'
L.GemColor = 'Plätze der Edelsteintasche'
L.MineColor = 'Plätze der Bergbautasche'
L.TackleColor = 'Plätze der Anglertasche'
L.RefrigeColor = 'Plätze der Küchentasche'
L.ReagentColor = 'Plätze des Materiallager'
L.GlowAlpha = 'Helligkeit der Gegenstandshervorhebung'