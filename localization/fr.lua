--[[
	French Localization
		***
--]]

local L = LibStub('AceLocale-3.0'):NewLocale('Bagnon-Config', 'frFR')
if not L then return end

-- general
L.GeneralDesc = 'Configuration des options générales de Bagnon'
L.Locked = 'Bloquer la position des fenêtres'
L.Fading = 'Activer le fading des fenêtres'
L.TipCount = 'Activer l\'info-bulle du compteur d\'objets'
L.FlashFind = 'Activer résultat éclair'
L.EmptySlots = 'Affiche un fond sur les emplacements vides'
L.DisplayBlizzard = 'Afficher les cadres de Blizzard pour les sacs désactivés'

-- frame
L.FrameSettings = 'Options des Fenêtres'
L.FrameSettingsDesc = 'Configuration des options spécifiques à une fenêtre de Bagnon'
L.Frame = 'Fenêtre'
L.Enabled = 'Activer'
--L.CharacterSpecific = 'Character Specific Settings'
--L.ExclusiveReagent = 'Separate Reagent Bank'

L.BagFrame = 'Activer la fenêtre du sac'
L.Money = 'Activer l\'affichage des revenus'
L.Broker = 'Activer le DataBroker'
--L.Sort = 'Sort Button'
L.Search = 'Activer le champ de recherche'
L.Options = 'Activer l\'affichage des options'

L.Appearance = 'Apparence'
L.Layer = 'Couche'
L.BagBreak = 'Séparation entre les sacs'
L.ReverseBags = 'Inverse l\'ordre des sacs'
L.ReverseSlots = 'Inverse l\'ordre de tri'

L.Color = 'Couleur de la fenêtre'
L.BorderColor = 'Couleur de bordure de la fenêtre'

L.Strata = 'Couche'
L.Columns = 'Colonnes'
L.Scale = 'Echelle'
--L.ItemScale = 'Item Scale'
L.Spacing = 'Espacement'
L.Alpha = 'Opacité'

-- auto display
L.DisplaySettings = 'Affichage Automatique'
L.DisplaySettingsDesc = 'Options de l\'affichage automatique'
L.DisplayInventory = 'Affiche votre inventaire'
L.CloseInventory = 'Ferme votre inventaire'

L.DisplayBank = 'quand vous visitez la banque'
L.DisplayAuction = 'quand vous visitez l\'hôtel des ventes'
L.DisplayTrade = 'quand vous parlez à un commerçant'
L.DisplayCraft = 'quand vous craftez'
L.DisplayMail = 'quand vous relevez votre courrier'
L.DisplayGuildbank = 'quand vous visitez votre banque de guilde'
L.DisplayPlayer = 'quand vous ouvrez la fenêtre de votre personnage'
L.DisplayGems = 'quand vous sertissez vos objets'

L.CloseCombat = 'quand vous entrez en combat'
L.CloseVehicle = 'quand vous montez dans un véhicule'
L.CloseBank = 'quand vous quittez la banque'
L.CloseVendor = 'quand vous quittez un marchand'

-- colors
L.ColorSettings = 'Options de couleur'
L.ColorSettingsDesc = 'Options de colorisation des emplacements'
L.GlowQuality = 'Surligne les objets par qualité' 
L.GlowNew = 'Surligne les nouveaux objets'
L.GlowQuest = 'Surligne les objets de quête'
L.GlowUnusable = 'Surligne les objets inutiles'
--L.GlowSets = 'Highlight Equipment Set Items'
L.ColorSlots = 'Colorise les emplacements vides par type de sac'

L.NormalColor = 'Emplacements normaux'
L.LeatherColor = 'Emplacements de sac Travail du Cuir'
L.InscribeColor = 'Emplacements de sac Calligraphie'
L.HerbColor = 'Emplacements de sac Herboristerie'
L.EnchantColor = 'Emplacements de sac Enchantement'
L.EngineerColor = 'Emplacements de sac Ingénierie'
L.GemColor = 'Emplacements de sac de Gemmes'
L.MineColor = 'Emplacements de sac de Minage'
L.TackleColor = 'Emplacements de sac de Pêche'
--L.RefrigeColor = 'Refrigerator Color'
--L.ReagentColor = 'Reagent Bank Color'
L.GlowAlpha = 'Contours lumineux des objets'