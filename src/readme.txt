

	A Remote Administration Application
	(requiries WindowsNT 5.0 or greater)


	all commands must be preceded by a single forward slash. ie /	

	/connect ipaddress port		connects to a server (also referred to as 'host')
					eg: /connect 192.1687.1.3 404 (default port = 404)
	/disconnect			close connection to host
	/status				get host status
	/getenv				get host user environment variables
	/proclist			acquire host process list
	/prockill pid			soft process kill, pid is as returned via /proclist or the task manager
	/getdrives			add remote drive(s) to tree, excluding removable media
					refer to /tree for adding removable media
	/fileinfo drive:\path\		return properties of a file or folder.
					equivalent to 'propertiesin the context menu
					eg: /fileinfo n:\*\		root directory
					eg: /fileinfo g:\games\
					eg: /fileinfo c:\temp\bin\zlib.dll
	/tree drive:\path\		add drive or folder to tree (as root)
					eg: /tree a:\
					eg: /tree c:\windows\
					updates to the tree nodes (directories) are on a request basis.
					ie, only when a tree or node is selected will the directory request be made to the server.
	/rename newname			rename item selected in the tree, beit a folder or file. use via the context menu
	/newdir name\			create new folder at selected folder item in the tree. use via the context menu
	/sysmenu on/off			enable or disable server side systray icon.
					eg: /sysmenu on
					eg: /sysmenu off
	/popup title|message		display a serverside popup message, use | (pipe char) to seperate title from message
					eg: /popup this is a title|this is the message
	/shell drive:\pathtofile arg	create new process - execute background program.
					eg: /shell explorer.exe
	/shutdown			shuts down the service
					note that after a '/shutdown' has been issued it is then nolonger possible
					to remotely restart the service
	/lan & /wan			figure these two out for yourself.
	/logoff				logoff host
	/clear 1-5 			clears each tab display (i think..)


	/getslog			get session event log
	/getelog			get complete server event log

	/strevent on/off		Stream events to the stream tab

	/stron				desktop streaming on
	/stroff				^^ off
	/strp port			set streaming port	- default 6112
	/strq 0-100			set jpeg quality	- default 25, lower value = less quality, smaller filesize
	/strt ms			set delay between screen caps, in ms. delay should not be shorter than the time
					taken to acquire+transfer one cap

	other commands: poweroff, reboot, logoff

	check context menu for other features
	and use the menu for downloading and uploadng (small..) files to and from the host.


	to install server as a service type in a console window (with Administrator access rights):
	server.exe -install
	this will also start the service and autostart at Windows bootup

	any copy of the executable in any location may then be used to perform the following.
	to remove service:
	server.exe -remove

	to start:
	server.exe -start

	to stop:
	server.exe -stop

	to refresh the executable path:
	server.exe -refresh

	or use the supplied batch files to start and stop
	..or run services.msc to further admin this service

	server can also be initiated as a standard application with a systray icon, by appending  '-debug'
	to the server name such as: -debugserver.exe

	note: when running as a service all 4 .dll's should be placed in the %systemroot%/system32/ folder.
	(otherwise bad things happen)










