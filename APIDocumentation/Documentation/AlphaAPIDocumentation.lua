local AlphaAPI =
{
	Name = "Alpha",
	Type = "ScriptObject",
	-- Documentation = { "An animation type that smoothly changes the opacity (alpha) of its parent region over time." },
	Inherits =
	{
		"Animation",
	},

	Functions =
	{
		{
			Name = "GetChange",
			Type = "Function",
			-- Documentation = { "Returns the animation's amount of alpha (opacity) change" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "change", Type = "number", Nilable = false --[[ Documentation = { "Amount by which the region's alpha value changes over the animation's duration (between -1 and 1)" }, ]] },
			},
		},
		{
			Name = "SetChange",
			Type = "Function",
			-- Documentation = { "Sets the animation's amount of alpha (opacity) change" },

			Arguments =
			{
				{ Name = "change", Type = "number", Nilable = false --[[ Documentation = { "Amount by which the region's alpha value should change over the animation's duration (between -1 and 1)" }, ]] },
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

APIDocumentation:AddDocumentationTable(AlphaAPI);

