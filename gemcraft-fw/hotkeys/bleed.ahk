F6:: ; no mod
    upgradeU(bleedAmps)
    upgradeU(bleedLantern)
    return

^F6:: ; ctrl
    Sleep 200
    copyMulti([bleedLantern, bleedAmps])
    changePrio(bleedLantern, gemPrio.downRight)
    upgradeU(bleedLantern, 2)
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