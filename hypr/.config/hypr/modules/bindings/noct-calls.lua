-- Local calls
local noct = "noctalia msg "

-- Window Switcher
hl.bind("ALT + TAB", hl.dsp.exec_cmd("noctalia msg window-switcher"))

-- Settings and panel
hl.bind("SUPER + A", hl.dsp.exec_cmd(noct .. "panel-toggle control-center notifications"))
hl.bind("SUPER + Z", hl.dsp.exec_cmd(noct .. "settings-toggle"))
hl.bind("SUPER + X", hl.dsp.exec_cmd(noct .. "panel-toggle control-center"))
hl.bind("SUPER + Space", hl.dsp.exec_cmd(noct .. "panel-toggle launcher"))
hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd(noct .. "panel-toggle wallpaper"))
hl.bind("SUPER + V", hl.dsp.exec_cmd(noct .. "panel-toggle clipboard"))

hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd(noct .. "screenshot-region"))

-- Nightlight
hl.bind("SUPER + N", hl.dsp.exec_cmd(noct .. "nightlight-enable"))
hl.bind("SUPER + ALT + N", hl.dsp.exec_cmd(noct .. "nightlight-disable"))

-- Session
hl.bind("SUPER + ALT + C", hl.dsp.exec_cmd(noct .. "panel-toggle session"))
