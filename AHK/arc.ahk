~E::
Send {Numpad3}
KeyWait, E
Send {Numpad6}
Return

; если нажать пробел (захватить камеру), то камера не перенесется на второстепенного юнита
; нужно скриптом убирать нажатие, выделять юнита, а после возвращать нажатие, если оно было
; так же и при переносе обратно

~R::
if GetKeyState("Space", "P") ; если камера захвачена - убираем нажатие, переносим, и потом возвращаем захват
{
  Send {Space UP}
  Send {Numpad3 Down}
  Sleep, 1
  Send {Numpad3 UP}
  Sleep, 1
  Send {Numpad3 Down}
  Sleep, 1
  Send {Numpad3 UP}
  Send {Space Down}
}
else ; иначе просто переносим камеру
{
  Send {Numpad3 Down}
  Sleep, 1
  Send {Numpad3 UP}
  Sleep, 1
  Send {Numpad3 Down}
  Sleep, 1
  Send {Numpad3 UP}
}
KeyWait, R
if GetKeyState("Space", "P") ; аналогично и при переносе обратно
{
  Send {Space UP}
  Sleep, 1
  Send {Numpad6}
  Sleep, 1
  Send {Numpad6}
  Sleep, 1
  Send {Space Down}
}
else
{
  Send {Numpad6 }
  Sleep, 1
  Send {Numpad6 }
}
Return


; в обчном выделении остлеживание захвата не обязательно
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
