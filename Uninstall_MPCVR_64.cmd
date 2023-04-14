@echo off
@net session >nul 2>&1
@if %errorlevel% NEQ 0 goto adminError
@cd /d "%~dp0"
%SystemRoot%\System32\regsvr32.exe MpcVideoRenderer64.ax /u /s
@if %errorlevel% NEQ 0 goto error
:success
@echo.
@echo.
@echo    Uninstallation succeeded.
@echo.
@goto done
:error
@echo.
@echo.
@echo    Uninstallation failed.
@echo.
@echo    An error occurred, more info may be shown above, please let us know about it.
@echo.
@goto done
:adminError
@echo.
@echo.
@echo    Uninstallation failed.
@echo.
@echo    You need to right click "Uninstall_MPCVR_64.cmd" and choose "run as admin".
@echo.
:done
@pause >NUL
