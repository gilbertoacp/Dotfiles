local awful     = require("awful")
local beautiful = require("beautiful")
local gears     = require("gears")

local client_signal = {
    ["mouse::enter"] = function(c)
        c:emit_signal("request::activate", "mouse_enter", { raise = false })
    end,

    ["focus"] = function(c)
        c.border_color = beautiful.border_focus
    end,

    ["unfocus"] = function(c)
        c.border_color = beautiful.border_normal
    end,

    ["manage"] = function (c)
        if awesome.startup
            and not c.size_hints.user_position
            and not c.size_hints.program_position then
            awful.placement.no_offscreen(c)
        end

        c.shape = function(cr,w,h)
            gears.shape.rounded_rect(cr,w,h,8)
        end
    end,

    ["property::fullscreen"] = function(c)
        if c.fullscreen then
            gears.timer.delayed_call(function()
                if c.valid then
                    c:geometry(c.screen.geometry)
                end
            end)
        end
    end,

    ["property::transient_for"] = function(c)
        awful.placement.centered(c,nil)
    end
}

return client_signal
