local naughty = require("naughty")

local awesome_signal = {
    ["debug::error"] = function (err)
        if _G.in_error then return end
        _G.in_error = true
        naughty.notify(
            {
                preset = naughty.config.presets.critical,
                title  = "Oops, an error happened!",
                text   = tostring(err)
            }
        )
        _G.in_error = false
    end
}

return awesome_signal
