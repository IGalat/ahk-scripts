; actions done while key is held down


; key retains functionality unless held down, autofire otherwise
autofireWhileHeldDown(_triggerKey, _keyToAutofire, _msFireRate:=50) {
     KeyWait %_triggerKey%, T0.3                 ; Wait 0.3 second to release key
     if (ErrorLevel) {                           ; Still held down
         While GetKeyState(_triggerKey,"p") {
             Send %_keyToAutofire%
             Sleep %_msFireRate%        ; caveat: while sleeps, if you release and press again trigger key,
         }                              ; no keypress happens. So don't sleep long
     } else {
         Send %_triggerKey%
     }
}