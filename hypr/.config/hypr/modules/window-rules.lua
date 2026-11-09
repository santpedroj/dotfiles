-- Centered apps
local centeredApps = "^(org.gnome.FileRoller|xarchiver|nwg-look|qt6ct|xdg-desktop-portal-gtk)$"

hl.window_rule({ match = { float = true }, move = "50% 50%" })
hl.window_rule({
	match = { class = centeredApps },
	float = true,
	center = true,
	size = { 700, 450 },
})

-- Noctalia nettings
hl.window_rule({
	name = "floating-noctalia-settings",
	match = { initial_class = [[^dev\.noctalia\.Noctalia$]] },
	float = true,
	center = true,
	size = { "monitor_w * 0.8", "monitor_h * 0.8" },
})

-- Pinentry and mpv
hl.window_rule({
	name = "floating-simple",
	match = { initial_class = "^(Pinentry-gtk|mpv)$" },
	float = true,
	size = { "monitor_w * 0.8", "monitor_h * 0.8" },
})

-- Localsend
hl.window_rule({
	name = "floating-localsend",
	match = { initial_class = "org.localsend.localsend_app" },
	float = true,
	center = true,
	size = { "monitor_w * 0.5", "monitor_h * 0.7" },
})

-- Picture-in-picture
hl.window_rule({
	match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" },
	float = true,
	keep_aspect_ratio = true,
	move = "73% 72%",
	size = "25% 25%",
	pin = true,
})

-- File manager
-- File Roller
hl.window_rule({
	name = "floating-filerroller-extract",
	match = { initial_class = [[^org\.gnome\.FileRoller$]], initial_title = "^Extract" },
	float = true,
})

-- Thunar
hl.window_rule({
	name = "thunar-rename",
	match = { class = "^(thunar)$", title = "^(Rename).*" },
	float = true,
	center = true,
})

-- Ignore maximize requests from all apps. You'll probably like this.
local suppressMaximizeRule = hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
suppressMaximizeRule:set_enabled(false)

-- Fix some dragging issues with XWayland
hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})
