program main
	!$ use omp_lib
	!$ use thread_priv_mod
	!$ call omp_set_dynamic(.false.)
	!$ call omp_set_num_threads(n)
	m = (/1,2,3/)
	!$OMP parallel copyin(m) !! 1st par.
	!$ m = m + omp_get_thread_num()
	!$ write(*,'("p1:id=",i2," m=",3i2)') omp_get_thread_num(), m
	!$OMP end parallel
	!$ call add1_print_m
end program main