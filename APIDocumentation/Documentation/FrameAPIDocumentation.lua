local FrameAPI =
{
	Name = "Frame",
	Type = "ScriptObject",
	-- Documentation = { "The base interactive UI element. Frames can receive events, contain child frames and regions, and respond to scripts." },
	Inherits =
	{
		"VisibleRegion",
		"ScriptObject",
	},

	Functions =
	{
		{
			Name = "AllowAttributeChanges",
			Type = "Function",
			-- Documentation = { "Temporarily allows insecure code to modify attributes on the Frame during combat." },

			Arguments =
			{
			},
		},
		{
			Name = "CreateFontString",
			Type = "Function",
			-- Documentation = { "Creates a new FontString for the Frame on the given layer, optionally inheriting from a template." },

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "A global name to use for the new font string" }, ]] },
				{ Name = "layer", Type = "string, layer", Nilable = false --[[ Documentation = { "The graphic layer on which to create the font string.  Default value is ARTWORK." }, ]] },
				{ Name = "inherits", Type = "string", Nilable = false --[[ Documentation = { "A template from which the new front string should inherit" }, ]] },
			},
		},
		{
			Name = "CreateTexture",
			Type = "Function",
			-- Documentation = { "Creates a new Texture for the Frame on the given layer, optionally inheriting from a template." },

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "Global name for the new texture" }, ]] },
				{ Name = "layer", Type = "string, layer", Nilable = false --[[ Documentation = { "Graphic layer on which to create the texture; defaults to ARTWORK if not specified" }, ]] },
				{ Name = "inherits", Type = "string", Nilable = false --[[ Documentation = { "Name of a template from which the new texture should inherit" }, ]] },
				{ Name = "sublevel", Type = "number", Nilable = false --[[ Documentation = { "The sub-level on the given graphics layer ranging from -8- to 7. The default value of this argument is 0" }, ]] },
			},

			Returns =
			{
				{ Name = "texture", Type = "texture", Nilable = false --[[ Documentation = { "Reference to the new Texture object" }, ]] },
			},
		},
		{
			Name = "CreateTitleRegion",
			Type = "Function",
			-- Documentation = { "Creates a title region for the frame" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "region", Type = "region", Nilable = false --[[ Documentation = { "Reference to the new Region object" }, ]] },
			},
		},
		{
			Name = "DisableDrawLayer",
			Type = "Function",
			-- Documentation = { "Disables rendering of the Frame's specified layer." },

			Arguments =
			{
				{ Name = "layer", Type = "string, layer", Nilable = false --[[ Documentation = { "Name of a graphics layer" }, ]] },
			},
		},
		{
			Name = "EnableDrawLayer",
			Type = "Function",
			-- Documentation = { "Enables rendering of the Frame's specified layer." },

			Arguments =
			{
				{ Name = "layer", Type = "string, layer", Nilable = false --[[ Documentation = { "Name of a graphics layer" }, ]] },
			},
		},
		{
			Name = "EnableJoystick",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to enable joystick interactivity; false to disable" }, ]] },
			},
		},
		{
			Name = "EnableKeyboard",
			Type = "Function",
			-- Documentation = { "Enables or disabled keyboard interactivity" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to enable keyboard interactivity; false to disable" }, ]] },
			},
		},
		{
			Name = "EnableMouse",
			Type = "Function",
			-- Documentation = { "Enables or disables mouse interactivity" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to enable mouse interactivity; false to disable" }, ]] },
			},
		},
		{
			Name = "EnableMouseWheel",
			Type = "Function",
			-- Documentation = { "Enables or disables mousewheel interactivity" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to enable mouse wheel interactivity; false to disable" }, ]] },
			},
		},
		{
			Name = "GetAttribute",
			Type = "Function",
			-- Documentation = { "Returns the name attribute" },

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "Name of an attribute to query" }, ]] },
			},

			Returns =
			{
				{ Name = "value", Type = "value", Nilable = false --[[ Documentation = { "Value of the named attribute" }, ]] },
			},
		},
		{
			Name = "GetBackdrop",
			Type = "Function",
			-- Documentation = { "Returns the backdrop information for the frame" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "backdrop", Type = "table, backdrop", Nilable = false --[[ Documentation = { "A table containing the backdrop settings, or nil if the frame has no backdrop" }, ]] },
			},
		},
		{
			Name = "GetBackdropBorderColor",
			Type = "Function",
			-- Documentation = { "Returns the frame's backdrop border color" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the graphic (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "GetBackdropColor",
			Type = "Function",
			-- Documentation = { "Returns the frame's backdrop color" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the graphic (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "GetBoundsRect",
			Type = "Function",
			-- Documentation = { "Returns the frame's boundaries" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "left", Type = "number", Nilable = false --[[ Documentation = { "Distance from the left edge of the screen to the left edge of the area (in pixels)" }, ]] },
				{ Name = "bottom", Type = "number", Nilable = false --[[ Documentation = { "Distance from the bottom edge of the screen to the bottom of the area (in pixels)" }, ]] },
				{ Name = "width", Type = "number", Nilable = false --[[ Documentation = { "Width of the area (in pixels)" }, ]] },
				{ Name = "height", Type = "number", Nilable = false --[[ Documentation = { "Height of the area (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetChildren",
			Type = "Function",
			-- Documentation = { "Returns the list of child frames" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "...", Type = "list", Nilable = false --[[ Documentation = { "A list of the frames which are children of this frame" }, ]] },
			},
		},
		{
			Name = "GetClampRectInsets",
			Type = "Function",
			-- Documentation = { "Returns the rect insets for the clampedtoscreen system" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "left", Type = "number", Nilable = false --[[ Documentation = { "Offset from the left edge of the frame to the left edge of its clamping area (in pixels)" }, ]] },
				{ Name = "right", Type = "number", Nilable = false --[[ Documentation = { "Offset from the right edge of the frame's clamping area to the right edge of the frame (in pixels)" }, ]] },
				{ Name = "top", Type = "number", Nilable = false --[[ Documentation = { "Offset from the top edge of the frame's clamping area to the top edge of the frame (in pixels)" }, ]] },
				{ Name = "bottom", Type = "number", Nilable = false --[[ Documentation = { "Offset from the bottom edge of the frame to the bottom edge of its clamping area (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetDepth",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "depth", Type = "number", Nilable = false --[[ Documentation = { "Apparent 3D depth of this frame relative to that of its parent frame" }, ]] },
			},
		},
		{
			Name = "GetEffectiveAlpha",
			Type = "Function",
			-- Documentation = { "Returns the frame's effective alpha" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Effective alpha (opacity) of the region (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "GetEffectiveDepth",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "depth", Type = "number", Nilable = false --[[ Documentation = { "Apparent 3D depth of this frame relative to the screen" }, ]] },
			},
		},
		{
			Name = "GetEffectiveScale",
			Type = "Function",
			-- Documentation = { "Returns the frame's effective scale" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "scale", Type = "number", Nilable = false --[[ Documentation = { "Scale factor for the frame relative to its parent" }, ]] },
			},
		},
		{
			Name = "GetFrameLevel",
			Type = "Function",
			-- Documentation = { "Returns the current frame level" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "level", Type = "number", Nilable = false --[[ Documentation = { "Layering level of the frame relative to others in its frameStrata" }, ]] },
			},
		},
		{
			Name = "GetFrameStrata",
			Type = "Function",
			-- Documentation = { "Returns the current framestrata" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "strata", Type = "value", Nilable = false --[[ Documentation = { "Token identifying the strata in which the frame should be layered (string, frameStrata) BACKGROUNDDIALOGFULLSCREENFULLSCREEN_DIALOGHIGHLOWMEDIUMPARENTTOOLTIP" }, ]] },
			},
		},
		{
			Name = "GetFrameType",
			Type = "Function",
			-- Documentation = { "Returns the type of the frame, as a string" },

			Arguments =
			{
			},
		},
		{
			Name = "GetHitRectInsets",
			Type = "Function",
			-- Documentation = { "Returns the inserts for the frame's HitRect" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "left", Type = "number", Nilable = false --[[ Documentation = { "Distance from the left edge of the frame to the left edge of its mouse-interactive area (in pixels)" }, ]] },
				{ Name = "right", Type = "number", Nilable = false --[[ Documentation = { "Distance from the right edge of the frame to the right edge of its mouse-interactive area (in pixels)" }, ]] },
				{ Name = "top", Type = "number", Nilable = false --[[ Documentation = { "Distance from the top edge of the frame to the top edge of its mouse-interactive area (in pixels)" }, ]] },
				{ Name = "bottom", Type = "number", Nilable = false --[[ Documentation = { "Distance from the bottom edge of the frame to the bottom edge of its mouse-interactive area (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetID",
			Type = "Function",
			-- Documentation = { "Returns the frame's numeric identifier" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "id", Type = "number", Nilable = false --[[ Documentation = { "A numeric identifier for the frame" }, ]] },
			},
		},
		{
			Name = "GetMaxResize",
			Type = "Function",
			-- Documentation = { "Returns the maximum resize width and height" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "maxWidth", Type = "number", Nilable = false --[[ Documentation = { "Maximum width of the frame (in pixels), or 0 for no limit" }, ]] },
				{ Name = "maxHeight", Type = "number", Nilable = false --[[ Documentation = { "Maximum height of the frame (in pixels), or 0 for no limit" }, ]] },
			},
		},
		{
			Name = "GetMinResize",
			Type = "Function",
			-- Documentation = { "Returns the minimum resize height and width" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "minWidth", Type = "number", Nilable = false --[[ Documentation = { "Minimum width of the frame (in pixels), or 0 for no limit" }, ]] },
				{ Name = "minHeight", Type = "number", Nilable = false --[[ Documentation = { "Minimum height of the frame (in pixels), or 0 for no limit" }, ]] },
			},
		},
		{
			Name = "GetNumChildren",
			Type = "Function",
			-- Documentation = { "Returns the number of children this frame has" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "numChildren", Type = "number", Nilable = false --[[ Documentation = { "Number of child frames belonging to the frame" }, ]] },
			},
		},
		{
			Name = "GetNumRegions",
			Type = "Function",
			-- Documentation = { "Returns the number of regions belonging to this frame" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "numRegions", Type = "number", Nilable = false --[[ Documentation = { "Number of non-Frame child regions (FontStrings and Textures) belonging to the frame" }, ]] },
			},
		},
		{
			Name = "GetRegions",
			Type = "Function",
			-- Documentation = { "Returns the regions (fontstrings, textures) that belong to this frame" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "...", Type = "list", Nilable = false --[[ Documentation = { "A list of each non-Frame child region (FontString or Texture) belonging to the frame" }, ]] },
			},
		},
		{
			Name = "GetScale",
			Type = "Function",
			-- Documentation = { "Returns the scale of the frame" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "scale", Type = "number", Nilable = false --[[ Documentation = { "Scale factor for the frame relative to its parent" }, ]] },
			},
		},
		{
			Name = "GetTitleRegion",
			Type = "Function",
			-- Documentation = { "Returns the TitleRegion object for the frame." },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "region", Type = "region", Nilable = false --[[ Documentation = { "Reference to the frame's TitleRegion object" }, ]] },
			},
		},
		{
			Name = "IgnoreDepth",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to ignore the frame's depth property; false to disable" }, ]] },
			},
		},
		{
			Name = "IsClampedToScreen",
			Type = "Function",
			-- Documentation = { "Returns whether or not the frame is clamped to the screen" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the frame's boundaries are limited to those of the screen when user moving/resizing; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsEventRegistered",
			Type = "Function",
			-- Documentation = { "Returns whether or not the frame is registered for the given event" },

			Arguments =
			{
				{ Name = "event", Type = "string", Nilable = false --[[ Documentation = { "Name of an event" }, ]] },
			},

			Returns =
			{
				{ Name = "registered", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the frame is registered for the event; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsFrameType",
			Type = "Function",
			-- Documentation = { "Returns whether or not the frame is of the given type" },

			Arguments =
			{
			},
		},
		{
			Name = "IsIgnoringDepth",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the frame's depth property is ignored; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsJoystickEnabled",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if joystick interactivity is enabled for the frame; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsJumpNavigateEnabled",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "IsJumpNavigateStart",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "IsKeyboardEnabled",
			Type = "Function",
			-- Documentation = { "Returns whether or not the frame is keyboard enabled" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if keyboard interactivity is enabled for the frame; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsMouseEnabled",
			Type = "Function",
			-- Documentation = { "Returns whether or not the frame is mouse enabled" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if mouse interactivity is enabled for the frame; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsMouseWheelEnabled",
			Type = "Function",
			-- Documentation = { "Returns whether or not the frame is mouse wheel enabled" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if mouse wheel interactivity is enabled for the frame; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsMovable",
			Type = "Function",
			-- Documentation = { "Returns whether or not the frame is movable" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "movable", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the frame can be moved by the user; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsResizable",
			Type = "Function",
			-- Documentation = { "Returns whether or not the frame is resizable" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the frame can be resized by the user; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsToplevel",
			Type = "Function",
			-- Documentation = { "Returns whether or not the frame is at the top level" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the frame is automatically raised to the front when clicked; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsUserPlaced",
			Type = "Function",
			-- Documentation = { "Returns whether or not the frame is flagged as \"user placed\"" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the frame is flagged for automatic saving and restoration of position and dimensions; otherwise nil" }, ]] },
			},
		},
		{
			Name = "Lower",
			Type = "Function",
			-- Documentation = { "Lowers the frame's frameLevel" },

			Arguments =
			{
			},
		},
		{
			Name = "Raise",
			Type = "Function",
			-- Documentation = { "Raises the frame's frameLevel" },

			Arguments =
			{
			},
		},
		{
			Name = "RegisterAllEvents",
			Type = "Function",
			-- Documentation = { "Registers the frame for all events" },

			Arguments =
			{
			},
		},
		{
			Name = "RegisterEvent",
			Type = "Function",
			-- Documentation = { "Registers the frame for an event" },

			Arguments =
			{
				{ Name = "event", Type = "string", Nilable = false --[[ Documentation = { "Name of an event" }, ]] },
			},
		},
		{
			Name = "RegisterForDrag",
			Type = "Function",
			-- Documentation = { "Registers the frame for dragging via specific mouse buttons" },

			Arguments =
			{
				{ Name = "...", Type = "value", Nilable = false --[[ Documentation = { "A list of strings, each the name of a mouse button for which the frame should respond to drag actions (list) Button4Button5LeftButtonMiddleButtonRightButton" }, ]] },
			},
		},
		{
			Name = "SetAttribute",
			Type = "Function",
			-- IsProtectedFunction = true,
			-- Documentation = { "Sets an attribute on the given frame" },

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "Name of an attribute, case insensitive" }, ]] },
				{ Name = "value", Type = "value", Nilable = false --[[ Documentation = { "New value to set for the attribute" }, ]] },
			},
		},
		{
			Name = "SetBackdrop",
			Type = "Function",
			-- Documentation = { "Sets a frame's backdrop as defined by a table" },

			Arguments =
			{
				{ Name = "backdrop", Type = "table, backdrop", Nilable = false --[[ Documentation = { "A table containing the backdrop settings, or nil to remove the frame's backdrop" }, ]] },
			},
		},
		{
			Name = "SetBackdropBorderColor",
			Type = "Function",
			-- Documentation = { "Sets the color of the frame's backdrop border" },

			Arguments =
			{
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the graphic (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "SetBackdropColor",
			Type = "Function",
			-- Documentation = { "Sets the backdrop color for the frame" },

			Arguments =
			{
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the graphic (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "SetClampRectInsets",
			Type = "Function",
			-- Documentation = { "Sets the clamp rect insets for the frame, so portion of it could move offscreen" },

			Arguments =
			{
			},
		},
		{
			Name = "SetClampedToScreen",
			Type = "Function",
			-- Documentation = { "Sets whether or not the frame should be clamped to the screen" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to limit the frame's boundaries to those of the screen; false to allow the frame to be moved/resized without such limits" }, ]] },
			},
		},
		{
			Name = "SetDepth",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
				{ Name = "depth", Type = "number", Nilable = false --[[ Documentation = { "Apparent 3D depth of this frame relative to that of its parent frame" }, ]] },
			},
		},
		{
			Name = "SetFrameLevel",
			Type = "Function",
			-- Documentation = { "Sets the frame level of the frame" },

			Arguments =
			{
				{ Name = "level", Type = "number", Nilable = false --[[ Documentation = { "Layering level of the frame relative to others in its frameStrata" }, ]] },
			},
		},
		{
			Name = "SetFrameStrata",
			Type = "Function",
			-- Documentation = { "Sets the frame's frameStrata" },

			Arguments =
			{
				{ Name = "strata", Type = "string, framestrata", Nilable = false --[[ Documentation = { "Token identifying the strata in which the frame should be layered" }, ]] },
			},
		},
		{
			Name = "SetHitRectInsets",
			Type = "Function",
			-- Documentation = { "Sets the frame's HitRectInsets, which define where the mouse can interact with the frame" },

			Arguments =
			{
				{ Name = "left", Type = "number", Nilable = false --[[ Documentation = { "Distance from the left edge of the frame to the left edge of its mouse-interactive area (in pixels)" }, ]] },
				{ Name = "right", Type = "number", Nilable = false --[[ Documentation = { "Distance from the right edge of the frame to the right edge of its mouse-interactive area (in pixels)" }, ]] },
				{ Name = "top", Type = "number", Nilable = false --[[ Documentation = { "Distance from the top edge of the frame to the top edge of its mouse-interactive area (in pixels)" }, ]] },
				{ Name = "bottom", Type = "number", Nilable = false --[[ Documentation = { "Distance from the bottom edge of the frame to the bottom edge of its mouse-interactive area (in pixels)" }, ]] },
			},
		},
		{
			Name = "SetID",
			Type = "Function",
			-- Documentation = { "Sets the numeric identifier for the frame" },

			Arguments =
			{
				{ Name = "id", Type = "number", Nilable = false --[[ Documentation = { "A numeric identifier for the frame" }, ]] },
			},
		},
		{
			Name = "SetJumpNavigateEnabled",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetJumpNavigateStart",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetMaxResize",
			Type = "Function",
			-- Documentation = { "Sets the maximum resize limits for the frame" },

			Arguments =
			{
				{ Name = "maxWidth", Type = "number", Nilable = false --[[ Documentation = { "Maximum width of the frame (in pixels), or 0 for no limit" }, ]] },
				{ Name = "maxHeight", Type = "number", Nilable = false --[[ Documentation = { "Maximum height of the frame (in pixels), or 0 for no limit" }, ]] },
			},
		},
		{
			Name = "SetMinResize",
			Type = "Function",
			-- Documentation = { "Sets the minimum resize limits for the frame" },

			Arguments =
			{
				{ Name = "minWidth", Type = "number", Nilable = false --[[ Documentation = { "Minimum width of the frame (in pixels), or 0 for no limit" }, ]] },
				{ Name = "minHeight", Type = "number", Nilable = false --[[ Documentation = { "Minimum height of the frame (in pixels), or 0 for no limit" }, ]] },
			},
		},
		{
			Name = "SetMovable",
			Type = "Function",
			-- Documentation = { "Sets whether or not the frame is movable" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to allow the frame to be moved by the user; false to disable" }, ]] },
			},
		},
		{
			Name = "SetResizable",
			Type = "Function",
			-- Documentation = { "Sets whether or not the frame is resizable" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to allow the frame to be resized by the user; false to disable" }, ]] },
			},
		},
		{
			Name = "SetScale",
			Type = "Function",
			-- Documentation = { "Sets the scale of the frame" },

			Arguments =
			{
				{ Name = "scale", Type = "number", Nilable = false --[[ Documentation = { "Scale factor for the frame relative to its parent" }, ]] },
			},
		},
		{
			Name = "SetToplevel",
			Type = "Function",
			-- Documentation = { "Sets whether or not the frame should raise itself to the top frame level when clicked" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to cause the frame to automatically come to the front when clicked; false otherwise" }, ]] },
			},
		},
		{
			Name = "SetUserPlaced",
			Type = "Function",
			-- Documentation = { "Flags the frame as user placed, or not" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to enable automatic saving and restoration of the frame's position and dimensions; false to disable" }, ]] },
			},
		},
		{
			Name = "StartMoving",
			Type = "Function",
			-- Documentation = { "Start moving the frame" },

			Arguments =
			{
			},
		},
		{
			Name = "StartSizing",
			Type = "Function",
			-- Documentation = { "Start resizing the frame" },

			Arguments =
			{
			},
		},
		{
			Name = "StopMovingOrSizing",
			Type = "Function",
			-- Documentation = { "Stops the frame from being moved or resized, and saves the position in layout-cache.txt" },

			Arguments =
			{
			},
		},
		{
			Name = "UnregisterAllEvents",
			Type = "Function",
			-- Documentation = { "Unregisters all events for the frame" },

			Arguments =
			{
			},
		},
		{
			Name = "UnregisterEvent",
			Type = "Function",
			-- Documentation = { "Unregistered the frame for the given event" },

			Arguments =
			{
				{ Name = "event", Type = "string", Nilable = false --[[ Documentation = { "Name of an event" }, ]] },
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

APIDocumentation:AddDocumentationTable(FrameAPI);
