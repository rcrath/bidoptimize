@echo off
rem Double-click to start bidoptimize. It asks for administrator permission itself.
start "" powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File "%~dp0bidoptimize.ps1"
