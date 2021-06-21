;; no calc popups
F11:: ; no mod
    upgradeU(manaTraps)
    upgradeU(manaAmps)
    return

>!F11:: ; right alt
    upgradeGemsmith(manaTraps)
    upgradeGemsmith(manaAmps)
    return

<!F11:: ; left alt
    sell(manaTraps)
    sell(manaAmps)
    return

+F11:: ; shift
    upgradeByDeltas(manaGemsGraded)
    return

^F11:: ; ctrl
    Sleep 200
    copyMulti([manaTraps, manaAmps])
    changePrio(manaTraps, gemPrio.downRight)
    return

+^F11:: ; shift + ctrl
    copyByDeltas(manaGemsGraded)
    return

<!+F11:: ; left alt + shift
    GoSub <!F11
    copyByDeltas(manaGemsGraded)
    return

;; with popup calc
F10::
    InputBox, trapGemValue, mana gems upgrade, Trap gem value, , 250, 130
    if ErrorLevel
       return
    else
        cost := getTotalCost(trapGemValue, manaGemsCostMultiplier, manaDeltas)
        prettyCost := prettyPrint(cost)
        InputBox, multCost, mana gems upgrade, Upgrade? Cost:, , 250, 130, , , , , %prettyCost%
        if ErrorLevel
            return
        else
            GoSub F11
    return

>!F10::
    InputBox, trapGemValue, mana gems upgradeGemsmith, Combine cost, , 250, 130
    if ErrorLevel
       return
    else
        cost := getTotalCost(trapGemValue, manaGemsCostMultiplier, manaDeltas)
        prettyCost := prettyPrint(cost)
        InputBox, multCost, mana gems upgradeGemsmith, UpgradeGemsmith? Cost:, , 250, 130, , , , , %prettyCost%
        if ErrorLevel
            return
        else
            GoSub >!F11
    return

<!F10::
    InputBox, trapGemValue, mana gems sell, Trap gem value, , 250, 130
    if ErrorLevel
       return
    else
        profit := getSellProfit(trapGemValue, manaGemsCostMultiplier, manaDeltas)
        prettyProfit := prettyPrint(profit)
        InputBox, multCost, mana gems sell, Sell? Profit:, , 250, 130, , , , , %prettyProfit%
        if ErrorLevel
            return
        else
            GoSub <!F11
    return

+F10::
    InputBox, gemValue, mana gems uByDeltas, Gem value, , 250, 130
    if ErrorLevel
       return
    else
        cost := getUpgradeByDeltasCost(gemValue, manaGemsQuantity, manaGemsCostMultiplier)
        prettyCost := prettyPrint(cost)
        InputBox, multCost, mana gems uByDeltas, uByDeltas? Cost:, , 250, 130, , , , , %prettyCost%
        if ErrorLevel
            return
        else
            GoSub +F11
    return

^F10::
    InputBox, gemValue, mana gem copy, Gem value, , 250, 130
    if ErrorLevel
       return
    else
        cost := getCopyCost(gemValue, manaGemsQuantity)
        prettyCost := prettyPrint(cost)
        InputBox, multCost, mana gem copy, Copy? Cost:, , 250, 130, , , , , %prettyCost%
        if ErrorLevel
            return
        else
            GoSub ^F11
    return

+^F10::
    InputBox, gemValue, mana gem copy + uByDeltas, Gem value, , 250, 130
    if ErrorLevel
       return
    else
        cost := getCopyAndUpgradeByDeltasCost(gemValue, manaGemsCostMultiplier)
        prettyCost := prettyPrint(cost)
        InputBox, multCost, mana gem copy + uByDeltas, Copy + uByDeltas? Cost:, , 250, 130, , , , , %prettyCost%
        if ErrorLevel
            return
        else
            GoSub +^F11
    return

<!+F10::
    InputBox, trapGemToSellValue, mana gems sell + copy + uByDeltas, Trap gem to sell value, , 250, 130
    if ErrorLevel
       return
    else
        InputBox, gemUpValue, mana gems sell + copy + uByDeltas, New gem value, , 250, 130, , , , , 2
        if ErrorLevel
           return
        else
            cost := getSellAndCopyAndUpgradeByDeltasCost(trapGemToSellValue, gemUpValue, manaGemsCostMultiplier, manaDeltas)
            prettyCost := prettyPrint(cost)
            InputBox, multCost, mana gems sell + copy + upgrade, Sell + Copy + uByDeltas? Cost:, , 250, 130, , , , , %prettyCost%
            if ErrorLevel
                return
            else
                GoSub F11
    return

#F10:: ; windows mod key. Only calc, no actions. Based on bank size gives max gem cost
    InputBox, bank, mana gem max cost, Your bank:, , 250, 130
    if ErrorLevel
       return
    else
        cost := getMaxAffordableCost(bank, manaGemsCostMultiplier)
        prettyCost := Round(cost * 1000, 3) "e-3"
        InputBox, emptyVar, mana gem max cost, Max gem cost:, , 250, 130, , , , , %prettyCost%
    return




