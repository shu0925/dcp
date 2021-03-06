# Copyright 04/17/07 Sun Microsystems, Inc. All Rights Reserved
# @(#)Makefile 1.3 07/04/17 SMI


###############################################################################
# This Makefile builds the prime demo code for the data race detection tool 
#	It must be edited to select various options: OS, compiler, etc.
#       The last option in each group is the one that obtains

# Select the OS type, and comment out the other one
	OSTYPE  = Solaris

# Select a Compiler type, and comment out the other one
	CCTYPE = DEFAULT

# Select an architecture (32/64 bit), for the compiler type chosen,
# and comment out the others
	WSIZE = 64
	WSIZE = 32

# End of user selections
###############################################################################

CC-DEFAULT = cc
COLLECT    = collect
ER_PRINT   = er_print
THA        = tha
ER_RM      = er_rm
ER_SRC     = er_src


CC-GNU     = gcc
CC         = ${CC-${CCTYPE}}

SHAREDOPT-DEFAULT	= -Kpic
SHAREDOPT-GNU		= -fpic
SHAREDOPT		= ${SHAREDOPT-${CCTYPE}}

SHAREDLIBOPTS-Solaris   =
SHAREDLIBOPTS-Linux     = -rdynamic
SHAREDLIBOPTS           = $(SHAREDLIBOPTS-$(OSTYPE))

ARCH             = -m${WSIZE}

OPTS 		 = $(ARCH) -xinstrument=datarace -g

LD_FLAGS-DEFAULT = -G ${ARCH}
LD_FLAGS-GNU	 = -shared ${ARCH}
LD_FLAGS	 = ${LD_FLAGS-${CCTYPE}}

LLDLIBS 	 = $(LD_OPTS) -lm -lc

TARGETS= prime prime_omp prime_omp_fixed


compile:
	-$(CC) $(OPTS) $(SHAREDLIBOPTS) -o prime prime.c $(LLDLIBS)
	-$(CC) $(OPTS) $(SHAREDLIBOPTS) -xopenmp=noopt -o prime_omp prime_omp.c $(LLDLIBS)
	-$(CC) $(OPTS) $(SHAREDLIBOPTS) -xopenmp=noopt -o prime_omp_fixed prime_omp_fixed.c $(LLDLIBS)
	@echo " ---- Done building executables -----"

demo:
	-$(ER_RM) -f omp_race.er
	-$(COLLECT) -o omp_race.er -r race prime_omp
	-$(THA) omp_race.er

demo_fixed:
	-$(ER_RM) -f omp_fixed.er
	-$(COLLECT) -o omp_fixed.er -r race prime_omp_fixed
	-$(THA) omp_fixed.er

clean:
	-rm -f $(TARGETS)
	-$(ER_RM) -f *.er
	-rm -f *.o
	-rm -f core*
	-rm -f hs_err_pid*log
	-rm -f ipc_log

veryclean: clean
