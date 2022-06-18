; supply your own toggle, like this:
; myToggle := false
; w:: toggle := keyHoldDownToggle("q", myToggle)

keyHoldDownToggle(_keyToHoldDown, _toggle) {
    _toggle := !_toggle
    if (_toggle) {
        Send {%_keyToHoldDown% down}
    } else {
        Send {%_keyToHoldDown% up}
    }
    return _toggle
}


_triggerKeyToAutofireFunc := ""
_keyToAutofireFunc := ""
_toggleToAutofireFunc := false
_msFireRateToAutofireFunc := 0
; one key at a time max
autofireToggle(_triggerKey, _keyToAutofire, _toggle, _msFireRate:=50) {
    global _triggerKeyToAutofireFunc
    global _keyToAutofireFunc
    global _toggleToAutofireFunc
    global _msFireRateToAutofireFunc

    _triggerKeyToAutofireFunc := _triggerKey
    _keyToAutofireFunc := _keyToAutofire
    _toggleToAutofireFunc := !_toggle
    _msFireRateToAutofireFunc := - _msFireRate
    _doAutofire()
    return _toggleToAutofireFunc
}
; inner func
_doAutofire() {
    global _keyToAutofireFunc
    global _toggleToAutofireFunc
    global _msFireRateToAutofireFunc

    AutoFireLabel:
    Send %_keyToAutofireFunc%
    if (_toggleToAutofireFunc)
        SetTimer, AutoFireLabel, %_msFireRateToAutofireFunc%
    return
}
