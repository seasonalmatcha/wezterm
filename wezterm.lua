local wezterm = require("wezterm")
local utils = require("utils")
local keymaps = require("keymaps")
local options = require("options")
require("events")

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

utils.merge_table(config, options)
config.keys = keymaps

return config
