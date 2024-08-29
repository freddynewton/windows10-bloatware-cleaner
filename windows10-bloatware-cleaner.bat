@echo off
:: BatchGotAdmin
:-------------------------------------
REM Check for administrative privileges
>nul 2>&1 set "CurrentUserAdmin="
for /F "tokens=1" %%A in ('whoami /groups ^| findstr /i "S-1-16-12288"') do set "CurrentUserAdmin=%%A"
if "%CurrentUserAdmin%"=="" (
    echo This script requires administrative privileges.
    pause
    exit /b
)
:-------------------------------------

echo Removing built-in apps...

:: Remove Xbox Game Bar
powershell -command "Get-AppxPackage *xboxapp* | Remove-AppxPackage"

:: Remove Xbox Game Overlay
powershell -command "Get-AppxPackage *xboxgameoverlay* | Remove-AppxPackage"

:: Remove Cortana
powershell -command "Get-AppxPackage *cortana* | Remove-AppxPackage"

:: Remove Groove Music
powershell -command "Get-AppxPackage *zune* | Remove-AppxPackage"

:: Remove Skype
powershell -command "Get-AppxPackage *skype* | Remove-AppxPackage"

:: Remove OneNote
powershell -command "Get-AppxPackage *onenote* | Remove-AppxPackage"

:: Remove 3D Builder
powershell -command "Get-AppxPackage *3dbuilder* | Remove-AppxPackage"

:: Remove Candy Crush
powershell -command "Get-AppxPackage *candycrush* | Remove-AppxPackage"

:: Remove Windows Store (Optional, be cautious with this one)
powershell -command "Get-AppxPackage *windowsstore* | Remove-AppxPackage"

echo Completed. Some apps may require a system restart to fully remove.
pause
