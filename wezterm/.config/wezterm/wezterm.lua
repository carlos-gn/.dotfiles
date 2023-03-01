local wezterm = require("wezterm")
local mux = wezterm.mux


wezterm.on("gui-startup", function()
  local _, _, window = mux.spawn_window({})
  window:gui_window():maximize()
end)

local scheme = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
scheme.background = "#000000"

return {
  -- theme
  -- colors
  color_schemes = {
    ["OLEDppuccin"] = scheme,
  },
  color_scheme = "OLEDppuccin",
  default_cursor_style = "BlinkingBar",
  enable_scroll_bar = false,
  -- fonts
  font_size = 16.0,
  -- tab bar
  tab_max_width = 32,
  use_fancy_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  -- window
  window_close_confirmation = "NeverPrompt",
  window_decorations = "RESIZE",
  adjust_window_size_when_changing_font_size = false,
  -- general config
  clean_exit_codes = { 130 },
  automatically_reload_config = true,
}
