@echo off
title "ADB ToolBox"
cd "By 98"
cd "platform-tools"
:start
cls
echo.
echo.                  _____  ____    _______          _ ____
echo.            /\   ^|  __ \^|  _ \  ^|__   __^|        ^| ^|  _ \
echo.           /  \  ^| ^|  ^| ^| ^|_) ^|    ^| ^| ___   ___ ^| ^| ^|_) ^| _____  __
echo.          / /\ \ ^| ^|  ^| ^|  _ ^<     ^| ^|/ _ \ / _ \^| ^|  _ ^< / _ \ \/ /
echo.         / ____ \^| ^|__^| ^| ^|_) ^|    ^| ^| (_) ^| (_) ^| ^| ^|_) ^| (_) ^>  ^<
echo.        /_/    \_\_____/^|____/     ^|_^|\___/ \___/^|_^|____/ \___/_/\_\
echo.
echo.
echo [34m[1][0mCheck Device
echo [34m[2][0mReboot Device
echo [34m[3][0mReboot Recovery
echo [34m[4][0mReboot Fastboot
echo [34m[5][0mInstall APK
echo [34m[6][0mShow Package List
echo [34m[7][0mUninstall Package
echo [34m[8][0mPush File
echo [34m[9][0mOpen Shell
echo.
echo [35m[99][0mExit
echo.
set /p choice=   Choose Mode:

if "%choice%"=="1" (
    start "" "ADB D.bat"
    goto start
)

if "%choice%"=="2" (
    cls
    adb reboot
    pause
    goto start
)

if "%choice%"=="3" (
    cls
    adb reboot recovery
    pause
    goto start
)

if "%choice%"=="4" (
    cls
    adb reboot bootloader
    pause
    goto start
)

if "%choice%"=="5" (
    cls
    set "apk="
    set /p "apk=Enter APK path (or drag and drop the file here): "
    set "apk=%apk:"=%"
    if not exist "%apk%" goto apk_missing
    adb install "%apk%"
    pause
    goto start
    echo.
    echo File not found: "%apk%"
    pause
    goto start
)

if "%choice%"=="6" (
    cls
    start cmd /k "adb shell cmd package list packages & pause & exit"
    goto start
)

if "%choice%"=="7" (
    cls
    set /p pkg=Enter Package Name:
    adb uninstall "%pkg%"
	echo "%pkg%"
    pause
    goto start
)




if "%choice%"=="9" (
    cls
    adb shell
    goto start
)

if "%choice%"=="99" (
    exit
)

goto start