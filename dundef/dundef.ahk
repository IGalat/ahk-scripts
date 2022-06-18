#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#IfWinActive Dungeon Defenders

PrintScreen:: Suspend, Toggle


;; key mappings

o::f ; strafe right

!]::w ; alt activate (equip)

!^v::1 ; upgrade
!^c::2 ; repair
^t::3 ; heal
p::4 ; ability 2

^w::c ; cancel

6::^g ; force activate crystal
!WheelDown::PgDn ; less trap/aura radius
!WheelUp::PgUp ; more trap/aura radius


;; hidden hotkeys
s::o ; enemy billboards
d::p ; tower icons on map


;; minion stacking
![::minionStack("[")
!p::minionStack("4")
!h::minionStack("h")
0::Click, 2

;; tower stacking
^[::StackTower1("[")
^p::StackTower1("4")
^u::StackTower1("u")

+[::StackTower2("[")
+p::StackTower2("4")
+u::StackTower2("u")


;; hotkeys for macros
\::killSelf()
8::sell()
^v::autoUpgrade()
^c::autoRepair()
/::removeFromShop()
$n:: ; collect loot
	while GetKeyState("n","P")
	{
		Send, ]
		Sleep 50
	}
	return


;; functions

StackTower1(Key)
{
    SendInput, %Key%{Space}
}

StackTower2(Key)
{
    SendInput, %Key%{Space}{Space}
    MouseClick, left,,, 2, 0
}

killSelf() {
    Send, {Tab}
    Sleep 150
    Send, killme{Enter}
}

openActionWheel() {
    Send, y
    Sleep, 200
}

sell() {
    MouseGetPos xx, yy
    openActionWheel()
    Click 1061 625
    Sleep 20
    MouseMove %xx%, %yy% ; back to original spot
}

autoUpgrade() {
    Send, 1
    Sleep 50
    Click
}

autoRepair() {
    Send, 2
    Sleep 50
    Click
}

removeFromShop() {
    MouseGetPos xx, yy
    Sleep 50
    Click ; on item
    Sleep 100
    Click 1446 398 ; remove from shop button
    Sleep 50
    MouseMove %xx%, %yy% ; back to original spot
}

minionStack(hkey) {
    Send, %hkey%
    Click 2
}

repeatPressKey(sourceKey, affectKey){
	while GetKeyState(sourceKey,"P")
	{
		Send affectKey
		Sleep 50
	}
}
