@ECHO OFF

REM Batch file to set xblite Env. variables
REM Run this once per console session

SET XBLDIR=r:\xblite

SET PATH=%XBLDIR%\bin;%PATH%
SET LIB=%XBLDIR%\lib;%LIB%
SET INCLUDE=%XBLDIR%\include;%INCLUDE%