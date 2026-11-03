@for /f "tokens=2 delims=:." %%a in ('chcp') do @set "_opm_cp=%%a"
@chcp 65001 > nul
@call oscript "%~dp0..\1testrunner\src\main.os" %*
@set _opm_err=%ERRORLEVEL%
@chcp %_opm_cp% > nul
@exit /b %_opm_err%
