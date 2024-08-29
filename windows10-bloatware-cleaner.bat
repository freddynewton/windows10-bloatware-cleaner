@echo off
:: Check for administrative privileges

:-------------------------------------
REM Check if the user is an administrator
>nul 2>&1 set "CurrentUserAdmin="
for /F "tokens=1" %%A in ('whoami /groups ^| findstr /i "S-1-16-12288"') do set "CurrentUserAdmin=%%A"
if "%CurrentUserAdmin%"=="" (
    echo This script requires administrative privileges.
    pause
    exit /b
)
:-------------------------------------

:: Prompt user for mode selection
:PromptMode
echo Choose mode:
echo 1. Express Mode (Remove all specified apps)
echo 2. Manual Mode (Choose which apps to remove)
set /p mode="Enter your choice (1 or 2): "

:: Validate user input
if "%mode%"=="1" goto ExpressMode
if "%mode%"=="2" goto ManualMode

:: Handle invalid input
echo Invalid selection. Please enter 1 or 2.
goto PromptMode

:ExpressMode
:: Express Mode: Remove all specified apps
echo Removing built-in apps in Express Mode...
echo.

:: Remove Xbox Game Bar
echo Removing Xbox Game Bar...
powershell -command "Get-AppxPackage *xboxapp* | Remove-AppxPackage" 2>nul
echo Done removing Xbox Game Bar.
echo.

:: Remove Xbox Game Overlay
echo Removing Xbox Game Overlay...
powershell -command "Get-AppxPackage *xboxgameoverlay* | Remove-AppxPackage" 2>nul
echo Done removing Xbox Game Overlay.
echo.

:: Remove Cortana
echo Removing Cortana...
powershell -command "Get-AppxPackage *cortana* | Remove-AppxPackage" 2>nul
echo Done removing Cortana.
echo.

:: Remove Groove Music
echo Removing Groove Music...
powershell -command "Get-AppxPackage *zune* | Remove-AppxPackage" 2>nul
echo Done removing Groove Music.
echo.

:: Remove Skype
echo Removing Skype...
powershell -command "Get-AppxPackage *skype* | Remove-AppxPackage" 2>nul
echo Done removing Skype.
echo.

:: Remove OneNote
echo Removing OneNote...
powershell -command "Get-AppxPackage *onenote* | Remove-AppxPackage" 2>nul
echo Done removing OneNote.
echo.

:: Remove 3D Builder
echo Removing 3D Builder...
powershell -command "Get-AppxPackage *3dbuilder* | Remove-AppxPackage" 2>nul
echo Done removing 3D Builder.
echo.

:: Remove Candy Crush
echo Removing Candy Crush...
powershell -command "Get-AppxPackage *candycrush* | Remove-AppxPackage" 2>nul
echo Done removing Candy Crush.
echo.

:: Remove Windows Store (Optional, be cautious with this one)
echo Removing Windows Store (optional)...
powershell -command "Get-AppxPackage *windowsstore* | Remove-AppxPackage" 2>nul
echo Done removing Windows Store.
echo.

echo Completed. Some apps may require a system restart to fully remove.
pause
exit /b

:ManualMode
:: Manual Mode: Ask user for each app
echo Removing built-in apps in Manual Mode...
echo.

:: Remove Xbox Game Bar
set /p removeXbox="Do you want to remove Xbox Game Bar? (y/n): "
if /I "%removeXbox%"=="y" (
    echo Removing Xbox Game Bar...
    powershell -command "Get-AppxPackage *xboxapp* | Remove-AppxPackage" 2>nul
    echo Done removing Xbox Game Bar.
    echo.
)

:: Remove Xbox Game Overlay
set /p removeXboxOverlay="Do you want to remove Xbox Game Overlay? (y/n): "
if /I "%removeXboxOverlay%"=="y" (
    echo Removing Xbox Game Overlay...
    powershell -command "Get-AppxPackage *xboxgameoverlay* | Remove-AppxPackage" 2>nul
    echo Done removing Xbox Game Overlay.
    echo.
)

:: Remove Cortana
set /p removeCortana="Do you want to remove Cortana? (y/n): "
if /I "%removeCortana%"=="y" (
    echo Removing Cortana...
    powershell -command "Get-AppxPackage *cortana* | Remove-AppxPackage" 2>nul
    echo Done removing Cortana.
    echo.
)

:: Remove Groove Music
set /p removeGroove="Do you want to remove Groove Music? (y/n): "
if /I "%removeGroove%"=="y" (
    echo Removing Groove Music...
    powershell -command "Get-AppxPackage *zune* | Remove-AppxPackage" 2>nul
    echo Done removing Groove Music.
    echo.
)

:: Remove Skype
set /p removeSkype="Do you want to remove Skype? (y/n): "
if /I "%removeSkype%"=="y" (
    echo Removing Skype...
    powershell -command "Get-AppxPackage *skype* | Remove-AppxPackage" 2>nul
    echo Done removing Skype.
    echo.
)

:: Remove OneNote
set /p removeOneNote="Do you want to remove OneNote? (y/n): "
if /I "%removeOneNote%"=="y" (
    echo Removing OneNote...
    powershell -command "Get-AppxPackage *onenote* | Remove-AppxPackage" 2>nul
    echo Done removing OneNote.
    echo.
)

:: Remove 3D Builder
set /p remove3DB="Do you want to remove 3D Builder? (y/n): "
if /I "%remove3DB%"=="y" (
    echo Removing 3D Builder...
    powershell -command "Get-AppxPackage *3dbuilder* | Remove-AppxPackage" 2>nul
    echo Done removing 3D Builder.
    echo.
)

:: Remove Candy Crush
set /p removeCandy="Do you want to remove Candy Crush? (y/n): "
if /I "%removeCandy%"=="y" (
    echo Removing Candy Crush...
    powershell -command "Get-AppxPackage *candycrush* | Remove-AppxPackage" 2>nul
    echo Done removing Candy Crush.
    echo.
)

:: Remove Windows Store (Optional)
set /p removeStore="Do you want to remove Windows Store? (y/n): "
if /I "%removeStore%"=="y" (
    echo Removing Windows Store...
    powershell -command "Get-AppxPackage *windowsstore* | Remove-AppxPackage" 2>nul
    echo Done removing Windows Store.
    echo.
)

echo Completed. Some apps may require a system restart to fully remove.
pause
exit /b
