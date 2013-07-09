# Makefile for the Octave modules used in RcppOctave
#
# Inspired from Dirk Eddelbuettel's randmt Octave module
# http://dirk.eddelbuettel.com/code/octave-mt.html
# Copyright (C) 1999 Dirk Eddelbuettel <edd@debian.org> 
#
# Copyright (C) 2011 Renaud Gaujoux
#
# Released under the GNU General Public License just like Octave

CC = gcc -std=gnu99
CFLAGS = -O2 -pipe -g -fPIC -Wportability -O6 -std=gnu99
CXXFLAGS = -O2 -pipe -g -fPIC -Wportability -O6

# Get flags for R
R_CPPFLAGS = -I/usr/share/R/include
R_LDFLAGS = -L/usr/lib/R/lib -lR

OCT_SOURCES = Rrng.cc
OCT_OBJECTS = utils.oct $(OCT_SOURCES:.cc=.oct)

.SUFFIXES: .cc .oct

all: $(OCT_OBJECTS)

utils.oct: utils.cc
	/usr/bin/mkoctfile -v utils.cc

.cc.oct:
	/usr/bin/mkoctfile -v ${R_CPPFLAGS} $(PKG_CPPFLAGS) ${R_LDFLAGS} $(PKG_LIBS) $<
	
clean:
	rm -vf *.o *~
	
clean-all: clean
	rm -vf *.oct
