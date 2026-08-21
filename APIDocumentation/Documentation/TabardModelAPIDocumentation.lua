local TabardModelAPI =
{
	Name = "TabardModel",
	Type = "ScriptObject",
	-- Documentation = { "A model frame used to preview tabard designs with custom emblems and colors." },
	Inherits =
	{
		"PlayerModel",
	},

	Functions =
	{
		{
			Name = "CanSaveTabardNow",
			Type = "Function",
			-- Documentation = { "Returns whether the tabard model's current design can be saved as the player's guild tabard" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the tabard model's current design can be saved as the player's guild tabard; otherwise nil" }, ]] },
			},
		},
		{
			Name = "CycleVariation",
			Type = "Function",
			-- Documentation = { "Cycles through available design variations for the tabard model" },

			Arguments =
			{
				{ Name = "variable", Type = "value", Nilable = false --[[ Documentation = { "Number identifying one of the five tabard design variables: (number) 1 - Icon2 - Icon color3 - Border style4 - Border color5 - Background color" }, ]] },
				{ Name = "delta", Type = "number", Nilable = false --[[ Documentation = { "Number of steps by which to cycle through available options for the design variable (e.g. 1 for next design, -1 for previous design, 3 to skip ahead by three)" }, ]] },
			},
		},
		{
			Name = "GetLowerBackgroundFileName",
			Type = "Function",
			-- Documentation = { "Returns the image file for the lower portion of the tabard model's current background design" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to the texture image file for the lower portion of the tabard model's current background design" }, ]] },
			},
		},
		{
			Name = "GetLowerEmblemFileName",
			Type = "Function",
			-- Documentation = { "Returns the image file for the lower portion of the tabard model's current emblem design" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to the texture image file for the lower portion of the tabard model's current emblem design" }, ]] },
			},
		},
		{
			Name = "GetLowerEmblemTexture",
			Type = "Function",
			-- Documentation = { "Sets a `Texture` object to display the lower portion of the tabard model's current emblem design" },

			Arguments =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to a Texture object" }, ]] },
			},
		},
		{
			Name = "GetUpperBackgroundFileName",
			Type = "Function",
			-- Documentation = { "Returns the image file for the upper portion of the tabard model's current background design" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to the texture image file for the upper portion of the tabard model's current background design" }, ]] },
			},
		},
		{
			Name = "GetUpperEmblemFileName",
			Type = "Function",
			-- Documentation = { "Returns the image file for the upper portion of the tabard model's current emblem design" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to the texture image file for the upper portion of the tabard model's current emblem design" }, ]] },
			},
		},
		{
			Name = "GetUpperEmblemTexture",
			Type = "Function",
			-- Documentation = { "Sets a `Texture` object to display the upper portion of the tabard model's current emblem design" },

			Arguments =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to a Texture object" }, ]] },
			},
		},
		{
			Name = "InitializeTabardColors",
			Type = "Function",
			-- Documentation = { "Sets the tabard model's design to match the player's guild tabard" },

			Arguments =
			{
			},
		},
		{
			Name = "Save",
			Type = "Function",
			-- Documentation = { "Saves the current tabard model design as the player's guild tabard" },

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

APIDocumentation:AddDocumentationTable(TabardModelAPI);

