local home = os.getenv("HOME")

package.path = package.path .. ";" .. home .. "/.config/hypr/?.lua" .. ";" .. home .. "/.config/hypr/?/init.lua"

-- Hyprland Configuration

-- Bindings
require("./modules/bindings/*")

-- Rules
require("./modules/windowrules/*")

-- Animations
require("modules.animations.pro")

-- General
require("modules.autostart")
require("modules.colors")
require("modules.decorations")
require("modules.env")
require("modules.input")
require("modules.misc")
require("modules.workspaces")

-- This loads Noctalia-generated Hyprland colors.
dofile("/home/pedro/.config/hypr/noctalia/noctalia-colors.lua")

-- For Noctalia Color templates
require("noctalia").apply_theme()
