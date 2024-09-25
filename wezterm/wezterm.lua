local wezterm = require 'wezterm'
local act = wezterm.action
return {
	-- font = wezterm.font('Menlo'),
	-- font = wezterm.font('Terminess Nerd Font'),
	-- font = wezterm.font('CozetteVector'),
	font_size = 15.0,
	window_decorations='INTEGRATED_BUTTONS|RESIZE',
    window_background_opacity = 0.9,
	-- window_decorations='TITLE|RESIZE',
    window_close_confirmation='NeverPrompt',
    --default_cursor_style = 'BlinkingUnderline',
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
	-- default_cursor_style = 'SteadyUnderline',
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
	  -- top = 60,
	  bottom = 10,
    },
	initial_rows=30,
	initial_cols=120,
    colors = {
	  --cursor_bg = '#cc1111',
	  cursor_bg = '#cc1111',
	  --cursor_fg = '#181818',
	  background = '#010101',
	  foreground = '#eeeeee'
    },
    adjust_window_size_when_changing_font_size = false,
    hide_tab_bar_if_only_one_tab = true,
	window_frame = {
		font = wezterm.font { family = 'Noto Sans', weight = 'Regular' },
	},
	keys = {
		-- { key = 't', mods = 'CMD', action = act.SpawnTab 'CurrentPaneDomain' },
		--       { key = 'LeftArrow', mods = 'CMD', action = wezterm.action { SendString = "\x1bOH" }, },
		--       { key = 'RightArrow', mods = 'CMD', action = wezterm.action { SendString = "\x1bOF" }, },
        -- { mods = "CMD", key = "Backspace", action = act.SendKey({ mods = "CTRL", key = "u" }) },
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
