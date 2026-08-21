local LuaLibrary =
{
	Name = "Lua Library",
	Type = "System",
	Namespace = "Lua Library",

	Functions =
	{
		{
			Name = "abs",
			Type = "Function",

			Arguments =
			{
				{ Name = "x", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "absoluteValue", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ceil",
			Type = "Function",

			Arguments =
			{
				{ Name = "x", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "ceiling", Type = "number", Nilable = false },
			},
		},
		{
			Name = "collectgarbage",
			Type = "Function",

			Arguments =
			{
				{ Name = "option", Type = "string", Nilable = false },
				{ Name = "arg", Type = "number", Nilable = true },
			},

		},
		{
			Name = "date",
			Type = "Function",

			Arguments =
			{
				{ Name = "format", Type = "string", Nilable = true },
				{ Name = "time", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "dateValue", Type = "string", Nilable = false },
			},
		},
		{
			Name = "deg",
			Type = "Function",

			Arguments =
			{
				{ Name = "radians", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "degrees", Type = "number", Nilable = false },
			},
		},
		{
			Name = "difftime",
			Type = "Function",

			Arguments =
			{
				{ Name = "time2", Type = "number", Nilable = false },
				{ Name = "time1", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "seconds", Type = "number", Nilable = false },
			},
		},
		{
			Name = "error",
			Type = "Function",

			Arguments =
			{
				{ Name = "message", Type = "string", Nilable = false },
				{ Name = "level", Type = "number", Nilable = true },
			},

		},
		{
			Name = "exp",
			Type = "Function",

			Arguments =
			{
				{ Name = "x", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "exp", Type = "number", Nilable = false },
			},
		},
		{
			Name = "floor",
			Type = "Function",

			Arguments =
			{
				{ Name = "x", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "floor", Type = "number", Nilable = false },
			},
		},
		{
			Name = "foreach",
			Type = "Function",

		},
		{
			Name = "foreachi",
			Type = "Function",

		},
		{
			Name = "format",
			Type = "Function",

			Arguments =
			{
				{ Name = "formatString", Type = "string", Nilable = false },
				{ Name = "...", Type = "table", Nilable = false },
			},

			Returns =
			{
				{ Name = "formatted", Type = "number", Nilable = false },
			},
		},
		{
			Name = "frexp",
			Type = "Function",

			Arguments =
			{
				{ Name = "x", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "m", Type = "number", Nilable = false },
				{ Name = "e", Type = "number", Nilable = false },
			},
		},
		{
			Name = "gcinfo",
			Type = "Function",

			Returns =
			{
				{ Name = "count", Type = "number", Nilable = false },
			},
		},
		{
			Name = "getfenv",
			Type = "Function",

			Arguments =
			{
				{ Name = "f", Type = "function", Nilable = true },
				{ Name = "stackLevel", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "env", Type = "table", Nilable = false },
			},
		},
		{
			Name = "getmetatable",
			Type = "Function",

			Arguments =
			{
				{ Name = "object", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "metatable", Type = "string", Nilable = false },
			},
		},
		{
			Name = "getn",
			Type = "Function",

		},
		{
			Name = "gmatch",
			Type = "Function",

			Arguments =
			{
				{ Name = "s", Type = "string", Nilable = false },
				{ Name = "pattern", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "iterator", Type = "function", Nilable = false },
			},
		},
		{
			Name = "gsub",
			Type = "Function",

			Arguments =
			{
				{ Name = "s", Type = "string", Nilable = true },
				{ Name = "pattern", Type = "string", Nilable = true },
				{ Name = "rep", Type = "string", Nilable = true },
				{ Name = "repTable", Type = "table", Nilable = true },
				{ Name = "repFunc", Type = "function", Nilable = true },
				{ Name = "maxReplaced", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "newString", Type = "string", Nilable = false },
				{ Name = "numMatched", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ipairs",
			Type = "Function",

			Arguments =
			{
				{ Name = "t", Type = "table", Nilable = false },
			},

			Returns =
			{
				{ Name = "iterator", Type = "function", Nilable = false },
				{ Name = "t", Type = "table", Nilable = false },
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},
		},
		{
			Name = "ldexp",
			Type = "Function",

			Arguments =
			{
				{ Name = "m", Type = "number", Nilable = false },
				{ Name = "e", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "x", Type = "number", Nilable = false },
			},
		},
		{
			Name = "loadstring",
			Type = "Function",

			Arguments =
			{
				{ Name = "s", Type = "string", Nilable = false },
				{ Name = "chunkname", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "chunk", Type = "function", Nilable = false },
				{ Name = "error", Type = "string", Nilable = false },
			},
		},
		{
			Name = "log",
			Type = "Function",

			Arguments =
			{
				{ Name = "x", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "naturalLog", Type = "number", Nilable = false },
			},
		},
		{
			Name = "log10",
			Type = "Function",

			Arguments =
			{
				{ Name = "x", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "base10log", Type = "number", Nilable = false },
			},
		},
		{
			Name = "max",
			Type = "Function",

			Arguments =
			{
				{ Name = "...", Type = "any", Nilable = false },
			},

			Returns =
			{
				{ Name = "maximum", Type = "number", Nilable = false },
			},
		},
		{
			Name = "min",
			Type = "Function",

			Arguments =
			{
				{ Name = "...", Type = "any", Nilable = false },
			},

			Returns =
			{
				{ Name = "maximum", Type = "number", Nilable = false },
			},
		},
		{
			Name = "next",
			Type = "Function",

			Arguments =
			{
				{ Name = "t", Type = "table", Nilable = false },
				{ Name = "key", Type = "any", Nilable = true },
			},

			Returns =
			{
				{ Name = "nextKey", Type = "any", Nilable = false },
				{ Name = "nextValue", Type = "any", Nilable = false },
			},
		},
		{
			Name = "pairs",
			Type = "Function",

			Arguments =
			{
				{ Name = "t", Type = "table", Nilable = false },
			},

			Returns =
			{
				{ Name = "iterator", Type = "function", Nilable = false },
				{ Name = "t", Type = "table", Nilable = false },
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},
		},
		{
			Name = "pcall",
			Type = "Function",

			Arguments =
			{
				{ Name = "f", Type = "function", Nilable = false },
				{ Name = "...", Type = "table", Nilable = false },
			},

			Returns =
			{
				{ Name = "status", Type = "bool", Nilable = false },
				{ Name = "...", Type = "list", Nilable = false },
			},
		},
		{
			Name = "rad",
			Type = "Function",

			Arguments =
			{
				{ Name = "degrees", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "radians", Type = "number", Nilable = false },
			},
		},
		{
			Name = "random",
			Type = "Function",

			Arguments =
			{
				{ Name = "m", Type = "number", Nilable = true },
				{ Name = "n", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "randomNum", Type = "number", Nilable = false },
			},
		},
		{
			Name = "rawequal",
			Type = "Function",

			Arguments =
			{
				{ Name = "v1", Type = "string", Nilable = false },
				{ Name = "v2", Type = "function", Nilable = false },
			},

			Returns =
			{
				{ Name = "isEqual", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "rawget",
			Type = "Function",

			Arguments =
			{
				{ Name = "t", Type = "table", Nilable = false },
				{ Name = "key", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "value", Type = "string", Nilable = false },
			},
		},
		{
			Name = "rawset",
			Type = "Function",

			Arguments =
			{
				{ Name = "t", Type = "table", Nilable = false },
				{ Name = "key", Type = "string", Nilable = false },
				{ Name = "value", Type = "string", Nilable = false },
			},

		},
		{
			Name = "select",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "any", Nilable = false },
				{ Name = "...", Type = "any", Nilable = false },
			},

			Returns =
			{
				{ Name = "...", Type = "any", Nilable = false },
			},
		},
		{
			Name = "setfenv",
			Type = "Function",

			Arguments =
			{
				{ Name = "f", Type = "function", Nilable = true },
				{ Name = "stackLevel", Type = "number", Nilable = true },
				{ Name = "t", Type = "table", Nilable = true },
			},

			Returns =
			{
				{ Name = "f", Type = "function", Nilable = false },
			},
		},
		{
			Name = "setmetatable",
			Type = "Function",

			Arguments =
			{
				{ Name = "t", Type = "table", Nilable = false },
				{ Name = "metatable", Type = "table", Nilable = false },
			},

			Returns =
			{
				{ Name = "t", Type = "table", Nilable = false },
			},
		},
		{
			Name = "sort",
			Type = "Function",

			Arguments =
			{
				{ Name = "table", Type = "table", Nilable = false },
				{ Name = "comparator", Type = "function", Nilable = true },
			},
		},
		{
			Name = "sqrt",
			Type = "Function",

			Arguments =
			{
				{ Name = "x", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "root", Type = "number", Nilable = false },
			},
		},
		{
			Name = "strbyte",
			Type = "Function",

			Arguments =
			{
				{ Name = "s", Type = "string", Nilable = false },
				{ Name = "firstChar", Type = "number", Nilable = false },
				{ Name = "lastChar", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "value", Type = "number", Nilable = false },
				{ Name = "...", Type = "list", Nilable = false },
			},
		},
		{
			Name = "strchar",
			Type = "Function",

			Arguments =
			{
				{ Name = "n", Type = "number", Nilable = false },
				{ Name = "...", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "s", Type = "number", Nilable = false },
			},
		},
		{
			Name = "strfind",
			Type = "Function",

			Arguments =
			{
				{ Name = "s", Type = "string", Nilable = false },
				{ Name = "pattern", Type = "string", Nilable = false },
				{ Name = "init", Type = "number", Nilable = false },
				{ Name = "plain", Type = "bool", Nilable = true },
			},

			Returns =
			{
				{ Name = "start", Type = "number", Nilable = false },
				{ Name = "end", Type = "number", Nilable = false },
				{ Name = "...", Type = "list", Nilable = false },
			},
		},
		{
			Name = "strlen",
			Type = "Function",

			Arguments =
			{
				{ Name = "s", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "length", Type = "number", Nilable = false },
			},
		},
		{
			Name = "strlower",
			Type = "Function",

			Arguments =
			{
				{ Name = "s", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "lowerCase", Type = "string", Nilable = false },
			},
		},
		{
			Name = "strmatch",
			Type = "Function",

			Arguments =
			{
				{ Name = "s", Type = "string", Nilable = false },
				{ Name = "pattern", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "match", Type = "string", Nilable = false },
				{ Name = "...", Type = "list", Nilable = false },
			},
		},
		{
			Name = "strrep",
			Type = "Function",

			Arguments =
			{
				{ Name = "s", Type = "string", Nilable = false },
				{ Name = "n", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "repeated", Type = "string", Nilable = false },
			},
		},
		{
			Name = "strrev",
			Type = "Function",

			Arguments =
			{
				{ Name = "s", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "s", Type = "string", Nilable = false },
			},
		},
		{
			Name = "strsub",
			Type = "Function",

			Arguments =
			{
				{ Name = "s", Type = "string", Nilable = false },
				{ Name = "firstChar", Type = "number", Nilable = false },
				{ Name = "lastChar", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "s", Type = "string", Nilable = false },
			},
		},
		{
			Name = "strupper",
			Type = "Function",

			Arguments =
			{
				{ Name = "str", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "lowerCase", Type = "string", Nilable = false },
			},
		},
		{
			Name = "time",
			Type = "Function",

			Arguments =
			{
				{ Name = "timeDesc", Type = "table", Nilable = true },
			},

			Returns =
			{
				{ Name = "t", Type = "number", Nilable = false },
			},
		},
		{
			Name = "tinsert",
			Type = "Function",

			Arguments =
			{
				{ Name = "table", Type = "table", Nilable = false },
				{ Name = "position", Type = "number", Nilable = true },
				{ Name = "value", Type = "string", Nilable = false },
			},

		},
		{
			Name = "tonumber",
			Type = "Function",

			Arguments =
			{
				{ Name = "x", Type = "string", Nilable = false },
				{ Name = "base", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "numValue", Type = "number", Nilable = false },
			},
		},
		{
			Name = "tostring",
			Type = "Function",

			Arguments =
			{
				{ Name = "value", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "stringValue", Type = "string", Nilable = false },
			},
		},
		{
			Name = "unpack",
			Type = "Function",

			Arguments =
			{
				{ Name = "t", Type = "table", Nilable = false },
				{ Name = "i", Type = "number", Nilable = true },
				{ Name = "j", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "...", Type = "any", Nilable = false },
			},
		},
		{
			Name = "xpcall",
			Type = "Function",

			Arguments =
			{
				{ Name = "f", Type = "function", Nilable = false },
				{ Name = "err", Type = "function", Nilable = false },
			},

			Returns =
			{
				{ Name = "status", Type = "bool", Nilable = false },
				{ Name = "...", Type = "list", Nilable = false },
			},
		},
		{
			Name = "assert",
			Type = "Function",

			Arguments =
			{
				{ Name = "condition", Type = "any", Nilable = false },
				{ Name = "message", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "value", Type = "any", Nilable = true },
			},
		},
		{
			Name = "mod",
			Type = "Function",

			Arguments =
			{
				{ Name = "x", Type = "number", Nilable = false },
				{ Name = "y", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "remainder", Type = "number", Nilable = false },
			},
		},
		{
			Name = "tremove",
			Type = "Function",

			Arguments =
			{
				{ Name = "table", Type = "table", Nilable = false },
				{ Name = "position", Type = "number", Nilable = false },
			},
		},
		{
			Name = "type",
			Type = "Function",

			Arguments =
			{
				{ Name = "v", Type = "any", Nilable = false },
			},

			Returns =
			{
				{ Name = "typeString", Type = "string", Nilable = false },
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

APIDocumentation:AddDocumentationTable(LuaLibrary);
