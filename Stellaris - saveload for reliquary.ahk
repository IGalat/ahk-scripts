#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

q::
Send, {Esc}
Sleep, 100
Click, 1935, 750
Sleep, 100
Click 2329, 1054, 2
Sleep, 8000
Send, {F1}
Sleep, 100
Click, 1152, 518
Sleep, 100
Click, 560, 1639
Sleep, 1500
Click, 2139, 1356
Sleep, 1200
Click, 2199, 1279
