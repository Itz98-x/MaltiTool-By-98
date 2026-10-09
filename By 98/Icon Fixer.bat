@echo off
color 0a
taskkill /f /im explorer.exe
cd /d %localappdata%\Microsoft\Windows\Explorer
del /f /q iconcache_*.db
del /f /q thumbcache_*.db
::sfc /scannow
::DISM /Online /Cleanup-Image /RestoreHealth
start explorer.exe
exit
