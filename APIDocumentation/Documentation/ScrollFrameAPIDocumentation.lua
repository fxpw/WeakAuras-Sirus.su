local ScrollFrameAPI =
{
	Name = "ScrollFrame",
	Type = "ScriptObject",
	-- Documentation = { "A frame that provides scrollable viewing of a child frame larger than the visible area." },
	Inherits =
	{
		"Frame",
	},

	Functions =
	{
		{
			Name = "GetHorizontalScroll",
			Type = "Function",
			-- Documentation = { "Returns the scroll frame's current horizontal scroll position" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "scroll", Type = "number", Nilable = false --[[ Documentation = { "Current horizontal scroll position (0 = at left edge, frame:GetHorizontalScrollRange() = at right edge)" }, ]] },
			},
		},
		{
			Name = "GetHorizontalScrollRange",
			Type = "Function",
			-- Documentation = { "Returns the scroll frame's maximum horizontal (rightmost) scroll position" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "maxScroll", Type = "number", Nilable = false --[[ Documentation = { "Maximum horizontal scroll position (representing the right edge of the scrolled area)" }, ]] },
			},
		},
		{
			Name = "GetScrollChild",
			Type = "Function",
			-- Documentation = { "Returns the frame scrolled by the scroll frame" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "scrollChild", Type = "frame", Nilable = false --[[ Documentation = { "Reference to the Frame object scrolled by the scroll frame" }, ]] },
			},
		},
		{
			Name = "GetVerticalScroll",
			Type = "Function",
			-- Documentation = { "Returns the scroll frame's current vertical scroll position" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "scroll", Type = "number", Nilable = false --[[ Documentation = { "Current vertical scroll position (0 = at top edge, frame:GetVerticalScrollRange() = at bottom edge)" }, ]] },
			},
		},
		{
			Name = "GetVerticalScrollRange",
			Type = "Function",
			-- Documentation = { "Returns the scroll frame's maximum vertical (bottom) scroll position" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "maxScroll", Type = "number", Nilable = false --[[ Documentation = { "Maximum vertical scroll position (representing the bottom edge of the scrolled area)" }, ]] },
			},
		},
		{
			Name = "SetHorizontalScroll",
			Type = "Function",
			-- Documentation = { "Sets the scroll frame's horizontal scroll position" },

			Arguments =
			{
				{ Name = "scroll", Type = "number", Nilable = false --[[ Documentation = { "Current horizontal scroll position (0 = at left edge, frame:GetHorizontalScrollRange() = at right edge)" }, ]] },
			},
		},
		{
			Name = "SetScrollChild",
			Type = "Function",
			-- Documentation = { "Sets the scroll child for the scroll frame" },

			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false --[[ Documentation = { "Reference to another frame to be the ScrollFrame's child." }, ]] },
			},
		},
		{
			Name = "SetVerticalScroll",
			Type = "Function",
			-- Documentation = { "Sets the scroll frame's vertical scroll position" },

			Arguments =
			{
				{ Name = "scroll", Type = "number", Nilable = false --[[ Documentation = { "Current vertical scroll position (0 = at top edge, frame:GetVerticalScrollRange() = at bottom edge)" }, ]] },
			},
		},
		{
			Name = "UpdateScrollChildRect",
			Type = "Function",
			-- Documentation = { "Updates the position of the scroll frame's child" },

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

APIDocumentation:AddDocumentationTable(ScrollFrameAPI);

