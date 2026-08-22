local EditBoxAPI =
{
	Name = "EditBox",
	Type = "ScriptObject",
	-- Documentation = { "A frame that accepts and displays text input from the keyboard." },
	Inherits =
	{
		"Frame",
		"FontInstance",
	},

	Functions =
	{
		{
			Name = "AddHistoryLine",
			Type = "Function",
			-- Documentation = { "Adds a line of text to an edit box's history." },

			Arguments =
			{
				{ Name = "text", Type = "string", Nilable = false --[[ Documentation = { "Text to be added to the edit box's list of history lines" }, ]] },
			},
		},
		{
			Name = "ClearFocus",
			Type = "Function",
			-- Documentation = { "Clears the input focus from an edit box." },

			Arguments =
			{
			},
		},
		{
			Name = "GetAltArrowKeyMode",
			Type = "Function",
			-- Documentation = { "Returns the arrow key mode state." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if arrow keys are ignored by the edit box unless the Alt key is held; otherwise nil" }, ]] },
			},
		},
		{
			Name = "GetBlinkSpeed",
			Type = "Function",
			-- Documentation = { "Returns the cursor's blink speed." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "duration", Type = "number", Nilable = false --[[ Documentation = { "Amount of time for which the cursor is visible during each \"blink\" (in seconds)" }, ]] },
			},
		},
		{
			Name = "GetCursorPosition",
			Type = "Function",
			-- Documentation = { "Returns the current cursor position inside a given edit box." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "position", Type = "number", Nilable = false --[[ Documentation = { "The position of the cursor" }, ]] },
			},
		},
		{
			Name = "GetHistoryLines",
			Type = "Function",
			-- Documentation = { "Returns the max number of history lines." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "count", Type = "number", Nilable = false --[[ Documentation = { "Maximum number of history lines stored by the edit box" }, ]] },
			},
		},
		{
			Name = "GetIndentedWordWrap",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "indent", Type = "1nil", Nilable = false --[[ Documentation = { "1 if long lines of text are indented when wrapping; otherwise nil" }, ]] },
			},
		},
		{
			Name = "GetInputLanguage",
			Type = "Function",
			-- Documentation = { "Returns the current input language charset selected." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "language", Type = "string", Nilable = false --[[ Documentation = { "Token representing the current keyboard input method" }, ]] },
			},
		},
		{
			Name = "GetMaxBytes",
			Type = "Function",
			-- Documentation = { "Returns the maximum number of bytes allowed in the edit box." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "maxBytes", Type = "number", Nilable = false --[[ Documentation = { "Maximum number of text bytes allowed in the edit box" }, ]] },
			},
		},
		{
			Name = "GetMaxLetters",
			Type = "Function",
			-- Documentation = { "Returns the maximum number of letters you can enter into an EditBox." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "maxLetters", Type = "number", Nilable = false --[[ Documentation = { "Maximum number of text characters allowed in the edit box" }, ]] },
			},
		},
		{
			Name = "GetNumLetters",
			Type = "Function",
			-- Documentation = { "Returns the number of letters in the editbox." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "numLetters", Type = "number", Nilable = false --[[ Documentation = { "Number of text characters in the edit box" }, ]] },
			},
		},
		{
			Name = "GetNumber",
			Type = "Function",
			-- Documentation = { "Returns the contents of the editbox converted to a number." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "num", Type = "number", Nilable = false --[[ Documentation = { "Contents of the edit box as a number" }, ]] },
			},
		},
		{
			Name = "GetText",
			Type = "Function",
			-- Documentation = { "Retreives the text stored in the EditBox." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "text", Type = "string", Nilable = false --[[ Documentation = { "Text contained in the edit box" }, ]] },
			},
		},
		{
			Name = "GetTextInsets",
			Type = "Function",
			-- Documentation = { "Returns the distance between the edges of the EditBox and the text inside it." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "left", Type = "number", Nilable = false --[[ Documentation = { "Distance from the left edge of the edit box to the left edge of its interactive text area (in pixels)" }, ]] },
				{ Name = "right", Type = "number", Nilable = false --[[ Documentation = { "Distance from the right edge of the edit box to the right edge of its interactive text area (in pixels)" }, ]] },
				{ Name = "top", Type = "number", Nilable = false --[[ Documentation = { "Distance from the top edge of the edit box to the top edge of its interactive text area (in pixels)" }, ]] },
				{ Name = "bottom", Type = "number", Nilable = false --[[ Documentation = { "Distance from the bottom edge of the edit box to the bottom edge of its interactive text area (in pixels)" }, ]] },
			},
		},
		{
			Name = "HasFocus",
			Type = "Function",
			-- Documentation = { "Returns whether the EditBox has the keyboard cursor focus." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the edit box is currently focused for keyboard input; otherwise nil" }, ]] },
			},
		},
		{
			Name = "HighlightText",
			Type = "Function",
			-- Documentation = { "Highlights the selected text in the editbox." },

			Arguments =
			{
				{ Name = "start", Type = "number", Nilable = false --[[ Documentation = { "Character position at which to begin the selection (between 0, for the position before the first character, and editbox:GetNumLetters(), for the position after the last character); defaults to 0 if not specified" }, ]] },
				{ Name = "end", Type = "number", Nilable = false --[[ Documentation = { "Character position at which to end the selection; if not specified or if less than start, selects all characters after the start position; if equal to start, selects nothing and positions the cursor at the start position" }, ]] },
			},
		},
		{
			Name = "Insert",
			Type = "Function",
			-- Documentation = { "Inserts text into the EditBox at the current cursor position." },

			Arguments =
			{
				{ Name = "text", Type = "string", Nilable = false --[[ Documentation = { "Text to be inserted" }, ]] },
			},
		},
		{
			Name = "IsAutoFocus",
			Type = "Function",
			-- Documentation = { "Returns true if the EditBox will automatically grab keyboard focus when it is shown." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the edit box automatically acquires keyboard input focus; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsInIMECompositionMode",
			Type = "Function",
			-- Documentation = { "Returns whether the EditBox is in IME composition mode." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the edit box is in IME character composition mode; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsMultiLine",
			Type = "Function",
			-- Documentation = { "Returns whether the EditBox uses more than one line of text." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "multiLine", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the edit box shows more than one line of text; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsNumeric",
			Type = "Function",
			-- Documentation = { "Returns whether the EditBox is in numeric mode. See SetNumeric." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if only numeric input is allowed; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsPassword",
			Type = "Function",
			-- Documentation = { "Returns whether the EditBox is in password mode." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if text entered in the edit box is masked with asterisk characters (*); otherwise nil" }, ]] },
			},
		},
		{
			Name = "SetAltArrowKeyMode",
			Type = "Function",
			-- Documentation = { "Sets the EditBox to ignore arrow keys unless you hold ALT." },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to cause the edit box to ignore arrow key presses unless the Alt key is held; false to allow unmodified arrow key presses for cursor movement" }, ]] },
			},
		},
		{
			Name = "SetAutoFocus",
			Type = "Function",
			-- Documentation = { "Sets whether or not the edit box will automatically acquire cursor focus" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to enable the edit box to automatically acquire keyboard input focus; false to disable" }, ]] },
			},
		},
		{
			Name = "SetBlinkSpeed",
			Type = "Function",
			-- Documentation = { "Sets the blink rate for the cursor." },

			Arguments =
			{
				{ Name = "duration", Type = "number", Nilable = false --[[ Documentation = { "Amount of time for which the cursor is visible during each \"blink\" (in seconds)" }, ]] },
			},
		},
		{
			Name = "SetCursorPosition",
			Type = "Function",
			-- Documentation = { "Sets the cursor position in the editbox" },

			Arguments =
			{
				{ Name = "position", Type = "number", Nilable = false --[[ Documentation = { "New position for the keyboard input cursor (between 0, for the position before the first character, and editbox:GetNumLetters(), for the position after the last character)" }, ]] },
			},
		},
		{
			Name = "SetFocus",
			Type = "Function",
			-- Documentation = { "Gives the EditBox keyboard cursor focus." },

			Arguments =
			{
			},
		},
		{
			Name = "SetHistoryLines",
			Type = "Function",
			-- Documentation = { "Sets the number of history lines to store for the EditBox." },

			Arguments =
			{
				{ Name = "count", Type = "number", Nilable = false --[[ Documentation = { "Maximum number of history lines to be stored by the edit box" }, ]] },
			},
		},
		{
			Name = "SetIndentedWordWrap",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
				{ Name = "indent", Type = "bool", Nilable = false --[[ Documentation = { "True to indent wrapped lines of text; false otherwise" }, ]] },
			},
		},
		{
			Name = "SetMaxBytes",
			Type = "Function",
			-- Documentation = { "Sets the maximum number of bytes to display in the editbox" },

			Arguments =
			{
				{ Name = "maxBytes", Type = "number", Nilable = false --[[ Documentation = { "Maximum number of text bytes allowed in the edit box, or 0 for no limit" }, ]] },
			},
		},
		{
			Name = "SetMaxLetters",
			Type = "Function",
			-- Documentation = { "Set the maximum number of letters allowed in the editbox." },

			Arguments =
			{
				{ Name = "maxLetters", Type = "number", Nilable = false --[[ Documentation = { "Maximum number of text characters allowed in the edit box, or 0 for no limit" }, ]] },
			},
		},
		{
			Name = "SetMultiLine",
			Type = "Function",
			-- Documentation = { "Sets the EditBox to use multiple lines of text." },

			Arguments =
			{
				{ Name = "multiLine", Type = "bool", Nilable = false --[[ Documentation = { "True to allow the edit box to display more than one line of text; false for single-line display" }, ]] },
			},
		},
		{
			Name = "SetNumber",
			Type = "Function",
			-- Documentation = { "Set the contents of the editbox to the specified number." },

			Arguments =
			{
			},
		},
		{
			Name = "SetNumeric",
			Type = "Function",
			-- Documentation = { "Sets whether the edit box should only accept numbers." },

			Arguments =
			{
			},
		},
		{
			Name = "SetPassword",
			Type = "Function",
			-- Documentation = { "Sets the editbox into password mode - masking all input." },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to mask text entered in the edit box with asterisk characters (*); false to show the actual text entered" }, ]] },
			},
		},
		{
			Name = "SetText",
			Type = "Function",
			-- Documentation = { "Sets the contents of the EditBox to text. This fires the OnTextChanged handler." },

			Arguments =
			{
			},
		},
		{
			Name = "SetTextInsets",
			Type = "Function",
			-- Documentation = { "Sets the padding between the edges of the edit box and its text." },

			Arguments =
			{
			},
		},
		{
			Name = "ToggleInputLanguage",
			Type = "Function",
			-- Documentation = { "Toggles the input language for the EditBox." },

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

APIDocumentation:AddDocumentationTable(EditBoxAPI);

