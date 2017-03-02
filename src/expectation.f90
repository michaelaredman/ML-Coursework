module cluster

contains

    subroutine TMatrix(datapoints , tau, mu, sigma_inv, denoms, expectation)
       
        implicit none
        integer nPoints, nDims, kn, i, k
        real(kind=8) :: pi
        real(kind=8), intent(in), dimension(:) :: tau, denoms
        real(kind=8), intent(in), dimension(:, :) :: datapoints, mu
        real(kind=8), intent(in), dimension(:, :, :) :: sigma_inv
        real(kind=8), dimension(size(datapoints, 1), size(tau)), intent(out) :: expectation
        real(kind=8), allocatable, dimension(:, :) :: probs
        real(kind=8), dimension(size(datapoints, 2)) :: point

        nPoints = size(datapoints, 1)
        nDims = size(datapoints, 2)
        kn = size(tau)
        pi = 3.14159265368979

        allocate(probs(nPoints, kn))

        do i=1,nPoints
            point = datapoints(i,:)
            do k=1,kn
                probs(i, k) = normalPdf(point, mu(k,:), sigma_inv(k,:,:), denoms(k))
            end do
        end do

        do i=1,nPoints
            point = datapoints(i,:)
            do k=1,kn
                expectation(i, k) = tau(k)*probs(i, k)/SUM(tau*probs(i, :))
            end do
        end do
        
    end subroutine TMatrix

    function normalPdf(x, mu, sigma_inv, denom)
        real(kind=8), intent(in), dimension(:) :: mu, x
        real(kind=8), intent(in), dimension(:, :) :: sigma_inv
        real(kind=8), intent(in) :: denom
        real(kind=8) :: normalPdf
        real(kind=8), dimension(size(mu)) :: intermediate
        intermediate = MATMUL(x - mu, sigma_inv)
        normalPdf = exp(-0.5*DOT_PRODUCT(intermediate, x - mu))/denom
    end function normalPdf


    subroutine sigma_update(datapoints, mu, expectation, sigma)
        integer nk, nPoints, nDims, k, i, j, m
        real(kind=8), intent(in), dimension(:, :) :: datapoints, expectation, mu
        !f2py depend(mu) sigma
        real(kind=8), intent(out), dimension(size(mu, 1), size(mu, 2), size(mu, 2)) :: sigma
        real(kind=8), dimension(size(datapoints, 1), size(mu, 2), size(mu, 2)) :: sum_terms

        nk = size(mu, 1)
        nDims = size(mu, 2)
        nPoints = size(datapoints, 1)

        do k=1,nk
            do i=1,nDims
                do j=1,nDims
                    do m=1,nPoints
                        sum_terms(m, i, j) = expectation(m, k)*(datapoints(m, i) - mu(k, i))*(datapoints(m, j) - mu(k , j))
                    end do
                end do
            end do
            sigma(k, :, :) = 1.d0/SUM(expectation(:, k)) * SUM(sum_terms, dim=1)
        end do
    
    end subroutine

    subroutine kernal(xN, yN, xT, std, period, lambda, var_se, var_sin, muT, sigmaT)
        implicit none
        integer :: i, N, T
        real(kind=8), intent(in) :: lambda, std, period, var_se, var_sin
        real(kind=8), intent(in), dimension(:) :: xN, yN, xT
        real(kind=8), intent(out), dimension(size(xT)) :: muT
        real(kind=8), intent(out), dimension(size(xT), size(xT)) :: sigmaT

        real(kind=8), dimension(size(xT), size(xT)) :: KT
        real(kind=8), dimension(size(xN), size(xN)) :: KN, KN_edited, KN_inv
        real(kind=8), dimension(size(xN), size(xT)) :: KNT
        
        N = size(xN)
        T = size(xT)

        KN = K_matrix(xN, xN, period, lambda, var_se, var_sin)
        KT = K_matrix(xT, xT, period, lambda, var_se, var_sin)
        KNT = K_matrix(xN, xT, period, lambda, var_se, var_sin)

        KN_edited = KN
        do i=1,N
            KN_edited(i, i) = KN_edited(i, i) + std*std
        end do

        KN_inv = inv(KN_edited)
        
        muT = MATMUL(MATMUL(TRANSPOSE(KNT), KN_inv), yN)
        sigmaT = KT - MATMUL(TRANSPOSE(KNT), MATMUL(KN_inv, KNT))
        
    end subroutine kernal

    function K_matrix(points1, points2, period, lambda, var_se, var_sin)
        implicit none
        real(kind=8), intent(in), dimension(:) :: points1, points2
        real(kind=8), intent(in) :: lambda, period, var_se, var_sin
        real(kind=8), dimension(size(points1), size(points2)) :: K_matrix
        !f2py depend(points1, points2) K_matrix
        integer :: N1, N2, i, j
        N1 = size(points1)
        N2 = size(points2)

        do i=1,N1
            do j=1,N2
                K_matrix(i, j) = comb_cov(points1(i), points2(j), period, lambda, var_se, var_sin)
            end do
        end do

    end function K_matrix

    function se_cov(point1, point2, lambda, var_se)
        implicit none
        real(kind=8), intent(in) :: point1, point2, lambda, var_se
        real(kind=8) :: se_cov
        se_cov = var_se*exp(-0.5*((point1 - point2)/lambda)*((point1 - point2)/lambda))
    end function se_cov

    function sin_cov(point1, point2, period, var_sin)
        implicit none
        real(kind=8), intent(in) :: point1, point2, period, var_sin
        real(kind=8) :: sin_cov
        sin_cov = var_sin*exp(-2*(sin((point1 - point2)/period))*(sin((point1 - point2)/period)))
    end function sin_cov

    function comb_cov(point1, point2, period, lambda, var_se, var_sin)
        implicit none
        real(kind=8), intent(in) :: point1, point2, period, lambda, var_se, var_sin
        real(kind=8) :: comb_cov
        comb_cov = sin_cov(point1, point2, period, var_sin) + se_cov(point1, point2, lambda, var_se)
    end function comb_cov

    
    ! This function is taken from: http://fortranwiki.org/fortran/show/Matrix+inversion
    ! Returns the inverse of a matrix calculated by finding the LU
    ! decomposition.  Depends on LAPACK. 
    function inv(A) result(Ainv)
        real(kind=8), dimension(:,:), intent(in) :: A
        real(kind=8), dimension(size(A,1),size(A,2)) :: Ainv

        real(kind=8), dimension(size(A,1)) :: work  ! work array for LAPACK
        integer, dimension(size(A,1)) :: ipiv   ! pivot indices
        integer :: n, info

        ! External procedures defined in LAPACK
        external DGETRF
        external DGETRI

        ! Store A in Ainv to prevent it from being overwritten by LAPACK
        Ainv = A
        n = size(A,1)

        ! DGETRF computes an LU factorization of a general M-by-N matrix A
        ! using partial pivoting with row interchanges.
        call DGETRF(n, n, Ainv, n, ipiv, info)

        if (info /= 0) then
           stop 'Matrix is numerically singular!'
        end if

        ! DGETRI computes the inverse of a matrix using the LU factorization
        ! computed by DGETRF.
        call DGETRI(n, Ainv, n, ipiv, work, n, info)

        if (info /= 0) then
           stop 'Matrix inversion failed!'
        end if
    end function inv
    
end module cluster
