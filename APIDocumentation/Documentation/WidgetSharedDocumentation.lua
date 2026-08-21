local UIObjectAPI =
{
	Name = "UIObject",
	Type = "ScriptObject",
	-- Documentation = { "The root base type for all UI objects. Provides name and type identification." },
	Inherits =
	{
	},

	Functions =
	{
		{
			Name = "GetName",
			Type = "Function",
			-- Documentation = { "Returns the widget object's name" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "Name of the object" }, ]] },
			},
		},
		{
			Name = "GetObjectType",
			Type = "Function",
			-- Documentation = { "Returns the object's widget type" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "type", Type = "string", Nilable = false --[[ Documentation = { "Name of the object's type (e.g. Frame, Button, FontString, etc.)" }, ]] },
			},
		},
		{
			Name = "IsObjectType",
			Type = "Function",
			-- Documentation = { "Returns whether the object belongs to a given widget type" },

			Arguments =
			{
				{ Name = "type", Type = "string", Nilable = false --[[ Documentation = { "Name of an object type (e.g. Frame, Button, FontString, etc.)" }, ]] },
			},

			Returns =
			{
				{ Name = "isType", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the object belongs to the given type (or a subtype thereof); otherwise nil" }, ]] },
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

APIDocumentation:AddDocumentationTable(UIObjectAPI);

local ScriptObjectAPI =
{
	Name = "ScriptObject",
	Type = "ScriptObject",
	-- Documentation = { "Abstract base type providing script handler functionality (OnEvent, OnUpdate, etc.)." },
	Inherits =
	{
		"UIObject",
	},

	Functions =
	{
		{
			Name = "GetScript",
			Type = "Function",
			-- Documentation = { "Returns the widget's handler function for a script" },

			Arguments =
			{
				{ Name = "scriptType", Type = "string", Nilable = false --[[ Documentation = { "A script type; see scripts reference for details" }, ]] },
			},

			Returns =
			{
				{ Name = "handler", Type = "function", Nilable = false --[[ Documentation = { "The object's handler function for the script type" }, ]] },
			},
		},
		{
			Name = "HasScript",
			Type = "Function",
			-- Documentation = { "Returns whether the widget supports a script handler" },

			Arguments =
			{
				{ Name = "scriptType", Type = "string", Nilable = false --[[ Documentation = { "A script type; see scripts reference for details" }, ]] },
			},

			Returns =
			{
				{ Name = "hasScript", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the widget can handle the script, otherwise nil" }, ]] },
			},
		},
		{
			Name = "HookScript",
			Type = "Function",
			-- Documentation = { "Securely hooks a script handler" },

			Arguments =
			{
				{ Name = "scriptType", Type = "string", Nilable = false --[[ Documentation = { "Name of the script whose handler should be hooked" }, ]] },
				{ Name = "handler", Type = "function", Nilable = false --[[ Documentation = { "A function to be called whenever the script handler is run" }, ]] },
			},
		},
		{
			Name = "SetScript",
			Type = "Function",
			-- Documentation = { "Sets the widget's handler function for a script" },

			Arguments =
			{
				{ Name = "scriptType", Type = "string", Nilable = false --[[ Documentation = { "A script type; see scripts for details" }, ]] },
				{ Name = "handler", Type = "function", Nilable = false --[[ Documentation = { "A function to become the widget's handler for the script type" }, ]] },
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

APIDocumentation:AddDocumentationTable(ScriptObjectAPI);

local ParentedObjectAPI =
{
	Name = "ParentedObject",
	Type = "ScriptObject",
	-- Documentation = { "Abstract base type providing parent-child relationship functionality." },
	Inherits =
	{
		"UIObject",
	},

	Functions =
	{
		{
			Name = "GetParent",
			Type = "Function",
			-- Documentation = { "Returns the object's parent object" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "parent", Type = "uiobject", Nilable = false --[[ Documentation = { "Reference to the object's parent object, or nil if the object has no parent" }, ]] },
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

APIDocumentation:AddDocumentationTable(ParentedObjectAPI);

local RegionAPI =
{
	Name = "Region",
	Type = "ScriptObject",
	-- Documentation = { "Base type for all UI elements that occupy screen space with position and dimensions." },
	Inherits =
	{
		"ParentedObject",
	},

	Functions =
	{
		{
			Name = "CanChangeProtectedState",
			Type = "Function",
			-- Documentation = { "Returns whether protected properties of the region can be changed by non-secure scripts" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "canChange", Type = "value, 1nil", Nilable = false --[[ Documentation = { "1 if addon scripts are currently allowed to change protected properties of the region (e.g. showing or hiding it, changing its position, or altering frame attributes); otherwise nil" }, ]] },
			},
		},
		{
			Name = "ClearAllPoints",
			Type = "Function",
			-- Documentation = { "Removes all anchor points from the region" },

			Arguments =
			{
			},
		},
		{
			Name = "CreateAnimationGroup",
			Type = "Function",
			-- Documentation = { "Creates a new AnimationGroup as a child of the region" },

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "A global name to use for the new animation group" }, ]] },
				{ Name = "inheritsFrom", Type = "string", Nilable = false --[[ Documentation = { "Template from which the new animation group should inherit" }, ]] },
			},

			Returns =
			{
				{ Name = "animationGroup", Type = "animgroup", Nilable = false --[[ Documentation = { "The newly created AnimationGroup" }, ]] },
			},
		},
		{
			Name = "GetAnimationGroups",
			Type = "Function",
			-- Documentation = { "Returns a list of animation groups belonging to the region" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "...", Type = "list", Nilable = false --[[ Documentation = { "A list of AnimationGroup objects for which the region is parent" }, ]] },
			},
		},
		{
			Name = "GetBottom",
			Type = "Function",
			-- Documentation = { "Returns the distance from the bottom of the screen to the bottom of the region" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "bottom", Type = "number", Nilable = false --[[ Documentation = { "Distance from the bottom edge of the screen to the bottom edge of the region (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetCenter",
			Type = "Function",
			-- Documentation = { "Returns the screen coordinates of the region's center" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "x", Type = "number", Nilable = false --[[ Documentation = { "Distance from the left edge of the screen to the center of the region (in pixels)" }, ]] },
				{ Name = "y", Type = "number", Nilable = false --[[ Documentation = { "Distance from the bottom edge of the screen to the center of the region (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetHeight",
			Type = "Function",
			-- Documentation = { "Returns the height of the region" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "height", Type = "number", Nilable = false --[[ Documentation = { "Height of the region (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetLeft",
			Type = "Function",
			-- Documentation = { "Returns the distance from the left edge of the screen to the left edge of the region" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "left", Type = "number", Nilable = false --[[ Documentation = { "Distance from the left edge of the screen to the left edge of the region (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetNumPoints",
			Type = "Function",
			-- Documentation = { "Returns the number of anchor points defined for the region" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "numPoints", Type = "number", Nilable = false --[[ Documentation = { "Number of defined anchor points for the region" }, ]] },
			},
		},
		{
			Name = "GetPoint",
			Type = "Function",
			-- Documentation = { "Returns information about one of the region's anchor points" },

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false --[[ Documentation = { "Index of an anchor point defined for the region (between 1 and region:GetNumPoints())" }, ]] },
			},

			Returns =
			{
				{ Name = "point", Type = "string, anchorPoint", Nilable = false --[[ Documentation = { "Point on this region at which it is anchored to another" }, ]] },
				{ Name = "relativeTo", Type = "region", Nilable = false --[[ Documentation = { "Reference to the other region to which this region is anchored" }, ]] },
				{ Name = "relativePoint", Type = "string, anchorPoint", Nilable = false --[[ Documentation = { "Point on the other region to which this region is anchored" }, ]] },
				{ Name = "xOffset", Type = "number", Nilable = false --[[ Documentation = { "Horizontal distance between point and relativePoint (in pixels; positive values put point to the right of relativePoint)" }, ]] },
				{ Name = "yOffset", Type = "number", Nilable = false --[[ Documentation = { "Vertical distance between point and relativePoint (in pixels; positive values put point below relativePoint)" }, ]] },
			},
		},
		{
			Name = "GetRect",
			Type = "Function",
			-- Documentation = { "Returns the position and dimensions of the region" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "left", Type = "number", Nilable = false --[[ Documentation = { "Distance from the left edge of the screen to the left edge of the region (in pixels)" }, ]] },
				{ Name = "bottom", Type = "number", Nilable = false --[[ Documentation = { "Distance from the bottom edge of the screen to the bottom of the region (in pixels)" }, ]] },
				{ Name = "width", Type = "number", Nilable = false --[[ Documentation = { "Width of the region (in pixels)" }, ]] },
				{ Name = "height", Type = "number", Nilable = false --[[ Documentation = { "Height of the region (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetRight",
			Type = "Function",
			-- Documentation = { "Returns the distance from the left edge of the screen to the right edge of the region" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "right", Type = "number", Nilable = false --[[ Documentation = { "Distance from the left edge of the screen to the right edge of the region (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetSize",
			Type = "Function",
			-- Documentation = { "Returns the width and height of the region" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "width", Type = "number", Nilable = false --[[ Documentation = { "The width of the region" }, ]] },
				{ Name = "height", Type = "number", Nilable = false --[[ Documentation = { "The height of the region" }, ]] },
			},
		},
		{
			Name = "GetTop",
			Type = "Function",
			-- Documentation = { "Returns the distance from the bottom of the screen to the top of the region" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "top", Type = "number", Nilable = false --[[ Documentation = { "Distance from the bottom edge of the screen to the top edge of the region (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetWidth",
			Type = "Function",
			-- Documentation = { "Returns the width of the region" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "width", Type = "number", Nilable = false --[[ Documentation = { "Width of the region (in pixels)" }, ]] },
			},
		},
		{
			Name = "IsDragging",
			Type = "Function",
			-- Documentation = { "Returns whether the region is currently being dragged" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "isDragging", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the region (or its parent or ancestor) is currently being dragged; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsMouseOver",
			Type = "Function",
			-- Documentation = { "Returns whether the mouse cursor is over the given region" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "isOver", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the mouse is over the region; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsProtected",
			Type = "Function",
			-- Documentation = { "Returns whether the region is protected" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "isProtected", Type = "value, 1nil", Nilable = false --[[ Documentation = { "1 if the region is protected; otherwise nil" }, ]] },
				{ Name = "explicit", Type = "value, 1nil", Nilable = false --[[ Documentation = { "1 if the region is explicitly protected; nil if the frame is only protected due to relationship with a protected region" }, ]] },
			},
		},
		{
			Name = "SetAllPoints",
			Type = "Function",
			-- Documentation = { "Sets all anchor points of the region to match those of another region" },

			Arguments =
			{
				{ Name = "region", Type = "region", Nilable = false --[[ Documentation = { "Reference to a region" }, ]] },
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "Global name of a region" }, ]] },
			},
		},
		{
			Name = "SetHeight",
			Type = "Function",
			-- Documentation = { "Sets the region's height" },

			Arguments =
			{
				{ Name = "height", Type = "number", Nilable = false --[[ Documentation = { "New height for the region (in pixels); if 0, causes the region's height to be determined automatically according to its anchor points" }, ]] },
			},
		},
		{
			Name = "SetParent",
			Type = "Function",
			-- Documentation = { "Makes another frame the parent of this region" },

			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false --[[ Documentation = { "The new parent frame" }, ]] },
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "Global name of a frame" }, ]] },
			},
		},
		{
			Name = "SetPoint",
			Type = "Function",
			-- Documentation = { "Sets an anchor point for the region" },

			Arguments =
			{
				{ Name = "point", Type = "string, anchorpoint", Nilable = false --[[ Documentation = { "Point on this region at which it is to be anchored to another" }, ]] },
				{ Name = "relativeTo", Type = "region", Nilable = false --[[ Documentation = { "Reference to the other region to which this region is to be anchored; if nil or omitted, anchors the region relative to its parent (or to the screen dimensions if the region has no parent)" }, ]] },
				{ Name = "relativePoint", Type = "string, anchorpoint", Nilable = false --[[ Documentation = { "Point on the other region to which this region is to be anchored; if nil or omitted, defaults to the same value as point" }, ]] },
				{ Name = "xOffset", Type = "number", Nilable = false --[[ Documentation = { "Horizontal distance between point and relativePoint (in pixels; positive values put point to the right of relativePoint); if nil or omitted, defaults to 0" }, ]] },
				{ Name = "yOffset", Type = "number", Nilable = false --[[ Documentation = { "Vertical distance between point and relativePoint (in pixels; positive values put point below relativePoint); if nil or omitted, defaults to 0" }, ]] },
			},
		},
		{
			Name = "SetSize",
			Type = "Function",
			-- Documentation = { "Sets the size of the region to the specified values" },

			Arguments =
			{
				{ Name = "width", Type = "number", Nilable = false --[[ Documentation = { "The width to set for the region" }, ]] },
				{ Name = "height", Type = "number", Nilable = false --[[ Documentation = { "The height to set for the region" }, ]] },
			},
		},
		{
			Name = "SetWidth",
			Type = "Function",
			-- Documentation = { "Sets the region's width" },

			Arguments =
			{
				{ Name = "width", Type = "number", Nilable = false --[[ Documentation = { "New width for the region (in pixels); if 0, causes the region's width to be determined automatically according to its anchor points" }, ]] },
			},
		},
		{
			Name = "StopAnimating",
			Type = "Function",
			-- Documentation = { "Stops any active animations involving the region or its children" },

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

APIDocumentation:AddDocumentationTable(RegionAPI);

local VisibleRegionAPI =
{
	Name = "VisibleRegion",
	Type = "ScriptObject",
	-- Documentation = { "A region that can be shown or hidden and has visual properties like alpha." },
	Inherits =
	{
		"Region",
	},

	Functions =
	{
		{
			Name = "GetAlpha",
			Type = "Function",
			-- Documentation = { "Returns the opacity of the region" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) of the region (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "Hide",
			Type = "Function",
			-- Documentation = { "Hides the region" },

			Arguments =
			{
			},
		},
		{
			Name = "IsShown",
			Type = "Function",
			-- Documentation = { "Returns whether the region is shown" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "shown", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the region is shown; otherwise nil" }, ]] },
			},
		},
		{
			Name = "IsVisible",
			Type = "Function",
			-- Documentation = { "Returns whether the region is visible" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "visible", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the region is visible; otherwise nil" }, ]] },
			},
		},
		{
			Name = "SetAlpha",
			Type = "Function",
			-- Documentation = { "Sets the opacity of the region" },

			Arguments =
			{
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) of the region (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "Show",
			Type = "Function",
			-- Documentation = { "Shows the region" },

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

APIDocumentation:AddDocumentationTable(VisibleRegionAPI);

local FontInstanceAPI =
{
	Name = "FontInstance",
	Type = "ScriptObject",
	-- Documentation = { "Abstract base type for objects that can display text with configurable font properties." },
	Inherits =
	{
		"UIObject",
	},

	Functions =
	{
		{
			Name = "GetFont",
			Type = "Function",
			-- Documentation = { "Returns the font instance's basic font properties" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a font file" }, ]] },
				{ Name = "fontHeight", Type = "number", Nilable = false --[[ Documentation = { "Height (point size) of the font to be displayed (in pixels)" }, ]] },
				{ Name = "flags", Type = "value", Nilable = false --[[ Documentation = { "Additional properties for the font specified by one or more (separated by commas) of the following tokens: (string) MONOCHROME - Font is rendered without antialiasingOUTLINE - Font is displayed with a black outlineTHICKOUTLINE - Font is displayed with a thick black outline" }, ]] },
			},
		},
		{
			Name = "GetFontObject",
			Type = "Function",
			-- Documentation = { "Returns the `Font` object from which the font instance's properties are inherited" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "font", Type = "font", Nilable = false --[[ Documentation = { "Reference to the Font object from which the font instance's properties are inherited, or nil if the font instance has no inherited properties" }, ]] },
			},
		},
		{
			Name = "GetJustifyH",
			Type = "Function",
			-- Documentation = { "Returns the font instance's horizontal text alignment style" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "justify", Type = "value", Nilable = false --[[ Documentation = { "Horizontal text alignment style (string, justifyH) CENTERLEFTRIGHT" }, ]] },
			},
		},
		{
			Name = "GetJustifyV",
			Type = "Function",
			-- Documentation = { "Returns the font instance's vertical text alignment style" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "justify", Type = "value", Nilable = false --[[ Documentation = { "Vertical text alignment style (string, justifyV) BOTTOMMIDDLETOP" }, ]] },
			},
		},
		{
			Name = "GetShadowColor",
			Type = "Function",
			-- Documentation = { "Returns the color of the font's text shadow" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "shadowR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the shadow color (0.0 - 1.0)" }, ]] },
				{ Name = "shadowG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the shadow color (0.0 - 1.0)" }, ]] },
				{ Name = "shadowB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the shadow color (0.0 - 1.0)" }, ]] },
				{ Name = "shadowAlpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) of the text's shadow (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "GetShadowOffset",
			Type = "Function",
			-- Documentation = { "Returns the offset of the font instance's text shadow from its text" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "xOffset", Type = "number", Nilable = false --[[ Documentation = { "Horizontal distance between the text and its shadow (in pixels)" }, ]] },
				{ Name = "yOffset", Type = "number", Nilable = false --[[ Documentation = { "Vertical distance between the text and its shadow (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetSpacing",
			Type = "Function",
			-- Documentation = { "Returns the font instance's amount of spacing between lines" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "spacing", Type = "number", Nilable = false --[[ Documentation = { "Amount of space between lines of text (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetTextColor",
			Type = "Function",
			-- Documentation = { "Returns the font instance's default text color" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "textR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the text color (0.0 - 1.0)" }, ]] },
				{ Name = "textG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the text color (0.0 - 1.0)" }, ]] },
				{ Name = "textB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the text color (0.0 - 1.0)" }, ]] },
				{ Name = "textAlpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) of the text (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "SetFont",
			Type = "Function",
			-- Documentation = { "Sets the font instance's basic font properties" },

			Arguments =
			{
				{ Name = "filename", Type = "string", Nilable = false --[[ Documentation = { "Path to a font file" }, ]] },
				{ Name = "fontHeight", Type = "number", Nilable = false --[[ Documentation = { "Height (point size) of the font to be displayed (in pixels)" }, ]] },
				{ Name = "flags", Type = "value", Nilable = false --[[ Documentation = { "Additional properties for the font specified by one or more (separated by commas) of the following tokens: (string) MONOCHROME - Font is rendered without antialiasingOUTLINE - Font is displayed with a black outlineTHICKOUTLINE - Font is displayed with a thick black outline" }, ]] },
			},

			Returns =
			{
				{ Name = "isValid", Type = "1nil", Nilable = false --[[ Documentation = { "1 if filename refers to a valid font file; otherwise nil" }, ]] },
			},
		},
		{
			Name = "SetFontObject",
			Type = "Function",
			-- Documentation = { "Sets the `Font` object from which the font instance's properties are inherited" },

			Arguments =
			{
				{ Name = "object", Type = "font", Nilable = false --[[ Documentation = { "Reference to a Font object" }, ]] },
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "Global name of a Font object" }, ]] },
			},
		},
		{
			Name = "SetJustifyH",
			Type = "Function",
			-- Documentation = { "Sets the font instance's horizontal text alignment style" },

			Arguments =
			{
				{ Name = "justify", Type = "value", Nilable = false --[[ Documentation = { "Horizontal text alignment style (string, justifyH) CENTERLEFTRIGHT" }, ]] },
			},
		},
		{
			Name = "SetJustifyV",
			Type = "Function",
			-- Documentation = { "Sets the font instance's horizontal text alignment style" },

			Arguments =
			{
			},
		},
		{
			Name = "SetShadowColor",
			Type = "Function",
			-- Documentation = { "Sets the color of the font's text shadow" },

			Arguments =
			{
				{ Name = "shadowR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the shadow color (0.0 - 1.0)" }, ]] },
				{ Name = "shadowG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the shadow color (0.0 - 1.0)" }, ]] },
				{ Name = "shadowB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the shadow color (0.0 - 1.0)" }, ]] },
				{ Name = "shadowAlpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) of the text's shadow (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "SetShadowOffset",
			Type = "Function",
			-- Documentation = { "Sets the offset of the font instance's text shadow from its text" },

			Arguments =
			{
				{ Name = "xOffset", Type = "number", Nilable = false --[[ Documentation = { "Horizontal distance between the text and its shadow (in pixels)" }, ]] },
				{ Name = "yOffset", Type = "number", Nilable = false --[[ Documentation = { "Vertical distance between the text and its shadow (in pixels)" }, ]] },
			},
		},
		{
			Name = "SetSpacing",
			Type = "Function",
			-- Documentation = { "Sets the font instance's amount of spacing between lines" },

			Arguments =
			{
				{ Name = "spacing", Type = "number", Nilable = false --[[ Documentation = { "Amount of space between lines of text (in pixels)" }, ]] },
			},
		},
		{
			Name = "SetTextColor",
			Type = "Function",
			-- Documentation = { "Sets the font instance's default text color" },

			Arguments =
			{
				{ Name = "textR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the text color (0.0 - 1.0)" }, ]] },
				{ Name = "textG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the text color (0.0 - 1.0)" }, ]] },
				{ Name = "textB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the text color (0.0 - 1.0)" }, ]] },
				{ Name = "textAlpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) of the text (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
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

APIDocumentation:AddDocumentationTable(FontInstanceAPI);

local LayeredRegionAPI =
{
	Name = "LayeredRegion",
	Type = "ScriptObject",
	-- Documentation = { "A visible region that is drawn in a specific layer within its parent frame." },
	Inherits =
	{
		"VisibleRegion",
	},

	Functions =
	{
		{
			Name = "GetDrawLayer",
			Type = "Function",
			-- Documentation = { "Returns the layer at which the region's graphics are drawn relative to others in its frame" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "layer", Type = "value", Nilable = false --[[ Documentation = { "String identifying a graphics layer; one of the following values: (string, layer) ARTWORKBACKGROUNDBORDERHIGHLIGHTOVERLAY" }, ]] },
			},
		},
		{
			Name = "SetDrawLayer",
			Type = "Function",
			-- Documentation = { "Sets the layer at which the region's graphics are drawn relative to others in its frame" },

			Arguments =
			{
				{ Name = "layer", Type = "value", Nilable = false --[[ Documentation = { "String identifying a graphics layer; one of the following values: (string, layer) ARTWORKBACKGROUNDBORDERHIGHLIGHTOVERLAY" }, ]] },
			},
		},
		{
			Name = "SetVertexColor",
			Type = "Function",
			-- Documentation = { "Sets a color shading for the region's graphics" },

			Arguments =
			{
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the graphic (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
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

APIDocumentation:AddDocumentationTable(LayeredRegionAPI);

