#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#Include ..\common\constants.ahk
#Include ..\external\arrayToString.ahk
#Include ..\common\spells.ahk
#Include ..\common\low-level.ahk
#Include ..\common\structure.ahk
#Include ..\common\gems.ahk
#Include ..\common\unit-test-frame.ahk

walls := [{x: 1606, y: 329, xx: 1598, yy: 103}, {x: 1653, y: 78, xx: 1658, yy: 308}, {x: 1545, y: 103, xx: 1545, yy: 82}
    , {x: 1305, y: 328, xx: 1301, yy: 117}, {x: 1319, y: 112, xx: 1353, yy: 111}, {x: 1241, y: 113, xx: 1236, yy: 265}]

lanterns := [{x: 1421, y: 202}, {x: 1532, y: 204}, {x: 1473, y: 147}, {x: 1473, y: 252}]

amps := [{x: 1479, y: 202}, {x: 1423, y: 142}, {x: 1531, y: 148}, {x: 1533, y: 255}, {x: 1421, y: 252}]

towers := [{x: 1360, y: 203}]

spellMarkerSpot := [{x: 1617, y: 206}]

backToTheMap := [{x: 1715, y: 981}]


Numpad4:: ; setup
    buildWalls(walls)
    buildLanterns(lanterns)
    buildAmps(amps)
    buildTowers(towers)

    createDualGem(gems.mana, gems.crit, 10)
    fillCopies(lanterns)
    fillCopies(amps)
    fillCopies(towers, true)
    changePrio(towers, gemPrio.downLeft)

    placeSpellMarker(spellMarkerSpot, 1)
    placeSpellMarker(spellMarkerSpot, 2)
    placeSpellMarker(spellMarkerSpot, 3)

    sendAllWaves()
    launch3xSpeed()
    moveMouseOutOfTheWay()

    ; upgrade
    sleep 9000
    pauseGame()
    upLevels := 7
    upgradeU(lanterns, upLevels)
    upgradeU(amps, upLevels)
    upgradeU(towers, upLevels)
    Send, {Space}
    moveMouseOutOfTheWay()

    ; swap for crit
    sleep 9000
    pauseGame()
    sell(lanterns)
    sell(amps)
    sell(towers)
    createGem(gems.crit, 20)
    fillCopies(lanterns)
    fillCopies(amps)
    fillCopies(towers, true)
    changePrio(towers, gemPrio.downLeft)
    Send, {Space}
    moveMouseOutOfTheWay()
    return

Numpad5:: ; restart
    Click 1744 981 ; "Back to the map"
    sleep 5000
    Click 959 535 ; "Center of the map, the field is there after a round
    sleep 1500
    Click 1434 882 ; "Start the battle"
    return