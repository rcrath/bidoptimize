@echo off
rem Double-click to start bidoptimize11. It asks for administrator permission itself.
start "" powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File "%~dp0bidoptimize11.ps1"
