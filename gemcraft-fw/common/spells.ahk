castEnchancementSpell(xyArray, spellNumber) {
    for index, item in xyArray {
        xCoord := xyArray[index].x
        yCoord := xyArray[index].y

        MouseMove, %xCoord%, %yCoord%
        Sleep 20
        Send, %spellNumber%
    }
}

castStrikeSpell(xyArray, spellNumber) {
    for index, item in xyArray {
        xCoord := xyArray[index].x
        yCoord := xyArray[index].y
        Send, %spellNumber%
        Sleep 20
        Click, %xCoord% %yCoord%
    }
}

placeSpellMarker(xyArray, spellNumber) {
    for index, item in xyArray {
        xCoord := xyArray[index].x
        yCoord := xyArray[index].y
        if (xCoord < 1) {
            continue
        }

        Send, {LControl down}
        Sleep 20
        Send, !+%spellNumber%
        Send, {LControl up}
        Click, %xCoord% %yCoord%
    }
}

removeSpellMarker(spellNumber) {
    Send, {LControl down}
    Sleep 20
    Send, !+%spellNumber%
    Send, {LControl up}
    Click, 827 540 Right
}

removeSpellMarkers(spellNumberArray) {
    for index, value in spellNumberArray {
        removeSpellMarker(value)
    }
}

spellFirstXWithShift(xyArray, spellNumber, x, shift:=0) {
    for index, item in xyArray {
        if (index < shift) {
            continue
        }
        if (index > x + shift) {
            break
        }
        xCoord := xyArray[index].x
        yCoord := xyArray[index].y

        MouseMove, %xCoord%, %yCoord%
        Sleep 20
        Send, %spellNumber%
    }
}