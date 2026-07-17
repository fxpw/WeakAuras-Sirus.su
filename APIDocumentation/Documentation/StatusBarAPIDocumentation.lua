local StatusBarAPI =
{
	Name = "StatusBar",
	Type = "ScriptObject",
	-- Documentation = { "A frame that displays a horizontal or vertical bar indicating a value within a range (e.g., health, XP)." },
	Inherits =
	{
		"Frame",
	},

	Functions =
	{
		{
			Name = "GetMinMaxValues",
			Type = "Function",
			-- Documentation = { "Returns the minimum and maximum values of the status bar" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "minValue", Type = "number", Nilable = false --[[ Documentation = { "Lower boundary for values represented on the status bar" }, ]] },
				{ Name = "maxValue", Type = "number", Nilable = false --[[ Documentation = { "Upper boundary for values represented on the status bar" }, ]] },
			},
		},
		{
			Name = "GetOrientation",
			Type = "Function",
			-- Documentation = { "Returns the orientation of the status bar" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "orientation", Type = "value", Nilable = false --[[ Documentation = { "Token describing the orientation and direction of the status bar (string) HORIZONTAL - Fills from left to right as the status bar value increasesVERTICAL - Fills from top to bottom as the status bar value increases" }, ]] },
			},
		},
		{
			Name = "GetRotatesTexture",
			Type = "Function",
			-- Documentation = { "Returns whether the status bar's texture is rotated to match its orientation" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "rotate", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the status bar texture should be rotated 90 degrees counter-clockwise when the status bar is vertically oriented; otherwise nil" }, ]] },
			},
		},
		{
			Name = "GetStatusBarColor",
			Type = "Function",
			-- Documentation = { "Returns the color shading used for the status bar's texture" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the graphic (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "GetStatusBarTexture",
			Type = "Function",
			-- Documentation = { "Returns the `Texture` object used for drawing the filled-in portion of the status bar" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to the Texture object used for drawing the filled-in portion of the status bar" }, ]] },
			},
		},
		{
			Name = "GetValue",
			Type = "Function",
			-- Documentation = { "Returns the current value of the status bar" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "value", Type = "number", Nilable = false --[[ Documentation = { "Value indicating the amount of the status bar's area to be filled in (between minValue and maxValue, where minValue, maxValue = StatusBar:GetMinMaxValues())" }, ]] },
			},
		},
		{
			Name = "SetMinMaxValues",
			Type = "Function",
			-- Documentation = { "Sets the minimum and maximum values of the status bar" },

			Arguments =
			{
				{ Name = "minValue", Type = "number", Nilable = false --[[ Documentation = { "Lower boundary for values represented on the status bar" }, ]] },
				{ Name = "maxValue", Type = "number", Nilable = false --[[ Documentation = { "Upper boundary for values represented on the status bar" }, ]] },
			},
		},
		{
			Name = "SetOrientation",
			Type = "Function",
			-- Documentation = { "Sets the orientation of the status bar" },

			Arguments =
			{
				{ Name = "orientation", Type = "value", Nilable = false --[[ Documentation = { "Token describing the orientation and direction of the status bar (string) HORIZONTAL - Fills from left to right as the status bar value increases (default)VERTICAL - Fills from top to bottom as the status bar value increases" }, ]] },
			},
		},
		{
			Name = "SetRotatesTexture",
			Type = "Function",
			-- Documentation = { "Sets whether the status bar's texture is rotated to match its orientation" },

			Arguments =
			{
				{ Name = "rotate", Type = "1nil", Nilable = false --[[ Documentation = { "True to rotate the status bar texture 90 degrees counter-clockwise when the status bar is vertically oriented; false otherwise" }, ]] },
			},
		},
		{
			Name = "SetStatusBarColor",
			Type = "Function",
			-- Documentation = { "Sets the color shading for the status bar's texture" },

			Arguments =
			{
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the graphic (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "SetStatusBarTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture used for drawing the filled-in portion of the status bar" },

			Arguments =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to an existing Texture object" }, ]] },
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image file" }, ]] },
				{ Name = "layer", Type = "string, layer", Nilable = false --[[ Documentation = { "Graphics layer in which the texture should be drawn; defaults to ARTWORK if not specified" }, ]] },
			},
		},
		{
			Name = "SetValue",
			Type = "Function",
			-- Documentation = { "Sets the value of the status bar" },

			Arguments =
			{
				{ Name = "value", Type = "number", Nilable = false --[[ Documentation = { "Value indicating the amount of the status bar's area to be filled in (between minValue and maxValue, where minValue, maxValue = StatusBar:GetMinMaxValues())" }, ]] },
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

APIDocumentation:AddDocumentationTable(StatusBarAPI);

