@echo off

dir /S /B | findstr /V /R \\\. | peco
