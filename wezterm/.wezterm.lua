--
-- .wezterm.lua
-- Copyright (C) 2024 professor <professor@mansion.nix>
--
-- Distributed under terms of the MIT license.
--

local wezterm = require('wezterm')
local act = wezterm.action

wezterm.on('gui-startup', function(cmd)
    local _, _, window = wezterm.mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

local configuration = {
    --- behavior ---
    enable_tab_bar = false,
    warn_about_missing_glyphs = false,
    window_close_confirmation = "NeverPrompt",
    audible_bell = "Disabled",
    max_fps = 75,

    --- window ---
    window_padding = {
        left = 1,
        right = 1,
        top = 0,
        bottom = 0,
    },

    --- appearence ---
    color_scheme = 'Arthur',
    line_height = 1.0,
    font_size = 11.0,
    initial_rows = 40,
    font = wezterm.font('Source Code Pro'),

    --- custom key bindings ---
    keys = {
        --- pane ---
        { key = 'h', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Left', },
        { key = 'l', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Right', },
        { key = 'k', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Up', },
        { key = 'j', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Down', },
        { key = '|', mods = 'CTRL|SHIFT', action = act.SplitHorizontal {domain="CurrentPaneDomain"}},
        { key = '_', mods = 'CTRL|SHIFT', action = act.SplitVertical {domain="CurrentPaneDomain"}},
    },

}

return configuration