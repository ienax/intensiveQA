#include <ScreenCapture.au3>
HotKeySet("{Esc}", "_Terminate")

Local $chromeBr = Run("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe", "", @SW_MAXIMIZE)
WinWaitActive("[CLASS:Chrome_WidgetWin_1]", "", 10)
Send("https://skillboxtestsite.bitrix24.site/{Enter}")
WinWaitActive("test site - Google Chrome")
Sleep(3000) ;отрисовка страницы
Send("{TAB}My Name is Vasya")
Sleep(500)
Send("{TAB}My Family")
Sleep(500)
Send("{TAB}0123456789")
Sleep(500)
Send("{TAB 2}My Comment")
Sleep(500)
Send("+{TAB 2}ex@mail.ru")
Sleep(500)
Send("{TAB}example.org")
Sleep(500)
Send("{TAB 2}{Enter}")
Sleep(3000) ;отправка запроста
;Local $path = StringFormat(@MyDocumentsDir & "Homework_%s.jpg", @MSEC)
Local $path = (@MyDocumentsDir & "Homework.jpg")
_ScreenCapture_Capture($path)
WinWaitActive("[CLASS:Chrome_WidgetWin_1]", "", 10)
Send("!{F4}")

ProcessClose($chromeBr)
;ProcessClose($pid)
ShellExecute($path)

Func _Terminate()
   Exit
EndFunc