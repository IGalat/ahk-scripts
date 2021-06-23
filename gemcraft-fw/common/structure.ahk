buildTraps(xyArray) {
    Send, r
    clickArray(xyArray)
    Send, r
}

buildAmps(xyArray) {
    Send, a
    clickArray(xyArray)
    Send, a
}

buildTowers(xyArray) {
    Send, t
    clickArray(xyArray)
    Send, t
}

buildLanterns(xyArray) {
    Send, l
    clickArray(xyArray)
    Send, l
}

buildWalls(wallsArray) {
    Send, w
    for index, item in wallsArray {
        xCoord := wallsArray[index].x
        yCoord := wallsArray[index].y
        if (ObjHasKey(item, "xx")) {
            xxCoord := wallsArray[index].xx
            yyCoord := wallsArray[index].yy
            Click %xCoord% %yCoord% Down
            Click %xxCoord% %yyCoord% Up
        } else {
            Click %xCoord% %yCoord%
        }
    }
    Send, w
}


demolish(xyArray, grade) {
    if (empty(xyArray)) {
        return
    }
    global gems
    createGem(gems.crit, grade)
    Send, b
    for index, item in xyArray {
        xCoord := xyArray[index].x
        yCoord := xyArray[index].y

        Click %xCoord% %yCoord%
    }
    sellGemInInventory()
}

demolishAll(gradeDemolitionMap) {
    for _key, _value in gradeDemolitionMap {
        demolish(_value, _key)
    }
}