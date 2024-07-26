SetCapsLockState, off
$CapsLock::Return

#if GetKeyState("CapsLock", "P")
    k::Up
    k Up::SetCapsLockState Off
    h::Left
    h Up::SetCapsLockState Off
    j::Down
    j Up::SetCapsLockState Off
    l::Right
    l Up::SetCapsLockState Off
    d::BackSpace
    d Up::SetCapsLockState Off
    f::Delete
    f Up::SetCapsLockState Off
#if
