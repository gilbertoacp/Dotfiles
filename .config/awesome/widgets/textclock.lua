local wibox  = require("wibox")
local calendar_widget = require("widgets.calendar")
local beautiful = require("beautiful")

-- Create a textclock widget
local mytextclock = wibox.widget.textclock()
mytextclock.font = beautiful.font_bold
-- default
local cw = calendar_widget()
-- or customized
local cw = calendar_widget({
    -- theme = 'onedark',
    placement = 'top_right',
    start_sunday = true,
    radius = 6,
-- with customized next/previous (see table above)
    previous_month_button = 1,
    next_month_button = 3,
})

mytextclock:connect_signal("button::press", function(_, _, _, button)
    if button == 1 then 
        cw.toggle() 
    end
end)

return mytextclock
