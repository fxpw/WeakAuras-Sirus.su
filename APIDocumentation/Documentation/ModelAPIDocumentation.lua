local ModelAPI =
{
	Name = "Model",
	Type = "ScriptObject",
	-- Documentation = { "A frame that renders 3D models from the game data files." },
	Inherits =
	{
		"Frame",
	},

	Functions =
	{
		{
			Name = "AdvanceTime",
			Type = "Function",
			-- Documentation = { "Advances to the model's next animation frame" },

			Arguments =
			{
			},
		},
		{
			Name = "ClearFog",
			Type = "Function",
			-- Documentation = { "Disables fog display for the model." },

			Arguments =
			{
			},
		},
		{
			Name = "ClearModel",
			Type = "Function",
			-- Documentation = { "Removes the 3D model currently displayed" },

			Arguments =
			{
			},
		},
		{
			Name = "GetFacing",
			Type = "Function",
			-- Documentation = { "Returns the model's current rotation setting" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "facing", Type = "number", Nilable = false --[[ Documentation = { "Current rotation angle of the model (in radians)" }, ]] },
			},
		},
		{
			Name = "GetFogColor",
			Type = "Function",
			-- Documentation = { "Returns the model's current fog color" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color (0.0 - 1.0)" }, ]] },
			},
		},
		{
			Name = "GetFogFar",
			Type = "Function",
			-- Documentation = { "Returns the far clipping distance for the model's fog." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "distance", Type = "number", Nilable = false --[[ Documentation = { "The distance to the fog far clipping plane" }, ]] },
			},
		},
		{
			Name = "GetFogNear",
			Type = "Function",
			-- Documentation = { "Returns the near clipping distance for the model's fog." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "distance", Type = "number", Nilable = false --[[ Documentation = { "The distance to the fog near clipping plane" }, ]] },
			},
		},
		{
			Name = "GetLight",
			Type = "Function",
			-- Documentation = { "Returns properties of the light sources used when rendering the model" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if lighting is enabled; otherwise nil" }, ]] },
				{ Name = "omni", Type = "number", Nilable = false --[[ Documentation = { "1 if omnidirectional lighting is enabled; otherwise 0" }, ]] },
				{ Name = "dirX", Type = "number", Nilable = false --[[ Documentation = { "Coordinate of the directional light in the axis perpendicular to the screen (negative values place the light in front of the model, positive values behind)" }, ]] },
				{ Name = "dirY", Type = "number", Nilable = false --[[ Documentation = { "Coordinate of the directional light in the horizontal axis (negative values place the light to the left of the model, positive values to the right)" }, ]] },
				{ Name = "dirZ", Type = "negative values place the light below the model, positive values above (number", Nilable = false --[[ Documentation = { "Coordinate of the directional light in the vertical axis (negative values place the light below the model, positive values above" }, ]] },
				{ Name = "ambIntensity", Type = "number", Nilable = false --[[ Documentation = { "Intensity of the ambient light (0.0 - 1.0)" }, ]] },
				{ Name = "ambR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the ambient light color (0.0 - 1.0); omitted if ambIntensity is 0" }, ]] },
				{ Name = "ambG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the ambient light color (0.0 - 1.0); omitted if ambIntensity is 0" }, ]] },
				{ Name = "ambB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the ambient light color (0.0 - 1.0); omitted if ambIntensity is 0" }, ]] },
				{ Name = "dirIntensity", Type = "number", Nilable = false --[[ Documentation = { "Intensity of the directional light (0.0 - 1.0)" }, ]] },
				{ Name = "dirR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the directional light color (0.0 - 1.0); omitted if dirIntensity is 0" }, ]] },
				{ Name = "dirG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the directional light color (0.0 - 1.0); omitted if dirIntensity is 0" }, ]] },
				{ Name = "dirB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the directional light color (0.0 - 1.0); omitted if dirIntensity is 0" }, ]] },
			},
		},
		{
			Name = "GetModel",
			Type = "Function",
			-- Documentation = { "Returns the model file currently displayed" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to the model file currently displayed" }, ]] },
			},
		},
		{
			Name = "GetModelScale",
			Type = "Function",
			-- Documentation = { "Returns the scale factor determining the size at which the 3D model appears" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "scale", Type = "number", Nilable = false --[[ Documentation = { "Scale factor determining the size at which the 3D model appears" }, ]] },
			},
		},
		{
			Name = "GetPosition",
			Type = "Function",
			-- Documentation = { "Returns the position of the 3D model within the frame" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "x", Type = "number", Nilable = false --[[ Documentation = { "Position of the model on the axis perpendicular to the plane of the screen (positive values make the model appear closer to the viewer; negative values place it further away)" }, ]] },
				{ Name = "y", Type = "number", Nilable = false --[[ Documentation = { "Position of the model on the horizontal axis (positive values place the model to the right of its default position; negative values place it to the left)" }, ]] },
				{ Name = "z", Type = "number", Nilable = false --[[ Documentation = { "Position of the model on the vertical axis (positive values place the model above its default position; negative values place it below)" }, ]] },
			},
		},
		{
			Name = "ReplaceIconTexture",
			Type = "Function",
			-- Documentation = { "Sets the icon texture used by the model" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to an icon texture for use in the model" }, ]] },
			},
		},
		{
			Name = "SetCamera",
			Type = "Function",
			-- Documentation = { "Sets the view angle on the model to a pre-defined camera location" },

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of a camera view defined by the model file" }, ]] },
			},
		},
		{
			Name = "SetFacing",
			Type = "Function",
			-- Documentation = { "Sets the model's current rotation" },

			Arguments =
			{
				{ Name = "facing", Type = "number", Nilable = false --[[ Documentation = { "Rotation angle for the model (in radians)" }, ]] },
			},
		},
		{
			Name = "SetFogColor",
			Type = "Function",
			-- Documentation = { "Sets the model's fog color, enabling fog display if disabled" },

			Arguments =
			{
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color (0.0 - 1.0)" }, ]] },
			},
		},
		{
			Name = "SetFogFar",
			Type = "Function",
			-- Documentation = { "Sets the far clipping distance for the model's fog." },

			Arguments =
			{
				{ Name = "distance", Type = "number", Nilable = false --[[ Documentation = { "The distance to the fog far clipping plane" }, ]] },
			},
		},
		{
			Name = "SetFogNear",
			Type = "Function",
			-- Documentation = { "Sets the near clipping distance for the model's fog." },

			Arguments =
			{
				{ Name = "distance", Type = "number", Nilable = false --[[ Documentation = { "The distance to the fog near clipping plane" }, ]] },
			},
		},
		{
			Name = "SetGlow",
			Type = "Function",
			-- Documentation = { "Sets the model's glow amount" },

			Arguments =
			{
				{ Name = "amount", Type = "number", Nilable = false --[[ Documentation = { "Glow amount for the model" }, ]] },
			},
		},
		{
			Name = "SetLight",
			Type = "Function",
			-- Documentation = { "Sets properties of the light sources used when rendering the model" },

			Arguments =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if lighting is enabled; otherwise nil" }, ]] },
				{ Name = "omni", Type = "number", Nilable = false --[[ Documentation = { "1 if omnidirectional lighting is enabled; otherwise 0" }, ]] },
				{ Name = "dirX", Type = "number", Nilable = false --[[ Documentation = { "Coordinate of the directional light in the axis perpendicular to the screen (negative values place the light in front of the model, positive values behind)" }, ]] },
				{ Name = "dirY", Type = "number", Nilable = false --[[ Documentation = { "Coordinate of the directional light in the horizontal axis (negative values place the light to the left of the model, positive values to the right)" }, ]] },
				{ Name = "dirZ", Type = "negative values place the light below the model, positive values above (number", Nilable = false --[[ Documentation = { "Coordinate of the directional light in the vertical axis (negative values place the light below the model, positive values above" }, ]] },
				{ Name = "ambIntensity", Type = "number", Nilable = false --[[ Documentation = { "Intensity of the ambient light (0.0 - 1.0)" }, ]] },
				{ Name = "ambR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the ambient light color (0.0 - 1.0); omitted if ambIntensity is 0" }, ]] },
				{ Name = "ambG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the ambient light color (0.0 - 1.0); omitted if ambIntensity is 0" }, ]] },
				{ Name = "ambB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the ambient light color (0.0 - 1.0); omitted if ambIntensity is 0" }, ]] },
				{ Name = "dirIntensity", Type = "number", Nilable = false --[[ Documentation = { "Intensity of the directional light (0.0 - 1.0)" }, ]] },
				{ Name = "dirR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the directional light color (0.0 - 1.0); omitted if dirIntensity is 0" }, ]] },
				{ Name = "dirG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the directional light color (0.0 - 1.0); omitted if dirIntensity is 0" }, ]] },
				{ Name = "dirB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the directional light color (0.0 - 1.0); omitted if dirIntensity is 0" }, ]] },
			},
		},
		{
			Name = "SetModel",
			Type = "Function",
			-- Documentation = { "Sets the model file to be displayed" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to the model file to be displayed" }, ]] },
			},
		},
		{
			Name = "SetModelScale",
			Type = "Function",
			-- Documentation = { "Sets the scale factor determining the size at which the 3D model appears" },

			Arguments =
			{
				{ Name = "scale", Type = "number", Nilable = false --[[ Documentation = { "Scale factor determining the size at which the 3D model appears" }, ]] },
			},
		},
		{
			Name = "SetPosition",
			Type = "Function",
			-- Documentation = { "Sets the position of the 3D model within the frame" },

			Arguments =
			{
				{ Name = "x", Type = "number", Nilable = false --[[ Documentation = { "Position of the model on the axis perpendicular to the plane of the screen (positive values make the model appear closer to the viewer; negative values place it further away)" }, ]] },
				{ Name = "y", Type = "number", Nilable = false --[[ Documentation = { "Position of the model on the horizontal axis (positive values place the model to the right of its default position; negative values place it to the left)" }, ]] },
				{ Name = "z", Type = "number", Nilable = false --[[ Documentation = { "Position of the model on the vertical axis (positive values place the model above its default position; negative values place it below)" }, ]] },
			},
		},
		{
			Name = "SetSequence",
			Type = "Function",
			-- Documentation = { "Sets the animation sequence to be used by the model" },

			Arguments =
			{
				{ Name = "sequence", Type = "number", Nilable = false --[[ Documentation = { "Index of an animation sequence defined by the model file" }, ]] },
			},
		},
		{
			Name = "SetSequenceTime",
			Type = "Function",
			-- Documentation = { "Sets the animation sequence and time index to be used by the model" },

			Arguments =
			{
				{ Name = "sequence", Type = "number", Nilable = false --[[ Documentation = { "Index of an animation sequence defined by the model file" }, ]] },
				{ Name = "time", Type = "number", Nilable = false --[[ Documentation = { "Time index within the sequence" }, ]] },
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

APIDocumentation:AddDocumentationTable(ModelAPI);

