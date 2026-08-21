local Movement =
{
	Name = "Movement",
	Type = "System",
	Namespace = "Movement",

	Functions =
	{
		{
			Name = "AscendStop",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "DescendStop",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "FollowUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "strict", Type = "bool", Nilable = true },
			},

		},
		{
			Name = "InteractUnit",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = false },
			},

		},
		{
			Name = "JumpOrAscendStart",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "MoveAndSteerStart",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "MoveAndSteerStop",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "MoveBackwardStart",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "MoveBackwardStop",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "MoveForwardStart",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "MoveForwardStop",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "PitchDownStart",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "PitchDownStop",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "PitchUpStart",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "PitchUpStop",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "SitStandOrDescendStart",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "StrafeLeftStart",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "StrafeLeftStop",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "StrafeRightStart",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "StrafeRightStop",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "ToggleAutoRun",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "ToggleRun",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "TurnLeftStart",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "TurnLeftStop",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "TurnOrActionStart",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "TurnOrActionStop",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "TurnRightStart",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "TurnRightStop",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
	},

	Events =
	{
		{
			Name = "AutofollowBegin",
			Type = "Event",
			LiteralName = "AUTOFOLLOW_BEGIN",
			Payload =
			{
				{ Name = "following", Type = "number", Nilable = false },
			},
		},
		{
			Name = "AutofollowEnd",
			Type = "Event",
			LiteralName = "AUTOFOLLOW_END",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Movement);
