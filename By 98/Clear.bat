@echo off
color 0a
title Windows 11 Temp Cleaner
echo ============================================
echo   Cleaning Temp, %temp%, and Prefetch
echo ============================================

:: Delete Windows Temp
echo Cleaning C:\Windows\Temp ...
del /s /q "C:\Windows\Temp\*.*" 2>nul
for /d %%i in ("C:\Windows\Temp\*") do rd /s /q "%%i" 2>nul

:: Delete User Temp
echo Cleaning %temp% ...
del /s /q "%temp%\*.*" 2>nul
for /d %%i in ("%temp%\*") do rd /s /q "%%i" 2>nul

:: Delete Prefetch
echo Cleaning C:\Windows\Prefetch ...
del /s /q "C:\Windows\Prefetch\*.*" 2>nul
for /d %%i in ("C:\Windows\Prefetch\*") do rd /s /q "%%i" 2>nul