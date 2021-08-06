#IfWinActive, GTA:SA:MP

NumpadSub::
    showDialog("2", "Меню", "Наказания`nОтыгровка`nFunktion3", "Ок", "Отмена")
return
#If isDialogOpen() && WinActive("GTA:SA:MP")
$Enter::
    OnDialogResponse(true)
return
ESC::
    OnDialogResponse(false)
return
#If
OnDialogResponse(response) {
    caption := getDialogCaption()
    if (response) {
  if (caption == "Меню") {
   line := getDialogLine(getDialogIndex())
   if (line == "Наказания") {
    showDialog("2", "Под список", "Заглушки`nНаказания кпз`nРелоги", "Ок", "Отмена")
   }
   else if (line == "Отыгровка") 
   {
    showDialog("1", "/я текст", "Введите отыгровку", "Ок", "Отмена")
    input, text, V, {Enter} 
    SendChat("/я " text)
   }
   return
  }
  else if (caption == "Под список") {
   line := getDialogLine(getDialogIndex())
   AddChatMessage(line)
   Send, {Enter}
  }
  else if (caption == "Keybinder - Funktion2") {
   clipboardBuffer := ClipboardAll
   clipboard := ""
   Send, ^{A}
   Send, ^{X}
   sleep, 100
   dialogInput := clipboard
   clipboard := clipboardBuffer
   if (dialogInput != -1 && dialogInput != "") {
    AddChatMessage("Dialog Input: " dialogInput)
   }
   Send, {Enter}
  }
  else
   Send, {Enter}
    }
    else {
  if (caption == "Под список") 
  {
   showDialog("2", "Меню", "Наказания`nОтыгровка`nFunktion3", "Ок", "Отмена")
  }
  else
   Send, {ESC}
    }
    return
}

Numpad1::
SendMessage, 0x50,, 0x4190419,,
Sendinput, {F6}/ans  Начинаю работать по вашей жалобе. Ожидайте{left 43}
Return


Numpad2::
SendMessage, 0x50,, 0x4190419,,
Sendinput, {F6}/ans  По вашей жалобе нарушений не обнаружено. Приятной игры! {left 55}
Return

Numpad3::
SendMessage, 0x50,, 0x4190419,,
Sendinput, {F6}/ans  Игрок наказан. Приятной игры! {left 29}
Return

Numpad4::
SendMessage, 0x50,, 0x4190419,,
Sendinput, {F6}/a /ban  30 cheat | tsunami {left 20}
Return

Numpad5::
SendMessage, 0x50,, 0x4190419,,
Sendinput, {F6}/a /ban  30 упом родных | tsunami {left 26}
Return

Numpad6::
SendMessage, 0x50,, 0x4190419,,
Sendinput, {F6}/a /kick  помеха | tsunami {left 18}
Return

Numpad7::
SendMessage, 0x50,, 0x4190419,,
Sendinput, {F6}/ans {right 1} 
Return

Numpad8::
SendMessage, 0x50,, 0x4190419,,
Sendinput, {F6}/ban {right 1} 
Return

Numpad9::
SendMessage, 0x50,, 0x4190419,,
Sendinput, {F6}/kick {right 1} 
Return

NumpadAdd::
SendMessage, 0x50,, 0x4190419,,
Sendinput, {F6}/ans  Подать заявку вы можете на нашем форуме headway-dm.ru {left 55}
Return

