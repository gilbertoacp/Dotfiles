local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

colors = xresources.get_current_theme()

local font_name                                 = "Roboto"
local font_size                                 = "9"

local theme = {
    bg_normal     =  colors.background,
    bg_focus      =  colors.color4,
    bg_urgent     =  colors.color1,
    bg_minimize   =  colors.color8,
    bg_systray    =  colors.background,
    fg_normal     =  '#999',
    fg_focus      =  colors.color4,
    font                                      = font_name .. " " ..                         font_size,
    font_bold                                 = font_name .. " " .. "Bold"        .. " " .. font_size,
    font_italic                               = font_name .. " " .. "Italic"      .. " " .. font_size,
    font_bold_italic                          = font_name .. " " .. "Bold Italic" .. " " .. font_size,
    font_big                                  = font_name .. " " .. "Bold"        .. " 16",
}
theme.taglist_font             = theme.font_bold
theme.taglist_bg_focus         = theme.bg_normal
theme.taglist_fg_focus         = theme.fg_focus
theme.taglist_fg_occupied      = '#fff'

theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.useless_gap   = 2
theme.border_width  = dpi(1)
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

theme.border_radius                             = 0

-- TASKLIST
-- theme.tasklist_plain_task_name                  = true 
theme.tasklist_disable_icon                     = true
theme.tasklist_font_normal                      = theme.font
theme.tasklist_font_focus                       = theme.font_bold
theme.tasklist_font_urgent                      = theme.font_bold
theme.tasklist_fg_normal                        = colors.colors7
theme.tasklist_fg_focus                         = '#fff'
theme.tasklist_fg_minimize                      = colors.colors1
theme.tasklist_fg_urgent                        = colors.colors1
theme.tasklist_bg_normal                        = colors.background
theme.tasklist_bg_focus                         = theme.bg_focus
theme.tasklist_bg_urgent                        = theme.bg_urgent
theme.tasklist_spacing                          = 5
-- theme.tasklist_border_focus                         = "#666"

theme.systray_icon_spacing                      = 2

theme.menu_submenu_icon = themes_path.."default/submenu.png"
-- theme.menu_height = dpi(0)
theme.menu_height = 0
theme.menu_width  = dpi(100)

theme.layout_fairh = themes_path.."default/layouts/fairhw.png"
theme.layout_fairv = themes_path.."default/layouts/fairvw.png"
theme.layout_floating  = themes_path.."default/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."default/layouts/magnifierw.png"
theme.layout_max = themes_path.."default/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."default/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."default/layouts/tileleftw.png"
theme.layout_tile = themes_path.."default/layouts/tilew.png"
theme.layout_tiletop = themes_path.."default/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."default/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."default/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."default/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."default/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."default/layouts/cornersew.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
