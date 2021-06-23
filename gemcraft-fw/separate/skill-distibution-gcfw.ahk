#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.


skillCoordinates := {}

resetSkills() {
    Click 501 978
}

Mausrad(x, y, Anzahl)
{
	MouseMove, x, y		; Skill auswählen

	; mit gedrückter Shift Taste kann man direkt den Skill um 10 Punkte erhöhen
	; press Shift = 10 SP each click
	Shift_10 := Floor(Anzahl / 10)
	Einzel   := Mod(Anzahl, 10)

	Send {Shift Down}
	Loop, %Shift_10%
	{
		sleep 25
		Click, WheelUp
	}
	Send {Shift Up}

	Loop, %Einzel%
	{
		sleep 25
		Click, WheelUp
	}
}

setSkillValue(skill, value) {
    xCoord := skillCoordinates[skill].x
    yCoord := skillCoordinates[skill].y
    MouseMove, %xCoord%, %yCoord%
    tenX := Floor(value / 10)
    oneX := Mod(value, 10)
    Send {Shift Down}
	Loop, %tenX%
	{
		sleep 50
		Click, WheelUp
	}
	Send {Shift Up}

	Loop, %oneX%
	{
		sleep 50
		Click, WheelUp
	}
}

setSkills(skillMap) {
    sleep 500
    resetSkills()
    for skillName, skillValue in skillMap {
        setSkillValue(skillName, skillValue)
    }
}

addMap(mapToCollect, mapToAdd) {
    for k, v in mapToAdd
        mapToCollect[k] := v
}

skillCoordinates1 := {manaStream:{x: 199, y: 242}, orbOfPresense:{x: 505, y: 232}, fusion:{x: 825, y: 234}, trueColors:{x: 1086, y: 226}, resonance:{x: 1385, y: 228}, demolition:{x: 1685, y: 226}}
skillCoordinates2 := {crit:{x: 178, y: 403}, mana:{x: 495, y: 419}, bleed:{x: 806, y: 415}, armor:{x: 1082, y: 419}, poison:{x: 1417, y: 412}, slow:{x: 1726, y: 411}}
skillCoordinates3 := {freeze:{x: 181, y: 588}, whiteout:{x: 492, y: 596}, iceShards:{x: 754, y: 600}, bolt:{x: 1100, y: 594}, beam:{x: 1401, y: 591}, barrage:{x: 1695, y: 583}}
skillCoordinates4 := {fury:{x: 202, y: 774}, amplifiers:{x: 478, y: 768}, pylons:{x: 795, y: 769}, lanterns:{x: 1092, y: 763}, traps:{x: 1434, y: 769}, seekerSense:{x: 1684, y: 776}}

global skillCoordinates := {}
addMap(skillCoordinates, skillCoordinates1)
addMap(skillCoordinates, skillCoordinates2)
addMap(skillCoordinates, skillCoordinates3)
addMap(skillCoordinates, skillCoordinates4)



;;

regularSkills := {manastream: 50, orbOfPresense: 50, fusion: 50, freeze: 50, whiteout: 50, iceShards: 50, barrage: 50, fury: 50, lanterns: 50, seekerSense: 50
                , trueColors: 494, resonance: 154
                , crit: 210, mana: 605
                , amplifiers: 385, traps: 461}

talismanFarmSkills := {manastream: 50, orbOfPresense: 50, fusion: 50, lanterns: 50, seekerSense: 50
    , trueColors: 500, resonance: 310
    , crit: 450, mana: 560
    , amplifiers: 430}


Numpad9::
    setSkills(regularSkills)
    return

Numpad8::
    setSkills(talismanFarmSkills)
    return
