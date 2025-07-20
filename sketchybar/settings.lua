return {
	paddings = 3,
	group_paddings = 5,

	icons = "sf-symbols", -- alternatively available: NerdFont

	-- This is a font configuration for SF Pro and SF Mono (installed manually)
	-- font = require("helpers.default_font"),

	font = {
	  text = "CaskaydiaCove Nerd Font", -- Use bold variant for thicker appearance
	  numbers = "CaskaydiaCove Nerd Font", -- Use bold variant for numbers
	  style_map = {
		["Regular"] = "Bold",      -- Map regular to bold for thickness
		["Semibold"] = "Bold",
		["Bold"] = "Bold",
		["Heavy"] = "Bold",
		["Black"] = "Bold",
	  },
	  smoothing = true, -- Enable font smoothing if supported
	},
}
