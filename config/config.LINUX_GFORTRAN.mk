# Config File for LINUX and INTEL Compiler
AR       = ar
AR_FLAGS = -rvs
RM       = /bin/rm -rf
FC       = gfortran
FFLAGS   = -O2 -fdefault-real-8 -fPIC 

.SUFFIXES: .o .f .f90

.f.o:	
	$(FC) $(FFLAGS) -c $< -o $*.o
	@echo
	@echo "        --- Compiled $*.f successfully ---"
	@echo	

.f90.o:	
	$(FC) $(FFLAGS) -c $< -o $*.o
	@echo
	@echo "        --- Compiled $*.f90 successfully ---"
	@echo	
