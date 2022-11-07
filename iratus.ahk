#Include global-lib.ahk

#IfWinActive Iratus

clickPos(indexX) {
    posX := [220, 420, 620, 820,  1100, 1300, 1500, 1700]
    positionX := posX[indexX]
    Click, %positionX% 600
}

selectSquadAndGoToPos() {
    MouseGetPos xx, yy
    Click, 300 1000 ; 1st squad, 3rd position
    Sleep 30
    Click, %xx% %yy%
}

-::Click

Space::Click

1::clickPos(1)
2::clickPos(2)
3::clickPos(3)
4::clickPos(4)

u::clickPos(5)
8::clickPos(6)
9::clickPos(7)
0::clickPos(8)

6::selectSquadAndGoToPos()
