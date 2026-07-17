local ControlPointAPI =
{
	Name = "ControlPoint",
	Type = "ScriptObject",
	-- Documentation = { "A point along a Path animation that defines the curve the animated region follows." },
	Inherits =
	{
		"ParentedObject",
	},

	Functions =
	{
		{
			Name = "GetOffset",
			Type = "Function",
			-- Documentation = { "Returns the offset for the control point" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "x", Type = "number", Nilable = false --[[ Documentation = { "The x coordinate offset for the control point" }, ]] },
				{ Name = "y", Type = "number", Nilable = false --[[ Documentation = { "The y coordinate offset for the control point" }, ]] },
			},
		},
		{
			Name = "GetOrder",
			Type = "Function",
			-- Documentation = { "Returns the order of the control point in a path animation" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "order", Type = "number", Nilable = false --[[ Documentation = { "Position at which the control point will be traversed relative to others in the same path animation (between 0 and 100)" }, ]] },
			},
		},
		{
			Name = "SetOffset",
			Type = "Function",
			-- Documentation = { "Sets the offset for the control point" },

			Arguments =
			{
				{ Name = "x", Type = "number", Nilable = false --[[ Documentation = { "The x coordinate offset for the control point" }, ]] },
				{ Name = "y", Type = "number", Nilable = false --[[ Documentation = { "The y coordinate offset for the control point" }, ]] },
			},
		},
		{
			Name = "SetOrder",
			Type = "Function",
			-- Documentation = { "Sets the order of the control point in a path animation" },

			Arguments =
			{
				{ Name = "order", Type = "number", Nilable = false --[[ Documentation = { "Position at which the control point will be traversed relative to others in the same path animation (between 0 and 100)" }, ]] },
			},
		},
		{
			Name = "SetParent",
			Type = "Function",
			-- Documentation = { "Sets a new path animation parent for a control point" },

			Arguments =
			{
				{ Name = "path", Type = "table", Nilable = false --[[ Documentation = { "The path object to be set as parent." }, ]] },
				{ Name = "path", Type = "string", Nilable = false --[[ Documentation = { "The name of a path object to be set as parent." }, ]] },
				{ Name = "order", Type = "number", Nilable = false --[[ Documentation = { "The order index to set for the control point in the new parent animation." }, ]] },
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

APIDocumentation:AddDocumentationTable(ControlPointAPI);

