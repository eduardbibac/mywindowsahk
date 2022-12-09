#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Set the folder where the scripts are located
folderPath := "C:\WScripts\autorun"

; Get a list of all files in the folder
fileList := FileList(folderPath, "*.ahk")

; Loop through the list of files
for file in fileList
{
    ; Run each script
    Run, %folderPath%\%file%
}