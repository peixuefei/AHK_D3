; Notepad
; #IfWinActive untitled - Notepad
#IfWinActive ahk_class Notepad
#space::
   MsgBox, You pressed Win+Spacebar in Notepad.
Return
::msg::You typed msg in Notepad


~j::
SetKeyDelay, 50
   send, ack
Return

#IfWinActive

; Any window that isn't Untitled - Notepad
!q::
   MsgBox, You pressed Alt and Q in any window.
Return

; ~*RButton::  ;��ס�Ҽ�������ͣ123��������㣬����ǿ���ƶ���������ʿ����
;    MsgBox, You pressed down Left Button in any window.
; Return


; ~RButton::MsgBox You clicked the right mouse button.

; *RButton::MsgBox You clicked the right mouse button.

~RButton::MsgBox You clicked the right mouse button.
~RButton & C::MsgBox You pressed C while holding down the right mouse button.