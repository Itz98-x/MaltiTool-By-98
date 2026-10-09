@echo off
:adb
cls
adb devices
timeout /t 1 /nobreak > nul
goto adb