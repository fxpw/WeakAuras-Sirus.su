local SimpleHTMLAPI =
{
	Name = "SimpleHTML",
	Type = "ScriptObject",
	-- Documentation = { "A frame that renders formatted HTML-like text content with support for hyperlinks." },
	Inherits =
	{
		"Frame",
		"FontInstance",
	},

	Functions =
	{
		{
			Name = "GetHyperlinkFormat",
			Type = "Function",
			-- Documentation = { "Returns the format string used for displaying hyperlinks in the frame" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "format", Type = "string", Nilable = false --[[ Documentation = { "Format string used for displaying hyperlinks in the frame" }, ]] },
			},
		},
		{
			Name = "GetHyperlinksEnabled",
			Type = "Function",
			-- Documentation = { "Returns whether hyperlinks in the frame's text are interactive" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if hyperlinks in the frame's text are interactive; otherwise nil" }, ]] },
			},
		},
		{
			Name = "GetIndentedWordWrap",
			Type = "Function",
			-- Documentation = { "Returns whether long lines of text are indented when wrapping" },

			Arguments =
			{
				{ Name = "element", Type = "string", Nilable = false --[[ Documentation = { "Name of an HTML element for which to return text style information (e.g. p, h1); if omitted, returns information about the frame's default text style" }, ]] },
			},

			Returns =
			{
				{ Name = "indent", Type = "1nil", Nilable = false --[[ Documentation = { "1 if long lines of text are indented when wrapping; otherwise nil" }, ]] },
			},
		},
		{
			Name = "SetHyperlinkFormat",
			Type = "Function",
			-- Documentation = { "Sets the format string used for displaying hyperlinks in the frame" },

			Arguments =
			{
				{ Name = "format", Type = "string", Nilable = false --[[ Documentation = { "Format string used for displaying hyperlinks in the frame" }, ]] },
			},
		},
		{
			Name = "SetHyperlinksEnabled",
			Type = "Function",
			-- Documentation = { "Enables or disables hyperlink interactivity in the frame" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to enable hyperlink interactivity in the frame; false to disable" }, ]] },
			},
		},
		{
			Name = "SetIndentedWordWrap",
			Type = "Function",
			-- Documentation = { "Sets whether long lines of text are indented when wrapping" },

			Arguments =
			{
				{ Name = "element", Type = "string", Nilable = false --[[ Documentation = { "Name of an HTML element for which to set font properties (e.g. p, h1); if omitted, sets properties for the frame's default font" }, ]] },
				{ Name = "indent", Type = "bool", Nilable = false --[[ Documentation = { "True to indent wrapped lines of text; false otherwise" }, ]] },
			},
		},
		{
			Name = "SetText",
			Type = "Function",
			-- Documentation = { "Sets the text to be displayed in the SimpleHTML frame" },

			Arguments =
			{
				{ Name = "text", Type = "string", Nilable = false --[[ Documentation = { "Text (with HTML markup) to be displayed" }, ]] },
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

APIDocumentation:AddDocumentationTable(SimpleHTMLAPI);

