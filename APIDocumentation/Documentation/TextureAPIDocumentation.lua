local TextureAPI =
{
	Name = "Texture",
	Type = "ScriptObject",
	-- Documentation = { "A layered region that displays an image from a texture file or a solid color." },
	Inherits =
	{
		"LayeredRegion",
	},

	Functions =
	{
		{
			Name = "GetBlendMode",
			Type = "Function",
			-- Documentation = { "Returns the blend mode of the texture" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "mode", Type = "value", Nilable = false --[[ Documentation = { "Blend mode of the texture (string) ADD - Adds texture color values to the underlying color values, using the alpha channel; light areas in the texture lighten the background while dark areas are more transparentALPHAKEY - One-bit transparency; pixels with alpha values greater than ~0.8 are treated as fully opaque and all other pixels are treated as fully transparentBLEND - Normal color blending, using any alpha channel in the texture imageDISABLE - Ignores any alpha channel, displaying the texture as fully opaqueMOD - Ignores any alpha channel in the texture and multiplies texture color values by background color values; dark areas in the texture darken the background while light areas are more transparent" }, ]] },
			},
		},
		{
			Name = "GetHorizTile",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "GetNonBlocking",
			Type = "Function",
			-- Documentation = { "Returns whether the texture object loads its image file in the background" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "nonBlocking", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the texture object loads its image file in the background; nil if the game engine is halted while the texture loads" }, ]] },
			},
		},
		{
			Name = "GetTexCoord",
			Type = "Function",
			-- Documentation = { "Returns corner coordinates for scaling or cropping the texture image" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "ULx", Type = "number", Nilable = false --[[ Documentation = { "Upper left corner X position, as a fraction of the image's width from the left" }, ]] },
				{ Name = "ULy", Type = "number", Nilable = false --[[ Documentation = { "Upper left corner Y position, as a fraction of the image's height from the top" }, ]] },
				{ Name = "LLx", Type = "number", Nilable = false --[[ Documentation = { "Lower left corner X position, as a fraction of the image's width from the left" }, ]] },
				{ Name = "LLy", Type = "number", Nilable = false --[[ Documentation = { "Lower left corner Y position, as a fraction of the image's height from the top" }, ]] },
				{ Name = "URx", Type = "number", Nilable = false --[[ Documentation = { "Upper right corner X position, as a fraction of the image's width from the left" }, ]] },
				{ Name = "URy", Type = "number", Nilable = false --[[ Documentation = { "Upper right corner Y position, as a fraction of the image's height from the top" }, ]] },
				{ Name = "LRx", Type = "number", Nilable = false --[[ Documentation = { "Lower right corner X position, as a fraction of the image's width from the left" }, ]] },
				{ Name = "LRy", Type = "number", Nilable = false --[[ Documentation = { "Lower right corner Y position, as a fraction of the image's height from the top" }, ]] },
			},
		},
		{
			Name = "GetTexture",
			Type = "Function",
			-- Documentation = { "Returns the path to the texture's image file" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "texture", Type = "value", Nilable = false --[[ Documentation = { "Path to the texture image file, or one of the following values: (string) Portrait1 - Texture is set to a generated image (e.g. via SetPortraitTexture())SolidTexture - Texture is set to a solid color instead of an image" }, ]] },
			},
		},
		{
			Name = "GetVertTile",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "GetVertexColor",
			Type = "Function",
			-- Documentation = { "Returns the shading color of the texture" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the texture (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "IsDesaturated",
			Type = "Function",
			-- Documentation = { "Returns whether the texture image should be displayed with zero saturation (i.e. converted to grayscale)" },

			Arguments =
			{
			},

			Returns =
			{
				{ Name = "desaturated", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the texture should be displayed in grayscale; otherwise nil" }, ]] },
			},
		},
		{
			Name = "SetBlendMode",
			Type = "Function",
			-- Documentation = { "Sets the blend mode of the texture" },

			Arguments =
			{
				{ Name = "mode", Type = "value", Nilable = false --[[ Documentation = { "Blend mode of the texture (string) ADD - Adds texture color values to the underlying color values, using the alpha channel; light areas in the texture lighten the background while dark areas are more transparentALPHAKEY - One-bit transparency; pixels with alpha values greater than ~0.8 are treated as fully opaque and all other pixels are treated as fully transparentBLEND - Normal color blending, using any alpha channel in the texture imageDISABLE - Ignores any alpha channel, displaying the texture as fully opaqueMOD - Ignores any alpha channel in the texture and multiplies texture color values by background color values; dark areas in the texture darken the background while light areas are more transparent" }, ]] },
			},
		},
		{
			Name = "SetDesaturated",
			Type = "Function",
			-- Documentation = { "Sets whether the texture image should be displayed with zero saturation (i.e. converted to grayscale)" },

			Arguments =
			{
				{ Name = "desaturate", Type = "bool", Nilable = false --[[ Documentation = { "True to display the texture in grayscale; false to display original texture colors" }, ]] },
			},

			Returns =
			{
				{ Name = "supported", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the current system supports texture desaturation; otherwise nil" }, ]] },
			},
		},
		{
			Name = "SetGradient",
			Type = "Function",
			-- Documentation = { "Sets a gradient color shading for the texture" },

			Arguments =
			{
				{ Name = "orientation", Type = "value", Nilable = false --[[ Documentation = { "Token identifying the direction of the gradient (string) HORIZONTAL - Start color on the left, end color on the rightVERTICAL - Start color at the bottom, end color at the top" }, ]] },
				{ Name = "startR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the start color (0.0 - 1.0)" }, ]] },
				{ Name = "startG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the start color (0.0 - 1.0)" }, ]] },
				{ Name = "startB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the start color (0.0 - 1.0)" }, ]] },
				{ Name = "endR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the end color (0.0 - 1.0)" }, ]] },
				{ Name = "endG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the end color (0.0 - 1.0)" }, ]] },
				{ Name = "endB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the end color (0.0 - 1.0)" }, ]] },
			},
		},
		{
			Name = "SetGradientAlpha",
			Type = "Function",
			-- Documentation = { "Sets a gradient color shading for the texture (including opacity in the gradient)" },

			Arguments =
			{
				{ Name = "orientation", Type = "value", Nilable = false --[[ Documentation = { "Token identifying the direction of the gradient (string) HORIZONTAL - Start color on the left, end color on the rightVERTICAL - Start color at the bottom, end color at the top" }, ]] },
				{ Name = "startR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the start color (0.0 - 1.0)" }, ]] },
				{ Name = "startG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the start color (0.0 - 1.0)" }, ]] },
				{ Name = "startB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the start color (0.0 - 1.0)" }, ]] },
				{ Name = "startAlpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the start side of the gradient (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
				{ Name = "endR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the end color (0.0 - 1.0)" }, ]] },
				{ Name = "endG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the end color (0.0 - 1.0)" }, ]] },
				{ Name = "endB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the end color (0.0 - 1.0)" }, ]] },
				{ Name = "endAlpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the end side of the gradient (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "SetHorizTile",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

			Arguments =
			{
			},
		},
		{
			Name = "SetNonBlocking",
			Type = "Function",
			-- Documentation = { "Sets whether the texture object loads its image file in the background" },

			Arguments =
			{
				{ Name = "nonBlocking", Type = "bool", Nilable = false --[[ Documentation = { "True to allow the texture object to load its image file in the background; false (default) to halt the game engine while the texture loads" }, ]] },
			},
		},
		{
			Name = "SetRotation",
			Type = "Function",
			-- Documentation = { "Rotates the texture image. This is an efficient shorthand for the more complex Texture:SetTexCoord()." },

			Arguments =
			{
				{ Name = "radians", Type = "number", Nilable = false --[[ Documentation = { "Rotation angle in radians. Positive = counter-clockwise, negative = clockwise." }, ]] },
				{ Name = "cx", Type = "number", Nilable = true --[[ Documentation = { "Horizontal rotation pivot in texture UV space (0 = left, 1 = right). Defaults to 0.5 (center)." }, ]] },
				{ Name = "cy", Type = "number", Nilable = true --[[ Documentation = { "Vertical rotation pivot in texture UV space (0 = top, 1 = bottom). Defaults to 0.5 (center)." }, ]] },
			},
		},
		{
			Name = "SetTexCoord",
			Type = "Function",
			-- Documentation = { "Sets corner coordinates for scaling or cropping the texture image" },

			Arguments =
			{
				{ Name = "left", Type = "number", Nilable = false --[[ Documentation = { "Left edge of the scaled/cropped image, as a fraction of the image's width from the left" }, ]] },
				{ Name = "right", Type = "number", Nilable = false --[[ Documentation = { "Right edge of the scaled/cropped image, as a fraction of the image's width from the left" }, ]] },
				{ Name = "top", Type = "number", Nilable = false --[[ Documentation = { "Top edge of the scaled/cropped image, as a fraction of the image's height from the top" }, ]] },
				{ Name = "bottom", Type = "number", Nilable = false --[[ Documentation = { "Bottom edge of the scaled/cropped image, as a fraction of the image's height from the top" }, ]] },
				{ Name = "ULx", Type = "number", Nilable = false --[[ Documentation = { "Upper left corner X position, as a fraction of the image's width from the left" }, ]] },
				{ Name = "ULy", Type = "number", Nilable = false --[[ Documentation = { "Upper left corner Y position, as a fraction of the image's height from the top" }, ]] },
				{ Name = "LLx", Type = "number", Nilable = false --[[ Documentation = { "Lower left corner X position, as a fraction of the image's width from the left" }, ]] },
				{ Name = "LLy", Type = "number", Nilable = false --[[ Documentation = { "Lower left corner Y position, as a fraction of the image's height from the top" }, ]] },
				{ Name = "URx", Type = "number", Nilable = false --[[ Documentation = { "Upper right corner X position, as a fraction of the image's width from the left" }, ]] },
				{ Name = "URy", Type = "number", Nilable = false --[[ Documentation = { "Upper right corner Y position, as a fraction of the image's height from the top" }, ]] },
				{ Name = "LRx", Type = "number", Nilable = false --[[ Documentation = { "Lower right corner X position, as a fraction of the image's width from the left" }, ]] },
				{ Name = "LRy", Type = "number", Nilable = false --[[ Documentation = { "Lower right corner Y position, as a fraction of the image's height from the top" }, ]] },
			},
		},
		{
			Name = "SetTexture",
			Type = "Function",
			-- Documentation = { "Sets the texture object's image or color" },

			Arguments =
			{
				{ Name = "texture", Type = "string", Nilable = false --[[ Documentation = { "Path to a texture image" }, ]] },
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the color (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},

			Returns =
			{
				{ Name = "visible", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the texture was successfully changed; otherwise nil" }, ]] },
			},
		},
		{
			Name = "SetVertTile",
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

APIDocumentation:AddDocumentationTable(TextureAPI);

