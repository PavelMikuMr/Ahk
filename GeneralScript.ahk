;----------------------------------Glabal Perfomance--------------------------------

#NoEnv 
#MaxHotkeysPerInterval 99000000 
#HotkeyInterval 99000000 ; тоже
#KeyHistory 0 
#SingleInstance
ListLines Off 
Process, Priority, , H 
SetWinDelay, 0 
SetMouseDelay, -1 
SetBatchLines, -1 
SetDefaultMouseSpeed, 0 
SetControlDelay, 0 
SetKeyDelay, -1, -1, -1  
SendMode Input 
SetTitleMatchMode 2
SetTitleMatchMode Fast
#NoTrayIcon

;----------------------------------Glabal Perfomance--------------------------------

; Alt Key Mapping
globalPosition = 1

global LevelFive
LevelFive = false

EnableLevelFive()
{
    LevelFive = true
}

DisableLevelFive()
{
    LevelFive = false  
}

IsLevelFive()
{
    return %LevelFive% = true
}

*RAlt::
    EnableLevelFive()
return

*RAlt up::
    DisableLevelFive()
return

#If IsLevelFive()
    ; Vscode. Switch between group items
    ; 1::
    ;     If (globalPosition < 10 && globalPosition > 0){
	;         send,^%globalPosition%
	;         globalPosition++
    ;     }
    ;     Else
    ;         globalPosition = 1    
    ; Return

    ; 2::
    ;     If (globalPosition < 10 && globalPosition > 0){
    ;         globalPosition--
	;         send,^%globalPosition%
    ;     }
    ;     Else
    ;         globalPosition = 1
    ; Return

    ; arrow keys
    i::up
    j::left
    k::down
    l::right
    BackSpace::XButton1

    ; page up & page down
    m::PgUp
    ,::PgDn
    ; home & end
    u::home
    o::end 
    '::Delete
    a::LControl
    /::AppsKey
       
    +c::
    send,^!+c
    Return

    +v::
    send,^!+v
    Return

    n::
    send,#3
    Return

    
    t::
    send,^+a
    return

    d::
    send,^d
    return

    x::
    send,^x
    return

    c::
    send,^c
    return

    v::
    send,^v
    return

    f::
    send,^f
    return

    !f::
    send,+^f
    return

    h::
    send,^h
    return

    z::
    send,#v
    return


    

    1::
    send,!1
    return
    2::
    send,!2
    return
    3::
    send,!3
    return
    4::
    send,!4
    return
    5::
    send,!5
    return
    6::
    send,!6
    return
    7::
    send,!7
    return
    ; ExplorerGroup
    e::
    GroupAdd, ExplorerGroup, ahk_class CabinetWClass
    If WinActive("ahk_exe explorer.exe")
	GroupActivate, ExplorerGroup, r
    else
	WinActivate ahk_class CabinetWClass
    return

    ; Microsoft Edge Group
    w::
    GroupAdd, EdgeGroup, ahk_exe msedge.exe
    If WinActive("ahk_exe msedge.exe")
	GroupActivate, EdgeGroup, r
    else
	WinActivate ahk_exe msedge.exe
    return

    ; Google Group 
    q::
    GroupAdd, GoogleGroup, ahk_exe chrome.exe
    If WinActive("ahk_exe chrome.exe")
	GroupActivate, GoogleGroup, r
    else
	WinActivate ahk_exe chrome.exe
    return
    

    ;Vscode Group 
    r::
    GroupAdd, VscodeGroup, ahk_exe Code.exe
    If WinActive("ahk_exe Code.exe")
	GroupActivate, VscodeGroup, r
    else
	WinActivate ahk_exe Code.exe
    return

    ;Shell Group 
    s::
    GroupAdd, ShellGroup, ahk_exe WindowsTerminal.exe
    If WinActive("ahk_exe WindowsTerminal.exe")
	GroupActivate, ShellGroup, r
    else
	WinActivate ahk_exe WindowsTerminal.exe
    return

    ; Resize the window
    g::
    WinGet, active_id, ID, A
    WinGet, checkmax, MinMax, A
    If(checkmax == 1) {
	    WinGet, active_id, ID, A
	    WinRestore, ahk_id %active_id%
    } else {
	    WinGetClass, class, ahk_id %active_id%
	    If class not in ahk_class WorkerW,Shell_TrayWnd, Button, SysListView32,Progman,#32768 ;Creates exclusion for Wndows
	    WinMaximize, ahk_id %active_id%
    }   
    return
    
    b::
    WinGet, active_id, ID, A
    WinGetClass, class, ahk_id %active_id%
    If class not in ahk_class WorkerW,Shell_TrayWnd,Button, SysListView32, Progman,#32768 ; Creates exclusion for Wndows
    WinMinimize, ahk_id %active_id%
    return

    
   


   
#If


CapsLock:: 
Send,^z 
return

AppsKey::AltTabMenu


+space::
send,{Media_Play_Pause}
; ControlSend, , {space}, ahk_exe chrome.exe
; ControlSend, , {space}, ahk_class Chrome_WidgetWin_1
return 

; search in networt
#f::
if (KeyPressCountSelActor > 0) ;if key press count is greater than zero because you have run this hotkey just before
{
	KeyPressCountSelActor += 1 ;add a count to existing key press count
} else {
	KeyPressCountSelActor := 1 ;otherwise this is your first time running the hotkey so set press count to one
}

SetTimer, KeyPressMonitorSelActor, 300 ; start label to monitor subsequent key stroke within the next 300 milliseconds

return

KeyPressMonitorSelActor:
if (KeyPressCountSelActor = 1) ; The key was pressed only once
{
OldClipboard:= Clipboard
Clipboard:= ""
Send, ^c ;copies selected text
ClipWait
Run http://www.google.com/search?q=%Clipboard%
Sleep 200
Clipboard:= OldClipboard


}
else if (KeyPressCountSelActor = 2) ; The key was pressed twice
{
Run C:\Program Files\Everything\Everything

}

KeyPressCountSelActor := 0 ;reset the count to zero
SetTimer, KeyPressMonitorSelActor, Off ;turn label off to stop monitoring for key strokes
tooltip, ;turn tooltip off
Return




; ReloadAllScriptsEvery30min

; setTimer, reload_all, 1800000  ; every 30 minutes ; in auto-exe
; Return
; reload_all:
; DetectHiddenWindows, On
; WinGet, Script, List, ahk_class AutoHotkey
; Loop, %Script%
; {
	; ID := Script%A_Index%
	; If (ID = A_ScriptHwnd)

		; Script%A_Index% =
		; Continue
	; }
	; WinGetTitle, Title, ahk_id %ID%
	; Script%A_Index% := StrReplace(Title, " - AutoHotkey v" A_AhkVersion)
	; WinClose, ahk_id %ID%
	; WinWaitClose, ahk_id %ID%
; }
; Loop, %Script%
	; IF Script%A_Index%
		; Run,% Script%A_Index%
; Reload
; Return




+Pause::Suspend

;Tilda
!sc029::
Send, {Delete}
Return
;Tilda





;AltTabMenu
XButton2::AltTabMenu
WheelDown::AltTab
WheelUp::ShiftAltTab
;AltTabMenu



; Snipedtool
+ScrollLock::
WinClose, Snipping Tool
WinWaitClose, Snipping Tool
Run, SnippingTool.exe
WinWait, ahk_exe SnippingTool.exe
Sleep 200
ControlSend, , !{n}, ahk_class Microsoft-Windows-SnipperToolbar
; Snipedtool

;~ If !A_IsAdmin
 ;~ Run *RunAs "%A_ScriptFullPath%"

+#a:: Gosub, Alwaysontop

AlwaysonTop:
WinGet, ExStyle, ExStyle, A
if (ExStyle & 0x8) {
 Winset, Alwaysontop, Off , A
} else {
 Winset, Alwaysontop, , A
}
return


;New Folder
#q::
Send,^+n
Return
;New Folder




; ShareX
#h::
Send,^{PrintScreen}
Return
; ShareX

;Calc
#c::
Run Calc.exe
return
;Calc

#n::
run notepad.exe
return


;Terminal
#t::
Run wt.exe
return
;Terminal


#IfWinActive ahk_exe Figma.exe

XButton1::SendInput {LCtrl DownTmp}
XButton1 Up::SendInput {LCtrl Up}
#IfWinActive



; ______________________Sound Volume Control_________________________

#If MouseIsOveR("ahk_class Shell_TrayWnd")
WheelUp::Send {Volume_Up}
WheelDown::Send {Volume_Down}
#If

MouseIsOver(WinTitle)
{
	MouseGetPos,,, ID
	return WinExist(WinTitle " ahk_id " ID)
}
Return
; ______________________Sound Volume Control_________________________













