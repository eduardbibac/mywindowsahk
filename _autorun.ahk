; To add this script on windows startup make a copy or shortcut to
; %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
﻿
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Set the folder where the scripts are located
path := "C:\WScripts\autorun\*.ahk"

; Loop through the list of files
Loop Files, % path
{
    ; Run each script
    Run, %folderPath%%A_LoopFileShortPath%
}
