local CooldownAPI =
{
	Name = "Cooldown",
	Type = "ScriptObject",
	-- Documentation = { "A frame that displays a clock-like sweep animation, commonly used for ability cooldowns." },
	Inherits =
	{
		"Frame",
	},

	Functions =
	{
		{
			Name = "SetCooldown",
			Type = "Function",
			-- Documentation = { "Sets up the parameters for a Cooldown model." },

			Arguments =
			{
			},
		},
		{
			Name = "SetReverse",
			Type = "Function",
			-- Documentation = { "Sets the cooldown model to be animated in reverse." },

			Arguments =
			{
				{ Name = "reverse", Type = "bool", Nilable = false --[[ Documentation = { "True for an animation \"sweeping\" an area of darkness over the underlying image; false for the default animation of darkening the underlying image and \"sweeping\" the darkened area away" }, ]] },
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

APIDocumentation:AddDocumentationTable(CooldownAPI);

