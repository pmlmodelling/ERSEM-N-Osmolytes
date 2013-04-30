#
# Makefile to build the passive tracer model
#

include ../../../Rules.make

DOCSRC	= nutrients.F90 dom.F90 pom.F90 gas_dynamics.F90 vphyt1.F90

OBJS    = ${LIBFABM}(nutrients.o) ${LIBFABM}(dom.o) ${LIBFABM}(pom.o) ${LIBFABM}(gas_dynamics.o) ${LIBFABM}(vphyt1.o)

all: objs

objs: ${OBJS}
	$(MOVE_MODULES_COMMAND)

doc:    $(DOCSRC)
	$(PROTEX) $(DOCSRC) > ../../../../doc/bb_passive.tex

clean:
	$(RM) *.o *~

#-----------------------------------------------------------------------
# Copyright (C) 2011 - Jorn Bruggeman (BB)                             !
#-----------------------------------------------------------------------
