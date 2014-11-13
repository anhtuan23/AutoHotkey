; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one .ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

;;;;;;;;;;;;;;;;;;;;;;;YouTube;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#a::
;Adjust speed 1.5x and fullscreen
	;with YTC
;{ 
;Click 1032, 678
;Click 1022, 602
;Click 1019, 551
;Click 1093, 679
;}
;return

	;without YTC
{  
Click 804, 648
Click 795, 569
Click 792, 529
Click 867, 643
}
return

#z::
;Adjust speed 2.0x and fullscreen
	
{  
;Click setting
Click 836, 650
;swtich to 2x
Click 834, 570
Click 834, 548
;choose 720p
;Click 796, 600
;Click 795, 496
;full screen
Click 895, 648
}
return

;Load HD
#q:: 
{
;Click setting
Click 836, 650
;choose 720p
Click 786, 601
Click 786, 472
;full screen
;Click 895, 648
}
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;remapping CapsLock and Delete
;CapsLock::F2
;+BS::Capslock
;;^CapsLock::Del


;;;;;;;;;;;;;;;;Navigation in keyboard;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;UP;;;;;;;;;;;;;;;;
CapsLock & i::
Send {Up}
Sleep, 300
While GetKeyState("i","P")
  {
    Send, {Up}
    Sleep, 20 ; every 20 miliseconds
  }
Return
;Send {Up}

;;;;;;;;;;;;;;;;;;;;;;DOWN;;;;;;;;;;;;;;;
CapsLock & k::
Send {Down}
Sleep, 300
While GetKeyState("k","P")
  {
    Send, {Down}
    Sleep, 20 ; every 20 miliseconds
  }
Return
;Send {Down}

;;;;;;;;;;;;;;;;;;;LEFT;;;;;;;;;;;;;;;;
CapsLock & j::
Send {Left}
Sleep, 300
While GetKeyState("j","P")
  {
    Send, {Left}
    Sleep, 20 ; every 50 miliseconds
  }
Return
;Send {Left}

;;;;;;;;;;;;;;;;RIGHT;;;;;;;;;;;;;;
CapsLock & l::
Send {Right}
Sleep, 300
While GetKeyState("l","P")
  {
    Send, {Right}
    Sleep, 20 ; every 20 miliseconds
  }
Return
;Send {Right}


CapsLock & h::Send {PgUp}
CapsLock & n::Send {PgDn}

;;;;;;;;;;;;;;;;;;;;;;;;;;BackSpace;;;;;;;;;;;;;;;;;;;;;
CapsLock & f::
Send {BS}
Sleep, 300
While GetKeyState("f","P")
  {
    Send, {BS}
    Sleep, 50 ; every 50 miliseconds
  }
Return
;;;;;;;;;;;;;;;;;;;;;;;;;Delete;;;;;;;;;;;;;;;;;;;;;;;;
CapsLock & w::
Send {Delete}
Sleep, 300
While GetKeyState("w","P")
  {
    Send, {Delete}
    Sleep, 50 ; every 50 miliseconds
  }
Return
;;;;;;;;;;;;;;;;;;;;;;;Others;;;;;;;;;;;;;;;;;;;;;;;
;:O:ef:: {Enter}
;Send {BS}
CapsLock & e::Send {Enter} ;{Del}
CapsLock & u::Send {Home}
CapsLock & o::Send {End}
CapsLock & Space::Send {Enter}
;;;;;;;;;;;;;;;;;;;;;;;;;;;NUMBER PAD;;;;;;;;;;;;;;;;;;; 
;remapping navigation number pad
NumpadClear::NumpadUp
NumpadEnd::NumpadLeft
NumpadPgDn::NumpadRight
NumpadLeft::NumpadEnd
NumpadRight::NumpadPgDn
NumPadIns::^x

;Function keys
F1::Volume_Down
F2::Volume_Up
;;PgUp::f6
;;PgDn::f7

;;;;;;;;;;;;;;;;;HACKING MOUSE;;;;;;;;;;;;;;;

;Mouse
XButton1::MButton
XButton2::Volume_Up
#c::MButton
^#Tab::^v

insert::WheelDown
f12::WheelUp 
NumpadUp::WheelDown
;`::WheelDown
;!`::WheelUp

;;;;Middle click
RAlt::MButton				
^!x::
MouseGetPos, xpos, ypos 
Msgbox, The cursor is at X%xpos% Y%ypos%
return 

;^!z::						
;loop									
;{																					
;Click 689, 711
;SetMouseDelay, 100
;Click 1068, 712, 12
;Sleep 6000
;Click 1068, 696, 70
;Sleep 2500
;}
;return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;COPY & CUT & PASTE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;RAlt & e:: Send {Enter}
;RAlt & f:: Send {BS}
;RCtrl::^v



;;;;;;;;;;;;;;;;;;;;;;;;;;;;FUNCTION KEY;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
F3::F2







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;TEXT EXPANDER;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


::tp::TP.HCM
::a@g::dotuananh.dta@gmail.com
::a@l::dotuananh.dta@live.com
::23@g::number.the23@gmail.com
::a@o::do.tuananh@outlook.com

;;;;;;;Automate add pair of some symbol
;:?*b0:(::){left 1}
;:?*b0:[::]{left 1}
;:?*b0:{::{}}{left 1}
;:?*b0:"::"{left 1}
;;;;;;;;;;;;;;;;;;;;;:?*b0:'::'{left 1}

;;;;;;;;;;;;;;;;;;;;;;;;;;;Send ramdom number;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;1 digit number
::rd1::
Random, OutputVar , 0, 9
send %Outputvar%
return

;2 digit number
::rd2::
Random, OutputVar , 10, 99
send %Outputvar%
return

;3 digit number
::rd3::
Random, OutputVar , 100, 999
send %Outputvar%
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;THE PROGRAM ITSELF;;;;;;;;;;;;;;;;;;;;;;;;

; Assign Ctrl-Alt-R as a hotkey to restart the script.
^!r::
Reload
Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
IfMsgBox, Yes, Edit
return

^!Esc::ExitApp  ;Escape key will exit... place this at the bottom of the script

; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.
