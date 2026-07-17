local PathAPI =
{
	Name = "Path",
	Type = "ScriptObject",
	-- Documentation = { "An animation type that moves a region along a defined path made of control points." },
	Inherits =
	{
		"Animation",
	},

	Functions =
	{
		{
			Name = "CreateControlPoint",
			Type = "Function",
			-- Documentation = { "Creates a new control point for the given path" },

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "The name of the object" }, ]] },
				{ Name = "template", Type = "string", Nilable = false --[[ Documentation = { "The template from which the new point should inherit" }, ]] },
				{ Name = "order", Type = "number", Nilable = false --[[ Documentation = { "The order of the new control point" }, ]] },
			},
		},
		{
			Name = "GetControlPoints",
			Type = "Function",
			-- Documentation = { "Returns the control points that belong to a given path" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "...", Type = "ControlPoint", Nilable = false --[[ Documentation = { "A list of ControlPoint objects that belong to the given path." }, ]] },
			},
		},
		{
			Name = "GetCurve",
			Type = "Function",
			-- Documentation = { "Returns the curveType of the given path" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "curveType", Type = "value", Nilable = false --[[ Documentation = { "The curse type for the given path (string) NONE - The control points are used literally.SMOOTH - The control points are used with a smoothing function that may give a more pleasing animation." }, ]] },
			},
		},
		{
			Name = "GetMaxOrder",
			Type = "Function",
			-- Documentation = { "Returns the maximum order of the control points belonging to a given path" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "max", Type = "number", Nilable = false --[[ Documentation = { "The maximum order of the control points belonging to the given path. This can be used to determine how many points a path contains." }, ]] },
			},
		},
		{
			Name = "SetCurve",
			Type = "Function",
			-- Documentation = { "Sets the curve type for the path animation" },

			Arguments =
			{
				{ Name = "curveType", Type = "value", Nilable = false --[[ Documentation = { "The curse type for the given path (string) NONE - The control points are used literally.SMOOTH - The control points are used with a smoothing function that may give a more pleasing animation." }, ]] },
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

APIDocumentation:AddDocumentationTable(PathAPI);

