 @echo off
setlocal

echo [INFO] Saving current date/time format...

:: Export current regional settings to a .reg file for backup
reg export "HKCU\Control Panel\International" "%~dp0original_locale_backup.reg" /y >nul

echo [INFO] Backing up to: %~dp0original_locale_backup.reg

:: Set Japanese locale formats
reg add "HKCU\Control Panel\International" /v sShortDate /d "yyyy/MM/dd" /f >nul
reg add "HKCU\Control Panel\International" /v sTimeFormat /d "HH:mm:ss" /f >nul
reg add "HKCU\Control Panel\International" /v LocaleName /d "ja-JP" /f >nul

:: Apply changes instantly
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

echo [INFO] Japanese date/time format applied.
pause
endlocal