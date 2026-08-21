local ScaleAPI =
{
	Name = "Scale",
	Type = "ScriptObject",
	-- Documentation = { "An animation type that changes the scale (size) of a region over time." },
	Inherits =
	{
		"Animation",
	},

	Functions =
	{
		{
			Name = "GetOrigin",
			Type = "Function",
			-- Documentation = { "Returns the scale animation's origin point" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "point", Type = "string, anchorPoint", Nilable = false --[[ Documentation = { "Anchor point for the scale origin" }, ]] },
				{ Name = "xOffset", Type = "number", Nilable = false --[[ Documentation = { "Horizontal distance from the anchor point to the scale origin (in pixels)" }, ]] },
				{ Name = "yOffset", Type = "number", Nilable = false --[[ Documentation = { "Vertical distance from the anchor point to the scale origin (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetScale",
			Type = "Function",
			-- Documentation = { "Returns the animation's scaling factors" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "xFactor", Type = "number", Nilable = false --[[ Documentation = { "Horizontal scaling factor" }, ]] },
				{ Name = "yFactor", Type = "number", Nilable = false --[[ Documentation = { "Vertical scaling factor" }, ]] },
			},
		},
		{
			Name = "SetOrigin",
			Type = "Function",
			-- Documentation = { "Sets the scale animation's origin point" },

			Arguments =
			{
				{ Name = "point", Type = "string, anchorpoint", Nilable = false --[[ Documentation = { "Anchor point for the scale origin" }, ]] },
				{ Name = "xOffset", Type = "number", Nilable = false --[[ Documentation = { "Horizontal distance from the anchor point to the scale origin (in pixels)" }, ]] },
				{ Name = "yOffset", Type = "number", Nilable = false --[[ Documentation = { "Vertical distance from the anchor point to the scale origin (in pixels)" }, ]] },
			},
		},
		{
			Name = "SetScale",
			Type = "Function",
			-- Documentation = { "Sets the animation's scaling factors" },

			Arguments =
			{
				{ Name = "xFactor", Type = "number", Nilable = false --[[ Documentation = { "Horizontal scaling factor" }, ]] },
				{ Name = "yFactor", Type = "number", Nilable = false --[[ Documentation = { "Vertical scaling factor" }, ]] },
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

APIDocumentation:AddDocumentationTable(ScaleAPI);

