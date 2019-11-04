# Note: the next six lines are modified by the makefile-generator in xcowlite.x.
APP       = minip2p
LIBS      =  xbl.lib kernel32.lib wsock32.lib zlib.lib advapi32.lib msvcrt.lib winmm.lib
OBJS      = $(APP).obj
START     = START /W
XBLITE    = xblite -lib
SUBSYSTEM = WINDOWS,4.0

.SUFFIXES: .x .xl .xbl

# The linker
LD          = link

# Flags for the linker
#LDFLAGS     = /NODEFAULTLIB /SUBSYSTEM:$(SUBSYSTEM) /INCREMENTAL:NO /RELEASE /NOLOGO /OPT:REF /ALIGN:4096

# Flags for the linker when building .dll-files
LDFLAGS_DLL = -dll -subsystem:$(SUBSYSTEM) -entry:DllMain

# Needed resources
RESOURCES   = $(APP).rbj

# The assembler
AS          = goasm

# All needed standard libraries.
STDLIBS     = xblib.lib kernel32.lib advapi32.lib user32.lib gdi32.lib \
              comdlg32.lib winspool.lib

# The main directory for \xblite
DIR         = $(XBLDIR)

# Default rules to compile a XBLite files into assembly files.
.x.asm: 
	$(XBLITE) -lib $?

.xl.asm:
	$(XBLITE) -lib $?

.xbl.asm:
	$(XBLITE) -lib $?

all: $(APP).dll

$(APP).dll: $(APP).obj $(APP).def $(APP).rbj
	$(LD) $(LDFLAGS_DLL) -out:$(APP).dll -def:$(APP).def $(OBJS) $(RESOURCES) $(LIBS) $(STDLIBS)

$(APP).rbj: $(APP).res
	cvtres -i386 -NOLOGO $(APP).res -o $(APP).rbj

$(APP).res: $(APP).rc
	rc -i$(DIR)\images -r -fo $(APP).res $(APP).rc

$(APP).obj: $(APP).asm
	$(AS) $(APP).asm

#$(APP).asm: $(APP).x
#	$(START) $(XBLITE) $(APP).x -lib

clean:
	IF EXIST $(APP).def DEL $(APP).def
	IF EXIST $(APP).obj DEL $(APP).obj
	IF EXIST $(APP).asm DEL $(APP).asm
	IF EXIST $(APP).exp DEL $(APP).exp
	IF EXIST $(APP).res DEL $(APP).res
	IF EXIST $(APP).rbj DEL $(APP).rbj
	COPY /B $(APP).lib /B $(DIR)\lib\$(APP).lib /Y
	COPY /A $(APP).dec /A $(DIR)\include\$(APP).dec /Y
	COPY /B $(APP).dll /B $(DIR)\programs\$(APP).dll /Y



