program scope_test
  !$ use omp_lib
  integer :: ms = 100, init_val = 10
  integer mp
  mp = init_val
  !$ call omp_set_dynamic(.false.)
  !$ call omp_set_num_threads(2)
  write(*,*) 'serial regiion, mp, ms = ', mp, ms
  
  !$OMP parallel default(none) &
  !$OMP firstprivate(mp) shared(ms)
  !$ mp = mp + omp_get_thread_num()
  !$ write(*,*) 'id, mp, ms = ', omp_get_thread_num(), mp, ms
  !$OMP end parallel
  write(*,*) 'serial region, mp, ms = ', mp, ms
end program scope_test
