local awful  = require("awful")
local wibox  = require("wibox")
local taglist_buttons  = require('config.buttons.taglist')
local tasklist_buttons = require('config.buttons.tasklist')

local screen = function(s)
    awful.tag({ " 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 ", " 8 ", " 9 " }, s, awful.layout.layouts[1])

    s.mytaglist = awful.widget.taglist {
            screen  = s,
            filter  = awful.widget.taglist.filter.all,
            buttons = taglist_buttons
        }
        s.mytasklist = awful.widget.tasklist {
            screen  = s,
            filter  = awful.widget.tasklist.filter.currenttags,
            buttons = tasklist_buttons,
        }

        s.mywibox = awful.wibar(
            {
                position = "top",
                screen   = s,
            }
        )
    local systray = wibox.widget.systray()
    systray:set_horizontal(true)
    systray:set_base_size(22)
    systray.forced_height = 22

    local textclock = wibox.widget.textclock('<span font="Roboto Bold 12">%I:%M %p</span> ')
    local month_calendar = awful.widget.calendar_popup.month({
        screen = s,
        start_sunday = false,
        week_numbers = true
    })
    month_calendar:attach(textclock)

    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        {
            layout = wibox.layout.fixed.horizontal,
            s.mytaglist,
        },
        s.mytasklist, 
        {
            layout = wibox.layout.fixed.horizontal,
            textclock,
            systray,
        },
    }
end

return screen
