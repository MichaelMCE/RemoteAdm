@ECHO OFF

xblite client.x
xmake -f client.mak all
copy client.exe ..\client.exe
