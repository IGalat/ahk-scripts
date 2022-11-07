#Include global-lib.ahk

#IfWinActive Pathos

setRemoveCaltrops(dir, opposite) {
    ; remove
    Send {%dir%}
    Sleep 200
    Send {Right}
    Sleep 200
    Send {Enter}
    Sleep 200
    ; set
    Send {Enter}
    Sleep 200
    Send {Enter}
    Sleep 200
    Send {%opposite%}
}

setRemoveCaltropsLeft() {
    setRemoveCaltrops("Left", "Right")
}

setRemoveCaltropsRight() {
    setRemoveCaltrops("Right", "Left")
}

^Left::setRemoveCaltropsLeft()
^Right::setRemoveCaltropsRight()
^Up::
    Loop, 5 {
        setRemoveCaltropsLeft()
        setRemoveCaltropsRight()
    }
return