# Windows 10 Bloatware Removal Script

This repository contains a batch script for removing built-in and bloatware apps from Windows 10. The script provides two modes of operation:

1. **Express Mode**: Removes all specified apps automatically.
2. **Manual Mode**: Allows the user to choose which apps to remove.

## Script Overview

The batch script performs the following actions:

1. **Checks for Administrative Privileges**: Ensures the script is run with administrative rights.
2. **Prompts for Mode Selection**: User can choose between Express Mode and Manual Mode.
3. **Executes Removal Commands**: Based on the chosen mode, the script will either remove all specified apps or prompt the user for each app.

## Script

```batch
@echo off
:: Check for administrative privileges

:-------------------------------------
REM Set variable to check if the user is an administrator
>nul 2>&1 set "CurrentUserAdmin="
for /F "tokens=1" %%A in ('whoami /groups ^| findstr /i "S-1-16-12288"') do set "CurrentUserAdmin=%%A"
if "%CurrentUserAdmin%"=="" (
    echo This script requires administrative privileges.
    pause
    exit /b
)
:-------------------------------------

echo Choose mode:
echo 1. Express Mode (Remove all specified apps)
echo 2. Manual Mode (Choose which apps to remove)
set /p mode="Enter your choice (1 or 2): "

if "%mode%"=="1" (
    :: Express Mode: Remove all specified apps
    echo Removing built-in apps in Express Mode...
    echo.

    :: Remove Xbox Game Bar
    echo Removing Xbox Game Bar...
    powershell -command "Get-AppxPackage *xboxapp* | Remove-AppxPackage"
    echo Done removing Xbox Game Bar.
    echo.

    :: Remove Xbox Game Overlay
    echo Removing Xbox Game Overlay...
    powershell -command "Get-AppxPackage *xboxgameoverlay* | Remove-AppxPackage"
    echo Done removing Xbox Game Overlay.
    echo.

    :: Remove Cortana
    echo Removing Cortana...
    powershell -command "Get-AppxPackage *cortana* | Remove-AppxPackage"
    echo Done removing Cortana.
    echo.

    :: Remove Groove Music
    echo Removing Groove Music...
    powershell -command "Get-AppxPackage *zune* | Remove-AppxPackage"
    echo Done removing Groove Music.
    echo.

    :: Remove Skype
    echo Removing Skype...
    powershell -command "Get-AppxPackage *skype* | Remove-AppxPackage"
    echo Done removing Skype.
    echo.

    :: Remove OneNote
    echo Removing OneNote...
    powershell -command "Get-AppxPackage *onenote* | Remove-AppxPackage"
    echo Done removing OneNote.
    echo.

    :: Remove 3D Builder
    echo Removing 3D Builder...
    powershell -command "Get-AppxPackage *3dbuilder* | Remove-AppxPackage"
    echo Done removing 3D Builder.
    echo.

    :: Remove Candy Crush
    echo Removing Candy Crush...
    powershell -command "Get-AppxPackage *candycrush* | Remove-AppxPackage"
    echo Done removing Candy Crush.
    echo.

    :: Remove Windows Store (Optional, be cautious with this one)
    echo Removing Windows Store (optional)...
    powershell -command "Get-AppxPackage *windowsstore* | Remove-AppxPackage"
    echo Done removing Windows Store.
    echo.

    echo Completed. Some apps may require a system restart to fully remove.
    pause
    exit /b
)

if "%mode%"=="2" (
    :: Manual Mode: Ask user for each app
    echo Removing built-in apps in Manual Mode...
    echo.

    :: Remove Xbox Game Bar
    set /p removeXbox="Do you want to remove Xbox Game Bar? (y/n): "
    if /I "%removeXbox%"=="y" (
        echo Removing Xbox Game Bar...
        powershell -command "Get-AppxPackage *xboxapp* | Remove-AppxPackage"
        echo Done removing Xbox Game Bar.
        echo.
    )

    :: Remove Xbox Game Overlay
    set /p removeXboxOverlay="Do you want to remove Xbox Game Overlay? (y/n): "
    if /I "%removeXboxOverlay%"=="y" (
        echo Removing Xbox Game Overlay...
        powershell -command "Get-AppxPackage *xboxgameoverlay* | Remove-AppxPackage"
        echo Done removing Xbox Game Overlay.
        echo.
    )

    :: Remove Cortana
    set /p removeCortana="Do you want to remove Cortana? (y/n): "
    if /I "%removeCortana%"=="y" (
        echo Removing Cortana...
        powershell -command "Get-AppxPackage *cortana* | Remove-AppxPackage"
        echo Done removing Cortana.
        echo.
    )

    :: Remove Groove Music
    set /p removeGroove="Do you want to remove Groove Music? (y/n): "
    if /I "%removeGroove%"=="y" (
        echo Removing Groove Music...
       
