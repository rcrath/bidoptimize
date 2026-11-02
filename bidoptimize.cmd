@echo off
rem Double-click to start bidoptimize. It asks for administrator permission itself.
rem A .cmd file always flashes a console window for a moment. To avoid that, make a shortcut to powershell.exe with the same arguments as below and a hidden window style.
start "" powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File "%~dp0bidoptimize.ps1"
