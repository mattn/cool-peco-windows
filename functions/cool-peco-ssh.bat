@echo off

setlocal enabledelayedexpansion

set LF=^


set COOL_PECO_SSH_HOSTS=DUMMY!LF!
if "%COOL_PECO_SSH_COMMAND%" equ "" set COOL_PECO_SSH_COMMAND=ssh

for /f "tokens=2" %%I in ('findstr /R "^Host" %USERPROFILE%\.ssh\config') do (
  set COOL_PECO_SSH_HOSTS=!COOL_PECO_SSH_HOSTS!%%I!LF!
)

for /f %%i in ('set COOL_PECO_SSH_HOSTS ^| more +1 ^| peco') do (
  call %COOL_PECO_SSH_COMMAND% %%i
  break
)
