@echo off
@cd /d "%~dp0"
%SystemRoot%\System32\regsvr32.exe MpcVideoRenderer.ax
@if %errorlevel% NEQ 0 goto error
:success
@echo.
@echo.
@echo    Installation succeeded.
@echo.
@echo    Please do not delete the MpcVideoRenderer.ax file.
@echo    The installer has not copied the files anywhere.
@echo.
@goto done
:error
@echo.
@echo.
@echo    Installation failed.
@echo.
@echo    An error occurred, more info may be shown above, please let us know about it.
@echo    You may need to right click "Install_MPCVR_32.cmd" and choose "run as admin".
@echo.
:done
@pause >NUL
