local AnimationGroupAPI =
{
	Name = "AnimationGroup",
	Type = "ScriptObject",
	-- Documentation = { "A container that manages a set of animations, controlling their playback order and looping." },
	Inherits =
	{
		"ScriptObject",
		"ParentedObject",
	},

	Functions =
	{
		{
			Name = "CreateAnimation",
			Type = "Function",
			-- Documentation = { "Creates an Animation as a child of this group" },

			Arguments =
			{
				{ Name = "animationType", Type = "string", Nilable = false --[[ Documentation = { "Type of Animation object to be created (see widgets hierarchy for available subtypes)" }, ]] },
				{ Name = "name", Type = "string", Nilable = false --[[ Documentation = { "Global name to use for the new animation" }, ]] },
				{ Name = "inheritsFrom", Type = "string", Nilable = false --[[ Documentation = { "A template from which to inherit" }, ]] },
			},

			Returns =
			{
				{ Name = "animation", Type = "animation", Nilable = false --[[ Documentation = { "The newly created animation" }, ]] },
			},
		},
		{
			Name = "Finish",
			Type = "Function",
			-- Documentation = { "Causes animations within the group to complete and stop" },

			Arguments =
			{
			},
		},
		{
			Name = "GetAnimations",
			Type = "Function",
			-- Documentation = { "Returns a list of animations belonging to the group" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "...", Type = "list", Nilable = false --[[ Documentation = { "A list of Animation objects belonging to the animation group" }, ]] },
			},
		},
		{
			Name = "GetDuration",
			Type = "Function",
			-- Documentation = { "Returns the duration of a single loop cycle for the group, as determined by its child animations" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "duration", Type = "number", Nilable = false --[[ Documentation = { "Total duration of all child animations (in seconds)" }, ]] },
			},
		},
		{
			Name = "GetInitialOffset",
			Type = "Function",
			-- Documentation = { "Returns the starting static translation for the animated region" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "x", Type = "number", Nilable = false --[[ Documentation = { "Horizontal distance to offset the animated region (in pixels)" }, ]] },
				{ Name = "y", Type = "number", Nilable = false --[[ Documentation = { "Vertical distance to offset the animated region (in pixels)" }, ]] },
			},
		},
		{
			Name = "GetLoopState",
			Type = "Function",
			-- Documentation = { "Returns the current loop state of the group" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "loopState", Type = "value", Nilable = false --[[ Documentation = { "Loop state of the animation group (string) FORWARD - In transition from the start state to the final stateNONE - Not loopingREVERSE - In transition from the final state back to the start state" }, ]] },
			},
		},
		{
			Name = "GetLooping",
			Type = "Function",
			-- Documentation = { "Returns the looping behavior of the group" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "loopType", Type = "instantly resetting from the final state to the initial state between repetitions", Nilable = false --[[ Documentation = { "Looping type for the animation group (string) BOUNCE - Repeatedly animates forward from the initial state to the final state then backwards to the initial stateNONE - No looping; animates from the initial state to the final state once and stopsREPEAT - Repeatedly animates forward from the initial state to the final state" }, ]] },
			},
		},
		{
			Name = "GetMaxOrder",
			Type = "Function",
			-- Documentation = { "Returns the highest order amongst the animations in the group" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "maxOrder", Type = "number", Nilable = false --[[ Documentation = { "Highest ordering value (see Animation:GetOrder()) of the animations in the group" }, ]] },
			},
		},
		{
			Name = "GetProgress",
			Type = "Function",
			-- Documentation = { "Returns the current state of the animation group's progress" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "progress", Type = "number", Nilable = false --[[ Documentation = { "Value indicating the current state of the group animation: between 0.0 (initial state, child animations not yet started) and 1.0 (final state, all child animations complete)" }, ]] },
			},
		},
		{
			Name = "IsDone",
			Type = "Function",
			-- Documentation = { "Returns whether the group has finished playing" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "done", Type = "bool", Nilable = false --[[ Documentation = { "True if the group has finished playing; false otherwise" }, ]] },
			},
		},
		{
			Name = "IsPaused",
			Type = "Function",
			-- Documentation = { "Returns whether the group is paused" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "paused", Type = "bool", Nilable = false --[[ Documentation = { "True if animation of the group is currently paused; false otherwise" }, ]] },
			},
		},
		{
			Name = "IsPendingFinish",
			Type = "Function",
			-- Documentation = { "Returns whether or not the animation group is pending finish" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "isPending", Type = "bool", Nilable = false --[[ Documentation = { "Whether or not the animation group is currently pending a finish command.  Since the Finish() method does not immediately stop the animation group, this method can be used to test if Finish() has been called and the group will finish at the end of the current loop." }, ]] },
			},
		},
		{
			Name = "IsPlaying",
			Type = "Function",
			-- Documentation = { "Returns whether the group is playing" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "playing", Type = "bool", Nilable = false --[[ Documentation = { "True if the group is currently animating; false otherwise" }, ]] },
			},
		},
		{
			Name = "Pause",
			Type = "Function",
			-- Documentation = { "Pauses animation of the group" },

			Arguments =
			{
			},
		},
		{
			Name = "Play",
			Type = "Function",
			-- Documentation = { "Starts animating the group" },

			Arguments =
			{
			},
		},
		{
			Name = "SetInitialOffset",
			Type = "Function",
			-- Documentation = { "Sets a static translation for the animated region" },

			Arguments =
			{
				{ Name = "x", Type = "number", Nilable = false --[[ Documentation = { "Horizontal distance to offset the animated region (in pixels)" }, ]] },
				{ Name = "y", Type = "number", Nilable = false --[[ Documentation = { "Vertical distance to offset the animated region (in pixels)" }, ]] },
			},
		},
		{
			Name = "SetLooping",
			Type = "Function",
			-- Documentation = { "Sets the looping behavior of the group" },

			Arguments =
			{
				{ Name = "loopType", Type = "instantly resetting from the final state to the initial state between repetitions", Nilable = false --[[ Documentation = { "Looping type for the animation group (string) BOUNCE - Repeatedly animates forward from the initial state to the final state then backwards to the initial stateNONE - No looping; animates from the initial state to the final state once and stopsREPEAT - Repeatedly animates forward from the initial state to the final state" }, ]] },
			},
		},
		{
			Name = "Stop",
			Type = "Function",
			-- Documentation = { "Stops animation of the group" },

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

APIDocumentation:AddDocumentationTable(AnimationGroupAPI);

