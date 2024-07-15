local wezterm = require 'wezterm'
return {
	enable_tab_bar = false,
	font_size = 17.0,
	window_decorations='INTEGRATED_BUTTONS|RESIZE',
    window_close_confirmation='NeverPrompt',
    default_cursor_style = 'SteadyBlock',
	keys = {
		{
			key = 'f',
			mods = 'CTRL',
			action = wezterm.action.ToggleFullScreen,
		},
        {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
        {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}},
        {
            key = 't',
            mods = 'CTRL',
            action = wezterm.action.SpawnTab 'CurrentPaneDomain',
        }
	},
	default_cursor_style = 'SteadyUnderline',
	cursor_thickness = 4,
	mouse_bindings = {
	  {
	    event = { Up = { streak = 1, button = 'Left' } },
	    mods = 'CTRL',
	    action = wezterm.action.OpenLinkAtMouseCursor,
	  },
	},
	window_padding = {
	  left = 6,
	  right = 6,
	  top = 60,
	  bottom = 6,
    },
	initial_rows=30,
	initial_cols=100,
    colors = {
	  cursor_bg = '#cc1111',
	  cursor_fg = '#181818',
	  background = '#010101',
    }
}
