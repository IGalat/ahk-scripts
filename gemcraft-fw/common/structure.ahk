buildTraps(xyArray) {
    keyPress("r")
    clickArray(xyArray)
    keyPress("r")
}

buildAmps(xyArray) {
    keyPress("a")
    clickArray(xyArray)
    keyPress("a")
}

buildTowers(xyArray) {
    keyPress("t")
    clickArray(xyArray)
    keyPress("t")
}

buildLanterns(xyArray) {
    keyPress("l")
    clickArray(xyArray)
    keyPress("l")
}

buildWalls(wallsArray) {
    keyPress("w")
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
    keyPress("w")
}


demolish(xyArray, grade) {
    if (empty(xyArray)) {
        return
    }
    global gems
    createGem(gems.crit, grade)
    keyPress("b")
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