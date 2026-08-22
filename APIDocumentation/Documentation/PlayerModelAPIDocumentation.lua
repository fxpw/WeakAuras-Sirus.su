local PlayerModelAPI =
{
	Name = "PlayerModel",
	Type = "ScriptObject",
	-- Documentation = { "A model frame specifically designed to display player character models." },
	Inherits =
	{
		"Model",
	},

	Functions =
	{
		{
			Name = "RefreshCamera",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "RefreshUnit",
			Type = "Function",
			-- Documentation = { "Updates the model's appearance to match that of its unit" },

			Arguments =
			{
			},
		},
		{
			Name = "SetBarberShopAlternateForm",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetCamDistanceScale",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetCreature",
			Type = "Function",
			-- Documentation = { "Sets the model to display the 3D model of a specific creature" },

			Arguments =
			{
				{ Name = "creature", Type = "number", Nilable = false --[[ Documentation = { "Numeric ID of a creature" }, ]] },
			},
		},
		{
			Name = "SetCustomRace",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetDisplayInfo",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetPortraitZoom",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetRotation",
			Type = "Function",
			-- Documentation = { "Sets the model's current rotation by animating the model" },

			Arguments =
			{
				{ Name = "facing", Type = "number", Nilable = false --[[ Documentation = { "Rotation angle for the model (in radians)" }, ]] },
			},
		},
		{
			Name = "SetUnit",
			Type = "Function",
			-- Documentation = { "Sets the model to display the 3D model of a specific unit" },

			Arguments =
			{
				{ Name = "unit", Type = "string, unitid", Nilable = false --[[ Documentation = { "Unit ID of a visible unit" }, ]] },
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

APIDocumentation:AddDocumentationTable(PlayerModelAPI);

