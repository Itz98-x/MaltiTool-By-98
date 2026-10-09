@echo off
color 0F
title "MaltiTool By 98"
mode 125,35
chcp 65001 > nul
cls

:start
cls
echo     [37m              [0m
echo     [37m              [0m
echo     [37m              [0m
echo [34m                   ░███     ░███            ░██    ░██    ░██  ░██████████                      ░██[0m
echo [34m                   ░████   ░████            ░██    ░██             ░██                          ░██ [0m
echo [94m                   ░██░██ ░██░██  ░██████   ░██ ░████████ ░██      ░██     ░███████   ░███████  ░██ [0m
echo [94m                   ░██ ░████ ░██       ░██  ░██    ░██    ░██      ░██    ░██    ░██ ░██    ░██ ░██ [0m
echo [36m                   ░██  ░██  ░██  ░███████  ░██    ░██    ░██      ░██    ░██    ░██ ░██    ░██ ░██ [0m
echo [36m                   ░██       ░██ ░██   ░██  ░██    ░██    ░██      ░██    ░██    ░██ ░██    ░██ ░██ [0m
echo [97m                   ░██       ░██  ░█████░██ ░██     ░████ ░██      ░██     ░███████   ░███████  ░██ By 98     [0m
echo     [37m              [0m      
echo     [36m              [0m                         																							
echo     [36m              [0m 
echo     [36m              [0m 
echo     [36m              [0m 
  



echo     [37;1m   $════╦══╦══╦═══════»[0m  [94m[Scrcpy(default)][0m [35m[1][0m
echo     [37;1m        ║  ║  ╚══════════»[0m  [94m[Scrcpy(Fullscreen)][0m [35m[2][0m
echo     [37;1m        ║  ╠══╦═══════»[0m  [94m[ADB][0m [35m[3][0m
echo     [37;1m        ║  ║  ╚══════════»[0m  [94m[ADB ToolBox][0m [35m[4][0m
echo     [37;1m        ║  ╠══════════»[0m  [94m[Clear Temp Files][0m [35m[5][0m
echo     [37;1m        ║  ╠══════════»[0m  [94m[Fix Corrupted System Files][0m [35m[6][0m
echo     [37;1m        ║  ╠══╦═══════»[0m  [94m[Remove Shortcut Arrow In Windows][0m [35m[7][0m
echo     [37;1m        ║  ║  ╠══════════»[0m  [94m[Restore Shortcut Arrow In Windows 11][0m [35m[8][0m
echo     [37;1m        ║  ║  ╠══════════»[0m  [94m[Icon Fixer][0m [35m[9][0m
echo     [37;1m        ║  ║  ╚══════════»[0m  [94m[Icon Fixer V2][0m [35m[10][0m
echo     [37;1m        ║  ╠══════════»[0m  [94m[WiFi Password Dumper (Windows)][0m [35m[11][0m
echo     [37;1m        ║  ╠══════════»[0m  [94m[Ping Master][0m [35m[12][0m
echo     [37;1m        ║  ╠══════════»[0m  [94m[Reset IP][0m [35m[13][0m
echo     [37;1m        ║  ╚══════════»[0m  [31m[Exit][0m [35m[99][0m
echo     [37;1m        ║ [0m




set /p choice=[37;1m            ╚══════════»[0m

:: [Scrcpy(default)
if "%choice%"=="1" (
  start "" "By 98\scrcpy-win64-v3.3.1\scrcpy.exe"
  goto :start
)


::Scrcpy(Fullscreen)
if "%choice%"=="2" (
  cd "By 98\scrcpy-win64-v3.3.1"
  scrcpy.exe -f
  goto :start
)


::ADB
if "%choice%"=="3" (
  cls
  cmd /K cd /d "By 98\platform-tools"
  goto :start
)


::ADB Toolbox
if "%choice%"=="4" (
  cd "By 98"
  start "" "ADB Toolbox.bat"
  goto :start
)


::Clear Temp Files
if "%choice%"=="5" (
  @echo off
  cls
  color 0a
  powershell -Command "Start-Process 'By 98\Clear.bat' -Verb RunAs"
  goto :start
)


::Fix Corrupted System Files
if "%choice%"=="6" (
  @echo off
  cls
  color 0a
  powershell -Command "Start-Process 'By 98\Fix Corrupted System Files.bat' -Verb RunAs"
  goto :start
)


::Remove Shortcut Arrow In Windows
if "%choice%"=="7" (
 @echo off
 cls
 powershell -Command "Start-Process 'By 98\Remove Shortcut Arrow In Windows.bat' -Verb RunAs"
  goto :start
)


::Restore Shortcut Arrow In Windows 11
if "%choice%"=="8" (
 @echo off
 cls
 color 0a
 powershell -Command "Start-Process 'By 98\Restore Shortcut Arrow In Windows 11.bat' -Verb RunAs"
  goto :start
)


::Icon Fixer
if "%choice%"=="9" (
  cls
  @echo off
  color 0a
  powershell -Command "Start-Process 'By 98\Icon Fixer.bat' -Verb RunAs" 
  goto :start
)

::Icon Fixer V2
if "%choice%"=="10" (
  cls
  @echo off
  color 0a
 powershell -Command "Start-Process 'By 98\Icon Fixer v2.bat' -Verb RunAs" 
  goto :start
)


::WiFi Password Dumper (Windows)
if "%choice%"=="11" (
  cls
  cd "By 98"
  start "" "WiFi Password Dumper.bat"
  goto :start  
)


::Ping Master
if "%choice%"=="12" (
  cls
  cd "By 98"
  start "" "Ping Master.bat"
  goto :start  
)


::Reset IP
if "%choice%"=="13" (
  cls
  cd "By 98"
  start "" "Reset IP Settings.bat"
  goto :start  
)




::End Task
if "%choice%"=="99" (
  echo Task Ended 
  goto :exit
)



echo     [36m              [0m
echo     [36m              [0m

echo [31m          "Error: Invalid input."[0m


pause >nul

goto :start



:exit

exit


