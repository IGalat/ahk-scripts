F6:: ; no mod
    upgradeU(bleedAmps)
    upgradeU(bleedLantern)
    return

^F6:: ; ctrl
    Sleep 200
    if (dualBleedSlow) {
        copyMulti([bleedAmps]) ; assume lantern gem is already in slot
        changePrio(bleedLantern, gemPrio.down)
    } else {
        copyMulti([bleedLantern, bleedAmps])
        upgradeU(bleedLantern, 2)
        changePrio(bleedLantern, gemPrio.downRight)
    }
    return

#F6:: ; windows modifier
    if ( !empty(bleedLantern) ) {
        createDualGem(gems.bleed, gems.slow, 6, 4)
        copyMulti([bleedLantern])
        changePrio(bleedLantern, gemPrio.down)
    }
    fill(bleedAmps, gems.bleed, 6)
    return

<!F6:: ; alt
    sell(bleedLantern)
    sell(bleedAmps)
    return

+^F6:: ; shift + ctrl
    GoSub ^F6
    return

<!+F6:: ; left alt + shift
    GoSub <!F6
    GoSub ^F6
    return