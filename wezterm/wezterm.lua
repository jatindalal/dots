local wezterm = require 'wezterm'
return {
	enable_tab_bar = false,
	font_size = 16.0,
	font = wezterm.font('JetBrains Mono', { weight = 'Medium', italic = false }),
	-- font = wezterm.font('Cascadia Code', { weight = 'Regular', italic = false }),
	macos_window_background_blur = 30,
	window_background_opacity = 0.98,
	-- window_background_opacity = 0.9,
	window_decorations='INTEGRATED_BUTTONS|RESIZE',
    window_close_confirmation='NeverPrompt',
	keys = {
		{
			key = 'f',
			mods = 'CTRL',
			action = wezterm.action.ToggleFullScreen,
		},
        {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
        {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}}
	},
	-- default_cursor_style = 'SteadyUnderline',
	-- cursor_thickness = 2,
	mouse_bindings = {
	  {
	    event = { Up = { streak = 1, button = 'Left' } },
	    mods = 'CTRL',
	    action = wezterm.action.OpenLinkAtMouseCursor,
	  },
	},
	window_padding = {
	  left = 2,
	  right = 2,
	  top = 60,
	  bottom = 0,
        },
	initial_rows=36,
	initial_cols=120,
	color_scheme = 'Tomorrow Night (Gogh)',
    colors = {
	  cursor_bg = '#cc1111',
	  cursor_fg = '#181818',
	  background = '#101010',
	  -- background = '#011214',
    }

	-- colors = {
	--      cursor_bg = '#cc1111',
	--   cursor_fg = '#181818',
	--   -- background = '#101010',
	--   background = '#011214',
	--   foreground = '#dddddd',
	--   ansi = {
	--     '#414141',
	--     '#e17373',
	--        '#94b978',
	--        '#ffb97b',
	--        '#96bddb',
	--        '#e1c0fa',
	--        '#00988e',
	--        '#dedede'
	--   },
	--   brights = {
	--     '#9d9d9d',
	--        '#ffa0a0',
	--        '#bddeab',
	--        '#ffdba0',
	--        '#b1d7f6',
	--        '#fbdaff',
	--        '#19b2a7',
	--        '#ffffff',
	--   },
	--    },
}
