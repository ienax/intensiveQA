HotKeySet ("{Esc}", "_Terminate")

;MouseMove (500, 200, 1)
Local $i =0
Local $position
While $i <5
   MouseMove (Random(0,1000), Random(0, 1000), 1000)
   $position = MouseGetPos()
   MsgBox(0,"mouse positoin", $position[0] & @CRLF & $position[1])
   Sleep(1000)
   ;MouseClick("right")

   $i=$i+1
WEnd

;comment

#cs
comment
example
#ce

Func _Terminate()
   Exit
EndFunc