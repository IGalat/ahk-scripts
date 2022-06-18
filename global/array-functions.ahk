empty(_array) {
    return _array.MaxIndex() < 1
}

flatten(arrayOfArrays) {
    flatArray := []
    for index, innerArray in arrayOfArrays {
        flatArray.push(innerArray*)
    }
    return flatArray
}

min(array) {
    if (empty(array)) {
        err("min(array) called with empty array" getStack())
    }

    _min = 1000000000
    for index, item in array {
        if (item < _min) {
            _min := item
        }
    }
    return _min
}

max(array) {
    if (empty(array)) {
        err("max(array) called with empty array" getStack())
    }

    _max = -1000000000
    for index, item in array {
        if (item > _max) {
            _max := item
        }
    }
    return _max
}

clickArray(xyArray) {
    for index, item in xyArray {
        xCoord := xyArray[index].x
        yCoord := xyArray[index].y
        Click, %xCoord% %yCoord%
    }
}
