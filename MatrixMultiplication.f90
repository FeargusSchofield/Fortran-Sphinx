program matrix_multiply
 
  use omp_lib
  
  implicit none
  
  integer, parameter :: n = 80
  integer :: i, j, k, l
  
  real :: a(n,n,n), b(n,n,n), c(n,n,n)
  
  real :: start_time, end_time, solve_time
  
  ! Initialize matrices a and b
  do i = 1, n
    do j = 1, n
      do k = 1,n
        a(i,j,k) = i + j + k
        b(i,j,k) = i - j + k
      end do
    end do
  end do
  
  ! Set the number of threads 
  call omp_set_num_threads(2)
  
  ! Start the timer
  start_time = omp_get_wtime()
  
  ! Perform matrix multiplication
  !$OMP PARALLEL DO PRIVATE(i,j,k) SHARED(a,b,c)
  do i = 1, n
    do j = 1, n
      do k = 1, n
        c(i,j,k) = 0.0
        do l = 1, n
          c(i,j,k) = c(i,j,k) + a(i,j,l) * b(l,j,k)
        end do
      end do
    end do
  end do
  !$OMP END PARALLEL DO
  
  ! Stop the timer
  end_time = omp_get_wtime()
  
  ! Calculate the solve time
  solve_time = end_time - start_time
  
  ! Print result
  print *, c(1,1,1)
  
  ! Print solve time
  print *, "Solve time:", solve_time, "seconds"
  
end program matrix_multiply

