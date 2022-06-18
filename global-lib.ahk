#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
AutoTrim, Off
SetTitleMatchMode 2
EnvGet, homedir, USERPROFILE
#UseHook  ; prevent Send command from triggering hotkeys

#Include C:\_my\dev\code\ahk-scripts\global\misc.ahk
#Include C:\_my\dev\code\ahk-scripts\global\unit-test-frame.ahk
#Include C:\_my\dev\code\ahk-scripts\global\array-functions.ahk
#Include C:\_my\dev\code\ahk-scripts\global\map-functions.ahk
#Include C:\_my\dev\code\ahk-scripts\global\string-functions.ahk
#Include C:\_my\dev\code\ahk-scripts\global\toggles.ahk
#Include C:\_my\dev\code\ahk-scripts\global\held-down.ahk

