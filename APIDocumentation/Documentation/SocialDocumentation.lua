local Social =
{
	Name = "Social",
	Type = "System",
	Namespace = "Social",

	Functions =
	{
		{
			Name = "AddFriend",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},

		},
		{
			Name = "AddIgnore",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},

		},
		{
			Name = "AddOrDelIgnore",
			Type = "Function",

			Arguments =
			{
				{ Name = "fullname", Type = "string", Nilable = false },
			},

		},
		{
			Name = "AddOrRemoveFriend",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "note", Type = "string", Nilable = false },
			},

		},
		{
			Name = "DelIgnore",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetFriendInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "class", Type = "string", Nilable = false },
				{ Name = "area", Type = "string", Nilable = false },
				{ Name = "connected", Type = "bool", Nilable = true },
				{ Name = "status", Type = "string", Nilable = false },
				{ Name = "note", Type = "string", Nilable = false },
				{ Name = "RAF", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "GetIgnoreName",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetNumFriends",
			Type = "Function",

			Returns =
			{
				{ Name = "numFriends", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumIgnores",
			Type = "Function",

			Returns =
			{
				{ Name = "numIgnores", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumWhoResults",
			Type = "Function",

			Returns =
			{
				{ Name = "numResults", Type = "number", Nilable = false },
				{ Name = "totalCount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSelectedFriend",
			Type = "Function",

			Returns =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSelectedIgnore",
			Type = "Function",

			Returns =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},
		},
		{
			Name = "GetWhoInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "guild", Type = "string", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "race", Type = "string", Nilable = false },
				{ Name = "class", Type = "string", Nilable = false },
				{ Name = "zone", Type = "string", Nilable = false },
				{ Name = "filename", Type = "string", Nilable = false },
			},
		},
		{
			Name = "IsIgnored",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isIgnored", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RemoveFriend",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SendWho",
			Type = "Function",

			Arguments =
			{
				{ Name = "filter", Type = "string", Nilable = false },
			},

		},
		{
			Name = "SetSelectedFriend",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetSelectedIgnore",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

		},
		{
			Name = "SetWhoToUI",
			Type = "Function",

			Arguments =
			{
				{ Name = "state", Type = "number", Nilable = false },
			},

		},
		{
			Name = "ShowFriends",
			Type = "Function",

		},
		{
			Name = "SortWho",
			Type = "Function",

			Arguments =
			{
				{ Name = "sortType", Type = "string", Nilable = false },
			},

		},
		{
			Name = "SetFriendNotes",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "note", Type = "string", Nilable = false },
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

APIDocumentation:AddDocumentationTable(Social);
