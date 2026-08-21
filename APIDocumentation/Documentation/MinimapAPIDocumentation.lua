local MinimapAPI =
{
	Name = "Minimap",
	Type = "ScriptObject",
	-- Documentation = { "The minimap frame that displays a top-down view of the area around the player." },
	Inherits =
	{
		"Frame",
	},

	Functions =
	{
		{
			Name = "GetPingPosition",
			Type = "Function",
			-- Documentation = { "Returns the location of the last \"ping\" on the minimap" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "x", Type = "number", Nilable = false --[[ Documentation = { "Horizontal coordinate of the \"ping\" position" }, ]] },
				{ Name = "y", Type = "number", Nilable = false --[[ Documentation = { "Vertical coordinate of the \"ping\" position" }, ]] },
			},
		},
		{
			Name = "GetZoom",
			Type = "Function",
			-- Documentation = { "Returns the minimap's current zoom level" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "zoomLevel", Type = "number", Nilable = false --[[ Documentation = { "Index of the current zoom level (between 0 for the widest possible zoom and (minimap:GetZoomLevels()- 1) for the narrowest possible zoom)" }, ]] },
			},
		},
		{
			Name = "GetZoomLevels",
			Type = "Function",
			-- Documentation = { "Returns the number of available zoom settings for the minimap" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "zoomLevels", Type = "number", Nilable = false --[[ Documentation = { "Number of available zoom settings for the minimap" }, ]] },
			},
		},
		{
			Name = "PingLocation",
			Type = "Function",
			-- Documentation = { "\"Pings\" the minimap at a given location" },

			Arguments =
			{
				{ Name = "x", Type = "number", Nilable = false --[[ Documentation = { "Horizontal coordinate of the \"ping\" position (in pixels)" }, ]] },
				{ Name = "y", Type = "number", Nilable = false --[[ Documentation = { "Vertical coordinate of the \"ping\" position (in pixels)" }, ]] },
			},
		},
		{
			Name = "SetBlipTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture used to display quest and tracking icons on the minimap" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture containing display quest and tracking icons for the minimap" }, ]] },
			},
		},
		{
			Name = "SetClassBlipTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture used to display party and raid members on the minimap" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture containing icons for party and raid members" }, ]] },
			},
		},
		{
			Name = "SetCorpsePOIArrowTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture used to the player's corpse when located beyond the scope of the minimap" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image" }, ]] },
			},
		},
		{
			Name = "SetIconTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture used to display various points of interest on the minimap" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture containing icons for various map landmarks" }, ]] },
			},
		},
		{
			Name = "SetMaskTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture used to mask the shape of the minimap" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture used to mask the shape of the minimap" }, ]] },
			},
		},
		{
			Name = "SetPOIArrowTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture used to represent points of interest located beyond the scope of the minimap" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image" }, ]] },
			},
		},
		{
			Name = "SetPlayerTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture used to represent the player on the minimap" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image" }, ]] },
			},
		},
		{
			Name = "SetPlayerTextureHeight",
			Type = "Function",
			-- Documentation = { "Sets the height of the texture used to represent the player on the minimap" },

			Arguments =
			{
				{ Name = "height", Type = "number", Nilable = false --[[ Documentation = { "Height of the texture used to represent the player on the minimap" }, ]] },
			},
		},
		{
			Name = "SetPlayerTextureWidth",
			Type = "Function",
			-- Documentation = { "Sets the width of the texture used to represent the player on the minimap" },

			Arguments =
			{
				{ Name = "width", Type = "number", Nilable = false --[[ Documentation = { "Width of the texture used to represent the player on the minimap" }, ]] },
			},
		},
		{
			Name = "SetStaticPOIArrowTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture used to represent static points of interest located beyond the scope of the minimap" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image" }, ]] },
			},
		},
		{
			Name = "SetZoom",
			Type = "Function",
			-- Documentation = { "Sets the minimap's zoom level" },

			Arguments =
			{
				{ Name = "zoomLevel", Type = "number", Nilable = false --[[ Documentation = { "Index of a zoom level (between 0 for the widest possible zoom and (minimap:GetZoomLevels()- 1) for the narrowest possible zoom)" }, ]] },
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

APIDocumentation:AddDocumentationTable(MinimapAPI);

