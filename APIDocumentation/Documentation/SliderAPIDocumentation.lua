local SliderAPI =
{
	Name = "Slider",
	Type = "ScriptObject",
	-- Documentation = { "A frame with a draggable thumb for selecting a value within a range." },
	Inherits =
	{
		"Frame",
	},

	Functions =
	{
		{
			Name = "Disable",
			Type = "Function",
			-- Documentation = { "Disallows user interaction with the slider" },

			Arguments =
			{
			},
		},
		{
			Name = "Enable",
			Type = "Function",
			-- Documentation = { "Allows user interaction with the slider" },

			Arguments =
			{
			},
		},
		{
			Name = "GetMinMaxValues",
			Type = "Function",
			-- Documentation = { "Returns the minimum and maximum values for the slider" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "minValue", Type = "number", Nilable = false --[[ Documentation = { "Lower boundary for values represented by the slider position" }, ]] },
				{ Name = "maxValue", Type = "number", Nilable = false --[[ Documentation = { "Upper boundary for values represented by the slider position" }, ]] },
			},
		},
		{
			Name = "GetOrientation",
			Type = "Function",
			-- Documentation = { "Returns the orientation of the slider" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "orientation", Type = "value", Nilable = false --[[ Documentation = { "Token describing the orientation and direction of the slider (string) HORIZONTAL - Slider thumb moves from left to right as the slider's value increasesVERTICAL - Slider thumb moves from top to bottom as the slider's value increases" }, ]] },
			},
		},
		{
			Name = "GetThumbTexture",
			Type = "Function",
			-- Documentation = { "Returns the texture for the slider thumb" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to the Texture object used for the slider thumb" }, ]] },
			},
		},
		{
			Name = "GetValue",
			Type = "Function",
			-- Documentation = { "Returns the value representing the current position of the slider thumb" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "value", Type = "number", Nilable = false --[[ Documentation = { "Value representing the current position of the slider thumb (between minValue and maxValue, where minValue, maxValue = slider:GetMinMaxValues())" }, ]] },
			},
		},
		{
			Name = "GetValueStep",
			Type = "Function",
			-- Documentation = { "Returns the minimum increment between allowed slider values" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "step", Type = "number", Nilable = false --[[ Documentation = { "Minimum increment between allowed slider values" }, ]] },
			},
		},
		{
			Name = "IsEnabled",
			Type = "Function",
			-- Documentation = { "Returns whether user interaction with the slider is allowed" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if user interaction with the slider is allowed; otherwise nil" }, ]] },
			},
		},
		{
			Name = "SetMinMaxValues",
			Type = "Function",
			-- Documentation = { "Sets the minimum and maximum values for the slider" },

			Arguments =
			{
				{ Name = "minValue", Type = "number", Nilable = false --[[ Documentation = { "Lower boundary for values represented by the slider position" }, ]] },
				{ Name = "maxValue", Type = "number", Nilable = false --[[ Documentation = { "Upper boundary for values represented by the slider position" }, ]] },
			},
		},
		{
			Name = "SetOrientation",
			Type = "Function",
			-- Documentation = { "Sets the orientation of the slider" },

			Arguments =
			{
				{ Name = "orientation", Type = "default", Nilable = false --[[ Documentation = { "Token describing the orientation and direction of the slider (string) HORIZONTAL - Slider thumb moves from left to right as the slider's value increasesVERTICAL - Slider thumb moves from top to bottom as the slider's value increases" }, ]] },
			},
		},
		{
			Name = "SetThumbTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture for the slider thumb" },

			Arguments =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to an existing Texture object" }, ]] },
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image file" }, ]] },
				{ Name = "layer", Type = "string, layer", Nilable = false --[[ Documentation = { "Graphics layer in which the texture should be drawn; defaults to ARTWORK if not specified" }, ]] },
			},
		},
		{
			Name = "SetValue",
			Type = "Function",
			-- Documentation = { "Sets the value representing the position of the slider thumb" },

			Arguments =
			{
				{ Name = "value", Type = "number", Nilable = false --[[ Documentation = { "Value representing the new position of the slider thumb (between minValue and maxValue, where minValue, maxValue = slider:GetMinMaxValues())" }, ]] },
			},
		},
		{
			Name = "SetValueStep",
			Type = "Function",
			-- Documentation = { "Sets the minimum increment between allowed slider values" },

			Arguments =
			{
				{ Name = "step", Type = "number", Nilable = false --[[ Documentation = { "Minimum increment between allowed slider values" }, ]] },
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

APIDocumentation:AddDocumentationTable(SliderAPI);

