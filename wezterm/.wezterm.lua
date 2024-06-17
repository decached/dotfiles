--
-- .wezterm.lua
-- Copyright (C) 2024 professor <professor@mansion.nix>
--
-- Distributed under terms of the MIT license.
--

local wezterm = require 'wezterm'

wezterm.on('gui-startup', function(cmd)
    local _, _, window = wezterm.mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

custom_config = {
    --- behavior ---
    warn_about_missing_glyphs = false,
    window_close_confirmation = "NeverPrompt",
    audible_bell = "Disabled",
    max_fps = 75,

    --- window ---
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },

    --- formatting ---
    color_scheme = 'nord',
    line_height = 1.0,
    font_size = 10.0,
    initial_rows = 40,
    enable_tab_bar = false,
    font = wezterm.font('Monaco')

}

return custom_config