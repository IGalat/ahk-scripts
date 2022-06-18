#Include global-lib.ahk

#IfWinActive StarCraft


autoSnipeWhileHeldDown(_triggerKey, _msFireRate:=150) {
         While GetKeyState(_triggerKey,"p") {
             Send e
             Sleep 20
             Click
             Sleep %_msFireRate%        ; caveat: while sleeps, if you release and press again trigger key,
         }
}

3::autoSnipeWhileHeldDown("3")
