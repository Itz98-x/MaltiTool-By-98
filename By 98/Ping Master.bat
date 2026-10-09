@echo off
setlocal enabledelayedexpansion
color 0a
title "Ping Master"
mode 125,35
chcp 65001 > nul
cls



:start
cls

echo     [37m              [0m
echo     [37m              [0m
echo     [37m              [0m
echo     [92m8888888b.  d8b                        888b     d888                   888                    [0m
echo     [92m888   Y88b Y8P                        8888b   d8888                   888                    [0m
echo     [92m888    888                            88888b.d88888                   888                    [0m
echo     [92m888   d88P 888 88888b.   .d88b.       888Y88888P888  8888b.  .d8888b  888888 .d88b.  888d888 [0m
echo     [92m8888888P"  888 888 "88b d88P"88b      888 Y888P 888     "88b 88K      888   d8P  Y8b 888P"   [0m
echo     [92m888        888 888  888 888  888      888  Y8P  888 .d888888 "Y8888b. 888   88888888 888     [0m
echo     [92m888        888 888  888 Y88b 888      888   "   888 888  888      X88 Y88b. Y8b.     888     [0m
echo     [92m888        888 888  888  "Y88888      888       888 "Y888888  88888P'  "Y888 "Y8888  888     [0m
echo     [92m                             888                                                             [0m
echo     [92m                        Y8b d88P                                                             [0m
echo     [92m                         "Y88P"                                                              [0m


echo     [37m              [0m
echo     [37m              [0m
echo     [37m              [0m
echo     [37m              [0m




echo [35m        [1][0m [97mping google.com  [0m
echo [35m        [2][0m [97mping youtube.com [0m
echo [35m        [3][0m [97mping 192.168.0.1 [0m
echo [35m        [4][0m [97mping 192.168.1.1 [0m
echo [35m        [5][0m [97mping 192.168.10.1[0m
echo [35m        [6][0m [97mping castom      [0m
echo [35m        [99][0m [31mExit  [0m
echo     [37m              [0m
echo     [37m              [0m





set /p choice=[37;1m        [0m


::ping google.com
if "%choice%"=="1" (
  color 0a
  cls
  ping google.com -t
)

::ping youtube.com
if "%choice%"=="2" (
  color 0a
  cls
  ping youtube.com -t
  goto :start
)

::ping 192.168.0.1
if "%choice%"=="3" (
  color 0a
  cls
  ping 192.168.0.1 -t
)

::ping 192.168.1.1
if "%choice%"=="4" (
  color 0a
  cls
  ping 192.168.1.1 -t
)

::ping 192.168.10.1
if "%choice%"=="5" (
  color 0a
  cls
  ping 192.168.10.1 -t
)


::ping castom
if "%choice%"=="6" (
  color 0a
  cls
  set /p castom_ping=Enter The Address: 
  cls
  ping !castom_ping! -t
)




::Exit
if "%choice%"=="99" (
  color 0a
  cls
  goto :exit
)



cls
echo     [36m              [0m
echo     [36m              [0m
echo [31m        "Error: Invalid input."[0m







goto :start










:exit

Exit

