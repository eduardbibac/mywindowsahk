;\((.*?)\)

; Goal: Remap windows key without blocking other keybinds like Win+A Win+Arrows
; If you just pressed Windows key Send, {LWin Down}{TAB Down}
; If you held LWIN for 200ms then use LWIN key as normal
; TODO: Make it so when you send windows key + some other key under 200ms it works like it usually does
LWin::
    KeyWait, LWin, T0.2
    If !ErrorLevel
    {
        Send, {LWin Down}{TAB Down}{TAB Up}
    } else {
        Send, {LWin} 
    } 
    KeyWait, LWin
    Send, {LWin Up}
Return


