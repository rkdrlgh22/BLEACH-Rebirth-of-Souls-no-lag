@echo off
setlocal

:: Check if the backup exists
if not exist "%~dp0original_locale_backup.reg" (
    echo [ERROR] Backup file not found: %~dp0original_locale_backup.reg
    echo Make sure you ran 'set_japanese_format.bat' first.
    pause
    exit /b
)

echo [INFO] Restoring original date/time format from backup...

:: Restore registry settings
reg import "%~dp0original_locale_backup.reg" >nul

:: Apply changes instantly
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

echo [INFO] Original format restored.
pause
endlocal 