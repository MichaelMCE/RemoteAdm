@ECHO OFF

xblite -lib minip2p.x
xmake -f minip2p.mak all 

copy minip2p.dll ..\minip2p.dll