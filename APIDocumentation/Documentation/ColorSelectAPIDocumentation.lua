local ColorSelectAPI =
{
	Name = "ColorSelect",
	Type = "ScriptObject",
	-- Documentation = { "A frame that provides an interactive color picker using a color wheel and value slider." },
	Inherits =
	{
		"Frame",
	},

	Functions =
	{
		{
			Name = "GetColorHSV",
			Type = "Function",
			-- Documentation = { "Returns the hue, saturation and value of the currently selected color" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "hue", Type = "number", Nilable = false --[[ Documentation = { "Hue of the selected color (angle on the color wheel in degrees; 0 = red, increasing counter-clockwise)" }, ]] },
				{ Name = "saturation", Type = "number", Nilable = false --[[ Documentation = { "Saturation of the selected color (0.0 - 1.0)" }, ]] },
				{ Name = "value", Type = "number", Nilable = false --[[ Documentation = { "Value of the selected color (0.0 - 1.0)" }, ]] },
			},
		},
		{
			Name = "GetColorRGB",
			Type = "Function",
			-- Documentation = { "Returns the red, green and blue components of the currently selected color" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color (0.0 - 1.0)" }, ]] },
			},
		},
		{
			Name = "GetColorValueTexture",
			Type = "Function",
			-- Documentation = { "Returns the texture for the color picker's value slider background" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to the Texture object used for drawing the value slider background" }, ]] },
			},
		},
		{
			Name = "GetColorValueThumbTexture",
			Type = "Function",
			-- Documentation = { "Returns the texture for the color picker's value slider thumb" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to the Texture object used for drawing the slider thumb" }, ]] },
			},
		},
		{
			Name = "GetColorWheelTexture",
			Type = "Function",
			-- Documentation = { "Returns the texture for the color picker's hue/saturation wheel" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to the Texture object used for drawing the hue/saturation wheel" }, ]] },
			},
		},
		{
			Name = "GetColorWheelThumbTexture",
			Type = "Function",
			-- Documentation = { "Returns the texture for the selection indicator on the color picker's hue/saturation wheel" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to the Texture object used for drawing the hue/saturation wheel's selection indicator" }, ]] },
			},
		},
		{
			Name = "SetColorHSV",
			Type = "Function",
			-- Documentation = { "Sets the color picker's selected color by hue, saturation and value" },

			Arguments =
			{
				{ Name = "hue", Type = "number", Nilable = false --[[ Documentation = { "Hue of a color (angle on the color wheel in degrees; 0 = red, increasing counter-clockwise)" }, ]] },
				{ Name = "saturation", Type = "number", Nilable = false --[[ Documentation = { "Saturation of a color (0.0 - 1.0)" }, ]] },
				{ Name = "value", Type = "number", Nilable = false --[[ Documentation = { "Value of a color (0.0 - 1.0)" }, ]] },
			},
		},
		{
			Name = "SetColorRGB",
			Type = "Function",
			-- Documentation = { "Sets the color picker's selected color by red, green and blue components" },

			Arguments =
			{
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color (0.0 - 1.0)" }, ]] },
			},
		},
		{
			Name = "SetColorValueTexture",
			Type = "Function",
			-- Documentation = { "Sets the `Texture` object used to display the color picker's value slider" },

			Arguments =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to a Texture object" }, ]] },
			},
		},
		{
			Name = "SetColorValueThumbTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture for the color picker's value slider thumb" },

			Arguments =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to an existing Texture object" }, ]] },
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image file" }, ]] },
			},
		},
		{
			Name = "SetColorWheelTexture",
			Type = "Function",
			-- Documentation = { "Sets the `Texture` object used to display the color picker's hue/saturation wheel" },

			Arguments =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to a Texture object" }, ]] },
			},
		},
		{
			Name = "SetColorWheelThumbTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture for the selection indicator on the color picker's hue/saturation wheel" },

			Arguments =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to an existing Texture object" }, ]] },
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image file" }, ]] },
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
		{
			Name = "GetDontSavePosition",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "GetPropagateKeyboardInput",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetDontSavePosition",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetPropagateKeyboardInput",
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

APIDocumentation:AddDocumentationTable(ColorSelectAPI);

