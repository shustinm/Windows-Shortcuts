ClearHotkeys()
Goto, WaitForTrigger

; Start detecting numkeys shortcuts
WaitForTrigger:
ClearHotkeys()
KeyWait, F6, D
Hotkey, j, MediaHotkeys, On
Sleep, 5000
Goto, WaitForTrigger

MediaHotkeys:
ClearHotkeys()
Hotkey, u, My_Media_Prev, On
;Hotkey, 5, Media_Play_Pause, On
;Hotkey, 6, Media_Next, On
Sleep, 5000
Goto, WaitForTrigger
return

My_Media_Prev:
MsgBox, "SUCCESS"
return

ClearHotkeys()
{
    Hotkey, j, nothing, Off
    Hotkey, u, nothing, Off
    Hotkey, 1, nothing, Off
    Hotkey, 2, nothing, Off
    Hotkey, 3, nothing, Off
    Hotkey, 4, nothing, Off
    Hotkey, 5, nothing, Off
    Hotkey, 6, nothing, Off
    Hotkey, 7, nothing, Off
    Hotkey, 8, nothing, Off
    Hotkey, 9, nothing, Off
    Hotkey, 0, nothing, Off
    return
}

nothing:
return ;lol


; ------------------------------------------------
; -------- SHORTCUTS FOR VIRTUAL DESKTOPS --------
; ------------------------------------------------

; Alt+Ctrl+[Key] will send Start+Ctrl+[Key] 
!^Right::send, #^{Right down}{Right up}
!^Left::send, #^{Left down}{Left up}
!^Up::send, #^{Up down}{Up up}
!^Down::send, #^{Down down}{Down up}
!^d::send, #^{d down}{d up} ; This creates a new Desktop
!^F4::send, #^{F4 down}{F4 up} ; This closes the current Desktop

; Start+Ctrl+[Key] will send Alt+Ctrl+[Key]
#^Right::send, !^{Right down}{Right up}
#^Left::send, !^{Left down}{Left up}
#^Up::send, !^{Up down}{Up up}
#^Down::send, !^{Down down}{Down up}
#^d::send, #^{d down}{d up}
#^F4::send, #^{F4 down}{F4 up}