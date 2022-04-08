@echo off
title ATAYASOFT Game Apps Installer

echo Installing Minecraft Launcher
rem MinecraftLauncher
winget install Mojang.MinecraftLauncher
if %ERRORLEVEL% equ 0 echo Minecraft Launcher installed successfully. 

echo Installing Discord.Discord
rem Discord
winget install Discord.Discord
if %ERRORLEVEL% equ 0 echo Discord installed successfully. 

echo Installing Steam
rem Steam
winget install Valve.Steam
if %ERRORLEVEL% equ 0 echo Steam installed successfully.

pause