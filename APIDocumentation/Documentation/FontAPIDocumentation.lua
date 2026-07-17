local FontAPI =
{
	Name = "Font",
	Type = "ScriptObject",
	-- Documentation = { "A virtual object that defines font properties (face, size, style) that can be shared by multiple text objects." },
	Inherits =
	{
		"FontInstance",
	},

	Functions =
	{
		{
			Name = "CopyFontObject",
			Type = "Function",
			-- Documentation = { "Sets the font's properties to match those of another Font object" },

			Arguments =
			{
				{ Name = "object", Type = "font", Nilable = false --[[ Documentation = { "Reference to a Font object" }, ]] },
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "Global name of a Font object" }, ]] },
			},
		},
		{
			Name = "GetAlpha",
			Type = "Function",
			-- Documentation = { "Returns the opacity for text displayed by the font" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) of the text (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
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
			Name = "SetAlpha",
			Type = "Function",
			-- Documentation = { "Sets the opacity for text displayed by the font" },

			Arguments =
			{
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) of the text (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
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
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(FontAPI);

