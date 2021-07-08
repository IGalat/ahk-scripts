empty(array) {
    return array.MaxIndex() < 1
}

err(message) {
    MsgBox % message
    ExitApp
}

getMapLength(_map) {
    _length := 0
    for _key, _value in _map {
        _length := _length + 1
    }
    return _length
}

getMapOfMapsLength(_map) {
    _length := 0
    for _key, _value in _map {
        _length := _length + getMapLength(_value)
    }
    return _length
}

minKeyMoreThan(_map, moreThanThis) {
    _min := 1000
    for _key, _value in _map {
        if (_key > moreThanThis and _key < _min ) {
            _min := _key
        }
    }
    return _min
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

    _min = 1000000
    for index, item in array {
        if (item < _min) {
            _min := item
        }
    }
    return _min
}

ObjHasKey(obj, aKey) {
     for k, v in obj
        if (k == aKey)
        return true
   return false
}

prettyPrint(_number) {
    _ceilAbs := Ceil(Abs(_number))
    if (_ceilAbs > 1000) {
        _pretty := Floor(_ceilAbs/1000)
        _pretty := _pretty ","
        _pretty := _pretty Mod(_ceilAbs, 1000)
    } else {
        _pretty := _ceilAbs
    }
    if (_number < 0) {
        _pretty := "-" _pretty
    }
    return _pretty
}

clickArray(xyArray) {
    for index, item in xyArray {
        xCoord := xyArray[index].x
        yCoord := xyArray[index].y
        Click, %xCoord% %yCoord%
    }
}

sendAllWaves() {
    Send, ^{Click 10 330}
}

launch3xSpeed() {
    Send, q
    Send, q
}

pauseGame() {
    Click  1766 66
}

moveMouseOutOfTheWay() {
    MouseMove, 1744, 981
}

moveMouseToTheMiddle() {
    MouseMove, 839, 527
}

keyPress(key) {
    Send, {%key% down}
    Sleep 20
    Send, {%key% up}
}