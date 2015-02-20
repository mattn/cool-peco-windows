@echo off

setlocal enabledelayedexpansion

set CWD=%~dp0
set FPATH=%CWD%functions

if "%1" equ "" goto usage
call %FPATH%\cool-peco-%1.bat
exit /b 0

:usage
echo cool-peco
for %%F in (%FPATH%\*.bat) do (
  set F=%%~nF
  echo   !F:~10!
)
