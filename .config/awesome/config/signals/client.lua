local awful     = require("awful")
local beautiful = require("beautiful")
local gears     = require("gears")
local wibox     = require("wibox")

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
    end,

    ["request::titlebars"] = function(c)
        -- buttons for the titlebar
        local buttons = gears.table.join(

            awful.button(
                { },
                1,
                function()
                    c:emit_signal("request::activate", "titlebar", {raise = true})
                    awful.mouse.client.move(c)
                end
            ),

            awful.button(
                { },
                3,
                function()
                    c:emit_signal("request::activate", "titlebar", {raise = true})
                    awful.mouse.client.resize(c)
                end
            )

        )

        awful.titlebar(c) : setup {
            { -- Left
                awful.titlebar.widget.iconwidget(c),
                buttons = buttons,
                layout  = wibox.layout.fixed.horizontal
            },
            { -- Middle
                { -- Title
                    align  = "center",
                    widget = awful.titlebar.widget.titlewidget(c)
                },
                buttons = buttons,
                layout  = wibox.layout.flex.horizontal
            },
            { -- Right
                awful.titlebar.widget.floatingbutton (c),
                awful.titlebar.widget.maximizedbutton(c),
                awful.titlebar.widget.stickybutton   (c),
                awful.titlebar.widget.ontopbutton    (c),
                awful.titlebar.widget.closebutton    (c),
                layout = wibox.layout.fixed.horizontal()
            },
            layout = wibox.layout.align.horizontal
        }
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

    ["manage"] = function (c)
        c.shape = function(cr,w,h)
            gears.shape.rounded_rect(cr,w,h,8)
        end
    end
}

return client_signal
