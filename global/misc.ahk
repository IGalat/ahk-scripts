err(_message) {
    MsgBox % _message
    ExitApp
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

keyPress(key) {
    Send, {%key% down}
    Sleep 20
    Send, {%key% up}
}