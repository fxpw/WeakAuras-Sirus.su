local MovieFrameAPI =
{
	Name = "MovieFrame",
	Type = "ScriptObject",
	-- Documentation = { "A frame that plays in-game cinematic movie files." },
	Inherits =
	{
		"Frame",
	},

	Functions =
	{
		{
			Name = "EnableSubtitles",
			Type = "Function",
			-- Documentation = { "Enables or disables subtitles for movies played in the frame" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to enable display of movie subtitles; false to disable" }, ]] },
			},
		},
		{
			Name = "StartMovie",
			Type = "Function",
			-- Documentation = { "Plays a specified movie in the frame" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a movie file (excluding filename extension)" }, ]] },
				{ Name = "volume", Type = "number", Nilable = false --[[ Documentation = { "Audio volume for movie playback (0 = minimum, 255 = maximum)" }, ]] },
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if a valid movie was loaded and playback begun; otherwise nil" }, ]] },
			},
		},
		{
			Name = "StopMovie",
			Type = "Function",
			-- Documentation = { "Stops the movie currently playing in the frame" },

			Arguments =
			{
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

APIDocumentation:AddDocumentationTable(MovieFrameAPI);

