getAmpSpreadFromSkill(_ampSkillLevel) {
    return Floor(_ampSkillLevel / 5) * 0.4
}

getAmpSpecialsSpread(_ampSkillLevel) {
    return 15 + getAmpSpreadFromSkill(_ampSkillLevel)
}

getAmpDamageSpread(_ampSkillLevel) {
    return 20 + getAmpSpreadFromSkill(_ampSkillLevel)
}

getManaSkillDelta(_ampSkillLevel) {
    global manaAmpGradeSpecialSpreadTable

    spread := getAmpSpecialsSpread(_ampSkillLevel)
    for index, item in manaAmpGradeSpecialSpreadTable {
        if (spread <= item) {
            skillDelta := (index - 1) - 5
            break
        }
    }
    return skillDelta
}

getCritSkillDelta(_ampSkillLevel) {
    global critAmpGradeDamageSpreadTable

    spread := getAmpDamageSpread(_ampSkillLevel)
    for index, item in critAmpGradeDamageSpreadTable {
        if (spread <= item) {
            skillDelta := (index - 1) - 6
            break
        }
    }
    return skillDelta
}

getManaDeltas(_ampSkillLevel, _amps1, _amps2, _amps3, _amps45, _amps67) {
    manaSkillDelta := getManaSkillDelta(_ampSkillLevel)
    trapDelta := 0
    firstAmpGroup := true
    result := {}

    if ( !empty(_amps1) ) {
        theoreticalDelta := manaSkillDelta
        if(firstAmpGroup) {
            firstAmpGroup := false
            if (theoreticalDelta < 0) {
                trapDelta := -theoreticalDelta
            }
        }
        result.amps1 := theoreticalDelta + trapDelta
    }
    if ( !empty(_amps2) ) {
        theoreticalDelta := manaSkillDelta + 2
        if(firstAmpGroup) {
            firstAmpGroup := false
            if (theoreticalDelta < 0) {
                trapDelta := -theoreticalDelta
            }
        }
        result.amps2 := theoreticalDelta + trapDelta
    }
    if ( !empty(_amps3) ) {
        theoreticalDelta := manaSkillDelta + 3
        if(firstAmpGroup) {
            firstAmpGroup := false
            if (theoreticalDelta < 0) {
                trapDelta := -theoreticalDelta
            }
        }
        result.amps3 := theoreticalDelta + trapDelta
    }
    if ( !empty(_amps45) ) {
        theoreticalDelta := manaSkillDelta + 4
        if(firstAmpGroup) {
            firstAmpGroup := false
            if (theoreticalDelta < 0) {
                trapDelta := -theoreticalDelta
            }
        }
        result.amps45 := theoreticalDelta + trapDelta
    }
    if ( !empty(_amps67) ) {
        theoreticalDelta := manaSkillDelta + 5
        if(firstAmpGroup) {
            firstAmpGroup := false
            if (theoreticalDelta < 0) {
                trapDelta := -theoreticalDelta
            }
        }
        result.amps67 := theoreticalDelta + trapDelta
    }
    result.traps := trapDelta
    return result
}

getCritDeltas(_ampSkillLevel, _amps1, _amps2, _amps3, _amps45, _amps67) {
    critSkillDelta := getCritSkillDelta(_ampSkillLevel)
    trapDelta := 0
    firstAmpGroup := true
    result := {}

    if ( !empty(_amps1) ) {
        theoreticalDelta := critSkillDelta
        if(firstAmpGroup) {
            firstAmpGroup := false
            if (theoreticalDelta < 0) {
                trapDelta := -theoreticalDelta
            }
        }
        result.amps1 := theoreticalDelta + trapDelta
    }
    if ( !empty(_amps2) ) {
        theoreticalDelta := critSkillDelta + 2
        if(firstAmpGroup) {
            firstAmpGroup := false
            if (theoreticalDelta < 0) {
                trapDelta := -theoreticalDelta
            }
        }
        result.amps2 := theoreticalDelta + trapDelta
    }
    if ( !empty(_amps3) ) {
        theoreticalDelta := critSkillDelta + 4
        if(firstAmpGroup) {
            firstAmpGroup := false
            if (theoreticalDelta < 0) {
                trapDelta := -theoreticalDelta
            }
        }
        result.amps3 := theoreticalDelta + trapDelta
    }
    if ( !empty(_amps45) ) {
        theoreticalDelta := critSkillDelta + 5
        if(firstAmpGroup) {
            firstAmpGroup := false
            if (theoreticalDelta < 0) {
                trapDelta := -theoreticalDelta
            }
        }
        result.amps45 := theoreticalDelta + trapDelta
    }
    if ( !empty(_amps67) ) {
        theoreticalDelta := critSkillDelta + 6
        if(firstAmpGroup) {
            firstAmpGroup := false
            if (theoreticalDelta < 0) {
                trapDelta := -theoreticalDelta
            }
        }
        result.amps67 := theoreticalDelta + trapDelta
    }
    result.traps := trapDelta
    return result
}

getGemsGraded(_deltas, _amps1, _amps2, _amps3, _amps45, _amps67, _traps) {
    result := {}
    if ( !empty(_amps1) ) {
        result[_deltas.amps1] := _amps1
    }
    if ( !empty(_amps2) ) {
        result[_deltas.amps2] := _amps2
    }
    if ( !empty(_amps3) ) {
        result[_deltas.amps3] := _amps3
    }
    if ( !empty(_amps45) ) {
        result[_deltas.amps45] := _amps45
    }
    if ( !empty(_amps67) ) {
        result[_deltas.amps67] := _amps67
    }
    sameGradeAmpsAsTraps := []
    sameGradeAmpsAsTraps.push(result[_deltas.traps]*)
    if ( empty(sameGradeAmpsAsTraps) ) {
        result[_deltas.traps] := _traps
    } else {
        sameGradeAmpsAsTraps.push(_traps*)
        result[_deltas.traps] := sameGradeAmpsAsTraps
    }
    return result
}

manaDeltas := getManaDeltas(ampSkillLevel, manaAmps1, manaAmps2, manaAmps3, manaAmps45, manaAmps67)

manaGemsGraded := getGemsGraded(manaDeltas, manaAmps1, manaAmps2, manaAmps3, manaAmps45, manaAmps67, manaTraps)

critDeltas := getCritDeltas(ampSkillLevel, critAmps1, critAmps2, critAmps3, critAmps45, critAmps67)

critGemsGraded := getGemsGraded(critDeltas, critAmps1, critAmps2, critAmps3, critAmps45, critAmps67, critTraps)



;; unit tests

assertEquals(-5, getManaSkillDelta(0))
assertEquals(-4, getManaSkillDelta(135))

assertEquals(-6, getCritSkillDelta(0))
assertEquals(-4, getCritSkillDelta(135))


testDeltas := getManaDeltas(0, [{1:1}], [{2:2}], [{3:3}], [], [])
assertEquals(5, testDeltas.traps)
assertEquals(0, testDeltas.amps1)
assertEquals(2, testDeltas.amps2)
assertEquals(3, testDeltas.amps3)
testDeltas := getManaDeltas(135, [], [], [{3:3}], [{}], [{}])
assertEquals(1, testDeltas.traps)
testDeltas := getManaDeltas(1000, [], [], [{3:3}], [], [{67:67}])
assertEquals(0, testDeltas.traps)
assertEquals(5, testDeltas.amps67)

testDeltas := getManaDeltas(0, [{1:1}], [{2:2}, {22:22}], [{3:3}, {33:33}, {333:333}], [], [])
testGemsGraded := getGemsGraded(testDeltas, [{1:1}], [{2:2}, {22:22}], [{3:3}, {33:33}, {333:333}], [], [], [{123:123}])
assertEquals(4, getMapLength(testGemsGraded))
assertEquals(1, testGemsGraded.0.MaxIndex())
assertEquals(2, testGemsGraded.2.MaxIndex())
assertEquals(3, testGemsGraded.3.MaxIndex())
assertEquals(1, testGemsGraded.5.MaxIndex())

testDeltas := getManaDeltas(1000, [{1:1}], [{2:2}, {22:22}], [{3:3}, {33:33}, {333:333}], [], [])
testGemsGraded := getGemsGraded(testDeltas, [{1:1}], [{2:2}, {22:22}], [{3:3}, {33:33}, {333:333}], [], [], [{123:123}])
assertEquals(3, getMapLength(testGemsGraded))
assertEquals(2, testGemsGraded.0.MaxIndex())
assertEquals(2, testGemsGraded.2.MaxIndex())
assertEquals(3, testGemsGraded.3.MaxIndex())


testDeltas := getCritDeltas(0, [{1:1}], [{2:2}], [{3:3}], [], [])
assertEquals(6, testDeltas.traps)
assertEquals(0, testDeltas.amps1)
assertEquals(2, testDeltas.amps2)
assertEquals(4, testDeltas.amps3)
testDeltas := getCritDeltas(135, [], [], [{3:3}], [{}], [{}])
assertEquals(0, testDeltas.traps)
testDeltas := getCritDeltas(1000, [], [], [{3:3}], [], [{67:67}])
assertEquals(0, testDeltas.traps)
assertEquals(6, testDeltas.amps67)


testDeltas := ""
testGemsGraded := ""