subroutine print_myid(id)
	!$ use omp_lib
	integer id
	!$ write(*,*) 'p-reigion-sub : myid = ', omp_get_thread_num(), id
  end subroutine print_myid