;----------------------------------Glabal Perfomance--------------------------------
#NoEnv 
#MaxHotkeysPerInterval 99000000 
#HotkeyInterval 99000000
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
;----------------------------------Glabal Perfomance--------------------------------



; multi-clipboard
!^+c::
Menu, MainMenu, Add
Menu, MainMenu, deleteAll
 
Menu, MainMenu, Add, 1 CLIP1 = %ClipSave1%, GoClipSave1
Menu, MainMenu, Add, 2 CLIP2 = %ClipSave2%, GoClipSave2
Menu, MainMenu, Add, 3 CLIP3 = %ClipSave3%, GoClipSave3
Menu, MainMenu, Add, 4 CLIP4 = %ClipSave4%, GoClipSave4
Menu, MainMenu, Add, 5 CLIP5 = %ClipSave5%, GoClipSave5
Menu, MainMenu, Add, 
Menu, MainMenu, Add, 6 Clear All, GoClipClearAll
 
Menu, MainMenu, Show
Return

GoClipSave1:
HotKey, !^+c, Off
send ^c
HotKey, !^+c, on
ClipSave1=%Clipboard%
Return
 
GoClipSave2:
HotKey, !^+c, Off
send ^c
HotKey, !^+c, on
ClipSave2=%Clipboard%
Return
 
GoClipSave3:
HotKey, !^+c, Off
send ^c
HotKey, !^+c, on
ClipSave3=%Clipboard%
Return
 
GoClipSave4:
HotKey, !^+c, Off
send ^c
HotKey, !^+c, on
ClipSave4=%Clipboard%
Return
 
GoClipSave5:
HotKey, !^+c, Off
send ^c
HotKey, !^+c, on
ClipSave5=%Clipboard%
Return
 
GoClipClearAll:
ClipSave1=
ClipSave2=
ClipSave3=
ClipSave4=
ClipSave5=
Return
 
!^+v::
Menu, MainMenu, Add
Menu, MainMenu, deleteAll
 
Menu, MainMenu, Add, 1 Paste1 = %ClipSave1%, GoClipPaste1
Menu, MainMenu, Add, 2 Paste2 = %ClipSave2%, GoClipPaste2
Menu, MainMenu, Add, 3 Paste3 = %ClipSave3%, GoClipPaste3
Menu, MainMenu, Add, 4 Paste4 = %ClipSave4%, GoClipPaste4
Menu, MainMenu, Add, 5 Paste5 = %ClipSave5%, GoClipPaste5
Menu, MainMenu, Add, 
Menu, MainMenu, Add, 6 Script, Goscript
 
Menu, MainMenu, Show
Return
 
 
GoClipPaste1:
clipboard=%ClipSave1%
HotKey, !^+v, Off
send ^v
HotKey, !^+v, on
ClipSave1=
Return
 
GoClipPaste2:
clipboard=%ClipSave2%
HotKey, !^+v, Off
send ^v
HotKey, !^+v, on
Return
 
GoClipPaste3:
clipboard=%ClipSave3%
HotKey, !^+v, Off
send ^v
HotKey, !^+v, on
Return
 
GoClipPaste4:
clipboard=%ClipSave4%
HotKey, !^+v, Off
send ^v
HotKey, !^+v, on
Return
 
GoClipPaste5:
clipboard=%ClipSave5%
HotKey, !^+v, Off
send ^v
HotKey, !^+v, on
Return
 
Goscript:
clipboard=
(
Hello %ClipSave1%
 
You owe %ClipSave2% due on the %ClipSave3%
Pay me now or else %ClipSave4% will beat you!
 
From %ClipSave5%
)
HotKey, !^+v, Off
send ^v
HotKey, !^+v, on
Return
; multi-vlipboard











;ReloadAllScripts
Pause::goSub, reload_allScript


reload_allScript:
winGet, running, list, ahk_class AutoHotkey  ; get running scripts  
loop % running
    {
    winGetTitle, title, % "ahk_id " running%a_index%
    script := regExReplace(title, "\s-\sAutoHotkey\s.*")
    if (script = a_lineFile)    ; skip this script
        continue

    run, % script " /restart"
    sleep 90
    }

sleep 300
reload    ; reload this script
return
;ReloadAllScripts



; MultiNotepad

#b::
Run, notepad.exe , , , PID
WinWait, ahk_PID %PID%
WinGet, hWnd, ID, ahk_PID %PID%

ControlGet, scrollHandle, Hwnd,, Edit1, ahk_id %hWnd%
WinSet, Style, -0x200000, ahk_id %scrollHandle%
ControlGet, WordWrap, Style,, Edit1, ahk_id %hWnd%
If (WordWrap & 0x100000)
	WinMenuSelectItem, AHK_ID %hWnd%,,Format, Word Wrap
WinSet, Style, -0xC00000, AHK_ID %hWnd%
WinSet, Alwaysontop, , AHK_ID %hWnd%
DllCall("SetMenu", uint, hWnd, uint, 0)
SendMessage, 0xD3, 0x1, 5, Edit1, % "ahk_id " hWnd
SendMessage, 0xD3, 0x2, 5, Edit1, % "ahk_id " hWnd

; SetTimer, AutoSave, 900000

return


AutoSave:
Tooltip, Notepad Autosave in progress..`nPress ESC to Exit
KeyWait, ESC , D T4
Tooltip,

If !ErrorLevel {
	return
}

DetectHiddenWindows, On
WinGet, vWinList, List, ahk_class Notepad
Loop, % vWinList
{
	hWnd := vWinList%A_Index%
	WinGetTitle, vWinTitle, % "ahk_id " hWnd

	vWinTitle := RegExReplace(vWinTitle, " - Notepad$")
	Loop, 31
		vWinTitle := StrReplace(vWinTitle, Chr(A_Index))
	Loop, Parse, % "\/:*?" Chr(34) "<>|"
		vWinTitle := StrReplace(vWinTitle, A_LoopField)
	ControlGetText, vText, Edit1, % "ahk_id " hWnd
	vPath = %A_Desktop%\%vWinTitle% (%hWnd%) %A_Now%.txt
	FileAppend, % vText, % "*" vPath, UTF-8
}
DetectHiddenWindows, Off
return

;scroll
#IfWinActive, ahk_class Notepad
WheelUp::ScrollLines(-5)
WheelDown::ScrollLines(5)

#!Up::
WinGetPos, X, Y, W, H, A
WinMove, A,,, Y - 80
return

#!Down::
WinGetPos, X, Y, W, H, A
WinMove, A,,, Y + 80
return

#!Left::
WinGetPos, X, Y, W, H, A
WinMove, A,, X - 150
return

#!Right::
WinGetPos, X, Y, W, H, A
WinMove, A,, X + 150
return

#IfWinActive

;source: https://autohotkey.com/board/topic/87514-sendmessage-scroll-down-a-certain-number-of-lines/?p=556001
ScrollLines(lines, _hWnd:="") {
    static EM_LINESCROLL := 0xB6
    if (!_hWnd) {
        ControlGetFocus, c, A
        ControlGet, _hWnd, hWnd,, %c%, A
    }
    PostMessage, EM_LINESCROLL, 0, lines, , ahk_id %_hWnd%
return
}

;resize notepad
#If MouseIsOver("ahk_class Notepad")
RButton & LButton::
MouseGetPos, , , TempID
WinGetPos, , , Temp_Width, Temp_Height, ahk_id %TempID%
If (Temp_Width = 100 && Temp_Height = 50) {
  WinMove, ahk_id %TempID%, , , , % %TempID%_Width, % %TempID%_Height
} else {
%TempID%_Width := Temp_Width
%TempID%_Height := Temp_Height
WinMove, ahk_id %TempID%, , , , 100, 50
}

;click anywhere to move
~Alt & LButton::
MouseGetPos, Mouse_Start_X, Mouse_Start_Y, Selected_Window
WinGet, Window_State, MinMax, ahk_id %Selected_Window%
if Window_State = 0
    SetTimer, Label_Loop, 1
return

#If

MouseIsOver(WinTitle)
{
	MouseGetPos,,, ID
	return WinExist(WinTitle " ahk_id " ID)
}

Label_Loop:
MouseGetPos, Mouse_Current_X, Mouse_Current_Y
WinGetPos, Selected_Window_X, Selected_Window_Y,,, ahk_id %Selected_Window%
WinMove, ahk_id %Selected_Window%,, Selected_Window_X + Mouse_Current_X - Mouse_Start_X, Selected_Window_Y + Mouse_Current_Y - Mouse_Start_Y

Mouse_Start_X := Mouse_Current_X 
Mouse_Start_Y := Mouse_Current_Y

GetKeyState, LButton_State, LButton, P 
if LButton_State = U  
{
    SetTimer, Label_Loop, off
    return
}
return



; Gui Explorer:
#IfWinActive ahk_class CabinetWClass
^t::
CoordMode, Mouse, Screen
MouseGetPos, XposA, YposA 
XposA-=+80
YposA-=+80 
gui, 31:destroy
Gui, 31:Color, 111111 

Gui, 31:Add, Button, x2 y60 w50 h20 BackgroundTrans gExpl1, ExplrorX
Gui, 31:Add, Button, x122 y60 w50 h20 BackgroundTrans gExpl2, Name
Gui, 31:Add, Button, x62 y120 w50 h20 BackgroundTrans gExpl3, FolName
Gui, 31:Add, Button, x122 y120 w50 h20 BackgroundTrans gMenuCl, Close
Gui, 31:Add, Button, x62 y0 w50 h20BackgroundTrans gExpl4, FolPath
Gui, 31:Add, Button, x62 y60 w50 h20BackgroundTrans gExpl5, Path
Gui 31:+LastFound +AlwaysOnTop +ToolWindow
WinSet, TransColor, 111111
Gui 31:-Caption
Gui, 31:Show, x%XposA% y%YposA% h176 w179, menus
Return

MenuCl:
Gui, 31:Destroy
return

Expl1:
Gui, 31:Destroy
Send,+^x
Return

Expl2:
Gui, 31:Destroy
Send,+^x
Return

Expl3:
Gui, 31:Destroy
Send,!x
Return

Expl4:
Gui, 31:Destroy
Send,!c
Return

Expl5:
Gui, 31:Destroy
Send,+^c
Return

#IfWinActive


;GroupWindow
; 1::
; GroupAdd, ExplorerGroup, ahk_class CabinetWClass
; If WinActive("ahk_exe explorer.exe")
; 	GroupActivate, ExplorerGroup, r
; else
; 	WinActivate ahk_class CabinetWClass
; return





;-------------------image--------------------------------
#IfWinActive ahk_class ApplicationFrameWindow
^t::
Send,!{enter}
Return
#IfWinActive



;-------------------Chrome--------------------------------
#IfWinActive ahk_class Chrome_WidgetWin_1

~MButton::
    If (A_TimeSincePriorHotkey < 400) && (A_TimeSincePriorHotkey <> -1) {
        Send, ^+o
    }
Return



#^b::
Send,{f1}
Return

#IfWinActive