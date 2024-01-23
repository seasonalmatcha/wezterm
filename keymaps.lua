local wezterm = require("wezterm")
local act = wezterm.action

local keys = {
  {
    key = "t",
    mods = "CTRL|SHIFT",
    action = act.SpawnTab("DefaultDomain"),
  },
  {
    key = "w",
    mods = "CTRL|SHIFT",
    action = act.CloseCurrentTab({ confirm = true }),
  },
  {
    key = "j",
    mods = "CTRL|SHIFT",
    action = act.ActivateTabRelative(1),
  },
  {
    key = "k",
    mods = "CTRL|SHIFT",
    action = act.ActivateTabRelative(-1),
  },
  {
    key = "c",
    mods = "CTRL|SHIFT",
    action = act.CopyTo("ClipboardAndPrimarySelection"),
  },
  {
    key = "v",
    mods = "CTRL|SHIFT",
    action = act.PasteFrom("Clipboard"),
  },
  {
    key = "p",
    mods = "CTRL|SHIFT",
    action = act.ActivateCommandPalette,
  },
  {
    key = "h",
    mods = "CTRL|SHIFT",
    action = wezterm.action_callback(function(win)
      win:restore()
    end),
  },
  {
    key = "l",
    mods = "CTRL|SHIFT",
    action = wezterm.action_callback(function(win)
      win:maximize()
    end),
  },
}

for i = 1, 9 do
  table.insert(keys, {
    key = string.format("%d", i),
    mods = "CTRL|SHIFT",
    action = act.ActivateTab(i - 1),
  })
end

return keys
