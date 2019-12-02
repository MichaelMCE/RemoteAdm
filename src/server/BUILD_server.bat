@ECHO OFF

xblite server.x
xmake -f server.mak all

copy server.exe ..\server.exe