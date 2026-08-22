local QuestPOIFrameAPI =
{
	Name = "QuestPOIFrame",
	Type = "ScriptObject",
	-- Documentation = { "A frame used to display quest points of interest on the world map." },
	Inherits =
	{
		"Frame",
	},

	Functions =
	{
		{
			Name = "DrawBlob",
			Type = "Function",
			-- Documentation = { "Draws the Blob for the Quest." },

			Arguments =
			{
			},
		},
		{
			Name = "DrawNone",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "EnableMerging",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "EnableSmoothing",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "GetNumTooltips",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "GetTooltipIndex",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetBorderAlpha",
			Type = "Function",
			-- Documentation = { "Set the alpha for the border texture" },

			Arguments =
			{
			},
		},
		{
			Name = "SetBorderScalar",
			Type = "Function",
			-- Documentation = { "Set the Border Scalar" },

			Arguments =
			{
			},
		},
		{
			Name = "SetBorderTexture",
			Type = "Function",
			-- Documentation = { "Sets the border Texture for the Blob" },

			Arguments =
			{
			},
		},
		{
			Name = "SetFillAlpha",
			Type = "Function",
			-- Documentation = { "Set the Alpha for the fill Texture" },

			Arguments =
			{
			},
		},
		{
			Name = "SetFillTexture",
			Type = "Function",
			-- Documentation = { "Set the fill Texture for the Blob." },

			Arguments =
			{
			},
		},
		{
			Name = "SetMergeThreshold",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetNumSplinePoints",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "UpdateMouseOverTooltip",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

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

APIDocumentation:AddDocumentationTable(QuestPOIFrameAPI);

