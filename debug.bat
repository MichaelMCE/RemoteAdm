rem call server.bat

del "-debugserver.exe"
del "minip2p0.dll"
del "r:\WINNT\system32\minip2p.dll"
del "r:\WINNT\system32\minip2p0.dll"
del "r:\WINNT\system32\minip2p1.dll"

del *.bak
ren "server.exe" "-debugserver.exe"
copy "minip2p.dll" "r:\WINNT\system32\minip2p.dll"

exit


