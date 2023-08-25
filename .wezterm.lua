-- Pull in the wezterm API
local wezterm = require "wezterm"

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
local canonical_solarized = require "canonical_solarized"
canonical_solarized.apply_to_config(config)

local canonical_solarized_auto_appearance = require "canonical_solarized_auto_appearance"
canonical_solarized_auto_appearance.apply_to_config(config)

-- Specify Regular & wezterm selects the other weights automatically
config.font = wezterm.font {
  family = "Fira Code",
  weight = "Regular",
  stretch = "Normal",
  style = "Normal",
  harfbuzz_features = {"onum", "ss07"}
}

-- How many lines of scrollback you want to retain per tab
config.scrollback_lines = 64000

-- We're only using panes
config.hide_tab_bar_if_only_one_tab = true

local act = wezterm.action
config.keys = {
  -- We're only using panes
  {key = "W", mods = "CTRL", action = act.CloseCurrentPane {confirm = true}},
  {key = "W", mods = "SHIFT|CTRL", action = act.CloseCurrentPane {confirm = true}},
  {key = "w", mods = "SHIFT|CTRL", action = act.CloseCurrentPane {confirm = true}},
  {key = "w", mods = "SUPER", action = act.CloseCurrentPane {confirm = true}},
  -- Make horizontal pane easier
  {key = "'", mods = "ALT|CTRL", action = act.SplitHorizontal {domain = "CurrentPaneDomain"}},
  -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
  {key = "LeftArrow", mods = "OPT", action = act.SendString "\x1bb"},
  -- Make Option-Right equivalent to Alt-f; forward-word
  {key = "RightArrow", mods = "OPT", action = act.SendString "\x1bf"},
  -- Scroll to semantic zone like iTerm2
  {key = "UpArrow", mods = "SUPER", action = act.ScrollToPrompt(-1)},
  {key = "DownArrow", mods = "SUPER", action = act.ScrollToPrompt(1)},
  -- Make clear scrollback work like Terminal
  {
    key = "k",
    mods = "SUPER",
    action = act.Multiple {
      act.ClearScrollback "ScrollbackAndViewport",
      act.SendKey {key = "L", mods = "CTRL"}
    }
  }
}

config.mouse_bindings = {
  -- Easy select of semantic zone
  {
    event = {Down = {streak = 3, button = "Left"}},
    action = act.SelectTextAtMouseCursor "SemanticZone",
    mods = "NONE"
  }
}

-- and finally, return the configuration to wezterm
return config
