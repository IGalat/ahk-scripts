#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely
;SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#IfWinActive Terraria

sendKey(key) {
    Send, {%key% down}
    Sleep 1
    Send, {%key% up}
}

wheelUp::sendKey("up")
wheelDown::sendKey("down")
!wheelUp::sendKey("q")
!wheelDown::sendKey("a")
!MButton::sendKey("z")
!PgUp::sendKey("w")
!PgDn::sendKey("s")

