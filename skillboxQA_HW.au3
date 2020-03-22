#include <ScreenCapture.au3>
HotKeySet("{Esc}", "_Terminate")

Run("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe", "", @SW_MAXIMIZE)
WinWaitActive("[CLASS:Chrome_WidgetWin_1]", "", 10)
Send("https://skillboxtestsite.bitrix24.site/{Enter}")
WinWaitActive("test site - Google Chrome")
Sleep(3000) ;отрисовка страницы
Send("{TAB}My Name is Vasya")
Send("{TAB}My Family")
Send("{TAB}0123456789")
Send("{TAB 2}My Comment")
Send("+{TAB 2}ex@mail.ru")
Send("{TAB}example.org")
Send("{TAB 2}{Enter}")
Sleep(3000) ;отправка запроста
Local $path = StringFormat(@MyDocumentsDir & "Homework_%s.jpg", @MSEC)
_ScreenCapture_Capture($path)
WinWaitActive("[CLASS:Chrome_WidgetWin_1]", "", 10)
Send("!{F4}")
ProcessClose($pid)
ShellExecute($path)

Func _Terminate()
   Exit
EndFunc