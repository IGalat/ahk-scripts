window_detect() {
    WinGetTitle, tTitle, A
    WinGet, active_id, ID, A
    WinGetClass, cClass, A
    MsgBox, #IfWinActive    %tTitle%`n`nWindow class:  %cClass%
}