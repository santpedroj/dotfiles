-- centered apps
local centeredApps = "^(org.gnome.FileRoller|nwg-look|qt6ct|xdg-desktop-portal-gtk)$"

hl.window_rule({ match = { float = true }, move = "50% 50%" })
hl.window_rule({
	match = { class = centeredApps },
	float = true,
	center = true,
	size = { 700, 450 },
})

-- noctalia nettings
hl.window_rule({
	name = "floating-noctalia-settings",
	match = { initial_class = [[^dev\.noctalia\.Noctalia$]] },
	float = true,
	center = true,
	size = { "monitor_w * 0.8", "monitor_h * 0.8" },
})

hl.window_rule({
	name = "floating-noctalia-settings",
	match = { initial_class = [[^dev\.noctalia\.Noctalia$]] },
	float = true,
	center = true,
	size = { "monitor_w * 0.9", "monitor_h * 0.9" },
})

-- pinentry and mpv
hl.window_rule({
	name = "floating-simple",
	match = { initial_class = "^(Pinentry-gtk|mpv)$" },
	float = true,
})

-- localsend
hl.window_rule({
	name = "floating-localsend",
	match = { initial_class = [[^org\.localsend\.localsend_app)$]] },
	float = true,
	center = true,
	size = { "monitor_w * 0.3", "monitor_h * 0.7" },
})

-- picture-in-picture
hl.window_rule({
	match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" },
	float = true,
	keep_aspect_ratio = true,
	move = "73% 72%",
	size = "25% 25%",
	pin = true,
})

-- file manager
-- File Roller
hl.window_rule({
	name = "floating-filerroller-extract",
	match = { initial_class = [[^org\.gnome\.FileRoller$]], initial_title = "^Extract" },
	float = true,
})

-- Thunar
-- 1. Every Thunar window (dialogs): small, floating, centered
hl.window_rule({
	name = "thunar-dialogs",
	match = { class = "^(thunar)$" },
	float = true,
	center = true,
	size = { "monitor_w * 0.4", "monitor_h * 0.5" },
})

-- 2. Main window only (title ends in "Thunar"): big, overrides the size above
hl.window_rule({
	name = "thunar-main",
	match = { class = "^(thunar)$", title = "^(.*Thunar)$" },
	float = true,
	center = true,
	size = { "monitor_w * 0.7", "monitor_h * 0.9" },
})

-- 3. Rename dialog: even smaller, since it's just one text field
hl.window_rule({
	name = "thunar-rename",
	match = { class = "^(thunar)$", title = "^(Rename).*" },
	float = true,
	center = true,
	size = { "monitor_w * 0.25", "monitor_h * 0.2" },
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
