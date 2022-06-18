#Include global-lib.ahk

toggle := false
toggleAutofire := false


w::toggle:=keyHoldDownToggle("q", toggle)

e::toggleAutofire := autofireToggle("e", "r", toggleAutofire)

s::