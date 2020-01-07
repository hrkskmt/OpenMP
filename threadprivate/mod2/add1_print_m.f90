subroutine add1_print_m
  !$ use omp_lib
  !$ use thread_priv_mod
  
  !$OMP parallel
  !$ m = m + 1
  !$ write(*,'("p2:id=",i2," m=",3i2)')  omp_get_thread_num(), m
  !$OMP end parallel

end subroutine add1_print_m
