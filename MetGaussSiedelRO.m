function [x,N] = MetGaussSiedelRO(A,a,epsilon,p)

    sigma = (2 * 1:p-1)/(normamatrinf(A) .* p);
    N = zeros(1,size(sigma,2));
    
    for i = 1:size(sigma,2)
        [k, N] = MetGaussSiedelR(A, a, epsilon, sigma(i));
        val(i) = N;
    end

    [k, poz] = min(val);
    
    sigmaOptim = (2 * poz)/(normamatrinf(A) * p);
    
    [x, N] = MetGaussSiedelR(A,a, epsilon, sigmaOptim);

end