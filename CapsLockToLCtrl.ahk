
; ^ ----> Ctrl 
; ! ----> Alt

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CapsLock::Ctrl
LCtrl::Capslock

; "Remapear" teclas de windows
^!h::
    send #{Left}
    return
^!j::
    send #{Down}
    return
^!k::
    send #{Up}
    return
^!l::
    send #{Right}
    return
