import XMonad
import Data.Monoid
import System.Exit
import Graphics.X11.ExtraTypes.XF86
import XMonad.Hooks.DynamicLog

import qualified XMonad.StackSet as W
import qualified Data.Map        as M

import XMonad.Hooks.EwmhDesktops

import XMonad.Util.SpawnOnce

_terminal           = "kitty"
_focusFollowsMouse  = True
_clickJustFocuses   = False
_borderWidth        = 1
_modMask            = mod4Mask
_workspaces         = [" 1 "," 2 "," 3 "," 4 "," 5 "," 6 "," 7 "," 8 "," 9 "]
_normalBorderColor  = "#282C34"
_focusedBorderColor = "#61AFEF"

_keys conf@XConfig { XMonad.modMask = modm } = M.fromList $

    [
      ((modm, xK_Return ), spawn $ XMonad.terminal conf)
    , ((0, xF86XK_AudioMute ), spawn "pactl set-sink-mute @DEFAULT_SINK@ toggle")
    , ((0, xF86XK_AudioLowerVolume), spawn "pactl set-sink-volume @DEFAULT_SINK@ -10%")
    , ((0, xF86XK_AudioRaiseVolume), spawn "pactl set-sink-volume @DEFAULT_SINK@ +10%")
    , ((modm,               xK_p     ), spawn "dmenu_run")
    , ((modm,               xK_space ), sendMessage NextLayout)
    , ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)
    , ((modm,               xK_n     ), refresh)
    , ((modm,               xK_Tab   ), windows W.focusDown)
    , ((modm,               xK_j     ), windows W.focusDown)
    , ((modm,               xK_k     ), windows W.focusUp  )
    , ((modm,               xK_m     ), windows W.focusMaster  )
    , ((modm .|. shiftMask, xK_Return), windows W.swapMaster)
    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown  )
    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp    )
    , ((modm,               xK_h     ), sendMessage Shrink)
    , ((modm,               xK_l     ), sendMessage Expand)
    , ((modm,               xK_t     ), withFocused $ windows . W.sink)
    , ((modm              , xK_comma ), sendMessage (IncMasterN 1))
    , ((modm              , xK_period), sendMessage (IncMasterN (-1)))
    , ((modm, xK_f) , spawn "pcmanfm")
    , ((modm .|. shiftMask, xK_q), kill)
    , ((controlMask .|. shiftMask, xK_r), spawn "xmonad --recompile; xmonad --restart")
    , ((controlMask .|. shiftMask, xK_Escape), io exitSuccess)
    ]
    ++

    [((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
    ++

    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]

_mouseBindings XConfig {XMonad.modMask = modm} = M.fromList

    [ ((modm, button1), \w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster)
    , ((modm, button2), \w -> focus w >> windows W.shiftMaster)

    , ((modm, button3), \w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster)
    ]

_layout = tiled ||| Full
  where
    tiled   = Tall nmaster delta ratio
    nmaster = 1
    ratio   = 1/2
    delta   = 3/100

_manageHook = composeAll
    [ className =? "Nitrogen"        --> doFloat
    , className =? "notification"    --> doFloat
    , className =? "confirm"         --> doFloat
    , className =? "file_progress"   --> doFloat
    , className =? "dialog"          --> doFloat
    , className =? "download"         --> doFloat
    , className =? "error"                   --> doFloat
    , className =? "Qalculate-gtk"           --> doFloat
    , title     =? "Android Emulator - emulator:5554"    --> doFloat
    ]

_handleEventHook   = fullscreenEventHook
_logHook     = return ()
_startupHook =  return ()

_bar         = "xmobar"
_PP          = xmobarPP { 
    ppCurrent = xmobarColor "#61AFEF" "" . wrap "[" "]"
}

_toggleStrutsKey XConfig { XMonad.modMask = modMask } = (modMask, xK_b)

defaults = def {
        terminal           = _terminal,
        focusFollowsMouse  = _focusFollowsMouse,
        clickJustFocuses   = _clickJustFocuses,
        borderWidth        = _borderWidth,
        modMask            = _modMask,
        workspaces         = _workspaces,
        normalBorderColor  = _normalBorderColor,
        focusedBorderColor = _focusedBorderColor,
        keys               = _keys,
        mouseBindings      = _mouseBindings,
        layoutHook         = _layout,
        manageHook         = _manageHook,
        handleEventHook    = _handleEventHook,
        logHook            = _logHook,
        startupHook        = _startupHook
    }

main     = xmonad =<< statusBar _bar _PP _toggleStrutsKey defaults
