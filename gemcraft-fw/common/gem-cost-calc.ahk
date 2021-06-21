gemCostRoundUp(_gemValue) {
    if (_gemValue = Floor(_gemValue) && _gemValue > 9) {
        return _gemValue + 1
    } else {
        return Round(_gemValue + 0.1, 1)
    }
}

getLowestGradeGemCost(_trapGemValue, _gemDeltas) {
    result := _trapGemValue
    trapDelta := _gemDeltas.traps
    Loop, %trapDelta% {
        result := result * 0.5
    }
    return result
}

getGemTotalCostMultiplier(_gemsGraded) {
    result := 0
    for _key, _value in _gemsGraded {
        costMultForGrade := 2**_key
        numberOfThingsForGrade := getMapLength(_value)
        result := result + (costMultForGrade * numberOfThingsForGrade)
    }
    return result
}

manaGemsCostMultiplier := getGemTotalCostMultiplier(manaGemsGraded)
critGemsCostMultiplier := getGemTotalCostMultiplier(critGemsGraded)

manaGemsQuantity := getMapOfMapsLength(manaGemsGraded)
critGemsQuantity := getMapOfMapsLength(critGemsGraded)


getSellProfit(_trapGemValue, _gemCostMultiplier, _gemDeltas) {
    _lowestGradeGemValue := getLowestGradeGemCost(_trapGemValue, _gemDeltas)
    result := _gemCostMultiplier * _lowestGradeGemValue * 0.7
    return result
}

getCopyCost(_gemValue, _gemsQuantity) {
    _gemCost := gemCostRoundUp(_gemValue)
    return _gemCost * ( _gemsQuantity - 1 )
}

getUpgradeByDeltasCost(_gemValue, _gemsQuantity, _gemCostMultiplier) {
    _gemCost := gemCostRoundUp(_gemValue)
    return _gemCost * ( _gemCostMultiplier - _gemsQuantity )
}

getCopyAndUpgradeByDeltasCost(_gemValue, _gemCostMultiplier) {
    _gemCost := gemCostRoundUp(_gemValue)
    return _gemCost * ( _gemCostMultiplier - 1 )
}

getSellAndCopyCost(_trapGemToSellValue, _gemToCopyValue, _gemCostMultiplier, _gemsQuantity, _gemDeltas) {
    return getCopyCost(_gemToCopyValue, _gemsQuantity) - getSellProfit(_trapGemToSellValue, _gemCostMultiplier, _gemDeltas)
}

getSellAndCopyAndUpgradeByDeltasCost(_trapGemToSellValue, _gemUpValue, _gemCostMultiplier, _gemDeltas) {
    return getCopyAndUpgradeByDeltasCost(_gemUpValue, _gemCostMultiplier) - getSellProfit(_trapGemToSellValue, _gemCostMultiplier, _gemDeltas)
}

getTotalCost(_trapGemValue, _gemCostMultiplier, _gemDeltas) {
    _gemCost := gemCostRoundUp(_trapGemValue)
    _lowestGradeGemValue := getLowestGradeGemCost(_gemCost, _gemDeltas)
    return _lowestGradeGemValue * _gemCostMultiplier
}

getUpgradeCost(_trapGemValue, _multCost, _gemCostMultiplier, _gemDeltas) {
    _gemCost := gemCostRoundUp(_trapGemValue)
    _lowestGradeGemValue := getLowestGradeGemCost(_gemCost, _gemDeltas)
    return _lowestGradeGemValue * _gemCostMultiplier * (_multCost - 1)
}

getMaxAffordableCost(_bank, _gemCostMultiplier) {
    return _bank / _gemCostMultiplier
}


;; unit tests

assertEquals(5.1, gemCostRoundUp(5))
assertEquals(100, gemCostRoundUp(99))
assertEquals(623, gemCostRoundUp(622))
assertEquals(2.6, gemCostRoundUp(2.5))

assertEquals(7.5, getLowestGradeGemCost(60, {traps: 3}))

assertEquals(35, getGemTotalCostMultiplier({0:[{x: 135, y: 254}, {x: 73, y: 195}, {x: 70, y: 80}], 4:[{x: 73, y: 195}, {x: 70, y: 80}]}))

assertEquals(35, getSellProfit(5, 20, {traps: 1}))

assertEquals(200, getCopyCost(49, 5))
assertEquals(4.6, getCopyCost(2.2, 3))

assertEquals(5060, getUpgradeByDeltasCost(10, 40, 500))

assertEquals(5000, getCopyAndUpgradeByDeltasCost(9.9, 501))

assertEquals(1300, getSellAndCopyCost(20, 99, 100, 21, {traps: 1})) ; 2000 - 700

assertEquals(4349, getSellAndCopyAndUpgradeByDeltasCost(20, 50, 100, {traps: 1})) ; 51*99 - 700

assertEquals(375, getUpgradeCost(1.4, 2, 500, {traps: 1}))


