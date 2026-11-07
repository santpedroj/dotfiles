-- Window management
-- Kill window
hl.bind("SUPER + Escape", hl.dsp.exec_cmd("hyprctl kill"))

-- Close window
hl.bind("SUPER + Q", hl.dsp.window.close())

-- Toggle floating
hl.bind("SUPER + T", hl.dsp.window.float({ action = "toggle" }))

-- Toggle fullscreen
hl.bind("SUPER + F", hl.dsp.window.fullscreen())

-- Toggle maximize
hl.bind("SUPER + M", hl.dsp.window.maximize())

-- Focus and movement
-- Focus movement (vim keys)
hl.bind("SUPER + h", hl.dsp.layout("focus l"))
hl.bind("SUPER + j", hl.dsp.focus({ direction = "down" }))
hl.bind("SUPER + k", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + l", hl.dsp.layout("focus r"))

-- Move windows
hl.bind("SUPER + SHIFT + h", hl.dsp.layout("swapcol l"))
hl.bind("SUPER + SHIFT + l", hl.dsp.layout("swapcol r"))
hl.bind("SUPER + SHIFT + k", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + j", hl.dsp.window.move({ direction = "d" }))

-- Cycle windows
hl.bind("ALT + Tab", hl.dsp.window.cycle_next())

-- Columns and layout
-- Consume / expel windows
hl.bind("SUPER + comma", hl.dsp.layout("consume_or_expel prev"))
hl.bind("SUPER + period", hl.dsp.layout("consume_or_expel next"))

-- Cycle primary extent
hl.bind("SUPER + R", hl.dsp.layout("cycle primary"))
hl.bind("SUPER + SHIFT + R", hl.dsp.layout("cycle primary reverse"))

-- Resize
-- Resize columns
hl.bind("SUPER + CONTROL + h", hl.dsp.layout("colresize -0.05"), { repeating = true })
hl.bind("SUPER + CONTROL + l", hl.dsp.layout("colresize +0.05"), { repeating = true })

-- Resize windows vertically
hl.bind("SUPER + CONTROL + j", hl.dsp.window.resize({ x = 0, y = -20, relative = true }), { repeating = true })
hl.bind("SUPER + CONTROL + k", hl.dsp.window.resize({ x = 0, y = 20, relative = true }), { repeating = true })

-- Tab groups
-- Toggle tabbed layout
hl.bind("SUPER + W", hl.dsp.layout("toggle tabbed"))

-- Previous / next tab
hl.bind("SUPER + ALT + h", hl.dsp.group.prev())
hl.bind("SUPER + ALT + l", hl.dsp.group.next())

-- Move tabs
hl.bind("SUPER + ALT + SHIFT + h", hl.dsp.group.move_prev())
hl.bind("SUPER + ALT + SHIFT + l", hl.dsp.group.move_next())

-- Workspaces
-- Switch workspaces
for i = 1, 9 do
	hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = i }))

	-- Move window to workspace
	hl.bind(
		"SUPER + SHIFT + " .. i,
		hl.dsp.window.move({
			workspace = i,
			follow = true,
		})
	)
end

-- Previous / next workspace
hl.bind("CONTROL + ALT + h", hl.dsp.focus({ workspace = "r-1" }))
hl.bind("CONTROL + ALT + l", hl.dsp.focus({ workspace = "r+1" }))
