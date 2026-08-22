local FontStringAPI =
{
	Name = "FontString",
	Type = "ScriptObject",
	-- Documentation = { "A layered region that renders a string of text using a specified font." },
	Inherits =
	{
		"LayeredRegion",
		"FontInstance",
	},

	Functions =
	{
		{
			Name = "CanNonSpaceWrap",
			Type = "Function",
			-- Documentation = { "Returns whether long lines of text will wrap within or between words" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if long lines of text will wrap at any character boundary (i.e possibly in the middle of a word); nil to only wrap at whitespace characters (i.e. only between words)" }, ]] },
			},
		},
		{
			Name = "CanWordWrap",
			Type = "Function",
			-- Documentation = { "Returns whether long lines of text in the font string can wrap onto subsequent lines" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if long lines of text can wrap onto subsequent lines; otherwise nil" }, ]] },
			},
		},
		{
			Name = "GetFieldSize",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "GetIndentedWordWrap",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "GetStringHeight",
			Type = "Function",
			-- Documentation = { "Returns the height of the text displayed in the font string" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "height", Type = "number", Nilable = false --[[ Documentation = { "Height of the text currently displayed in the font string (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetStringWidth",
			Type = "Function",
			-- Documentation = { "Returns the width of the text displayed in the font string" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "width", Type = "number", Nilable = false --[[ Documentation = { "Width of the text currently displayed in the font string (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetText",
			Type = "Function",
			-- Documentation = { "Returns the text currently set for display in the font string" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "text", Type = "string", Nilable = false --[[ Documentation = { "Text to be displayed in the font string" }, ]] },
			},
		},
		{
			Name = "SetAlphaGradient",
			Type = "Function",
			-- Documentation = { "Creates an opacity gradient over the text in the font string" },

			Arguments =
			{
				{ Name = "start", Type = "number", Nilable = false --[[ Documentation = { "Character position in the font string's text at which the gradient should begin (between 0 and string.len(fontString:GetText()) - 6)" }, ]] },
				{ Name = "length", Type = "number", Nilable = false --[[ Documentation = { "Width of the gradient in pixels, or 0 to restore the text to full opacity" }, ]] },
			},
		},
		{
			Name = "SetFormattedText",
			Type = "Function",
			-- Documentation = { "Sets the text displayed in the font string using format specifiers" },

			Arguments =
			{
				{ Name = "formatString", Type = "string", Nilable = false --[[ Documentation = { "A string containing format specifiers (as with string.format())" }, ]] },
				{ Name = "...", Type = "list", Nilable = false --[[ Documentation = { "A list of values to be included in the formatted string" }, ]] },
			},
		},
		{
			Name = "SetIndentedWordWrap",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetNonSpaceWrap",
			Type = "Function",
			-- Documentation = { "Sets whether long lines of text will wrap within or between words" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to wrap long lines of text at any character boundary (i.e possibly in the middle of a word); false to only wrap at whitespace characters (i.e. only between words)" }, ]] },
			},
		},
		{
			Name = "SetText",
			Type = "Function",
			-- Documentation = { "Sets the text to be displayed in the font string" },

			Arguments =
			{
			},
		},
		{
			Name = "SetTextHeight",
			Type = "Function",
			-- Documentation = { "Scales the font string's rendered text to a different height" },

			Arguments =
			{
				{ Name = "height", Type = "number", Nilable = false --[[ Documentation = { "Height (point size) to which the text should be scaled (in pixels)" }, ]] },
			},
		},
		{
			Name = "SetWordWrap",
			Type = "Function",
			-- Documentation = { "Sets whether long lines of text in the font string can wrap onto subsequent lines" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to allow long lines of text in the font string to wrap onto subsequent lines; false to disallow" }, ]] },
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

APIDocumentation:AddDocumentationTable(FontStringAPI);

