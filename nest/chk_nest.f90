program chk_nest
  !$ use omp_lib
  integer man_id
  !$ write(*,*) 'nest status-1 = ', omp_get_nested()
  !$ call omp_set_nested(.true.)
  !$ write(*,*) 'nest status-2 = ', omp_get_nested()
  
  !$OMP parallel num_threads(2) &
  !$OMP private(main_id) ! parallel for parent
  !$ main_id = omp_get_thread_num()
  !$ call sub_nest(main_id)
  !$OMP end parallel
end program chk_nest

subroutine sub_nest(main_id)
  !$ use omp_lib
  integer main_id
  
  !$OMP parallel num_threads(2)
  !$ write(*,*) 'main/sub id = ', main_id, omp_get_thread_num()
  !$OMP end parallel
end subroutine sub_nest
