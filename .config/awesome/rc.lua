pcall(require, "luarocks.loader")
local awful         = require("awful")
local beautiful     = require("beautiful")
local client_signal = require('config.signals.client')

require("awful.autofocus")
require('errors')

beautiful.init(require('theme.theme'))

terminal   = os.getenv("TERMINAL") or "xterm"
editor     = os.getenv("EDITOR") or "gedit"
editor_cmd = terminal .. " -e " .. editor
modkey     = "Mod4"
awful.layout.layouts = require('config.layouts')
awful.screen.connect_for_each_screen(require('config.screen'))
globalkeys = require('config.keys.global')
clientkeys = require('config.keys.client')
clientbuttons = require('config.buttons.client')
root.keys(globalkeys)
awful.rules.rules = require('config.rules')

for name, func in pairs(client_signal) do
    client.connect_signal(name, func)
end
