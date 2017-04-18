#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

SetTitleMatchMode, 2

OnMessage(16687, "RainmeterWindowMessage")

RainmeterWindowMessage(n) {
	WinActivate, Tous
	if (n = 1) {
		Send ^{z}
	} else if (n = 2) {
		Send ^{y}
	} else if (n = 3) {
		Send o
	} else if (n = 4) {
		Send p
	}

	;Msgbox, Got %n%
	Return
}


^j::
	MouseGetPos, xpos, ypos
	Msgbox, Cursor at X%xpos%, Y%ypos%
	Return