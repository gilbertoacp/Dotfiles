pcall(require, "luarocks.loader")

require("awful.autofocus")

-- global variables (configuration files)
_G.terminal   = os.getenv("TERMINAL") or "xterm"
_G.editor     = os.getenv("EDITOR") or "gedit"
_G.editor_cmd = terminal .. " -e " .. editor
_G.modkey     = "Mod4"
_G.in_error   = false

-- load modules
local awful          = require("awful")
local beautiful      = require("beautiful")
local global_keys    = require("config.keys.global")
local client_signal  = require("config.signals.client")
local awesome_signal = require("config.signals.awesome")

-- load theme
beautiful.init(require("theme"))

awful.rules.rules    = require("config.rules")
awful.layout.layouts = require("config.layouts")
awful.screen.connect_for_each_screen(require("config.screen"))
require("awful.autofocus")

_G.root.keys(global_keys)

-- awesome signals
for name, func in pairs(awesome_signal) do
    _G.awesome.connect_signal(name, func)
end

-- client signals
for name, func in pairs(client_signal) do
    _G.client.connect_signal(name, func)
end
