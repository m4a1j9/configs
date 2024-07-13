

#MaxHotkeysPerInterval 1200

#IfWinActive ahk_exe HyperLightDrifter.exe
x::
While GetKeyState("x","P")
{
    SetKeyDelay, 120, 130
    Send, {Space}
}
Return