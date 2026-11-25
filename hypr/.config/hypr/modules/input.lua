-- Input configuration

hl.config({
	input = {
		accel_profile = "flat",

		repeat_delay = 200,
		repeat_rate = 40,

		kb_layout = "us,br",
		kb_variant = "altgr-intl", -- Enforces standard dead keys (', ~, ^, `, ")
		kb_options = "compose:ralt",

		touchpad = {
			disable_while_typing = true,
		},

		hl.bind("SUPER + S", hl.dsp.exec_cmd("hyprctl switchxkblayout current next")),
	},

	cursor = {
		hide_on_key_press = true,
		warp_on_change_workspace = 1,
		no_hardware_cursors = true,
	},
})

-- Touchpad gestures
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 3, direction = "down", action = "close" })
hl.gesture({ fingers = 3, direction = "up", action = "fullscreen" })
hl.gesture({ fingers = 4, direction = "left", action = "float" })
