initGemsActive := false

; need to specify hotkeys folder because this is called from outside it
#Include hotkeys/mana.ahk
#Include hotkeys/crit.ahk
#Include hotkeys/slow.ahk
#Include hotkeys/bleed.ahk

F12::
    if ( initGemsActive ) {
        upgradeU(initialManaTraps)
        upgradeU(initialManaAmps)
    }
    upgradeU(enrageGem)
    return

!F12::
    sell(initialManaTraps)
    sell(initialManaAmps)
    initGemsActive := false
    demolishAll(tertiaryDemolitions)
    return

; initial placement: walls, trap, whiteout, enrage gem
^F12::
    initGemsActive := true
    removeSpellMarkers([1, 2, 3])

    demolishAll(initialDemolitions)
    buildWalls(initialWalls)
    buildTowers(initialTowers)
    buildTraps(initialManaTraps)
    buildAmps(initialManaAmps)
    fillMulti([initialManaTraps, initialManaAmps, enrageGem], gems.mana, 4)

    placeSpellMarker(initialWhiteoutSpot, 2)

    upgradeU(initialManaTraps, 2)
    upgradeU(enrageGem, 2)

    Loop, 11 { ; loop because round robin here
        GoSub F12
    }

    castEnchancementSpell(initialManaTraps, 5)
    launch3xSpeed()
    moveMouseOutOfTheWay()
    return

; place everything: mana + structure walls, crit, slow, bleed, anti-beacon walls, empty towers; fill some
+F12::
    pauseGame()

    if ( initSamePlace ) {
        GoSub !F12 ; sell init
    }

    demolishAll(secondaryDemolitions)
    placeSpellMarker(secondSpellSpot, 2)

    buildWalls(structuralWalls)
    buildWalls(antiBeaconWalls)
    buildTowers(antiSpecialTowers)
    buildLanterns(emptyLanterns)

    buildTraps(manaTraps)
    buildAmps(manaAmps)

    buildTraps(critTraps)
    buildAmps(critAmps)

    buildAmps(slowAmps)
    buildLanterns(slowLanterns)

    buildAmps(bleedAmps)
    buildLanterns(bleedLantern)


    createGem(gems.mana)
    GoSub +^F11 ; copyByDeltas(manaGemsGraded)

    if ( !empty(critTraps) and !empty(critAmps) ) {
        createGem(gems.crit)
        GoSub +^F9 ; copyByDeltas(critGemsGraded)
    }

    fill(slowAmps, gems.slow, 7)
    fill(slowLanterns, gems.slow)
    changePrio(slowLanterns, gemPrio.down)

    GoSub #F6 ; bleed : if dual, fill lantern+amps, else only amps

    upgradeU(enrageGem, 6)

    moveMouseToTheMiddle()
    return

