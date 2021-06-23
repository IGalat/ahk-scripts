upgrade(xyArray, times := 1) {
   if !GetKeyState("scrolllock","T") {
       upgradeU(xyArray, times)
   } else {
       upgradeGemsmith(xyArray, times)
   }
}

upgradeU(xyArray, times := 1) {
    if ( times < 1 or empty(xyArray) ) {
        return
    }
    for index, item in xyArray {
        xCoord := xyArray[index].x
        yCoord := xyArray[index].y
        MouseMove, %xCoord%, %yCoord%
        Loop, %times%
        {
            Send, u
        }
    }
}

upgradeGemsmith(xyArray, times := 1) {
    if ( times < 1 or empty(xyArray) ) {
        return
    }
    for index, item in xyArray {
        xCoord := xyArray[index].x
        yCoord := xyArray[index].y
        MouseMove, %xCoord%, %yCoord%
        Loop, %times%
        {
            Send, {Home}
        }
    }
}

upgradeGemInInventory(times, invSlot := 1) {
    if ( times < 1 ) {
        return
    }
    global inventorySlots
    xCoord := inventorySlots[invSlot].x
    yCoord := inventorySlots[invSlot].y
    MouseMove, %xCoord%, %yCoord%
    Sleep 10
    Loop %times% {
        Send, u
    }
}

sellGemInInventory(invSlot := 1) {
    global inventorySlots
    xCoord := inventorySlots[invSlot].x
    yCoord := inventorySlots[invSlot].y
    MouseMove, %xCoord%, %yCoord%
    Send, x
}

sell(xyArray) {
    for index, item in xyArray {
        xCoord := xyArray[index].x
        yCoord := xyArray[index].y
        MouseMove, %xCoord%, %yCoord%
        Send, x
    }
}

sellMulti(arrayOfArrays){
    sell(flatten(arrayOfArrays))
}

createGem(type, grade := 1, invSlot := 1) {
    xCoord := type.x
    yCoord := type.y
    Click, %xCoord% %yCoord%
    upgradeGemInInventory(grade - 1, invSlot)
}

fill(xyArray, type, grade := 1) {
    if (empty(xyArray)) {
        return
    }
    createGem(type, grade)
    for index, item in xyArray {
        xCoord := xyArray[index].x
        yCoord := xyArray[index].y
        Sleep 50
        Click, %xCoord% %yCoord%
        if (index != xyArray.MaxIndex()) {
            Send, d
        }
    }
}

fillMulti(arrayOfArrays, type, grade := 1) {
    fill(flatten(arrayOfArrays), type, grade)
}

fillCopies(xyArray, useLast := false) {
    for index, item in xyArray {
        xCoord := xyArray[index].x
        yCoord := xyArray[index].y
        Sleep 10
        Click, %xCoord% %yCoord%

        if (useLast) {
            if (index != xyArray.MaxIndex()) {
                Send, d
            }
        } else {
            Send, d
        }
    }
}

copyMulti(arrayOfArrays) {
    fillCopies(flatten(arrayOfArrays), true)
}

changePrio(xyArray, times) {
    if (empty(xyArray) or times < 1) {
        return
    }
    for index, item in xyArray {
        xCoord := xyArray[index].x
        yCoord := xyArray[index].y

        MouseMove, %xCoord%, %yCoord%
        Loop %times% {
            Sleep 10
            Click Right
        }
    }
}

upgradeByDeltas(gradeMap) {
    for _key, _value in gradeMap {
        upgradeU(_value, _key)
    }
}

copyByDeltas(gradeMap) { ; faster in-game than copy + uByDeltas
    sleep 150
    gradeMapLength := getMapLength(gradeMap)
    currentGrade := 0
    moveGemToDifferentSlotInInventory(1, 9)

    loopIndex := 0
    minGrade := minKeyMoreThan(gradeMap, -1)
    Loop, %gradeMapLength% {
        loopIndex := loopIndex + 1
        if ( minGrade = 1000 ) {
            err("Logic error, minKeyMoreThan not found anything but should have")
        }
        upgradeGemInInventory(minGrade - currentGrade, 9)
        currentGrade := minGrade
        minGrade := minKeyMoreThan(gradeMap, currentGrade)
        fillCopies(gradeMap[currentGrade], loopIndex = gradeMapLength)
    }
}

reduceRange(xyArray, times) {
    for index, item in xyArray {
        xCoord := xyArray[index].x
        yCoord := xyArray[index].y

        MouseMove, %xCoord%, %yCoord%
        Loop %times% {
            Sleep 5
            Click WheelDown
        }
    }
}
; merged to slot2
combineGemsInInventory(slotFrom, slotTo) {
    global inventorySlots
    xFrom := inventorySlots[slotFrom].x
    yFrom := inventorySlots[slotFrom].y
    xTo := inventorySlots[slotTo].x
    yTo := inventorySlots[slotTo].y

    Send, g
    Click %xFrom% %yFrom% Down
    CLick %xTo% %yTo% Up
}

; gradeDiff if not 1:1. gradeDiff 4 means 32s with 1/32 of type2
createDualGem(type1, type2, gradeResult, gradeDiff := 0) {
    merges := gradeDiff + 1
    _grade := gradeResult - merges
    if (_grade < 1) { ; gradeResult < gradeDiff + 2
        err("createDualGem: impossible to create dual with gradeDiff " gradeDiff "and gradeResult " gradeResult)
    }
    createGem(type2, _grade, 1)

    Loop, %merges% {
        createGem(type1, _grade, 2)
        combineGemsInInventory(2, 1)
        _grade := _grade + 1
    }
}

moveGemToDifferentSlotInInventory(slotFrom, slotTo) {
    global inventorySlots
    xFrom := inventorySlots[slotFrom].x
    yFrom := inventorySlots[slotFrom].y
    xTo := inventorySlots[slotTo].x
    yTo := inventorySlots[slotTo].y

    Click %xFrom% %yFrom% Down
    CLick %xTo% %yTo% Up
}
