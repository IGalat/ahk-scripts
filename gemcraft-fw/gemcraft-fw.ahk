#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#Include fields\_template.ahk
#Include common\constants.ahk
#Include external\arrayToString.ahk

;; CHANGE THIS:

ampSkillLevel := 205

#Include fields\i3.ahk

;;

#Include common\spells.ahk
#Include common\group-up.ahk
#Include common\low-level.ahk
#Include common\grade-deltas.ahk
#Include common\gem-cost-calc.ahk
#Include common\structure.ahk
#Include common\gems.ahk
#Include common\unit-test-frame.ahk
#Include hotkeys\hotkeys.ahk