@echo off
title ATAYASOFT User Apps Installer

echo Installing Google Chrome
rem GoogleChrome
winget install Google.Chrome
if %ERRORLEVEL% equ 0 echo Google Chrome installed successfully. 

echo Installing 7zip
rem 7zip
winget install 7zip.7zip
if %ERRORLEVEL% equ 0 echo 7zip installed successfully. 

echo Installing Notepad++
rem Notepad++
winget install Notepad++.Notepad++
if %ERRORLEVEL% equ 0 echo Notepad++ installed successfully. 

echo Installing Spotify
rem Spotify
winget install Spotify.Spotify
if %ERRORLEVEL% equ 0 echo Spotify installed successfully. 

echo Installing WhatsApp
rem WhatsApp
winget install WhatsApp.WhatsApp
if %ERRORLEVEL% equ 0 echo WhatsApp installed successfully. 

echo Installing Oracle JDK 17
rem JDK17
winget install Oracle.JDK.17
if %ERRORLEVEL% equ 0 echo JDK 17 installed successfully. 

echo Installing TeamViewer
rem TeamViewer
winget install TeamViewer.TeamViewer
if %ERRORLEVEL% equ 0 echo TeamViewer installed successfully. 

echo Installing Adobe Acrobat Reader
rem AdobeAcrobatReader
winget install Adobe.Acrobat.Reader.64-bit
if %ERRORLEVEL% equ 0 echo Adobe Acrobat Reader installed successfully. 

pause