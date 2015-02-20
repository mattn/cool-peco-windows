@echo off

setlocal enabledelayedexpansion

set COOL_PECO_GIT_LOG_OUTPUT=
for /f %%i in ('"git log --oneline --decorate=full" ^| peco') do (
  set COOL_PECO_GIT_LOG_OUTPUT=%%i
  break
)
echo %COOL_PECO_GIT_LOG_OUTPUT%
