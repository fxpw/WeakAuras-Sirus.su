local RotationAPI =
{
	Name = "Rotation",
	Type = "ScriptObject",
	-- Documentation = { "An animation type that rotates a region around a specified point." },
	Inherits =
	{
		"Animation",
	},

	Functions =
	{
		{
			Name = "GetDegrees",
			Type = "Function",
			-- Documentation = { "Returns the animation's rotation amount (in degrees)" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "degrees", Type = "number", Nilable = false --[[ Documentation = { "Amount by which the region rotates over the animation's duration (in degrees; positive values for counter-clockwise rotation, negative for clockwise)" }, ]] },
			},
		},
		{
			Name = "GetOrigin",
			Type = "Function",
			-- Documentation = { "Returns the rotation animation's origin point" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "point", Type = "string, anchorPoint", Nilable = false --[[ Documentation = { "Anchor point for the rotation origin" }, ]] },
				{ Name = "xOffset", Type = "number", Nilable = false --[[ Documentation = { "Horizontal distance from the anchor point to the rotation origin (in pixels)" }, ]] },
				{ Name = "yOffset", Type = "number", Nilable = false --[[ Documentation = { "Vertical distance from the anchor point to the rotation origin (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetRadians",
			Type = "Function",
			-- Documentation = { "Returns the animation's rotation amount (in radians)" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "radians", Type = "number", Nilable = false --[[ Documentation = { "Amount by which the region rotates over the animation's duration (in radians; positive values for counter-clockwise rotation, negative for clockwise)" }, ]] },
			},
		},
		{
			Name = "SetDegrees",
			Type = "Function",
			-- Documentation = { "Sets the animation's rotation amount (in degrees)" },

			Arguments =
			{
				{ Name = "degrees", Type = "number", Nilable = false --[[ Documentation = { "Amount by which the region should rotate over the animation's duration (in degrees; positive values for counter-clockwise rotation, negative for clockwise)" }, ]] },
			},
		},
		{
			Name = "SetOrigin",
			Type = "Function",
			-- Documentation = { "Sets the rotation animation's origin point" },

			Arguments =
			{
				{ Name = "point", Type = "string, anchorpoint", Nilable = false --[[ Documentation = { "Anchor point for the rotation origin" }, ]] },
				{ Name = "xOffset", Type = "number", Nilable = false --[[ Documentation = { "Horizontal distance from the anchor point to the rotation origin (in pixels)" }, ]] },
				{ Name = "yOffset", Type = "number", Nilable = false --[[ Documentation = { "Vertical distance from the anchor point to the rotation origin (in pixels)" }, ]] },
			},
		},
		{
			Name = "SetRadians",
			Type = "Function",
			-- Documentation = { "Sets the animation's rotation amount (in radians)" },

			Arguments =
			{
				{ Name = "radians", Type = "number", Nilable = false --[[ Documentation = { "Amount by which the region should rotate over the animation's duration (in radians; positive values for counter-clockwise rotation, negative for clockwise)" }, ]] },
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

APIDocumentation:AddDocumentationTable(RotationAPI);

