program hello_omp
    !$ use omp_lib ! OpenMP module の使用宣言
    !$ call omp_set_num_threads(4) ! 使用するスレッド数を指定
    !$OMP parallel ! 並列処理の開始
        print *, 'hello'
    !$OMP end parallel
end program hello_omp