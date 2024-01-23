local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
  local _, _, window = mux.spawn_window(cmd or {})

  window:gui_window():maximize()
  wezterm.log_info(wezterm.executable_dir)
end)
