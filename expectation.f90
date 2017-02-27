!Recursive network model
module cluster

contains

    subroutine TMatrix(datapoints , tau, mu, sigma_inv, denoms, expectation)
        !Generate recursive network corresponding
        !to model parameters provided as input
        !Output: max degree, degree list, edge list
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
    
end module cluster
