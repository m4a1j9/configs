$1::
  While GetKeyState("1","P")
  {
    Send, 1
    Sleep, 10
  }
Return

$3::
  While GetKeyState("3","P")
  {
    Send, 3
    Sleep, 10
  }
Return
