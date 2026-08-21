local CheckButtonAPI =
{
	Name = "CheckButton",
	Type = "ScriptObject",
	-- Documentation = { "A button that toggles between checked and unchecked states, like a checkbox." },
	Inherits =
	{
		"Button",
	},

	Functions =
	{
		{
			Name = "GetChecked",
			Type = "Function",
			-- Documentation = { "Returns whether the check button is checked" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the button is checked; nil if the button is unchecked" }, ]] },
			},
		},
		{
			Name = "GetCheckedTexture",
			Type = "Function",
			-- Documentation = { "Returns the texture used when the button is checked" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to the Texture object used when the button is checked" }, ]] },
			},
		},
		{
			Name = "GetDisabledCheckedTexture",
			Type = "Function",
			-- Documentation = { "Returns the texture used when the button is disabled and checked" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to the Texture object used when the button is disabled and checked" }, ]] },
			},
		},
		{
			Name = "SetChecked",
			Type = "Function",
			-- Documentation = { "Sets whether the check button is checked" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to check the button; false to uncheck" }, ]] },
			},
		},
		{
			Name = "SetCheckedTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture used when the button is checked" },

			Arguments =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to an existing Texture object" }, ]] },
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image file" }, ]] },
			},
		},
		{
			Name = "SetDisabledCheckedTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture used when the button is disabled and checked" },

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
			Name = "GetMotionScriptsWhileDisabled",
			Type = "Function",
			-- Documentation = { "Determines whether [[docs/scripts/OnEnter|OnEnter]]/[[docs/scripts/OnLeave|OnLeave]] scripts will fire while the button is disabled" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "isEnabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if motion scripts run while hidden; otherwise nil" }, ]] },
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
			Name = "SetMotionScriptsWhileDisabled",
			Type = "Function",
			-- Documentation = { "Sets whether the button should fire [[docs/scripts/OnEnter|OnEnter]]/[[docs/scripts/OnLeave|OnLeave]] events while disabled" },

			Arguments =
			{
				{ Name = "enabled", Type = "bool", Nilable = false --[[ Documentation = { "True to enable the scripts while the button is disabled, false otherwise" }, ]] },
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

APIDocumentation:AddDocumentationTable(CheckButtonAPI);

