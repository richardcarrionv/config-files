#SingleInstance Force

CapsLock::Ctrl

Ctrl::Capslock

; LCtrl + LAlt + hjkl == Win + Flechas

^!k::
    send, #{Up}
    return
^!j::
    send, #{Down}
    return
^!h::
    send,  #{Left}
    return
^!l::
    send, #{Right}
    return
^!r::
    send, {F5}
    return 
^!q::
    send, !{F4}
    return 


