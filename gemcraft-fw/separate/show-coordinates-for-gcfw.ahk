#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

; While numlock is toggled On
; Script will display Mouse Position (coordinates) as a tooltip at Top-Left corner of screen.
; Also allows to copy them (to clipboard)

settimer start1, 0 ; "0" to make it update position instantly
return

start1:
if !GetKeyState("numlock","T") ; whether numlock is on or off
 {
 tooltip ; if off, don't show tooltip at all.
 }
 else
 { ; if on
 CoordMode, ToolTip, Screen ; makes tooltip to appear at position, relative to screen.
 CoordMode, Mouse, Screen ; makes mouse coordinates to be relative to screen.
 MouseGetPos xx, yy ; get mouse x and y position, store as %xx% and %yy%
 tooltip %xx% %yy%, 0, 0 ; display tooltip of %xx% %yy% at coordinates x0 y0.

 ;; clipboard is inbuilt variable that syncs with OS clipboard

 Numpad0::
    clipboard = {x: %xx%, y: %yy%}
    return

 Numpad1::
    clipboard = %clipboard%, {x: %xx%, y: %yy%}
    return

 Numpad2::
    clipped := SubStr(clipboard, 1, StrLen(clipboard)-1)
    clipboard = %clipped%, xx: %xx%, yy: %yy%}
    return
 }
return
