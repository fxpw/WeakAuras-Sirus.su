local TranslationAPI =
{
	Name = "Translation",
	Type = "ScriptObject",
	-- Documentation = { "An animation type that moves a region by a specified offset over time." },
	Inherits =
	{
		"Animation",
	},

	Functions =
	{
		{
			Name = "GetOffset",
			Type = "Function",
			-- Documentation = { "Returns the animation's translation offsets" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "xOffset", Type = "number", Nilable = false --[[ Documentation = { "Distance away from the left edge of the screen (in pixels) to move the region over the animation's duration" }, ]] },
				{ Name = "yOffset", Type = "number", Nilable = false --[[ Documentation = { "Distance away from the bottom edge of the screen (in pixels) to move the region over the animation's duration" }, ]] },
			},
		},
		{
			Name = "SetOffset",
			Type = "Function",
			-- Documentation = { "Sets the animation's translation offsets" },

			Arguments =
			{
				{ Name = "xOffset", Type = "number", Nilable = false --[[ Documentation = { "Distance away from the left edge of the screen (in pixels) to move the region over the animation's duration" }, ]] },
				{ Name = "yOffset", Type = "number", Nilable = false --[[ Documentation = { "Distance away from the bottom edge of the screen (in pixels) to move the region over the animation's duration" }, ]] },
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

APIDocumentation:AddDocumentationTable(TranslationAPI);

