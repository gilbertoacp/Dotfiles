local xresources   = require("beautiful.xresources")
local dpi          = xresources.apply_dpi
local gfs          = require("gears.filesystem")
local themes_path  = gfs.get_themes_dir()
local colors       = xresources.get_current_theme()

local font_name    = "JetBrains"
local font_size    = "8"

local theme_font             = font_name .. " " ..                         font_size
local theme_font_bold        = font_name .. " " .. "Bold"        .. " " .. font_size
local theme_font_italic      = font_name .. " " .. "Italic"      .. " " .. font_size
local theme_font_bold_italic = font_name .. " " .. "Bold Italic" .. " " .. font_size
local theme_font_big         = font_name .. " " .. "Bold"        .. " 16"

local theme = {
    bg_normal             =  colors.background,
    bg_focus              =  colors.color8,
    bg_urgent             =  colors.color1,
    bg_minimize           =  colors.color8,
    bg_systray            =  colors.color8,
    fg_normal             =  '#999',
    fg_focus              =  colors.color4,
    font                  =  theme_font,
    font_bold             =  theme_font_bold,
    font_italic           =  theme_font_italic,
    font_bold_italic      =  theme_font_bold_italic,
    font_big              =  theme_font_big,
    fg_urgent             = "#ffffff",
    fg_minimize           = "#ffffff",
    useless_gap           = 2,
    border_width          = dpi(1),
    border_normal         = "#000000",
    border_focus          = "#535d6c",
    border_marked         = "#91231c",
    tasklist_font_focus   = theme_font_bold,
    taglist_fg_occupied   = '#fff',
    taglist_font          = theme_font_bold,
    taglist_bg_focus      = colors.background,
    taglist_fg_focus      = colors.color4,
    border_radius         = 0,
    layout_fairh          = themes_path.."default/layouts/fairhw.png",
    layout_fairv          = themes_path.."default/layouts/fairvw.png",
    layout_floating       = themes_path.."default/layouts/floatingw.png",
    layout_magnifier      = themes_path.."default/layouts/magnifierw.png",
    layout_max            = themes_path.."default/layouts/maxw.png",
    layout_fullscreen     = themes_path.."default/layouts/fullscreenw.png",
    layout_tilebottom     = themes_path.."default/layouts/tilebottomw.png",
    layout_tileleft       = themes_path.."default/layouts/tileleftw.png",
    layout_tile           = themes_path.."default/layouts/tilew.png",
    layout_tiletop        = themes_path.."default/layouts/tiletopw.png",
    layout_spiral         = themes_path.."default/layouts/spiralw.png",
    layout_dwindle        = themes_path.."default/layouts/dwindlew.png",
    layout_cornernw       = themes_path.."default/layouts/cornernww.png",
    layout_cornerne       = themes_path.."default/layouts/cornernew.png",
    layout_cornersw       = themes_path.."default/layouts/cornersww.png",
    layout_cornerse       = themes_path.."default/layouts/cornersew.png",
    tasklist_disable_icon = true,
    tasklist_font_normal  = theme_font,
    tasklist_font_urgent  = theme_font_bold,
    tasklist_fg_normal    = colors.colors7,
    tasklist_fg_focus     = '#fff',
    tasklist_fg_minimize  = colors.colors1,
    tasklist_fg_urgent    = colors.colors1,
    tasklist_bg_normal    = colors.background,
    tasklist_bg_focus     = colors.colors0,
    tasklist_bg_urgent    = colors.color1,
    tasklist_spacing      = 5,
    systray_icon_spacing  = 2,
    menu_submenu_icon     = themes_path.."default/submenu.png",
    menu_height           = 0,
    menu_width            = dpi(100),
    icon_theme            = nil
}

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
