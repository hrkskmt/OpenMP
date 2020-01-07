TARGET = hello

COMPILE= ifort

OBJECTS = hello_omp.o

.SUFFIXES : .f90 .o 

.f90.o :
	${COMPILE} -c $<

${TARGET} : ${OBJECTS}
	${COMPILE} ${OBJECTS} -o $@ 

clean :
	rm -f *.o *.mod
