local Targeting =
{
	Name = "Targeting",
	Type = "System",
	Namespace = "Targeting",

	Functions =
	{
		{
			Name = "AssistUnit",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

		},
		{
			Name = "ClearFocus",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "ClearTarget",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "FocusUnit",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

		},
		{
			Name = "SpellCanTargetUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "canTarget", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SpellTargetUnit",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

		},
		{
			Name = "TargetLastEnemy",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "TargetLastFriend",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "TargetLastTarget",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "TargetNearest",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "backward", Type = "bool", Nilable = true },
			},

		},
		{
			Name = "TargetNearestEnemy",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "backward", Type = "bool", Nilable = false },
			},

		},
		{
			Name = "TargetNearestEnemyPlayer",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "backward", Type = "bool", Nilable = false },
			},

		},
		{
			Name = "TargetNearestFriend",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "backward", Type = "bool", Nilable = false },
			},

		},
		{
			Name = "TargetNearestFriendPlayer",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "backward", Type = "bool", Nilable = false },
			},

		},
		{
			Name = "TargetNearestPartyMember",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "backward", Type = "bool", Nilable = false },
			},

		},
		{
			Name = "TargetNearestRaidMember",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "backward", Type = "bool", Nilable = false },
			},

		},
		{
			Name = "TargetUnit",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "exactMatch", Type = "bool", Nilable = true },
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

APIDocumentation:AddDocumentationTable(Targeting);
