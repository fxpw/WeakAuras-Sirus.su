local FrameXML =
{
	Name = "FrameXML",
	Type = "System",
	Namespace = "FrameXML",

	Functions =
	{
		{
			Name = "ShowUIPanel",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "force", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "HideUIPanel",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "skipSetPoint", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "ToggleFrame",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "UIFrameFade",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "fadeInfo", Type = "table", Nilable = false },
			},
		},
		{
			Name = "UIFrameFadeIn",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "timeToFade", Type = "number", Nilable = false },
				{ Name = "startAlpha", Type = "number", Nilable = true },
				{ Name = "endAlpha", Type = "number", Nilable = true },
			},
		},
		{
			Name = "UIFrameFadeOut",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "timeToFade", Type = "number", Nilable = false },
				{ Name = "startAlpha", Type = "number", Nilable = true },
				{ Name = "endAlpha", Type = "number", Nilable = true },
			},
		},
		{
			Name = "UIFrameFadeRemoveFrame",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "UIFrameIsFading",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
			Returns =
			{
				{ Name = "isFading", Type = "number", Nilable = true },
			},
		},
		{
			Name = "UIFrameFlash",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "fadeInTime", Type = "number", Nilable = false },
				{ Name = "fadeOutTime", Type = "number", Nilable = false },
				{ Name = "flashDuration", Type = "number", Nilable = false },
				{ Name = "showWhenDone", Type = "bool", Nilable = false },
				{ Name = "flashInHoldTime", Type = "number", Nilable = true },
				{ Name = "flashOutHoldTime", Type = "number", Nilable = true },
				{ Name = "syncId", Type = "any", Nilable = true },
			},
		},
		{
			Name = "UIFrameIsFlashing",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
			Returns =
			{
				{ Name = "isFlashing", Type = "number", Nilable = true },
			},
		},
		{
			Name = "UIFrameFlashStop",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "StaticPopup_Show",
			Type = "Function",
			Arguments =
			{
				{ Name = "which", Type = "string", Nilable = false },
				{ Name = "textArg1", Type = "string", Nilable = true },
				{ Name = "textArg2", Type = "string", Nilable = true },
				{ Name = "data", Type = "any", Nilable = true },
			},
			Returns =
			{
				{ Name = "dialog", Type = "frame", Nilable = true },
			},
		},
		{
			Name = "StaticPopup_Hide",
			Type = "Function",
			Arguments =
			{
				{ Name = "which", Type = "string", Nilable = false },
				{ Name = "data", Type = "any", Nilable = true },
			},
		},
		{
			Name = "StaticPopup_Visible",
			Type = "Function",
			Arguments =
			{
				{ Name = "which", Type = "string", Nilable = false },
			},
			Returns =
			{
				{ Name = "dialog", Type = "frame", Nilable = true },
			},
		},
		{
			Name = "CooldownFrame_SetTimer",
			Type = "Function",
			Arguments =
			{
				{ Name = "cooldown", Type = "frame", Nilable = false },
				{ Name = "start", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
				{ Name = "enable", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GameTooltip_SetDefaultAnchor",
			Type = "Function",
			Arguments =
			{
				{ Name = "tooltip", Type = "frame", Nilable = false },
				{ Name = "parent", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "GameTooltip_ShowCompareItem",
			Type = "Function",
			Arguments =
			{
				{ Name = "tooltip", Type = "frame", Nilable = true },
				{ Name = "shift", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "GameTooltip_Hide",
			Type = "Function",
		},
		{
			Name = "EasyMenu",
			Type = "Function",
			Arguments =
			{
				{ Name = "menuList", Type = "table", Nilable = false },
				{ Name = "menuFrame", Type = "frame", Nilable = false },
				{ Name = "anchor", Type = "any", Nilable = false },
				{ Name = "x", Type = "number", Nilable = true },
				{ Name = "y", Type = "number", Nilable = true },
				{ Name = "displayMode", Type = "string", Nilable = true },
				{ Name = "autoHideDelay", Type = "number", Nilable = true },
			},
		},
		{
			Name = "UIDropDownMenu_Initialize",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "initFunction", Type = "function", Nilable = false },
				{ Name = "displayMode", Type = "string", Nilable = true },
				{ Name = "level", Type = "number", Nilable = true },
				{ Name = "menuList", Type = "table", Nilable = true },
			},
		},
		{
			Name = "UIDropDownMenu_CreateInfo",
			Type = "Function",
			Returns =
			{
				{ Name = "info", Type = "table", Nilable = false },
			},
		},
		{
			Name = "UIDropDownMenu_AddButton",
			Type = "Function",
			Arguments =
			{
				{ Name = "info", Type = "table", Nilable = false },
				{ Name = "level", Type = "number", Nilable = true },
			},
		},
		{
			Name = "ToggleDropDownMenu",
			Type = "Function",
			Arguments =
			{
				{ Name = "level", Type = "number", Nilable = true },
				{ Name = "value", Type = "any", Nilable = true },
				{ Name = "dropDownFrame", Type = "frame", Nilable = true },
				{ Name = "anchorName", Type = "any", Nilable = true },
				{ Name = "xOffset", Type = "number", Nilable = true },
				{ Name = "yOffset", Type = "number", Nilable = true },
				{ Name = "menuList", Type = "table", Nilable = true },
				{ Name = "button", Type = "string", Nilable = true },
			},
		},
		{
			Name = "CloseDropDownMenus",
			Type = "Function",
			Arguments =
			{
				{ Name = "level", Type = "number", Nilable = true },
			},
		},
		{
			Name = "UIDropDownMenu_SetWidth",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "width", Type = "number", Nilable = false },
				{ Name = "padding", Type = "number", Nilable = true },
			},
		},
		{
			Name = "UIDropDownMenu_SetText",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UIDropDownMenu_GetText",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
			Returns =
			{
				{ Name = "text", Type = "string", Nilable = true },
			},
		},
		{
			Name = "UIDropDownMenu_SetSelectedID",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "id", Type = "number", Nilable = true },
				{ Name = "useValue", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "UIDropDownMenu_SetSelectedName",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "useValue", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "UIDropDownMenu_GetSelectedName",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
			Returns =
			{
				{ Name = "name", Type = "string", Nilable = true },
			},
		},
		{
			Name = "UIDropDownMenu_GetSelectedID",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
			Returns =
			{
				{ Name = "id", Type = "number", Nilable = true },
			},
		},
		{
			Name = "UIDropDownMenu_SetSelectedValue",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "value", Type = "any", Nilable = true },
				{ Name = "useValue", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "UIDropDownMenu_GetSelectedValue",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
			Returns =
			{
				{ Name = "value", Type = "any", Nilable = true },
			},
		},
		{
			Name = "PanelTemplates_Tab_OnClick",
			Type = "Function",
			Arguments =
			{
				{ Name = "tab", Type = "frame", Nilable = false },
				{ Name = "frame", Type = "frame", Nilable = true },
			},
		},
		{
			Name = "PanelTemplates_SetTab",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "id", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PanelTemplates_GetSelectedTab",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
			Returns =
			{
				{ Name = "id", Type = "number", Nilable = true },
			},
		},
		{
			Name = "PanelTemplates_UpdateTabs",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "PanelTemplates_SetNumTabs",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "numTabs", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PanelTemplates_DisableTab",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "index", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PanelTemplates_EnableTab",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "index", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PanelTemplates_TabResize",
			Type = "Function",
			Arguments =
			{
				{ Name = "tab", Type = "frame", Nilable = false },
				{ Name = "padding", Type = "number", Nilable = true },
				{ Name = "absoluteSize", Type = "number", Nilable = true },
				{ Name = "maxWidth", Type = "number", Nilable = true },
				{ Name = "absoluteTextSize", Type = "number", Nilable = true },
			},
		},
		{
			Name = "FauxScrollFrame_Update",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "numItems", Type = "number", Nilable = false },
				{ Name = "numToDisplay", Type = "number", Nilable = false },
				{ Name = "valueStep", Type = "number", Nilable = false },
				{ Name = "button", Type = "frame", Nilable = true },
				{ Name = "smallWidth", Type = "number", Nilable = true },
				{ Name = "bigWidth", Type = "number", Nilable = true },
				{ Name = "highlightFrame", Type = "frame", Nilable = true },
				{ Name = "smallHighlightWidth", Type = "number", Nilable = true },
				{ Name = "bigHighlightWidth", Type = "number", Nilable = true },
				{ Name = "alwaysShowScrollBar", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "FauxScrollFrame_OnVerticalScroll",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "value", Type = "number", Nilable = false },
				{ Name = "itemHeight", Type = "number", Nilable = false },
				{ Name = "updateFunction", Type = "function", Nilable = false },
			},
		},
		{
			Name = "FauxScrollFrame_GetOffset",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
			Returns =
			{
				{ Name = "offset", Type = "number", Nilable = false },
			},
		},
		{
			Name = "FauxScrollFrame_SetOffset",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "offset", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UIDropDownMenu_Refresh",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "useValue", Type = "bool", Nilable = true },
				{ Name = "dropdownLevel", Type = "number", Nilable = true },
			},
		},
		{
			Name = "HideDropDownMenu",
			Type = "Function",
			Arguments =
			{
				{ Name = "level", Type = "number", Nilable = true },
			},
		},
		{
			Name = "UIDropDownMenu_SetButtonWidth",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "width", Type = "any", Nilable = false },
			},
		},
		{
			Name = "UIDropDownMenu_ClearAll",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "UIDropDownMenu_JustifyText",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "justification", Type = "string", Nilable = false },
			},
		},
		{
			Name = "UIDropDownMenu_SetAnchor",
			Type = "Function",
			Arguments =
			{
				{ Name = "dropdown", Type = "frame", Nilable = false },
				{ Name = "xOffset", Type = "number", Nilable = true },
				{ Name = "yOffset", Type = "number", Nilable = true },
				{ Name = "point", Type = "string", Nilable = true },
				{ Name = "relativeTo", Type = "any", Nilable = true },
				{ Name = "relativePoint", Type = "string", Nilable = true },
			},
		},
		{
			Name = "UIDropDownMenu_DisableButton",
			Type = "Function",
			Arguments =
			{
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "id", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UIDropDownMenu_EnableButton",
			Type = "Function",
			Arguments =
			{
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "id", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UIDropDownMenu_SetButtonText",
			Type = "Function",
			Arguments =
			{
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "text", Type = "string", Nilable = false },
				{ Name = "colorCode", Type = "string", Nilable = true },
			},
		},
		{
			Name = "UIDropDownMenu_DisableDropDown",
			Type = "Function",
			Arguments =
			{
				{ Name = "dropDown", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "UIDropDownMenu_EnableDropDown",
			Type = "Function",
			Arguments =
			{
				{ Name = "dropDown", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "UIDropDownMenu_IsEnabled",
			Type = "Function",
			Arguments =
			{
				{ Name = "dropDown", Type = "frame", Nilable = false },
			},
			Returns =
			{
				{ Name = "enabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ColorPicker_GetPreviousValues",
			Type = "Function",
			Returns =
			{
				{ Name = "r", Type = "number", Nilable = true },
				{ Name = "g", Type = "number", Nilable = true },
				{ Name = "b", Type = "number", Nilable = true },
			},
		},
		{
			Name = "HybridScrollFrame_Update",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "totalHeight", Type = "number", Nilable = false },
				{ Name = "displayedHeight", Type = "number", Nilable = false },
			},
		},
		{
			Name = "HybridScrollFrame_GetOffset",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
			Returns =
			{
				{ Name = "offset", Type = "number", Nilable = false },
				{ Name = "exactOffset", Type = "number", Nilable = false },
			},
		},
		{
			Name = "HybridScrollFrame_ExpandButton",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "offset", Type = "number", Nilable = false },
				{ Name = "height", Type = "number", Nilable = false },
			},
		},
		{
			Name = "HybridScrollFrame_CollapseButton",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "HybridScrollFrame_SetOffset",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "offset", Type = "number", Nilable = false },
			},
		},
		{
			Name = "HybridScrollFrame_CreateButtons",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "buttonTemplate", Type = "string", Nilable = false },
				{ Name = "initialOffsetX", Type = "number", Nilable = true },
				{ Name = "initialOffsetY", Type = "number", Nilable = true },
				{ Name = "initialPoint", Type = "string", Nilable = true },
				{ Name = "initialRelative", Type = "string", Nilable = true },
				{ Name = "offsetX", Type = "number", Nilable = true },
				{ Name = "offsetY", Type = "number", Nilable = true },
				{ Name = "point", Type = "string", Nilable = true },
				{ Name = "relativePoint", Type = "string", Nilable = true },
			},
		},
		{
			Name = "SecureHandlerWrapScript",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "script", Type = "string", Nilable = false },
				{ Name = "header", Type = "frame", Nilable = false },
				{ Name = "preBody", Type = "string", Nilable = false },
				{ Name = "postBody", Type = "string", Nilable = true },
			},
		},
		{
			Name = "SecureHandlerUnwrapScript",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "script", Type = "string", Nilable = false },
			},
			Returns =
			{
				{ Name = "header", Type = "frame", Nilable = true },
				{ Name = "preBody", Type = "string", Nilable = true },
				{ Name = "postBody", Type = "string", Nilable = true },
			},
		},
		{
			Name = "SecureHandlerExecute",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "body", Type = "string", Nilable = false },
			},
		},
		{
			Name = "SecureHandlerSetFrameRef",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "label", Type = "string", Nilable = false },
				{ Name = "refFrame", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "SecondsToTimeAbbrev",
			Type = "Function",
			Arguments =
			{
				{ Name = "seconds", Type = "number", Nilable = false },
			},
			Returns =
			{
				{ Name = "text", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetBindingText",
			Type = "Function",
			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "prefix", Type = "string", Nilable = true },
				{ Name = "returnAbbr", Type = "bool", Nilable = true },
			},
			Returns =
			{
				{ Name = "text", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetBindingFromClick",
			Type = "Function",
			Arguments =
			{
				{ Name = "input", Type = "string", Nilable = false },
			},
			Returns =
			{
				{ Name = "binding", Type = "string", Nilable = false },
			},
		},
		{
			Name = "BuildListString",
			Type = "Function",
			Arguments =
			{
				{ Name = "...", Type = "any", Nilable = true },
			},
			Returns =
			{
				{ Name = "text", Type = "string", Nilable = true },
			},
		},
		{
			Name = "BuildColoredListString",
			Type = "Function",
			Arguments =
			{
				{ Name = "...", Type = "any", Nilable = true },
			},
			Returns =
			{
				{ Name = "text", Type = "string", Nilable = true },
			},
		},
		{
			Name = "BuildNewLineListString",
			Type = "Function",
			Arguments =
			{
				{ Name = "...", Type = "any", Nilable = true },
			},
			Returns =
			{
				{ Name = "text", Type = "string", Nilable = true },
			},
		},
		{
			Name = "tDeleteItem",
			Type = "Function",
			Arguments =
			{
				{ Name = "table", Type = "table", Nilable = false },
				{ Name = "item", Type = "any", Nilable = false },
			},
		},
		{
			Name = "tContains",
			Type = "Function",
			Arguments =
			{
				{ Name = "table", Type = "table", Nilable = false },
				{ Name = "item", Type = "any", Nilable = false },
			},
			Returns =
			{
				{ Name = "index", Type = "number", Nilable = true },
			},
		},
		{
			Name = "CopyTable",
			Type = "Function",
			Arguments =
			{
				{ Name = "settings", Type = "table", Nilable = false },
			},
			Returns =
			{
				{ Name = "copy", Type = "table", Nilable = false },
			},
		},
		{
			Name = "BuildMultilineTooltip",
			Type = "Function",
			Arguments =
			{
				{ Name = "globalStringName", Type = "string", Nilable = false },
				{ Name = "tooltip", Type = "frame", Nilable = true },
				{ Name = "r", Type = "number", Nilable = true },
				{ Name = "g", Type = "number", Nilable = true },
				{ Name = "b", Type = "number", Nilable = true },
			},
		},
		{
			Name = "MouseIsOver",
			Type = "Function",
			Arguments =
			{
				{ Name = "region", Type = "region", Nilable = false },
				{ Name = "topOffset", Type = "number", Nilable = true },
				{ Name = "bottomOffset", Type = "number", Nilable = true },
				{ Name = "leftOffset", Type = "number", Nilable = true },
				{ Name = "rightOffset", Type = "number", Nilable = true },
			},
			Returns =
			{
				{ Name = "isMouseOver", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetDesaturation",
			Type = "Function",
			Arguments =
			{
				{ Name = "texture", Type = "texture", Nilable = false },
				{ Name = "desaturation", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetItemButtonCount",
			Type = "Function",
			Arguments =
			{
				{ Name = "button", Type = "frame", Nilable = false },
				{ Name = "count", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetItemButtonStock",
			Type = "Function",
			Arguments =
			{
				{ Name = "button", Type = "frame", Nilable = false },
				{ Name = "numInStock", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetItemButtonTexture",
			Type = "Function",
			Arguments =
			{
				{ Name = "button", Type = "frame", Nilable = false },
				{ Name = "texture", Type = "string", Nilable = true },
			},
		},
		{
			Name = "SetItemButtonTextureVertexColor",
			Type = "Function",
			Arguments =
			{
				{ Name = "button", Type = "frame", Nilable = false },
				{ Name = "r", Type = "number", Nilable = false },
				{ Name = "g", Type = "number", Nilable = false },
				{ Name = "b", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetItemButtonDesaturated",
			Type = "Function",
			Arguments =
			{
				{ Name = "button", Type = "frame", Nilable = false },
				{ Name = "desaturated", Type = "bool", Nilable = false },
				{ Name = "r", Type = "number", Nilable = true },
				{ Name = "g", Type = "number", Nilable = true },
				{ Name = "b", Type = "number", Nilable = true },
			},
		},
		{
			Name = "SetItemButtonNormalTextureVertexColor",
			Type = "Function",
			Arguments =
			{
				{ Name = "button", Type = "frame", Nilable = false },
				{ Name = "r", Type = "number", Nilable = false },
				{ Name = "g", Type = "number", Nilable = false },
				{ Name = "b", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetItemButtonNameFrameVertexColor",
			Type = "Function",
			Arguments =
			{
				{ Name = "button", Type = "frame", Nilable = false },
				{ Name = "r", Type = "number", Nilable = false },
				{ Name = "g", Type = "number", Nilable = false },
				{ Name = "b", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetItemButtonSlotVertexColor",
			Type = "Function",
			Arguments =
			{
				{ Name = "button", Type = "frame", Nilable = false },
				{ Name = "r", Type = "number", Nilable = false },
				{ Name = "g", Type = "number", Nilable = false },
				{ Name = "b", Type = "number", Nilable = false },
			},
		},
		{
			Name = "HandleModifiedItemClick",
			Type = "Function",
			Arguments =
			{
				{ Name = "link", Type = "string", Nilable = false },
			},
			Returns =
			{
				{ Name = "handled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ChatEdit_InsertLink",
			Type = "Function",
			Arguments =
			{
				{ Name = "text", Type = "string", Nilable = true },
			},
			Returns =
			{
				{ Name = "inserted", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "DressUpItemLink",
			Type = "Function",
			Arguments =
			{
				{ Name = "link", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetFixedLink",
			Type = "Function",
			Arguments =
			{
				{ Name = "text", Type = "string", Nilable = false },
			},
			Returns =
			{
				{ Name = "link", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GameTooltip_UnitColor",
			Type = "Function",
			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = false },
			},
			Returns =
			{
				{ Name = "r", Type = "number", Nilable = false },
				{ Name = "g", Type = "number", Nilable = false },
				{ Name = "b", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetTooltipMoney",
			Type = "Function",
			Arguments =
			{
				{ Name = "frame", Type = "frame", Nilable = false },
				{ Name = "money", Type = "number", Nilable = false },
				{ Name = "type", Type = "string", Nilable = true },
				{ Name = "prefixText", Type = "string", Nilable = true },
				{ Name = "suffixText", Type = "string", Nilable = true },
			},
		},
		{
			Name = "OpenColorPicker",
			Type = "Function",
			Arguments =
			{
				{ Name = "info", Type = "table", Nilable = false },
			},
		},
		{
			Name = "EditBox_ClearFocus",
			Type = "Function",
			Arguments =
			{
				{ Name = "editBox", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "EditBox_HighlightText",
			Type = "Function",
			Arguments =
			{
				{ Name = "editBox", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "EditBox_ClearHighlight",
			Type = "Function",
			Arguments =
			{
				{ Name = "editBox", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "BlizzardOptionsPanel_Slider_Disable",
			Type = "Function",
			Arguments =
			{
				{ Name = "slider", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "BlizzardOptionsPanel_Slider_Enable",
			Type = "Function",
			Arguments =
			{
				{ Name = "slider", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "BlizzardOptionsPanel_CheckButton_Disable",
			Type = "Function",
			Arguments =
			{
				{ Name = "checkBox", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "BlizzardOptionsPanel_CheckButton_Enable",
			Type = "Function",
			Arguments =
			{
				{ Name = "checkBox", Type = "frame", Nilable = false },
				{ Name = "isWhite", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "BlizzardOptionsPanel_SetCVarSafe",
			Type = "Function",
			Arguments =
			{
				{ Name = "cvar", Type = "string", Nilable = false },
				{ Name = "value", Type = "any", Nilable = false },
				{ Name = "event", Type = "string", Nilable = true },
			},
		},
		{
			Name = "BlizzardOptionsPanel_GetCVarSafe",
			Type = "Function",
			Arguments =
			{
				{ Name = "cvar", Type = "string", Nilable = false },
			},
			Returns =
			{
				{ Name = "value", Type = "any", Nilable = true },
			},
		},
		{
			Name = "BlizzardOptionsPanel_GetCVarDefaultSafe",
			Type = "Function",
			Arguments =
			{
				{ Name = "cvar", Type = "string", Nilable = false },
			},
			Returns =
			{
				{ Name = "value", Type = "any", Nilable = true },
			},
		},
		{
			Name = "BlizzardOptionsPanel_GetCVarMinSafe",
			Type = "Function",
			Arguments =
			{
				{ Name = "cvar", Type = "string", Nilable = false },
			},
			Returns =
			{
				{ Name = "value", Type = "any", Nilable = true },
			},
		},
		{
			Name = "BlizzardOptionsPanel_GetCVarMaxSafe",
			Type = "Function",
			Arguments =
			{
				{ Name = "cvar", Type = "string", Nilable = false },
			},
			Returns =
			{
				{ Name = "value", Type = "any", Nilable = true },
			},
		},
		{
			Name = "BlizzardOptionsPanel_RegisterControl",
			Type = "Function",
			Arguments =
			{
				{ Name = "control", Type = "frame", Nilable = false },
				{ Name = "parentFrame", Type = "frame", Nilable = true },
			},
		},
		{
			Name = "BlizzardOptionsPanel_SetupControl",
			Type = "Function",
			Arguments =
			{
				{ Name = "control", Type = "frame", Nilable = false },
			},
		},
		{
			Name = "BlizzardOptionsPanel_SetupDependentControl",
			Type = "Function",
			Arguments =
			{
				{ Name = "dependency", Type = "frame", Nilable = false },
				{ Name = "control", Type = "frame", Nilable = false },
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

APIDocumentation:AddDocumentationTable(FrameXML);
