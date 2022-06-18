funcTestz() {
    WinGetTitle, Title, A
    MsgBox, The active window is "%Title%"
}

#IfWinActive Google Chrome

F23:: funcTestz()
F24:: funcTestz()


