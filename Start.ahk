#IfWinActive GTA:SA:MP
#include SAMP.ahk
#SingleInstance Force
#NoEnv
ListLines Off
SetBatchLines -1

chatlog := A_MyDocuments "\GTA San Andreas User Files\SAMP\chatlog.txt"
FileDelete, %chatlog%

Words = (kick|mute|ban|prison|banip|offmute|offban|offprison|offbanip)

F2::
FileRead, Str, %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt
StringReplace, Str, Str, `r`n, `n, 1
StringReplace, Str, Str, `r, `n, 1

RegExMatch("`n" Str "`n", "i).*\n\[\d+:\d+:\d+]\s*\[A\]\s\w+_(\w+)\[.*?]:\s*(/`*" Words "\s.*?)\n", Match)
ToolTip % Clipboard := Match1
FileAppend,%Match2% | %Match1%`n,logachat.ini
SendMessage, 0x50,, 0x4190419,, A
Sleep 300
SendInput,{F6}%match2% | %match1% {enter}
clipboard =
ToolTip
FileDelete,%A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt
Return


F3::
{
showDialog("0", "Таблица наказаний", "{FFFFFF}1.1 Использование запрещенных чит-программ - {AF2929}/ban id 14-30`n{FFFFFF}1.2 Оскорбление в сторону игроков ибо администрации проекта - {AF2929}/mute id 15-35`n{FFFFFF}1.3 Оскорбление ибо упоминание родни - {AF2929}/ban id 30`n{FFFFFF}1.4 Оскорбление проекта ибо его основателей - {AF2929} /ban id 7-30`n{FFFFFF}1.5 Оскорбительные NICKNAME по типу: (Admin_Dibil | Server_Ploxoi и т.д) - {AF2929}/ban id 14-30`n{FFFFFF}1.6 Передача аккаунта сторонним лицам - {AF2929}/ban id 14`n{FFFFFF}1.7 Реклама сторонних ресурсов - {AF2929}/ban id 3-7`n{FFFFFF}1.8 Помеха проходу - {AF2929}/kick id`n{FFFFFF}1.9 Попрашайничество - {AF2929}/mute id 5-10`n{FFFFFF}1.9.1 Писать сообщение верхним регистром (CAPSLOCK) - {AF2929}/mute id 5`n{FFFFFF}1.9.2 Обход наказание - {AF2929}/ban id 3-30`n                                            {FFFFFF}• Правила для банд/мафии:`n{FFFFFF}2.1 Проникать на территорию враждующей банды/мафии - {AF2929}/prison id 5-10`n{FFFFFF}2.2 DriveBy - наезжать на враждующего | Наезд на своего - {AF2929}/prison id 15`n{FFFFFF}2.3 Нахождение на территории войны на паузе более 120 секунд [2 минут.] - {AF2929}/kick id`n{FFFFFF}2.4 Запрещено мешать войне между бандами [Другой банде/мафии заезжать на территорию войны и убивать других банд.] - {AF2929}/kick id`n{FFFFFF}2.5 Использовать команду COLOR для изменение цвета ника противоположной банды/мафии во время войны. {AF2929}/prison id 5`n{FFFFFF}2.6 Самоубийство в случае маленького уровня здоровья [Прыгать с моста/выходить с сервера]{AF2929}/prison id 10`n{FFFFFF}2.7 Ставить мешающий транспорт во время войны (Мешающий выезжать противоположной банде/мафии) - {AF2929}/prison id 5`n{FFFFFF}2.8 Использование багоюзов игры, такие как сбив анимации надевания маски/использование аптечки -{AF2929}PRISON в бою 15 минут, вне боя - 5 минут.", "Закрыть")
}

return

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

