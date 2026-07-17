local ButtonAPI =
{
	Name = "Button",
	Type = "ScriptObject",
	-- Documentation = { "A clickable frame that supports normal, pushed, highlighted, and disabled states with text and textures." },
	Inherits =
	{
		"Frame",
	},

	Functions =
	{
		{
			Name = "Click",
			Type = "Function",
			-- Documentation = { "Simulates a click on the given button" },

			Arguments =
			{
				{ Name = "button", Type = "value", Nilable = false --[[ Documentation = { "Name of the mouse button for the click action (string) Button4Button5LeftButtonMiddleButtonRightButton" }, ]] },
				{ Name = "down", Type = "bool", Nilable = false --[[ Documentation = { "True for a \"mouse down\" click action, false for \"mouse up\" or other click actions" }, ]] },
			},
		},
		{
			Name = "Disable",
			Type = "Function",
			-- Documentation = { "Disables the button so it cannot be interacted with" },

			Arguments =
			{
			},
		},
		{
			Name = "Enable",
			Type = "Function",
			-- Documentation = { "Enables the button to receive scripts resulting from interaction with the user" },

			Arguments =
			{
			},
		},
		{
			Name = "GetButtonState",
			Type = "Function",
			-- Documentation = { "Returns the buton's current state: \"NORMAL\", \"PUSHED\", or \"DISABLED\"." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "state", Type = "as during a click on the button", Nilable = false --[[ Documentation = { "State of the button (string) DISABLED - Button is disabled and cannot receive user inputNORMAL - Button is in its normal statePUSHED - Button is pushed" }, ]] },
			},
		},
		{
			Name = "GetDisabledFontObject",
			Type = "Function",
			-- Documentation = { "Returns the Font object used when the button is in the DISABLED state" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "font", Type = "font", Nilable = false --[[ Documentation = { "Reference to the Font object used when the button is disabled" }, ]] },
			},
		},
		{
			Name = "GetDisabledTexture",
			Type = "Function",
			-- Documentation = { "Returns the texture object that is displayed when the button is in the DISABLED state" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to the Texture object used when the button is disabled" }, ]] },
			},
		},
		{
			Name = "GetFontString",
			Type = "Function",
			-- Documentation = { "Returns the FontString object that is used for the button's label." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "fontstring", Type = "fontstring", Nilable = false --[[ Documentation = { "Reference to the FontString object used for the button's label text" }, ]] },
			},
		},
		{
			Name = "GetHighlightFontObject",
			Type = "Function",
			-- Documentation = { "Returns the font object used for the button's highlight text" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "font", Type = "font", Nilable = false --[[ Documentation = { "Reference to the Font object used when the button is highlighted" }, ]] },
			},
		},
		{
			Name = "GetHighlightTexture",
			Type = "Function",
			-- Documentation = { "Returns the Texture object that is displayed when the button is highlighted." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to the Texture object used when the button is highlighted" }, ]] },
			},
		},
		{
			Name = "GetNormalFontObject",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "font", Type = "font", Nilable = false --[[ Documentation = { "Reference to the Font object used for the button's normal state" }, ]] },
			},
		},
		{
			Name = "GetNormalTexture",
			Type = "Function",
			-- Documentation = { "Returns the Texture object that is displayed when the button is in its normal state." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to the Texture object used for the button's normal state" }, ]] },
			},
		},
		{
			Name = "GetPushedTextOffset",
			Type = "Function",
			-- Documentation = { "Returns the text offset for when the button is in the PUSHED state." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "x", Type = "number", Nilable = false --[[ Documentation = { "Horizontal offset for the text (in pixels; values increasing to the right)" }, ]] },
				{ Name = "y", Type = "number", Nilable = false --[[ Documentation = { "Vertical offset for the text (in pixels; values increasing upward)" }, ]] },
			},
		},
		{
			Name = "GetPushedTexture",
			Type = "Function",
			-- Documentation = { "Returns the texture that is displayed when the button is in the PUSHED state" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to the Texture object used when the button is pushed" }, ]] },
			},
		},
		{
			Name = "GetText",
			Type = "Function",
			-- Documentation = { "Returns the text of the button's label" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "text", Type = "string", Nilable = false --[[ Documentation = { "Text of the button's label" }, ]] },
			},
		},
		{
			Name = "GetTextHeight",
			Type = "Function",
			-- Documentation = { "Returns the height of the button's text" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "height", Type = "number", Nilable = false --[[ Documentation = { "Height of the button's text (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetTextWidth",
			Type = "Function",
			-- Documentation = { "Returns the width of the button's label" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "width", Type = "number", Nilable = false --[[ Documentation = { "Width of the button's text (in pixels)" }, ]] },
			},
		},
		{
			Name = "IsEnabled",
			Type = "Function",
			-- Documentation = { "Returns if the button is enabled" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if user interaction with the button is allowed; otherwise nil" }, ]] },
			},
		},
		{
			Name = "LockHighlight",
			Type = "Function",
			-- Documentation = { "Locks the button's highlight state, so it is always drawn as highlighted" },

			Arguments =
			{
			},
		},
		{
			Name = "RegisterForClicks",
			Type = "Function",
			-- Documentation = { "Registers a button to receive mouse clicks" },

			Arguments =
			{
				{ Name = "...", Type = "value", Nilable = false --[[ Documentation = { "A list of strings, each the combination of a button name and click action for which the button's click-related script handlers should be run. Possible values: (list) Button4DownButton4UpButton5DownButton5UpLeftButtonDownLeftButtonUpMiddleButtonDownMiddleButtonUpRightButtonDownRightButtonUpAnyDown - Responds to the down action of any mouse buttonAnyUp - Responds to the up action of any mouse button" }, ]] },
			},
		},
		{
			Name = "SetButtonState",
			Type = "Function",
			-- Documentation = { "Sets a button's state, optionally locking it into that state" },

			Arguments =
			{
				{ Name = "state", Type = "as during a click on the button", Nilable = false --[[ Documentation = { "State for the button (string) DISABLED - Button is disabled and cannot receive user inputNORMAL - Button is in its normal statePUSHED - Button is pushed" }, ]] },
				{ Name = "lock", Type = "bool", Nilable = false --[[ Documentation = { "Locks the button in the given state; e.g. if NORMAL, the button cannot be clicked but remains in the NORMAL state" }, ]] },
			},
		},
		{
			Name = "SetDisabledFontObject",
			Type = "Function",
			-- Documentation = { "Sets the font object to be used when the button is disabled" },

			Arguments =
			{
				{ Name = "font", Type = "font", Nilable = false --[[ Documentation = { "Reference to a Font object to be used when the button is disabled" }, ]] },
			},
		},
		{
			Name = "SetDisabledTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture to be used when the button is disabled" },

			Arguments =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to an existing Texture object" }, ]] },
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image file" }, ]] },
			},
		},
		{
			Name = "SetFontString",
			Type = "Function",
			-- Documentation = { "Sets the button's label FontString" },

			Arguments =
			{
				{ Name = "fontstring", Type = "fontstring", Nilable = false --[[ Documentation = { "Reference to a FontString object to be used for the button's label text" }, ]] },
			},
		},
		{
			Name = "SetFormattedText",
			Type = "Function",
			-- Documentation = { "Sets the button's label, using a format string and arguments" },

			Arguments =
			{
				{ Name = "fmt", Type = "string", Nilable = false --[[ Documentation = { "A format string to be passed to string.format()" }, ]] },
				{ Name = "...", Type = "values", Nilable = false --[[ Documentation = { "A list of arguments to the string.format() function corresponding to the specified format string" }, ]] },
			},
		},
		{
			Name = "SetHighlightFontObject",
			Type = "Function",
			-- Documentation = { "Sets the font object to be used for the button's highlight text" },

			Arguments =
			{
				{ Name = "font", Type = "font", Nilable = false --[[ Documentation = { "Reference to a Font object to be used when the button is highlighted" }, ]] },
			},
		},
		{
			Name = "SetHighlightTexture",
			Type = "Function",
			-- Documentation = { "Sets the highlight texture and blend mode for the button" },

			Arguments =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to an existing Texture object" }, ]] },
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image file" }, ]] },
				{ Name = "mode", Type = "value", Nilable = false --[[ Documentation = { "Blend mode for the texture; defaults to ADD if omitted (string) ADD - Adds texture color values to the underlying color values, using the alpha channel; light areas in the texture lighten the background while dark areas are more transparentALPHAKEY - One-bit transparency; pixels with alpha values greater than ~0.8 are treated as fully opaque and all other pixels are treated as fully transparentBLEND - Normal color blending, using any alpha channel in the texture imageDISABLE - Ignores any alpha channel, displaying the texture as fully opaqueMOD - Ignores any alpha channel in the texture and multiplies texture color values by background color values; dark areas in the texture darken the background while light areas are more transparent" }, ]] },
			},
		},
		{
			Name = "SetNormalFontObject",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
				{ Name = "font", Type = "font", Nilable = false --[[ Documentation = { "Reference to a Font object to be used in the button's normal state" }, ]] },
			},
		},
		{
			Name = "SetNormalTexture",
			Type = "Function",
			-- Documentation = { "Sets a buttons normal texture" },

			Arguments =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to an existing Texture object" }, ]] },
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image file" }, ]] },
			},
		},
		{
			Name = "SetPushedTextOffset",
			Type = "Function",
			-- Documentation = { "Sets the offset for the button's label when the button is pushed" },

			Arguments =
			{
				{ Name = "x", Type = "number", Nilable = false --[[ Documentation = { "Horizontal offset for the text (in pixels; values increasing to the right)" }, ]] },
				{ Name = "y", Type = "number", Nilable = false --[[ Documentation = { "Vertical offset for the text (in pixels; values increasing upward)" }, ]] },
			},
		},
		{
			Name = "SetPushedTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture to be used when the button is in the PUSHED state" },

			Arguments =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to an existing Texture object" }, ]] },
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image file" }, ]] },
			},
		},
		{
			Name = "SetText",
			Type = "Function",
			-- Documentation = { "Sets the text to be displayed on the button's label" },

			Arguments =
			{
				{ Name = "text", Type = "string", Nilable = false --[[ Documentation = { "Text to be displayed as the button's label" }, ]] },
			},
		},
		{
			Name = "UnlockHighlight",
			Type = "Function",
			-- Documentation = { "Unlocks the button's highlight state, so it operates normally" },

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

APIDocumentation:AddDocumentationTable(ButtonAPI);

