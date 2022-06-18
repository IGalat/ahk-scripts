#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

q::
Send, {Esc}
Sleep, 100 
Send, {Esc}
Sleep, 100
Send, {Esc}
Sleep, 100

;Press "Load game"
Click, 1935, 750
Sleep, 100

;Last or pre-last save double-click
Click 2500, 1050, 2 ;Save 1
;Click 2500, 1150, 2 ;Save 2
Sleep, 8500

;One day pass
Send, {Space}
Sleep, 2000
Send, {Space}

Click, 25, 1000
Sleep, 400

;Physics
;Click, 500, 400

;Engineering
;Sleep, 1500
Click, 500, 1200

;Society
Sleep, 1500
Click, 500, 800