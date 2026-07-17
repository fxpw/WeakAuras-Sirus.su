local DressUpModelAPI =
{
	Name = "DressUpModel",
	Type = "ScriptObject",
	-- Documentation = { "A model frame that can display character models with equipped items for preview." },
	Inherits =
	{
		"PlayerModel",
	},

	Functions =
	{
		{
			Name = "Dress",
			Type = "Function",
			-- Documentation = { "Updates the model to reflect the character's currently equipped items" },

			Arguments =
			{
			},
		},
		{
			Name = "TryOn",
			Type = "Function",
			-- Documentation = { "Updates the model to reflect the character's appearance after equipping a specific item" },

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = false --[[ Documentation = { "An item's ID" }, ]] },
				{ Name = "itemName", Type = "string", Nilable = false --[[ Documentation = { "An item's name" }, ]] },
				{ Name = "itemLink", Type = "string", Nilable = false --[[ Documentation = { "An item's hyperlink, or any string containing the itemString portion of an item link" }, ]] },
			},
		},
		{
			Name = "Undress",
			Type = "Function",
			-- Documentation = { "Updates the model to reflect the character's appearance without any equipped items" },

			Arguments =
			{
			},
		},
		{
			Name = "UndressSlot",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
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

APIDocumentation:AddDocumentationTable(DressUpModelAPI);

