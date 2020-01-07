program main
	!$ use omp_lib
	integer myid
  
	!$OMP threadprivate(myid)
	!$ call omp_set_dynamic(.false.)
	!$ call omp_set_num_threads(3)
	!$OMP parallel !! 1st par.
	!$ myid = omp_get_thread_num()
	!$ write(*,*) 'p-region1 : myid = ', myid
	!$OMP end parallel
	!$OMP parallel !! 2nd par.
	!$ call print_myid(myid)
	!$OMP end parallel
  
  end program main