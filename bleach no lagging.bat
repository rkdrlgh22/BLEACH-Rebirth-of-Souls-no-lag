@echo off
reg add "HKEY_CURRENT_USER\Control Panel\International" /v sDecimal /t REG_SZ /d . /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v sList /t REG_SZ /d , /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v SMonDecimalSep /t REG_SZ /d . /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v SMonThousandSep /t REG_SZ /d , /f
echo DONE, GG
PAUSE
