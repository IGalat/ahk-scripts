#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#IfWinActive Satisfactory

keyToHold:="Click Left"
KeyDown := false

key2ToHold:="["
Key2Down := false

z::
KeyDown := !KeyDown
If KeyDown
	SendInput {%keyToHold% down}
Else
	SendInput {%keyToHold% up}
Return

]::
	while GetKeyState("]","P")
	{
		Send, [
		Sleep 50
	}
	return



=::
Key2Down := !Key2Down
If Key2Down
	SendInput {%key2ToHold% down}
Else
	SendInput {%key2ToHold% up}
Return