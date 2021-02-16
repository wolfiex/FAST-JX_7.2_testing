# Makefile for JX
#------------------------------------------------------------------------------
#module load intel/19.0.4  
OBJ   = cmn_fjx_mod.o fjx_sub_mod.o fjx_init_mod.o cld_sub_mod.o fjx72.o

FC    = ifort
FLAGS = -O2 -ip -fpp -W0 -assume byterecl

%.o: %.f
	$(FC) $(FLAGS) -c $<

jx    : $(OBJ)
	$(FC) $(FLAGS) -o JX70 $(OBJ)

#------------------------ Cleaning -----------------------------------

clean :
	/bin/rm fort.* *.o *.s *.mod core




# PC compiler instructions (digital fortran)
compile: 
	$(FC) $(FLAGS) -c cmn_fjx_mod.F90
	$(FC) $(FLAGS) -c fjx_sub_mod.F90
	$(FC) $(FLAGS) -c fjx_init_mod.F90
	$(FC) $(FLAGS) -c cld_sub_mod.F90
        #  and if no other *.obj in directory:
	#$(FC) $(FLAGS)  fjx72.F90 *.obj

	$(FC) $(FLAGS) -c fjx72.f90


