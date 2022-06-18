#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

Toggle := false

talismanYFortify := 555
talismanYEnchance := 585
; 1, 2, 6,
talismanX := [580, 690, 1140]

talismansRespec(toChallenge) {
    Click 679 313 ; challenges
    Click 920 350 ; talismans
    Click 659 732 ; respec all

    if (toChallenge) {
        Click 900 799 ; prism rune off
        Click 900 867 ; SI rune off
    } else {
        Click 900 764 ; dupl rune off
        Click 900 830 ; thrift rune off
    }
    Click 1169 795 ; confirm
}

loopChallenges(fromM, upToN) {
    Click 794 311 ; Challenges tab
    loopTimes := upToN - fromM + 1
    Loop, %loopTimes% {
        challenge := A_Index + fromM - 1
        if (challenge == 10) {
            challenge := 0
        }
        SendInput %challenge%
        Sleep 500
    }
    SendInput e
}

quickAscend() {
    loopChallenges(1, 7)
    Sleep 1000
    loopChallenges(8, 9)
    Sleep 1000
    loopChallenges(1, 10)
    Sleep 100
}


;F6::
;Toggle := !Toggle
;Loop
;{
;	If (!Toggle)
;		Break
;	Click
;	Sleep 20 ; Make this number higher for slower clicks, lower for faster.
;}
;Return
;
;F7::
;Toggle := false
;return

;F7:: ; talismans up
;    Click 680 310
;    Click 980 350
;    for index, xPos in talismanX {
;        Loop, 6 {
;            Click %xPos% %talismanYEnchance%
;            Click %xPos% %talismanYFortify%
;        }
;    }
;    return


;F8:: ; "add" promocode
;    SendInput {Enter}
;    SendInput {Enter}
;    Click 564 620
;    SendInput add
;    Sleep 50
;    SendInput {Enter}
;    SendInput 1{Enter}
;    return

F9:: ; runes + challenges
    talismansRespec(true)
    GoSub F8
    talismansRespec(false)
    return

F8::
    loopChallenges(1, 10)
    return

F6:: ; loop ascend
    Toggle := !Toggle
    Loop
    {
    	If (!Toggle)
    		Break
    	quickAscend()
    }
    return

F7::
    Toggle := false
    return

