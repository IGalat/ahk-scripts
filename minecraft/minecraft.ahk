#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

;#If WinActive("Omnifactory") || WinActive("Minecraft")

;takeOutAllDrawerUpgrades() {
;    y := 510
;    firstX := 800
;    lastX := 1120
;    xShift := (lastX - firstX) / 6
;    x := firstX
;    ; open drawer gui
;    Send {RAlt down}
;    Sleep 100
;    Send {Click Right}{RAlt up}
;
;    Send {Shift down}
;    Loop, 7 {
;        Sleep 100
;        Send +{Click %x% %y% Right}
;        x := x + xShift
;    }
;    Send {Shift up}{Esc}
;}


'::
    Send {RAlt down}{Space down}
    Loop
    {
        Sleep, 10
        if !GetKeyState("'", "P")
            break
    }
    Send {RAlt up}{Space up}
    return

]::
    Send 1{RAlt down}{Space down}
    spaceDown := true
    i := 0
    Loop
    {
        Sleep, 10
        i := i+1
        if !GetKeyState("]", "P")
            break
        if (i > 25 && spaceDown) {
            Send {Space up}
            spaceDown := false
        }
    }
    Send {RButton}
    Sleep 1
    if (spaceDown)
        Send {Space up}
    Send {RAlt up}
    return

F24::takeOutAllDrawerUpgrades()

;d::
;    Send, 2{RButton} ; put robot arm
;    Sleep 100
;    Send, 3{RButton} ; screwdriver
;    Sleep 100
;    Click 836 284 ; import
;    Sleep 100
;    Click 1067 284 ; supply exact
;    Sleep 100
;    return
;
;f::
;    Send, 2{RButton} ; put robot arm
;    Sleep 100
;    Send, 3{RButton} ; screwdriver
;    Sleep 100
;    Click 1067 284 ; supply exact
;    Sleep 100
;    return