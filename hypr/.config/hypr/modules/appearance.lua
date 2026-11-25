local colors = require("modules.colors")

hl.config({
	general = {
		layout = "scrolling",
		gaps_in = 5,
		gaps_out = 6,
		border_size = 2,
		extend_border_grab_area = 10,
		resize_on_border = true,

		col = {
			active_border = {
				colors = { colors.primary, colors.secondary },
				angle = 45,
			},
			inactive_border = colors.surface,
		},
	},

	cursor = {
		hide_on_key_press = true,
		warp_on_change_workspace = 1,
		no_hardware_cursors = true,
	},

	group = {
		col = {
			border_active = colors.secondary,
			border_inactive = colors.surface,
			border_locked_active = colors.error,
			border_locked_inactive = colors.surface,
		},

		groupbar = {
			enabled = true,
			font_family = "JetBrainsMono Nerd Font",
			font_size = 16,
			font_weight_active = "ultraheavy",
			font_weight_inactive = "normal",
			indicator_height = 1,
			indicator_gap = 0,
			gradients = true,
			height = 22,
			priority = 3,
			render_titles = true,
			scrolling = true,
			col = {
				active = colors.secondary,
				inactive = colors.surface,
				locked_active = colors.error,
				locked_inactive = colors.surface,
			},
		},
	},

	decoration = {
		--dim_special = 0.3,
		rounding = 0,

		shadow = {
			enabled = false,
		},

		-- opacity
		active_opacity = 1,
		inactive_opacity = 1,
		fullscreen_opacity = 1,

		-- blur
		blur = {
			enabled = false,
		},
	},
})
