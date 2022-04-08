@echo off
title ATAYASOFT Developer Apps Installer

echo Installing Git
rem Git
winget install Git.Git
if %ERRORLEVEL% equ 0 echo Git installed successfully. 

echo Installing Visual Studio Code
rem VisualStudioCode
winget install Microsoft.VisualStudioCode
if %ERRORLEVEL% equ 0 echo Visual Studio Code installed successfully.

echo Installing Windows Terminal 
rem WindowsTerminal
winget install Microsoft.WindowsTerminal
if %ERRORLEVEL% equ 0 echo Windows Terminal installed successfully. 

echo Installing PowerShell 
rem PowerShell
winget install Microsoft.PowerShell
if %ERRORLEVEL% equ 0 echo PowerShell installed successfully. 

echo Installing VirtualBox
rem VirtualBox
winget install Oracle.VirtualBox
if %ERRORLEVEL% equ 0 echo VirtualBox installed successfully. 

echo Installing Visual Studio 2022 Community
rem VisualStudio2022
winget install Microsoft.VisualStudio.2022.Community
if %ERRORLEVEL% equ 0 echo Visual Studio 2022 Community installed successfully.

pause