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
	;with YTC
;{  
;Click 1032, 678
;Click 1022, 602
;Click 1018, 573
;Click 1093, 679
;}
;return
	;without YTC
{  
;Click setting
Click 804, 648
;swtich to 2x
Click 795, 569
Click 783, 548
;choose 720p
;Click 796, 600
;Click 795, 496
;full screen
Click 867, 643
}
return

;Load HD
#q:: 
{
Click 804, 648
Click 796, 600
Click 795, 480
Click 661, 650
}
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;remapping CapsLock and Delete
;CapsLock::F2
;+BS::Capslock
;;^CapsLock::Del
`::Del

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
;Send {BS}
CapsLock & e::Send {Del}
CapsLock & u::Send {Home}
CapsLock & o::Send {End}

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

;Mouse
XButton1::Volume_Down
XButton2::Volume_Up
#c::^c
^#Tab::^v


;;;;;;;;;;;;;;;;;HACKING MOUSE;;;;;;;;;;;;;;;

^!x::
MouseGetPos, xpos, ypos 
Msgbox, The cursor is at X%xpos% Y%ypos%
return 

^!z::
loop
{																					
Click 689, 711
SetMouseDelay, 100
Click 1068, 712, 12
Sleep 6000
Click 1068, 696, 70
Sleep 2500
}
return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;COPY & CUT & PASTE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;RAlt::^x
;RCtrl::^v


;;;;;;;;;;;;;;;;;;;;;;;;;;;;FUNCTION KEY;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
F3::F2




^!Esc::ExitApp  ;Escape key will exit... place this at the bottom of the script

; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.
