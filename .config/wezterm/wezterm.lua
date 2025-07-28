local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

config.font_size = 13
config.font = wezterm.font("JetBrainsMono Nerd Font")

config.color_scheme = "Tokyo Night"
config.window_background_opacity = 0.9
config.window_decorations = "NONE"
config.enable_tab_bar = false
config.window_padding = {
	left = 25,
	right = 25,
	top = 20,
	bottom = 20,
}

return config
