rem call server.bat

del "-debugserver.exe"
del "minip2p0.dll"
del "c:\windows\system32\minip2p.dll"
del "c:\windows\system32\minip2p0.dll"
del "c:\windows\system32\minip2p1.dll"

del *.bak
ren "server.exe" "-debugserver.exe"
copy "minip2p.dll" "c:\windows\system32\minip2p.dll"

exit


