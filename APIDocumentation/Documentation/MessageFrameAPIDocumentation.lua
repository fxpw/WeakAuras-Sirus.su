local MessageFrameAPI =
{
	Name = "MessageFrame",
	Type = "ScriptObject",
	-- Documentation = { "A frame that displays scrolling text messages with fade-in/out effects." },
	Inherits =
	{
		"Frame",
		"FontInstance",
	},

	Functions =
	{
		{
			Name = "AddMessage",
			Type = "Function",
			-- Documentation = { "Adds a message to those listed in the frame" },

			Arguments =
			{
				{ Name = "text", Type = "string", Nilable = false --[[ Documentation = { "Text of the message" }, ]] },
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the text color for the message (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the text color for the message (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the text color for the message (0.0 - 1.0)" }, ]] },
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the message (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
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
			Name = "Clear",
			Type = "Function",
			-- Documentation = { "Removes all messages displayed in the frame" },

			Arguments =
			{
			},
		},
		{
			Name = "GetFadeDuration",
			Type = "Function",
			-- Documentation = { "Returns the duration of the fade-out animation for disappearing messages" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "duration", Type = "number", Nilable = false --[[ Documentation = { "Duration of the fade-out animation for disappearing messages (in seconds)" }, ]] },
			},
		},
		{
			Name = "GetFading",
			Type = "Function",
			-- Documentation = { "Returns whether messages added to the frame automatically fade out after a period of time" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "fading", Type = "1nil", Nilable = false --[[ Documentation = { "1 if messages added to the frame automatically fade out after a period of time; otherwise nil" }, ]] },
			},
		},
		{
			Name = "GetIndentedWordWrap",
			Type = "Function",
			-- Documentation = { "Returns whether long lines of text are indented when wrapping" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "indent", Type = "1nil", Nilable = false --[[ Documentation = { "1 if long lines of text are indented when wrapping; otherwise nil" }, ]] },
			},
		},
		{
			Name = "GetInsertMode",
			Type = "Function",
			-- Documentation = { "Returns the position at which new messages are added to the frame" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "position", Type = "value", Nilable = false --[[ Documentation = { "Token identifying the position at which new messages are added to the frame (string) BOTTOMTOP" }, ]] },
			},
		},
		{
			Name = "GetTimeVisible",
			Type = "Function",
			-- Documentation = { "Returns the amount of time for which a message remains visible before beginning to fade out" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "time", Type = "number", Nilable = false --[[ Documentation = { "Amount of time for which a message remains visible before beginning to fade out (in seconds)" }, ]] },
			},
		},
		{
			Name = "SetFadeDuration",
			Type = "Function",
			-- Documentation = { "Sets the duration of the fade-out animation for disappearing messages" },

			Arguments =
			{
				{ Name = "duration", Type = "number", Nilable = false --[[ Documentation = { "Duration of the fade-out animation for disappearing messages (in seconds)" }, ]] },
			},
		},
		{
			Name = "SetFading",
			Type = "Function",
			-- Documentation = { "Sets whether messages added to the frame automatically fade out after a period of time" },

			Arguments =
			{
				{ Name = "fading", Type = "bool", Nilable = false --[[ Documentation = { "True to cause messages added to the frame to automatically fade out after a period of time; false to leave message visible" }, ]] },
			},
		},
		{
			Name = "SetIndentedWordWrap",
			Type = "Function",
			-- Documentation = { "Sets whether long lines of text are indented when wrapping" },

			Arguments =
			{
				{ Name = "indent", Type = "bool", Nilable = false --[[ Documentation = { "True to indent wrapped lines of text; false otherwise" }, ]] },
			},
		},
		{
			Name = "SetInsertMode",
			Type = "Function",
			-- Documentation = { "Sets the position at which new messages are added to the frame" },

			Arguments =
			{
				{ Name = "position", Type = "value", Nilable = false --[[ Documentation = { "Token identifying the position at which new messages should be added to the frame (string) BOTTOMTOP" }, ]] },
			},
		},
		{
			Name = "SetTimeVisible",
			Type = "Function",
			-- Documentation = { "Sets the amount of time for which a message remains visible before beginning to fade out" },

			Arguments =
			{
				{ Name = "time", Type = "number", Nilable = false --[[ Documentation = { "Amount of time for which a message remains visible before beginning to fade out (in seconds)" }, ]] },
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

APIDocumentation:AddDocumentationTable(MessageFrameAPI);

