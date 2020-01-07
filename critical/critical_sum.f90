program critical_sum
  !$ use omp_lib
  implicit none
  integer psum, sum, i
  sum = 0
  !$ call omp_set_dynamic(.false.)
  !$ call omp_set_num_threads(3)
  !$omp parallel default(none) private(i,psum) shared(sum)
  ! sum in thread
  psum = 0
  !$OMP do
  do i = 1, 100
     psum = psum + i
  end do
  !$ write(*,*) 'id, psum = ', omp_get_thread_num(), psum
  ! sum in whole
  !$OMP critical
  sum = sum + psum
  !$OMP end critical
  !$OMP end parallel
  write(*,*) 'sum = ', sum
end program critical_sum
