VERSION = 6.2


# Paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/include/X11
X11LIB = /usr/lib/X11


# Xinerama (comment if you don't want it)
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA


# Freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC  = /usr/include/freetype2


# Includes and Libs
INCS = -I${X11INC} -I${FREETYPEINC}
LIBS = -L${X11LIB} -lX11 ${XINERAMALIBS} ${FREETYPELIBS}


# Flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os ${INCS} ${CPPFLAGS}
LDFLAGS  = ${LIBS}


# Compiler and Linker
CC = cc
