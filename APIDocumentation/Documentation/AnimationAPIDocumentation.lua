local AnimationAPI =
{
	Name = "Animation",
	Type = "ScriptObject",
	-- Documentation = { "Base type for all animation objects. Animations change visual properties of regions over time." },
	Inherits =
	{
		"ScriptObject",
		"ParentedObject",
	},

	Functions =
	{
		{
			Name = "GetDuration",
			Type = "Function",
			-- Documentation = { "Returns the time for the animation to progress from start to finish" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "duration", Type = "number", Nilable = false --[[ Documentation = { "Time for the animation to progress from start to finish (in seconds)" }, ]] },
			},
		},
		{
			Name = "GetElapsed",
			Type = "Function",
			-- Documentation = { "Returns the amount of time since the animation began playing" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "elapsed", Type = "number", Nilable = false --[[ Documentation = { "Amount of time since the animation began playing (in seconds)" }, ]] },
			},
		},
		{
			Name = "GetEndDelay",
			Type = "Function",
			-- Documentation = { "Returns the amount of time the animation delays after finishing" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "delay", Type = "number", Nilable = false --[[ Documentation = { "Time the animation delays after finishing (in seconds)" }, ]] },
			},
		},
		{
			Name = "GetMaxFramerate",
			Type = "Function",
			-- Documentation = { "Returns the maximum number of times per second that the animation will update its progress" },

			Arguments =
			{
			},
		},
		{
			Name = "GetOrder",
			Type = "Function",
			-- Documentation = { "Returns the order of the animation within its parent group" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "order", Type = "number", Nilable = false --[[ Documentation = { "Position at which the animation will play relative to others in its group (between 0 and 100)" }, ]] },
			},
		},
		{
			Name = "GetProgress",
			Type = "Function",
			-- Documentation = { "Returns the progress of an animation, ignoring smoothing effects" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "progress", Type = "number", Nilable = false --[[ Documentation = { "Progress of the animation: between 0.0 (at start) and 1.0 (at end)" }, ]] },
			},
		},
		{
			Name = "GetProgressWithDelay",
			Type = "Function",
			-- Documentation = { "Returns the progress of the animation and associated delays" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "progress", Type = "number", Nilable = false --[[ Documentation = { "Progress of the animation and its delays: between 0.0 (at start of start delay) and 1.0 (at end of end delay)" }, ]] },
			},
		},
		{
			Name = "GetRegionParent",
			Type = "Function",
			-- Documentation = { "Returns the `Region` object on which the animation operates" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "region", Type = "region, Region", Nilable = false --[[ Documentation = { "Reference to the Region object on which the animation operates (i.e. the parent of the animation's parent AnimationGroup)." }, ]] },
			},
		},
		{
			Name = "GetSmoothProgress",
			Type = "Function",
			-- Documentation = { "Returns the progress of the animation (ignoring start and end delay)" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "progress", Type = "number", Nilable = false --[[ Documentation = { "Progress of the animation: between 0.0 (at start) and 1.0 (at end)" }, ]] },
			},
		},
		{
			Name = "GetSmoothing",
			Type = "Function",
			-- Documentation = { "Returns the smoothing type for the animation" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "smoothType", Type = "value", Nilable = false --[[ Documentation = { "Type of smoothing for the animation (string) IN - Initially progressing slowly and accelerating towards the endIN_OUT - Initially progressing slowly and accelerating towards the middle, then slowing down towards the endNONE - Progresses at a constant rate from beginning to endOUT - Initially progressing quickly and slowing towards the end" }, ]] },
			},
		},
		{
			Name = "GetStartDelay",
			Type = "Function",
			-- Documentation = { "Returns the amount of time the animation delays before its progress begins" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "delay", Type = "number", Nilable = false --[[ Documentation = { "Amount of time the animation delays before its progress begins (in seconds)" }, ]] },
			},
		},
		{
			Name = "IsDelaying",
			Type = "Function",
			-- Documentation = { "Returns whether the animation is currently in the middle of a start or end delay" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "delaying", Type = "bool", Nilable = false --[[ Documentation = { "True if the animation is currently in its start or end delay period; false if the animation is currently between its start and end periods (or has none) or is not playing" }, ]] },
			},
		},
		{
			Name = "IsDone",
			Type = "Function",
			-- Documentation = { "Returns whether the animation has finished playing" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "done", Type = "bool", Nilable = false --[[ Documentation = { "True if the animation is finished playing; otherwise false" }, ]] },
			},
		},
		{
			Name = "IsPaused",
			Type = "Function",
			-- Documentation = { "Returns whether the animation is currently paused" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "paused", Type = "bool", Nilable = false --[[ Documentation = { "True if the animation is currently paused; false otherwise" }, ]] },
			},
		},
		{
			Name = "IsPlaying",
			Type = "Function",
			-- Documentation = { "Returns whether the animation is currently playing" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "playing", Type = "bool", Nilable = false --[[ Documentation = { "True if the animation is currently playing; otherwise false" }, ]] },
			},
		},
		{
			Name = "IsStopped",
			Type = "Function",
			-- Documentation = { "Returns whether the animation is currently stopped" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "stopped", Type = "bool", Nilable = false --[[ Documentation = { "True if the animation is currently stopped; otherwise false" }, ]] },
			},
		},
		{
			Name = "Pause",
			Type = "Function",
			-- Documentation = { "Pauses the animation" },

			Arguments =
			{
			},
		},
		{
			Name = "Play",
			Type = "Function",
			-- Documentation = { "Plays the animation" },

			Arguments =
			{
			},
		},
		{
			Name = "SetDuration",
			Type = "Function",
			-- Documentation = { "Sets the time for the animation to progress from start to finish" },

			Arguments =
			{
				{ Name = "duration", Type = "number", Nilable = false --[[ Documentation = { "Time for the animation to progress from start to finish (in seconds)" }, ]] },
			},
		},
		{
			Name = "SetEndDelay",
			Type = "Function",
			-- Documentation = { "Sets the amount of time for the animation to delay after finishing" },

			Arguments =
			{
				{ Name = "delay", Type = "number", Nilable = false --[[ Documentation = { "Time for the animation to delay after finishing (in seconds)" }, ]] },
			},
		},
		{
			Name = "SetMaxFramerate",
			Type = "Function",
			-- Documentation = { "Sets the maximum number of times per second for the animation to update its progress" },

			Arguments =
			{
			},
		},
		{
			Name = "SetOrder",
			Type = "Function",
			-- Documentation = { "Sets the order for the animation to play within its parent group" },

			Arguments =
			{
				{ Name = "order", Type = "number", Nilable = false --[[ Documentation = { "Position at which the animation should play relative to others in its group (between 0 and 100)" }, ]] },
			},
		},
		{
			Name = "SetParent",
			Type = "Function",
			-- Documentation = { "Sets the parent for the animation" },

			Arguments =
			{
				{ Name = "animGroup", Type = "animgroup, animationgroup", Nilable = false --[[ Documentation = { "The animation group to set as the parent of this animation" }, ]] },
				{ Name = "animGroupName", Type = "string", Nilable = false --[[ Documentation = { "The name of the animation group to set as the parent of this animation" }, ]] },
			},
		},
		{
			Name = "SetSmoothProgress",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetSmoothing",
			Type = "Function",
			-- Documentation = { "Sets the smoothing type for the animation" },

			Arguments =
			{
				{ Name = "smoothType", Type = "value", Nilable = false --[[ Documentation = { "Type of smoothing for the animation (string) IN - Initially progressing slowly and accelerating towards the endIN_OUT - Initially progressing slowly and accelerating towards the middle, then slowing down towards the endNONE - Progresses at a constant rate from beginning to endOUT - Initially progressing quickly and slowing towards the end" }, ]] },
			},
		},
		{
			Name = "SetStartDelay",
			Type = "Function",
			-- Documentation = { "Sets the amount of time for the animation to delay before its progress begins" },

			Arguments =
			{
				{ Name = "delay", Type = "number", Nilable = false --[[ Documentation = { "Amount of time for the animation to delay before its progress begins (in seconds)" }, ]] },
			},
		},
		{
			Name = "Stop",
			Type = "Function",
			-- Documentation = { "Stops the animation" },

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

APIDocumentation:AddDocumentationTable(AnimationAPI);

