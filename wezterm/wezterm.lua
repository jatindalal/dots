local wezterm = require 'wezterm'
local act = wezterm.action
return {
	font_size = 14.0,
	window_decorations='INTEGRATED_BUTTONS|RESIZE',
    window_background_opacity = 0.9,
    window_close_confirmation='NeverPrompt',
	cursor_thickness = 2.5,
	mouse_bindings = {
	  {
	    event = { Up = { streak = 1, button = 'Left' } },
	    mods = 'CTRL',
	    action = wezterm.action.OpenLinkAtMouseCursor,
	  },
	},
	window_padding = {
	  left = 10,
	  right = 10,
	  top = 50,
	  bottom = 10,
    },
	initial_rows=26,
	initial_cols=100,
    colors = {
	  cursor_bg = '#cc1111',
	  background = '#010101',
	  foreground = '#eeeeee'
    },
    adjust_window_size_when_changing_font_size = false,
    hide_tab_bar_if_only_one_tab = true,
	window_frame = {
		font = wezterm.font { family = 'Noto Sans', weight = 'Regular' },
	},
	keys = {
        { mods = "OPT", key = "LeftArrow", action = act.SendKey({ mods = "ALT", key = "b" }) },
        { mods = "OPT", key = "RightArrow", action = act.SendKey({ mods = "ALT", key = "f" }) },
        { mods = "CMD", key = "LeftArrow", action = act.SendKey({ mods = "CTRL", key = "a" }) },
        { mods = "CMD", key = "RightArrow", action = act.SendKey({ mods = "CTRL", key = "e" }) },
        { mods = "CMD", key = "Backspace", action = act.SendKey({ mods = "CTRL", key = "u" }) },
        { mods = "CMD|OPT", key = "LeftArrow", action = act.ActivateTabRelative(-1) },
        { mods = "CMD|OPT", key = "RightArrow", action = act.ActivateTabRelative(1) },
        { mods = "CMD|SHIFT", key = "LeftArrow", action = act.ActivateTabRelative(-1) },
        { mods = "CMD|SHIFT", key = "RightArrow", action = act.ActivateTabRelative(1) },
	}
}
