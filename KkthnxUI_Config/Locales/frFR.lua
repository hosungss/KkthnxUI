if (GetLocale() ~= "frFR") then return end

-- Localization for frFR

local PerformanceSlight = "\n|cffFF0000Disabling this may slightly increase performance|r" -- For semi-high CPU options
local ToggleOffReminder = "\n|cffFF0000Turn this off to manually input your bar numbers|r"

-- Actionbar
UIConfigLocal.ActionBarBottomBars = "Number of bars on the bottom (1, 2 or 3)"
UIConfigLocal.ActionBarButtonSize = "Buttons size"
UIConfigLocal.ActionBarButtonSpace = "Buttons space"
UIConfigLocal.ActionBarEnable = "Enable action bars"
UIConfigLocal.ActionBarEquipBorder = "Display green border on equipped items"
UIConfigLocal.ActionBarGrid = "Show empty action bar buttons"
UIConfigLocal.ActionBarHideHighlight = "Hide proc highlight"
UIConfigLocal.ActionBarHotkey = "Show hotkey on buttons"
UIConfigLocal.ActionBarMacro = "Show macro name on buttons"
UIConfigLocal.ActionBarOutOfMana = "Out of mana color"
UIConfigLocal.ActionBarOutOfRange = "Out of range color"
UIConfigLocal.ActionBarPetBarHide = "Hide pet bar"
UIConfigLocal.ActionBarPetBarHorizontal = "Enable horizontal pet bar"
UIConfigLocal.ActionBarPetBarMouseover = "Petbar on mouseover (only for horizontal petbar)"
UIConfigLocal.ActionBarRightBars = "Number of action bars on right (0, 1, 2 or 3)"
UIConfigLocal.ActionBarRightBarsMouseover = "Right bars on mouseover"
UIConfigLocal.ActionBarSelfCast = "Always self-cast on right-click (regardless of current target)"
UIConfigLocal.ActionBarSplitBars = "Split the fifth bar on two bars on 6 buttons"
UIConfigLocal.ActionBarStanceBarHide = "Hide stance bar"
UIConfigLocal.ActionBarStanceBarHorizontal = "Enable horizontal stance bar"
UIConfigLocal.ActionBarStanceBarMouseover = "Stance bar on mouseover"
UIConfigLocal.ActionBarToggleMode = "Enable toggle mode"..ToggleOffReminder

-- Announcements
UIConfigLocal.Announcements = "Announcements"
UIConfigLocal.AnnouncementsInterrupt = "Announce in party/raid when you interrupt others"
UIConfigLocal.AnnouncementsPullCountdown = "Simple script to aid in creating a pull countdown announce. /pc"
UIConfigLocal.AnnouncementsSaySapped = "Instantly says Sapped to alert those around you whenever |cFFFFF569Rogues|r sap you."

-- Automation
UIConfigLocal.Automation = "Automation"
UIConfigLocal.AutomationAutoCollapse = "Auto collapse objective tracker in instances"
UIConfigLocal.AutomationAutoInvite = "Auto accept invites (friends/guild) only"
UIConfigLocal.AutomationDeclineDuel = "Auto decline all duels"
UIConfigLocal.AutomationResurrection = "Auto resurrection in battlegrounds"
UIConfigLocal.AutomationScreenShot = "Take screenshot when player gets an achievement"

-- Bag
UIConfigLocal.Bags = "Bags"
UIConfigLocal.BagsButtonSize = "Set a size for bag slots"
UIConfigLocal.BagsEnable = "Enable Bags"
UIConfigLocal.BagsInsertLeftToRight = "Set the loot to the left most bag first"
UIConfigLocal.BagsItemsPerRow = "Set how many slots are on each row of the bags"
UIConfigLocal.BagsSortRightToLeft = "Sort bags right to left, bottom to top"
UIConfigLocal.BagsSpacing = "Set the spacing between bag slots"

-- Blizzard
UIConfigLocal.Blizzard = "Blizzard"
UIConfigLocal.BlizzardColorTextures = "Change most UI texture hue colors."
UIConfigLocal.BlizzardHideTalkingHead = "Hide Talking Head Frame"
UIConfigLocal.BlizzardRaidTools = "Raid tools"
UIConfigLocal.BlizzardReplaceBlizzardFonts = "Replaces the default |cff00B4FFBlizzard fonts|r on various panels and frames from |cff3c9bedKkthnxUI|r."
UIConfigLocal.BlizzardReputationGain = "Display a message which shows how much reputation you gained"
UIConfigLocal.BlizzardTalkingHeadScale = "Scale the Talking Head Frame"
UIConfigLocal.BlizzardTexturesColor = "UI texture hue color. (Default is Classcolor)"

-- DataBars
UIConfigLocal.DataBars = "DataBars"
UIConfigLocal.DataBarsArtifactColor = "Artifact bar color"
UIConfigLocal.DataBarsArtifactEnable = "Enable Artifact bar"
UIConfigLocal.DataBarsArtifactFade = "Fade Artifact bar"
UIConfigLocal.DataBarsArtifactHeight = "Artifact bar height"
UIConfigLocal.DataBarsArtifactWidth = "Artifact bar width"
UIConfigLocal.DataBarsExperienceColor = "Experience bar color"
UIConfigLocal.DataBarsExperienceEnable = "Enable Experience bar"
UIConfigLocal.DataBarsExperienceFade = "Fade Experience bar"
UIConfigLocal.DataBarsExperienceHeight = "Experience bar height"
UIConfigLocal.DataBarsExperienceRestedColor = "Experience bar rest color"
UIConfigLocal.DataBarsExperienceWidth = "Experience bar width"
UIConfigLocal.DataBarsHonorColor = "Honor bar color"
UIConfigLocal.DataBarsHonorEnable = "Enable Honor bar"
UIConfigLocal.DataBarsHonorFade = "Fade Honor bar"
UIConfigLocal.DataBarsHonorHeight = "Honor bar height"
UIConfigLocal.DataBarsHonorWidth = "Honor bar width"
UIConfigLocal.DataBarsInfoText = "Display info text on all databars"
UIConfigLocal.DataBarsReputationEnable = "Enable Reputation bar"
UIConfigLocal.DataBarsReputationFade = "Fade Reputation bar"
UIConfigLocal.DataBarsReputationHeight = "Reputation bar height"
UIConfigLocal.DataBarsReputationWidth = "Reputation bar width"

-- Auras
UIConfigLocal.Auras = "Auras"
UIConfigLocal.AurasAnimation = "Show a 'pop in' animation on auras"..PerformanceSlight
UIConfigLocal.AurasBuffsPerRow = "Set the number of buffs to show before creating a new row"
UIConfigLocal.AurasCastBy = "Show who cast an aura in its tooltip"
UIConfigLocal.AurasConsolidate = "Consolidate Auras"
UIConfigLocal.AurasEnable = "Enable Auras"
UIConfigLocal.AurasFlash = "Flash auras when their duration is low"..PerformanceSlight
UIConfigLocal.AurasHideBuffs = "Disable buff display"
UIConfigLocal.AurasHideDebuffs = "Disable debuff display"

-- Chat
UIConfigLocal.ChatBubbleBackdrop = "Remove the chat bubble backdrop."
UIConfigLocal.ChatDamageMeterSpam = "Merge damage meter spam in one line-link"
UIConfigLocal.ChatEnable = "Enable chat"
UIConfigLocal.ChatFading = "Fades out chat messages after a certain period of time."
UIConfigLocal.ChatFadingTimeVisible = "Set how long in seconds the chat messages remain visible before fading out."
UIConfigLocal.ChatFadingTimeFading = "Set how much time the chat messages will spend fading out in seconds."
UIConfigLocal.ChatHeight = "Height of the Chatframe"
UIConfigLocal.ChatLinkBrackets = "Display URL links wrapped in brackets"
UIConfigLocal.ChatLinkColor = "Set a color to display URL links in"
UIConfigLocal.ChatMessageFilter = "Removing some systems spam('Player1' won duel 'Player2')"
UIConfigLocal.ChatOutline = "Apply an outline to the chat font"
UIConfigLocal.ChatScrollByX = "Set the number of lines that the chat will jump when scrolling"
UIConfigLocal.ChatSpamFilter = "Removing some players chat spam in trade"
UIConfigLocal.ChatTabsMouseover = "Chat tabs on mouseover"
UIConfigLocal.ChatTabsOutline = "Apply an outline to the chat tabs font"
UIConfigLocal.ChatWhispSound = "Play sound when receiving whispers"
UIConfigLocal.ChatWidth = "Width of the Chatframe"

-- DataText
UIConfigLocal.DataText = "DataText"
UIConfigLocal.DataTextBattleground = "Enable data text displaying battleground information"
UIConfigLocal.DataTextLocalTime = "Use local time in the Time data text, rather than realm time"
UIConfigLocal.DataTextSystem = "Enable system data text under the minimap displaying FPS & MS"
UIConfigLocal.DataTextTime = "Enable clock data text displaying time information at the bottom of the minimap"
UIConfigLocal.DataTextTime24Hr = "Set the Time data text to 24 hour format"

-- Error
UIConfigLocal.Error = "Errors"
UIConfigLocal.ErrorBlack = "Hide errors from black list"
UIConfigLocal.ErrorWhite = "Show errors from white list"
UIConfigLocal.ErrorCombat = "Hide all errors in combat"

-- Cooldown
UIConfigLocal.Cooldown = "Cooldown"
UIConfigLocal.CooldownEnable = "Enable UI cooldown module"
UIConfigLocal.CooldownFontSize = "Cooldown font size"
UIConfigLocal.CooldownThreshold = "Cooldown threshold number"

-- General
UIConfigLocal.GeneralAutoScale = "Auto UI Scale"
UIConfigLocal.GeneralBubbleFontSize = "Chat bubble font size"
UIConfigLocal.GeneralDisableTutorialButtons = "Disables the tutorial button found on some frames"
UIConfigLocal.GeneralTaintLog = "Log taints"
UIConfigLocal.GeneralToggleButton = "Toggle button under minimap (if DataText System is enabled)"
UIConfigLocal.GeneralUIScale = "UI Scale (if auto-scale is disabled)"
UIConfigLocal.GeneralUseBlizzardFonts = "Use the default blizzard font"
UIConfigLocal.GeneralUseFlatTextures = "Use flat statusbar textures"
UIConfigLocal.GeneralWelcomeMessage = "Welcome message in chat."

-- Loot
UIConfigLocal.LootConfirmDisenchant = "Auto confirm disenchant"
UIConfigLocal.LootAutoGreed = "Enable auto-greed & disenchant for green items at max level"
UIConfigLocal.LootEnable = "Enable loot frame"
UIConfigLocal.LootIconSize = "Icon size"
UIConfigLocal.LootGroupLoot = "Enable group loot frame"
UIConfigLocal.LootWidth = "Loot frame width"

-- Minimap
UIConfigLocal.Minimap = "Minimap"
UIConfigLocal.MinimapCalendar = "Calendar icon is shown on minimap"
UIConfigLocal.MinimapCollectButtons = "Collect some minimap buttons in one line"
UIConfigLocal.MinimapEnable = "Enable minimap & make it square"
UIConfigLocal.MinimapFadeButtons = "Fade addon button when collected next to minimap"
UIConfigLocal.MinimapGarrison = "Garrison icon is shown on minimap"
UIConfigLocal.MinimapSize = "Minimap size - Default is 150"

-- Misc
UIConfigLocal.Misc = "Miscellaneous"
UIConfigLocal.MiscAFKCamera = "Spin camera while AFK"
UIConfigLocal.MiscAlreadyKnown = "Colorizes recipes, mounts & pets that are already known"
UIConfigLocal.MiscArmory = "Add Armory link in UnitPopupMenus (It can break UnitPopupMenus)"
UIConfigLocal.MiscAutoRepair = "When visiting a repair merchant, automatically repair our gear"
UIConfigLocal.MiscAutoSellGrays = "When visiting a vendor, automatically sell gray quality items"
UIConfigLocal.MiscBGSpam = "Remove Boss Emote spam during BG"
UIConfigLocal.MiscColorPicker = "Improved color picker"
UIConfigLocal.MiscCombatState = "Display a message when you enter/leave combat at the top of the screen"
UIConfigLocal.MiscEnhancedPvpMessages = "Display battleground messages in the middle of the screen."
UIConfigLocal.MiscInviteKeyword = "Short keyword for invite (/ainv)"
UIConfigLocal.MiscItemLevel = "Item level on character slot buttons"
UIConfigLocal.MiscNoBanner = "Hide Boss Banner Loot Frame"
UIConfigLocal.MiscPvPEmote = "Does a random emote on a player that you get a killing blow on"
UIConfigLocal.MiscSellMisc = "Automatically sells useless items that are not gray quality"
UIConfigLocal.MiscSlotDurability = "Durability on character slot buttons"
UIConfigLocal.MiscUseGuildRepair = "When using 'Auto Repair', use funds from the guild bank"

-- Nameplates
UIConfigLocal.Nameplates = "Nameplates"
UIConfigLocal.NameplatesAdditionalHeight = "Additional height for selected nameplate"
UIConfigLocal.NameplatesAdditionalWidth = "Additional width for selected nameplate"
UIConfigLocal.NameplatesAurasSize = "Debuffs size"
UIConfigLocal.NameplatesBadColor = "Bad threat color, varies depending if your a tank or dps/heal"
UIConfigLocal.NameplatesCastbarName = "Show castbar name"
UIConfigLocal.NameplatesCastUnitReaction = "Color castbars by the reaction type of non-player units"
UIConfigLocal.NameplatesClamp = "Clamp nameplates to the top of the screen when outside of view"
UIConfigLocal.NameplatesCombat = "Automatically show nameplates in combat"
UIConfigLocal.NameplatesDistance = "Show nameplates for units within this range"
UIConfigLocal.NameplatesEnable = "Enable nameplates"
UIConfigLocal.NameplatesEnhancedThreat = "Enable threat feature, automatically changes by your role"
UIConfigLocal.NameplatesGoodColor = "Good threat color, varies depending if your a tank or dps/heal"
UIConfigLocal.NameplatesHealerIcon = "Show icon above enemy healers nameplate in battlegrounds"
UIConfigLocal.NameplatesHealthValue = "Numeral health value"
UIConfigLocal.NameplatesHeight = "Nameplates height"
UIConfigLocal.NameplatesNameAbbreviate = "Abbreviate names longer than 18 characters"
UIConfigLocal.NameplatesNearColor = "Losing/Gaining threat color"
UIConfigLocal.NameplatesOffTankColor = "Offtank threat color"
UIConfigLocal.NameplatesSmooth = "Bars will transition smoothly"
UIConfigLocal.NameplatesTotemIcons = "Show icon above enemy totems nameplate"
UIConfigLocal.NameplatesTrackAuras = "Show debuffs (from the list)"
UIConfigLocal.NameplatesWidth = "Nameplates width"

-- Config GUI Buttons
UIConfigLocal.ConfigApplyButton = "Apply"
UIConfigLocal.ConfigButtonReset = "Total UI Reset"
UIConfigLocal.ConfigCloseButton = "Close"

-- Config Static Popups
UIConfigLocal.ConfigPerChar = "Are you sure you want to change to or from 'Per Char Settings'?"
UIConfigLocal.ConfigResetAll = "Are you sure you want to reset all settings for |cff3c9bedKkthnxUI|r."
UIConfigLocal.ConfigResetChar = "Are you sure you want to reset your character's settings for|r?"
UIConfigLocal.ConfigSetSavedSettings = "Set settings Per-Character"

-- Skins
UIConfigLocal.Skins = "AddOn Skins"
UIConfigLocal.SkinsBigWigs = "BigWigs"
UIConfigLocal.SkinsChatBubble = "Blizzard chat bubbles"
UIConfigLocal.SkinsDBM = "DeadlyBossMods"
UIConfigLocal.SkinsDBMMove = "Allow to move DBM bars"
UIConfigLocal.SkinsMinimapButtons = "Minimap buttons"
UIConfigLocal.SkinsRecount = "Recount"
UIConfigLocal.SkinsSkada = "Skada"
UIConfigLocal.SkinsSpy = "Spy"
UIConfigLocal.SkinsWeakAuras = "WeakAuras"

-- Tooltip
UIConfigLocal.Tooltip = "Tooltip"
UIConfigLocal.TooltipAchievements = "Comparing achievements in tooltip"
UIConfigLocal.TooltipCursor = "Tooltip above cursor"
UIConfigLocal.TooltipEnable = "Enable tooltip"
UIConfigLocal.TooltipHealthValue = "Numeral health value"
UIConfigLocal.TooltipHyperLink = "Display the hyperlink tooltip while hovering over a hyperlink."
UIConfigLocal.TooltipInstanceLock = "Your instance lock status in tooltip"
UIConfigLocal.TooltipItemCount = "Item count"
UIConfigLocal.TooltipItemIcon = "Item icon in tooltip"
UIConfigLocal.TooltipRank = "Display targets guild rank on tooltip when shift is held down"
UIConfigLocal.TooltipSpellID = "Spell ID"
UIConfigLocal.TooltipTalents = "Display targets talents on tooltip"

-- Unitframe
UIConfigLocal.Unitframe = "Unit Frames"
UIConfigLocal.UnitframeCastbarHeight = "Height of the unitframe castbars"
UIConfigLocal.UnitframeCastbarIcon = "Show castbar icons"
UIConfigLocal.UnitframeCastbarLatency = "Show Castbar latency when casting (Player only)"
UIConfigLocal.UnitframeCastbars = "Enable uniframe castbars"
UIConfigLocal.UnitframeCastbarTicks = "Display tick marks on the castbar for channelled spells."
UIConfigLocal.UnitframeCastbarWidth = "Width of the unitframe castbars"
UIConfigLocal.UnitframeCastClassColor = "Color castbars by the class of player units"
UIConfigLocal.UnitframeCastUnitReaction = "Color castbars by the reaction type of non-player units"
UIConfigLocal.UnitframeClassColor = "Classcolor the uniframe healthbars."
UIConfigLocal.UnitframeClassPortraits = "Enable class portraits"
UIConfigLocal.UnitframeCombatText = "Show Combat Feedback"
UIConfigLocal.UnitframeEnable = "Enable unit frames"
UIConfigLocal.UnitframeGCDBar = "Global cooldown spark on player frame"
UIConfigLocal.UnitframeParty = "Enable party frames."
UIConfigLocal.UnitframePlayerDebuffsOnly = "Only color player debuffs"
UIConfigLocal.UnitframePortraitTimer = "Show Portrait Timers"
UIConfigLocal.UnitframePowerPredictionBar = "Power prediction bar (Display estimated cost of spells when casting)"
UIConfigLocal.UnitframeScale = "Scale some of the uniframes."
UIConfigLocal.UnitframeShowArena = "Enable arena frames"
UIConfigLocal.UnitframeShowBoss = "Enable boss frames"
UIConfigLocal.UnitframeShowPlayer = "Show yourself in the party"
UIConfigLocal.UnitframeSmooth = "Bars will transition smoothly"
UIConfigLocal.UnitframeStyle = "Style the uniframes look 'fat or normal'"
UIConfigLocal.UnitframeSwingBar = "Enable swing bar"
UIConfigLocal.UnitframeThreatGlow = "Threat glow around unitframes"
UIConfigLocal.UnitframeThreatValue = "Visual threat text on the player frame"

-- Raidframe
UIConfigLocal.Raidframe = "Raid Frames"
UIConfigLocal.RaidframeAuraWatch = "Display timers for class specific buffs in the corners of the raid frames"
UIConfigLocal.RaidframeDeficitThreshold = "Health deficit threshold"
UIConfigLocal.RaidframeEnable = "Enable raid frames"
UIConfigLocal.RaidframeHeight = "Height of raid frames"
UIConfigLocal.RaidframeIconSize = "Size of debuff icons diplayed on raid frames."
UIConfigLocal.RaidframeMainTankFrames = "Enable the use of main tank/assist frames in a raid."
UIConfigLocal.RaidframeManabarShow = "Display Manabar"
UIConfigLocal.RaidframeMaxUnitPerColumn = "How many units per raid column"
UIConfigLocal.RaidframeRaidAsParty = "Display raid frames instead of party frames"
UIConfigLocal.RaidframeScale = "Scale of raid frames"
UIConfigLocal.RaidframeShowMouseoverHighlight = "Show a highlight texture on mouseover"
UIConfigLocal.RaidframeShowNotHereTimer = "Show AFK/Offline timers"
UIConfigLocal.RaidframeShowResurrectText = "Display resurrection text"
UIConfigLocal.RaidframeShowRolePrefix = "Display role prefixes"
UIConfigLocal.RaidframeShowThreatText = "Show threat text"
UIConfigLocal.RaidframeSmooth = "Bars will transition smoothly."
UIConfigLocal.RaidframeWidth = "Width of raid frames"

-- WorldMap
UIConfigLocal.WorldMap = "World Map"
UIConfigLocal.WorldMapAlphaWhenMoving = "Alpha of the world map when you are moving."
UIConfigLocal.WorldMapCoordinates = "Put coordinates on the world map."
UIConfigLocal.WorldMapFadeWhenMoving = "Fade the world map when you are moving."
UIConfigLocal.WorldMapSmallWorldMap = "Make the world map smaller."