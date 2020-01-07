TARGET = go.out
# gfortran ver (only debug) (not work)
#COMPILE = gfortran
# for debug
#OPTION =  -fopenmp
LFLG = -liomp5
# -fopenmp openMP
# -pedantic Fortran 標準機能外の機能の利用を警告
# -Wall 全ての警告メッセージを警告
# -ffpe-trap=invalid,zero,overflow -fbacktrace
#intel ver
COMPILE = ifort
# for debug test
#OPTION = -r8 -heap-arrays -CB -traceback -fpe0 -qopenmp # only Mac OS
#OPTION = -mcmodel=large -CB -traceback -fpe0
# for precise calc.
# OPTION = -r8 -O3 -mcmodel=large -xHOST -ipo -prec-div -fp-model precise
#OPTION = -O3 -mcmodel=large -xHOST -ipo -prec-div -fp-model precise -qopenmp (not work)
OPTION = -qopenmp


OBJECTS =  thread_priv_mod.o add1_print_m.o main.o
#			print_mydata.o print_variables.o 
COMMMON_MOD = thread_priv_mod.f90

.SUFFIXES : .o .f90

.f90.o :
	${COMPILE} -c $< ${OPTION} 

${TARGET} : ${OBJECTS}
	${COMPILE} ${OPTION} -o $@ ${OBJECTS}

${OBJECTS} : ${COMMMON_MOD}

clean :
	rm  -f ${TARGET} ${OBJECTS} *.mod *.o *.out *.plt *.zip *.ndat *.nbin ./tecp/*  ./result/* *.d field.bin res.his *.csv
