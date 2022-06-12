local awful  = require("awful")
local gears  = require("gears")
local wibox  = require("wibox")
local taglist_buttons  = require('config.buttons.taglist')
local tasklist_buttons = require('config.buttons.tasklist')

local screen = function(s)
    awful.tag({ " 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 ", " 8 ", " 9 " }, s, awful.layout.layouts[1])
    s.mypromptbox = awful.widget.prompt()
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(
        gears.table.join(
            awful.button({ }, 1, function () awful.layout.inc( 1) end),
            awful.button({ }, 3, function () awful.layout.inc(-1) end),
            awful.button({ }, 4, function () awful.layout.inc( 1) end),
            awful.button({ }, 5, function () awful.layout.inc(-1) end)
        )
    )
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
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        {
            layout = wibox.layout.fixed.horizontal,
            s.mytaglist,
        },
        s.mytasklist, 
        {
            s.mylayoutbox,
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.textclock(),
            wibox.widget.systray(),
        },
    }
end

return screen
