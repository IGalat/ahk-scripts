;; no calc popups
F9:: ; no mod
    upgradeU(critTraps)
    upgradeU(critAmps)
    return

>!F9:: ; right alt
    upgradeGemsmith(critTraps)
    upgradeGemsmith(critAmps)
    return

<!F9:: ; left alt
    sell(critTraps)
    sell(critAmps)
    return

+F9:: ; shift
    upgradeByDeltas(critGemsGraded)
    return

^F9:: ; ctrl
    Sleep 200
    copyMulti([critTraps, critAmps])
    return

+^F9:: ; shift + ctrl
    copyByDeltas(critGemsGraded)
    return

<!+F9:: ; left alt + shift
    GoSub <!F9
    copyByDeltas(critGemsGraded)
    return


;; with popup calc
F8::
    InputBox, trapGemValue, crit gems upgrade, Trap gem value, , 250, 130
    if ErrorLevel
       return
    else
        cost := getTotalCost(trapGemValue, critGemsCostMultiplier, critDeltas)
        prettyCost := prettyPrint(cost)
        InputBox, multCost, crit gems upgrade, Upgrade? Cost:, , 250, 130, , , , , %prettyCost%
        if ErrorLevel
            return
        else
            GoSub F9
    return

>!F8::
    InputBox, trapGemValue, crit gems upgradeGemsmith, Combine cost, , 250, 130
    if ErrorLevel
       return
    else
        cost := getTotalCost(trapGemValue, critGemsCostMultiplier, critDeltas)
        prettyCost := prettyPrint(cost)
        InputBox, multCost, crit gems upgradeGemsmith, UpgradeGemsmith? Cost:, , 250, 130, , , , , %prettyCost%
        if ErrorLevel
            return
        else
            GoSub >!F9
    return

<!F8::
    InputBox, trapGemValue, crit gems sell, Trap gem value, , 250, 130
    if ErrorLevel
       return
    else
        profit := getSellProfit(trapGemValue, critGemsCostMultiplier, critDeltas)
        prettyProfit := prettyPrint(profit)
        InputBox, multCost, crit gems sell, Sell? Profit:, , 250, 130, , , , , %prettyProfit%
        if ErrorLevel
            return
        else
            GoSub <!F9
    return

+F8::
    InputBox, gemValue, crit gems uByDeltas, Gem value, , 250, 130
    if ErrorLevel
       return
    else
        cost := getUpgradeByDeltasCost(gemValue, critGemsQuantity, critGemsCostMultiplier)
        prettyCost := prettyPrint(cost)
        InputBox, multCost, crit gems uByDeltas, uByDeltas? Cost:, , 250, 130, , , , , %prettyCost%
        if ErrorLevel
            return
        else
            GoSub +F9
    return

^F8::
    InputBox, gemValue, crit gem copy, Gem value, , 250, 130
    if ErrorLevel
       return
    else
        cost := getCopyCost(gemValue, critGemsQuantity)
        prettyCost := prettyPrint(cost)
        InputBox, multCost, crit gem copy, Copy? Cost:, , 250, 130, , , , , %prettyCost%
        if ErrorLevel
            return
        else
            GoSub ^F9
    return

+^F8::
    InputBox, gemValue, crit gem copy + uByDeltas, Gem value, , 250, 130
    if ErrorLevel
       return
    else
        cost := getCopyAndUpgradeByDeltasCost(gemValue, critGemsCostMultiplier)
        prettyCost := prettyPrint(cost)
        InputBox, multCost, crit gem copy + uByDeltas, Copy + uByDeltas? Cost:, , 250, 130, , , , , %prettyCost%
        if ErrorLevel
            return
        else
            GoSub +^F9
    return

<!+F8::
    InputBox, trapGemToSellValue, crit gems sell + copy + uByDeltas, Trap gem to sell value, , 250, 130
    if ErrorLevel
       return
    else
        InputBox, gemUpValue, crit gems sell + copy + uByDeltas, New gem value, , 250, 130, , , , , 2
        if ErrorLevel
           return
        else
            cost := getSellAndCopyAndUpgradeByDeltasCost(trapGemToSellValue, gemUpValue, critGemsCostMultiplier, critDeltas)
            prettyCost := prettyPrint(cost)
            InputBox, multCost, crit gems sell + copy + upgrade, Sell + Copy + uByDeltas? Cost:, , 250, 130, , , , , %prettyCost%
            if ErrorLevel
                return
            else
                GoSub F9
    return

#F8:: ; windows mod key. Only calc, no actions. Based on bank size gives max gem cost
    InputBox, bank, crit gem max cost, Your bank:, , 250, 130
    if ErrorLevel
       return
    else
        cost := getMaxAffordableCost(bank, critGemsCostMultiplier)
        prettyCost := Round(cost * 1000, 3) "e-3"
        InputBox, emptyVar, crit gem max cost, Max gem cost:, , 250, 130, , , , , %prettyCost%
    return




