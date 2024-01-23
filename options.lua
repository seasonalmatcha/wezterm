local wezterm = require("wezterm")

local options = {
  font_size = 12,
  color_scheme = "Catppuccin Mocha",
  font = wezterm.font_with_fallback({ "FiraCode Nerd Font" }),
  adjust_window_size_when_changing_font_size = false,
  hide_tab_bar_if_only_one_tab = true,
  cursor_blink_rate = 0,
  disable_default_key_bindings = true,
}

-- Check if I'm on windows
-- if yes, use WSL
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
  options.default_domain = "WSL:Ubuntu"
end

return options
