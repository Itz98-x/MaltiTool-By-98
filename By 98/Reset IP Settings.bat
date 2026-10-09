@echo off
title "Reset IP"
:start
cls
echo     [37m              [0m 
echo            _____                 _     _____ _____
echo            ^|  __ \              ^| ^|   ^|_   _^|  __ \
echo            ^| ^|__) ^|___  ___  ___^| ^|_    ^| ^| ^| ^|__) ^|
echo            ^|  _  // _ \/ __^|/ _ \ __^|   ^| ^| ^|  ___/
echo            ^| ^| \ \  __/\__ \  __/ ^|_   _^| ^|_^| ^|
echo            ^|_^|  \_\___^|^|___/\___^|\__^| ^|_____^|_^|
echo     [37m              [0m 
echo     [37m              [0m               
echo     [37m              [0m    
echo     [34m[1][0mFhash Dns
echo     [34m[2][0mGet New IP
echo     [34m[3][0mFix No Internet  
echo     [31m[4][0mReset Firewall   
echo     [37m              [0m 
echo     [93m[9][0mExit
echo     [37m              [0m  
echo     [37m              [0m               

set /p choice=[0m   Choose Mode: [0m

if "%choice%"=="1" (
  cls
  ipconfig /flushdns
  pause >nul
  goto :start
)

if "%choice%"=="2" (
  cls
  ipconfig /release
  ipconfig /renew
  pause >nul
  goto :start
)

if "%choice%"=="3" (
  cls
  netsh winsock reset
  netsh int ip reset
  pause >nul
  goto :start
)

if "%choice%"=="4" (
  cls
  netsh advfirewall reset
  pause >nul
  goto :start
)

if "%choice%"=="9" (
  exit
)



pause >nul