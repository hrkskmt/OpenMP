program chk_thread_private
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

end program chk_thread_private

subroutine print_myid(id)
  !$ use omp_lib
  integer id
  !$ write(*,*) 'p-reigion-sub : myid = ', omp_get_thread_num(), id
end subroutine print_myid
