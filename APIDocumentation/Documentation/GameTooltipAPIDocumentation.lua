local GameTooltipAPI =
{
	Name = "GameTooltip",
	Type = "ScriptObject",
	-- Documentation = { "A specialized frame for displaying information tooltips with formatted text, icons, and money values." },
	Inherits =
	{
		"Frame",
	},

	Functions =
	{
		{
			Name = "AddDoubleLine",
			Type = "Function",
			-- Documentation = { "Adds a line to the tooltip with both left-side and right-side portions" },

			Arguments =
			{
				{ Name = "textLeft", Type = "string", Nilable = false --[[ Documentation = { "Text to be displayed on the left side of the new line" }, ]] },
				{ Name = "textRight", Type = "string", Nilable = false --[[ Documentation = { "Text to be displayed on the right side of the new line" }, ]] },
				{ Name = "rL", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color for the left-side text (0.0 - 1.0)" }, ]] },
				{ Name = "gL", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color for the left-side text (0.0 - 1.0)" }, ]] },
				{ Name = "bL", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color for the left-side text (0.0 - 1.0)" }, ]] },
				{ Name = "rR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color for the right-side text (0.0 - 1.0)" }, ]] },
				{ Name = "gR", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color for the right-side text (0.0 - 1.0)" }, ]] },
				{ Name = "bR", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color for the right-side text (0.0 - 1.0)" }, ]] },
			},
		},
		{
			Name = "AddFontStrings",
			Type = "Function",
			-- Documentation = { "Adds `FontString` objects to the tooltip, allowing it to display an additional line of text" },

			Arguments =
			{
			},
		},
		{
			Name = "AddLine",
			Type = "Function",
			-- Documentation = { "Adds a line of text to the tooltip" },

			Arguments =
			{
				{ Name = "text", Type = "string", Nilable = false --[[ Documentation = { "The text to be displayed on the tooltip, including embedded color codes." }, ]] },
				{ Name = "r", Type = "number", Nilable = false --[[ Documentation = { "The red component of the text color" }, ]] },
				{ Name = "g", Type = "number", Nilable = false --[[ Documentation = { "The green component of the text color" }, ]] },
				{ Name = "b", Type = "number", Nilable = false --[[ Documentation = { "The blue component of the text color" }, ]] },
				{ Name = "a", Type = "number", Nilable = false --[[ Documentation = { "The alpha value of the text color" }, ]] },
				{ Name = "wrap", Type = "bool", Nilable = false --[[ Documentation = { "A boolean flag indicating whether or not the text should be wrapped within the tooltip if it is too wide." }, ]] },
			},
		},
		{
			Name = "AddTexture",
			Type = "Function",
			-- Documentation = { "Adds a texture to the last tooltip line" },

			Arguments =
			{
				{ Name = "texture", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image file" }, ]] },
			},
		},
		{
			Name = "AppendText",
			Type = "Function",
			-- Documentation = { "Adds text to the first line of the tooltip" },

			Arguments =
			{
				{ Name = "text", Type = "string", Nilable = false --[[ Documentation = { "Text to be appended to the tooltip's first line" }, ]] },
			},
		},
		{
			Name = "ClearLines",
			Type = "Function",
			-- Documentation = { "Clears the tooltip's contents" },

			Arguments =
			{
			},
		},
		{
			Name = "FadeOut",
			Type = "Function",
			-- Documentation = { "Causes the tooltip to begin fading out" },

			Arguments =
			{
			},
		},
		{
			Name = "GetAnchorType",
			Type = "Function",
			-- Documentation = { "Returns the method for anchoring the tooltip relative to its owner" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "anchor", Type = "value", Nilable = false --[[ Documentation = { "Token identifying the method for anchoring the tooltip relative to its owner frame (string) ANCHOR_BOTTOMLEFT - Align the top right of the tooltip with the bottom left of the ownerANCHOR_CURSOR - Toolip follows the mouse cursorANCHOR_LEFT - Align the bottom right of the tooltip with the top left of the ownerANCHOR_NONE - Tooltip appears in the default positionANCHOR_PRESERVE - Tooltip's position is saved between sessions (useful if the tooltip is made user-movable)ANCHOR_RIGHT - Align the bottom left of the tooltip with the top right of the ownerANCHOR_TOPLEFT - Align the bottom left of the tooltip with the top left of the ownerANCHOR_TOPRIGHT - Align the bottom right of the tooltip with the top right of the owner" }, ]] },
			},
		},
		{
			Name = "GetItem",
			Type = "Function",
			-- Documentation = { "Returns the name and hyperlink for the item displayed in the tooltip" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "Name of the item whose information is displayed in the tooltip, or nil." }, ]] },
				{ Name = "link", Type = "string, hyperlink", Nilable = false --[[ Documentation = { "A hyperlink for the item" }, ]] },
			},
		},
		{
			Name = "GetMinimumWidth",
			Type = "Function",
			-- Documentation = { "Returns the minimum width of the tooltip" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "width", Type = "number", Nilable = false --[[ Documentation = { "Minimum width of the tooltip frame (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetOwner",
			Type = "Function",
			-- Documentation = { "Returns the frame to which the tooltip refers and is anchored" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "owner", Type = "frame", Nilable = false --[[ Documentation = { "Reference to the Frame object to which the tooltip is anchored" }, ]] },
			},
		},
		{
			Name = "GetPadding",
			Type = "Function",
			-- Documentation = { "Returns the amount of space between tooltip's text and its right-side edge" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "padding", Type = "number", Nilable = false --[[ Documentation = { "Amount of space between the right-side edge of the tooltip's text and the right-side edge of the tooltip frame (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetSpell",
			Type = "Function",
			-- Documentation = { "Returns information about the spell displayed in the tooltip" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "spellName", Type = "string", Nilable = false --[[ Documentation = { "Name of the spell, or nil if the information in the tooltip is not for a spell." }, ]] },
				{ Name = "spellRank", Type = "string", Nilable = false --[[ Documentation = { "Secondary text associated with the spell name (often a rank, e.g. \"Rank 8\")" }, ]] },
				{ Name = "spellID", Type = "number, spellID", Nilable = false --[[ Documentation = { "Numeric identifier for the spell and rank" }, ]] },
			},
		},
		{
			Name = "GetUnit",
			Type = "Function",
			-- Documentation = { "Returns information about the unit displayed in the tooltip" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "Name of the unit displayed in the tooltip, or nil" }, ]] },
				{ Name = "unit", Type = "string, unitID", Nilable = false --[[ Documentation = { "Unit identifier of the unit, or nil if the unit cannot be referenced by a unitID" }, ]] },
			},
		},
		{
			Name = "IsEquippedItem",
			Type = "Function",
			-- Documentation = { "Returns whether the tooltip is displaying an item currently equipped by the player" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the tooltip is displaying information about an item currently equipped by the player; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsOwned",
			Type = "Function",
			-- Documentation = { "Returns whether the tooltip has an owner frame" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "hasOwner", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the tooltip has an owner frame; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsUnit",
			Type = "Function",
			-- Documentation = { "Returns whether the tooltip is displaying information for a given unit" },

			Arguments =
			{
				{ Name = "unit", Type = "string, unitid", Nilable = false --[[ Documentation = { "A unit to query" }, ]] },
			},

			Returns =
			{
				{ Name = "isUnit", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the tooltip is displaying information for the unit; otherwise nil" }, ]] },
			},
		},
		{
			Name = "NumLines",
			Type = "Function",
			-- Documentation = { "Returns the number of lines of text currently shown in the tooltip" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "numLines", Type = "number", Nilable = false --[[ Documentation = { "Number of lines currently shown in the tooltip" }, ]] },
			},
		},
		{
			Name = "SetAction",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about the contents of an action slot" },

			Arguments =
			{
				{ Name = "slot", Type = "number, actionid", Nilable = false --[[ Documentation = { "An action bar slot" }, ]] },
			},
		},
		{
			Name = "SetAnchorType",
			Type = "Function",
			-- Documentation = { "Sets the method for anchoring the tooltip relative to its owner" },

			Arguments =
			{
				{ Name = "anchor", Type = "value", Nilable = false --[[ Documentation = { "Token identifying the positioning method for the tooltip relative to its owner frame (string) ANCHOR_BOTTOMLEFT - Align the top right of the tooltip with the bottom left of the ownerANCHOR_CURSOR - Toolip follows the mouse cursorANCHOR_LEFT - Align the bottom right of the tooltip with the top left of the ownerANCHOR_NONE - Tooltip appears in the default positionANCHOR_PRESERVE - Tooltip's position is saved between sessions (useful if the tooltip is made user-movable)ANCHOR_RIGHT - Align the bottom left of the tooltip with the top right of the ownerANCHOR_TOPLEFT - Align the bottom left of the tooltip with the top left of the ownerANCHOR_TOPRIGHT - Align the bottom right of the tooltip with the top right of the owner" }, ]] },
				{ Name = "xOffset", Type = "number", Nilable = false --[[ Documentation = { "Horizontal distance from the anchor to the tooltip" }, ]] },
				{ Name = "yOffset", Type = "number", Nilable = false --[[ Documentation = { "Vertical distance from the anchor to the tooltip" }, ]] },
			},
		},
		{
			Name = "SetAuctionItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an item in the auction house" },

			Arguments =
			{
				{ Name = "list", Type = "value", Nilable = false --[[ Documentation = { "Type of auction listing (string, ah-list-type) bidder - Auctions the player has bid onlist - Auctions the player can browse and bid on or buy outowner - Auctions the player placed" }, ]] },
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of an auction in the listing" }, ]] },
			},
		},
		{
			Name = "SetAuctionSellItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about the item currently being set up for auction" },

			Arguments =
			{
			},
		},
		{
			Name = "SetBackpackToken",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about a currency marked for watching on the Backpack UI" },

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of a 'slot' for displaying currencies on the backpack (between 1 and MAX_WATCHED_TOKENS)" }, ]] },
			},
		},
		{
			Name = "SetBagItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an item in the player's bags" },

			Arguments =
			{
			},
		},
		{
			Name = "SetBuybackItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about item recently sold to a vendor and available to be repurchased" },

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of an item in the buyback listing (between 1 and GetNumBuybackItems())" }, ]] },
			},
		},
		{
			Name = "SetCurrencyToken",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about a special currency type" },

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of a currency type in the currency list (between 1 and GetCurrencyListSize())" }, ]] },
			},
		},
		{
			Name = "SetEquipmentSet",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an equipment set" },

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "Name of the equipment set" }, ]] },
			},
		},
		{
			Name = "SetExistingSocketGem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about a permanently socketed gem" },

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of a gem socket (between 1 and GetNumSockets())" }, ]] },
				{ Name = "toDestroy", Type = "bool", Nilable = false --[[ Documentation = { "True to alter the tooltip display to indicate that this gem will be destroyed by socketing a new gem; false to show the normal tooltip for the gem" }, ]] },
			},
		},
		{
			Name = "SetFrameStack",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with a list of frames under the mouse cursor" },

			Arguments =
			{
				{ Name = "includeHidden", Type = "bool", Nilable = false --[[ Documentation = { "True to include hidden frames in the list; false to list only visible frames" }, ]] },
			},
		},
		{
			Name = "SetGlyph",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about one of the player's glyphs" },

			Arguments =
			{
				{ Name = "socket", Type = "number, glyphindex", Nilable = false --[[ Documentation = { "Which socket's glyph to display (between 1 and NUM_GLYPH_SLOTS)" }, ]] },
				{ Name = "talentGroup", Type = "value", Nilable = false --[[ Documentation = { "Which set of glyphs to display, if the player has Dual Talent Specialization enabled (number) 1 - Primary Talents2 - Secondary Talentsnil - Currently active talents" }, ]] },
			},
		},
		{
			Name = "SetGuildBankItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an item in the guild bank" },

			Arguments =
			{
				{ Name = "tab", Type = "number", Nilable = false --[[ Documentation = { "Index of a guild bank tab (between 1 and GetNumGuildBankTabs())" }, ]] },
				{ Name = "slot", Type = "number", Nilable = false --[[ Documentation = { "Index of an item slot in the guild bank tab (between 1 and MAX_GUILDBANK_SLOTS_PER_TAB)" }, ]] },
			},
		},
		{
			Name = "SetHyperlink",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an item, quest, spell, or other entity represented by a hyperlink" },

			Arguments =
			{
				{ Name = "hyperlink", Type = "string, hyperlink", Nilable = false --[[ Documentation = { "A full hyperlink, or the linktype:linkdata portion thereof" }, ]] },
			},
		},
		{
			Name = "SetHyperlinkCompareItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about the item currently equipped in the slot used the supplied item" },

			Arguments =
			{
				{ Name = "hyperlink", Type = "string, hyperlink", Nilable = false --[[ Documentation = { "A full hyperlink, or the linktype:linkdata portion thereof, for an item to compare against the player's equipped similar item" }, ]] },
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of the slot to compare against (1, 2, or 3), if more than one item of the equipment type can be equipped at once (e.g. rings and trinkets)" }, ]] },
			},

			Returns =
			{
				{ Name = "success", Type = "number, 1nil", Nilable = false --[[ Documentation = { "1 if an item's information was loaded into the tooltip; otherwise nil" }, ]] },
			},
		},
		{
			Name = "SetInboxItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an item attached to a message in the player's inbox" },

			Arguments =
			{
				{ Name = "mailID", Type = "number", Nilable = false --[[ Documentation = { "Index of a message in the player's inbox (between 1 and GetInboxNumItems())" }, ]] },
				{ Name = "attachmentIndex", Type = "number", Nilable = false --[[ Documentation = { "Index of an attachment to the message (between 1 and select(8,GetInboxHeaderInfo(mailID)))" }, ]] },
			},
		},
		{
			Name = "SetInventoryItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an equipped item" },

			Arguments =
			{
				{ Name = "unit", Type = "string, unitid", Nilable = false --[[ Documentation = { "A unit to query; only valid for 'player' or the unit currently being inspected" }, ]] },
				{ Name = "slot", Type = "number, inventoryid", Nilable = false --[[ Documentation = { "An inventory slot number, as can be obtained from GetInventorySlotInfo" }, ]] },
				{ Name = "nameOnly", Type = "bool", Nilable = false --[[ Documentation = { "True to omit much of the item's information (stat bonuses, sockets, and binding) from the tooltip; false to show all of the item's information" }, ]] },
			},

			Returns =
			{
				{ Name = "hasItem", Type = "number, 1nil", Nilable = false --[[ Documentation = { "1 if the unit has an item in the given slot; otherwise nil" }, ]] },
				{ Name = "hasCooldown", Type = "number, 1nil", Nilable = false --[[ Documentation = { "1 if the item is currently on cooldown; otherwise nil" }, ]] },
				{ Name = "repairCost", Type = "number", Nilable = false --[[ Documentation = { "Cost to repair the item (in copper, ignoring faction discounts)" }, ]] },
			},
		},
		{
			Name = "SetLFGCompletionReward",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetLFGDungeonReward",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetLootItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an item available as loot" },

			Arguments =
			{
				{ Name = "slot", Type = "number", Nilable = false --[[ Documentation = { "Index of a loot slot (between 1 and GetNumLootItems())" }, ]] },
			},
		},
		{
			Name = "SetLootRollItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an item currently up for loot rolling" },

			Arguments =
			{
				{ Name = "id", Type = "number", Nilable = false --[[ Documentation = { "Index of an item currently up for loot rolling (as provided in the START_LOOT_ROLL event)" }, ]] },
			},
		},
		{
			Name = "SetMerchantCostItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an alternate currency required to purchase an item from a vendor" },

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of an item in the vendor's listing (between 1 and GetMerchantNumItems())" }, ]] },
				{ Name = "currency", Type = "number", Nilable = false --[[ Documentation = { "Index of one of the item currencies required to purchase the item (between 1 and select(3,GetMerchantItemCostInfo(index)))" }, ]] },
			},
		},
		{
			Name = "SetMerchantItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an item available for purchase from a vendor" },

			Arguments =
			{
				{ Name = "merchantIndex", Type = "number", Nilable = false --[[ Documentation = { "The index of an item in the merchant window, between 1 and GetMerchantNumItems()." }, ]] },
			},
		},
		{
			Name = "SetMinimumWidth",
			Type = "Function",
			-- Documentation = { "Sets the minimum width of the tooltip" },

			Arguments =
			{
				{ Name = "width", Type = "number", Nilable = false --[[ Documentation = { "Minimum width of the tooltip frame (in pixels)" }, ]] },
			},
		},
		{
			Name = "SetOwner",
			Type = "Function",
			-- Documentation = { "Sets the frame to which the tooltip refers and is anchored" },

			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false --[[ Documentation = { "Reference to the Frame to which the tooltip refers" }, ]] },
				{ Name = "anchorType", Type = "value", Nilable = false --[[ Documentation = { "Token identifying the positioning method for the tooltip relative to its owner frame (string) ANCHOR_BOTTOMLEFT - Align the top right of the tooltip with the bottom left of the ownerANCHOR_CURSOR - Toolip follows the mouse cursorANCHOR_LEFT - Align the bottom right of the tooltip with the top left of the ownerANCHOR_NONE - Tooltip appears in the default positionANCHOR_PRESERVE - Tooltip's position is saved between sessions (useful if the tooltip is made user-movable)ANCHOR_RIGHT - Align the bottom left of the tooltip with the top right of the ownerANCHOR_TOPLEFT - Align the bottom left of the tooltip with the top left of the ownerANCHOR_TOPRIGHT - Align the bottom right of the tooltip with the top right of the owner" }, ]] },
				{ Name = "xOffset", Type = "number", Nilable = false --[[ Documentation = { "The horizontal offset for the tooltip anchor" }, ]] },
				{ Name = "yOffset", Type = "number", Nilable = false --[[ Documentation = { "The vertical offset for the tooltip anchor" }, ]] },
			},
		},
		{
			Name = "SetPadding",
			Type = "Function",
			-- Documentation = { "Sets the amount of space between tooltip's text and its right-side edge" },

			Arguments =
			{
				{ Name = "padding", Type = "number", Nilable = false --[[ Documentation = { "Amount of space between the right-side edge of the tooltip's text and the right-side edge of the tooltip frame (in pixels)" }, ]] },
			},
		},
		{
			Name = "SetPetAction",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about a pet action" },

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of a pet action button (between 1 and NUM_PET_ACTION_SLOTS)" }, ]] },
			},
		},
		{
			Name = "SetPossession",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about one of the special actions available while the player possesses another unit" },

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of a possession bar action (between 1 and NUM_POSSESS_SLOTS)" }, ]] },
			},
		},
		{
			Name = "SetQuestItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an item in a questgiver dialog" },

			Arguments =
			{
				{ Name = "itemType", Type = "value", Nilable = false --[[ Documentation = { "Token identifying one of the possible sets of items (string) choice - Items from which the player may choose a rewardrequired - Items required to complete the questreward - Items given as reward for the quest" }, ]] },
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of an item in the set (between 1 and GetNumQuestChoices(), GetNumQuestItems(), or GetNumQuestRewards(), according to itemType)" }, ]] },
			},
		},
		{
			Name = "SetQuestLogItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an item related to the selected quest in the quest log" },

			Arguments =
			{
				{ Name = "itemType", Type = "value", Nilable = false --[[ Documentation = { "Token identifying one of the possible sets of items (string) choice - Items from which the player may choose a rewardreward - Items always given as reward for the quest" }, ]] },
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of an item in the set (between 1 and GetNumQuestLogChoices() or GetNumQuestLogRewards(), according to itemType)" }, ]] },
			},
		},
		{
			Name = "SetQuestLogRewardSpell",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about the reward spell for the selected quest in the quest log" },

			Arguments =
			{
			},
		},
		{
			Name = "SetQuestLogSpecialItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about a usable item associated with a current quest" },

			Arguments =
			{
				{ Name = "questIndex", Type = "number", Nilable = false --[[ Documentation = { "Index of a quest log entry with an associated usable item (between 1 and GetNumQuestLogEntries())" }, ]] },
			},
		},
		{
			Name = "SetQuestRewardSpell",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about the spell reward in a questgiver dialog" },

			Arguments =
			{
			},
		},
		{
			Name = "SetSendMailItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an item attached to the outgoing mail message" },

			Arguments =
			{
				{ Name = "slot", Type = "number", Nilable = false --[[ Documentation = { "Index of an outgoing attachment slot (between 1 and ATTACHMENTS_MAX_SEND)" }, ]] },
			},
		},
		{
			Name = "SetShapeshift",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an ability on the stance/shapeshift bar" },

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of an ability on the stance/shapeshift bar (between 1 and GetNumShapeshiftForms())" }, ]] },
			},
		},
		{
			Name = "SetSocketGem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about a gem added to a socket" },

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of a gem socket (between 1 and GetNumSockets())" }, ]] },
			},
		},
		{
			Name = "SetSocketedItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about the item currently being socketed" },

			Arguments =
			{
			},
		},
		{
			Name = "SetSpell",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about a spell from the player (or pet's) spellbook" },

			Arguments =
			{
			},
		},
		{
			Name = "SetSpellByID",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about a spell specified by ID" },

			Arguments =
			{
				{ Name = "id", Type = "number, spellid", Nilable = false --[[ Documentation = { "Numeric ID of a spell" }, ]] },
			},
		},
		{
			Name = "SetTalent",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about a talent" },

			Arguments =
			{
				{ Name = "tabIndex", Type = "number", Nilable = false --[[ Documentation = { "Index of a talent tab (between 1 and GetNumTalentTabs())" }, ]] },
				{ Name = "talentIndex", Type = "number", Nilable = false --[[ Documentation = { "Index of a talent option (between 1 and GetNumTalents())" }, ]] },
				{ Name = "inspect", Type = "bool", Nilable = false --[[ Documentation = { "true to return information for the currently inspected unit; false to return information for the player" }, ]] },
				{ Name = "pet", Type = "bool", Nilable = false --[[ Documentation = { "true to return information for the player's pet; false to return information for the player" }, ]] },
				{ Name = "talentGroup", Type = "value", Nilable = false --[[ Documentation = { "Which set of talents to edit, if the player has Dual Talent Specialization enabled (number) 1 - Primary Talents2 - Secondary Talentsnil - Currently active talents" }, ]] },
			},
		},
		{
			Name = "SetText",
			Type = "Function",
			-- Documentation = { "Sets the tooltip's text" },

			Arguments =
			{
				{ Name = "text", Type = "string", Nilable = false --[[ Documentation = { "Text to be displayed in the tooltip" }, ]] },
				{ Name = "r", Type = "number", Nilable = false --[[ Documentation = { "Red component of the text color (0.0 - 1.0)" }, ]] },
				{ Name = "g", Type = "number", Nilable = false --[[ Documentation = { "Green component of the text color (0.0 - 1.0)" }, ]] },
				{ Name = "b", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the text color (0.0 - 1.0)" }, ]] },
				{ Name = "a", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the text (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "SetTotem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about one of the player's active totems." },

			Arguments =
			{
				{ Name = "slot", Type = "value", Nilable = false --[[ Documentation = { "Which totem to query (number) 1 - Fire (or Death Knight's ghoul)2 - Earth3 - Water4 - Air" }, ]] },
			},
		},
		{
			Name = "SetTracking",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about the currently selected tracking type" },

			Arguments =
			{
			},
		},
		{
			Name = "SetTradePlayerItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an item offered for trade by the player" },

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of an item offered for trade by the player (between 1 and MAX_TRADE_ITEMS)" }, ]] },
			},
		},
		{
			Name = "SetTradeSkillItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an item created by a trade skill recipe or a reagent in the recipe" },

			Arguments =
			{
				{ Name = "skillIndex", Type = "number", Nilable = false --[[ Documentation = { "Index of a recipe in the trade skill list (between 1 and GetNumTradeSkills())" }, ]] },
				{ Name = "reagentIndex", Type = "number", Nilable = false --[[ Documentation = { "Index of a reagent in the recipe (between 1 and GetTradeSkillNumReagents()); if omitted, displays a tooltip for the item created by the recipe" }, ]] },
			},
		},
		{
			Name = "SetTradeTargetItem",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about an item offered for trade by the target" },

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of an item offered for trade by the target (between 1 and MAX_TRADE_ITEMS)" }, ]] },
			},
		},
		{
			Name = "SetTrainerService",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about a trainer service" },

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of an entry in the trainer service listing (between 1 and GetNumTrainerServices())" }, ]] },
			},
		},
		{
			Name = "SetUnit",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about a unit" },

			Arguments =
			{
				{ Name = "unit", Type = "string, unitid", Nilable = false --[[ Documentation = { "A unit to query" }, ]] },
			},
		},
		{
			Name = "SetUnitAura",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about a buff or debuff on a unit" },

			Arguments =
			{
				{ Name = "unit", Type = "string, unitid", Nilable = false --[[ Documentation = { "A unit to query" }, ]] },
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of a buff or debuff on the unit" }, ]] },
				{ Name = "filter", Type = "as opposed to self buffs", Nilable = false --[[ Documentation = { "A list of filters to use when resolving the index, separated by the pipe '|' character; e.g. \"RAID|PLAYER\" will query group buffs cast by the player (string) CANCELABLE - Show auras that can be cancelledHARMFUL - Show debuffs onlyHELPFUL - Show buffs onlyNOT_CANCELABLE - Show auras that cannot be cancelledPLAYER - Show auras the player has castRAID - Show auras the player can cast on party/raid members" }, ]] },
			},
		},
		{
			Name = "SetUnitBuff",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about a buff on a unit" },

			Arguments =
			{
				{ Name = "unit", Type = "string, unitid", Nilable = false --[[ Documentation = { "A unit to query" }, ]] },
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of a buff or debuff on the unit" }, ]] },
				{ Name = "filter", Type = "as opposed to self buffs", Nilable = false --[[ Documentation = { "A list of filters to use when resolving the index, separated by the pipe '|' character; e.g. \"RAID|PLAYER\" will query group buffs cast by the player (string) CANCELABLE - Show auras that can be cancelledNOT_CANCELABLE - Show auras that cannot be cancelledPLAYER - Show auras the player has castRAID - Show auras the player can cast on party/raid members" }, ]] },
			},
		},
		{
			Name = "SetUnitDebuff",
			Type = "Function",
			-- Documentation = { "Fills the tooltip with information about a debuff on a unit" },

			Arguments =
			{
				{ Name = "unit", Type = "string, unitid", Nilable = false --[[ Documentation = { "A unit to query" }, ]] },
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of a buff or debuff on the unit" }, ]] },
				{ Name = "filter", Type = "as opposed to self buffs", Nilable = false --[[ Documentation = { "A list of filters to use when resolving the index, separated by the pipe '|' character; e.g. \"CANCELABLE|PLAYER\" will query cancelable debuffs cast by the player (string) CANCELABLE - Show auras that can be cancelledNOT_CANCELABLE - Show auras that cannot be cancelledPLAYER - Show auras the player has castRAID - Show auras the player can cast on party/raid members" }, ]] },
			},
		},
		{
			Name = "CanChangeAttribute",
			Type = "Function",
			-- Documentation = { "Returns whether secure frame attributes can currently be changed" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if secure frame attributes can currently be changed; otherwise nil" }, ]] },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(GameTooltipAPI);

