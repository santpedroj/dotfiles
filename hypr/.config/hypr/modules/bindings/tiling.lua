-- set scrolling layout
hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
		column_width = 0.5,
		focus_fit_method = 1, -- 0 = center, 1 = fit
		follow_min_visible = 0.4,
		follow_focus = true,
		explicit_column_widths = "0.5, 1.0",
		wrap_focus = false,
		wrap_swapcol = false,
		direction = "right",
	},
})

-- hypctl kill
hl.bind("SUPER + Escape", hl.dsp.exec_cmd("hyprctl kill"))

-- Close window
hl.bind("SUPER + Q", hl.dsp.window.close())

-- Toggle floating window
hl.bind("SUPER + T", hl.dsp.window.float({ action = "toggle" }))

-- Toggle fullscreen
hl.bind("SUPER + F", hl.dsp.window.fullscreen())

-- Focus and movement (vim keys)
hl.bind("SUPER + h", hl.dsp.layout("focus l"))
hl.bind("SUPER + k", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + j", hl.dsp.focus({ direction = "down" }))
hl.bind("SUPER + l", hl.dsp.layout("focus r"))

-- Cycle
hl.bind("ALT + Tab", hl.dsp.window.cycle_next())

-- Columns
hl.bind("SUPER + SHIFT + H", hl.dsp.layout("swapcol l"))
hl.bind("SUPER + SHIFT + L", hl.dsp.layout("swapcol r"))
hl.bind("SUPER + M", hl.dsp.layout("colresize +conf"))
hl.bind("SUPER + SHIFT + M", hl.dsp.layout("colresize -conf"))

-- Stack / unstack (new)
hl.bind("SUPER + I", hl.dsp.layout("consume_or_expel prev"))
hl.bind("SUPER + O", hl.dsp.layout("consume_or_expel next"))
hl.bind("SUPER + P", hl.dsp.layout("promote"))

-- Move windows
hl.bind("SUPER + SHIFT + h", hl.dsp.layout("swapcol l")) -- reorder columns
hl.bind("SUPER + SHIFT + l", hl.dsp.layout("swapcol r"))
hl.bind("SUPER + SHIFT + k", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + j", hl.dsp.window.move({ direction = "d" }))

-- Resize windows
hl.bind("SUPER + CONTROL + h", hl.dsp.layout("colresize -0.05"), { repeating = true })
hl.bind("SUPER + CONTROL + l", hl.dsp.layout("colresize +0.05"), { repeating = true })
hl.bind("SUPER + CONTROL + j", hl.dsp.window.resize({ x = 0, y = -20, relative = true }), { repeating = true })
hl.bind("SUPER + CONTROL + k", hl.dsp.window.resize({ x = 0, y = 20, relative = true }), { repeating = true })

-- Groups
hl.bind("SUPER + W", hl.dsp.group.toggle())
hl.bind("SUPER + ALT + H", hl.dsp.group.prev())
hl.bind("SUPER + ALT + L", hl.dsp.group.next())

-- Workspaces
for i = 1, 4 do
	hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = i }))
	hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({ workspace = i, follow = true }))
	hl.bind("SUPER + ALT + " .. i, hl.dsp.window.move({ workspace = i, follow = false }))
end

-- Move windows to right and left workspaces
hl.bind("SUPER + CONTROL + SHIFT + h", hl.dsp.window.move({ workspace = "r-1" }))
hl.bind("SUPER + CONTROL + SHIFT + l", hl.dsp.window.move({ workspace = "r+1" }))

-- Switch between workspaces (vim keys)
hl.bind("CONTROL + ALT + l", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("CONTROL + ALT + h", hl.dsp.focus({ workspace = "e-1" }))
