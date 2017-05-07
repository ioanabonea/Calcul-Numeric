function [x,N] = MetJacobiRO(A,a,epsilon,p)

    for s = 1:p-1
        sigma = (2*s)/(normamatrinf(A) .* p);
    end
    
    n = size(sigma,2)
    V = zeros(1,n)
    
    for s = 1:n
        [val,V(s)] = MetJacobiR(A,a,epsilon,sigma); 
    end
    
    pozminim = min(V);
    sigmaOptim = (2*pozminim)/(normamatrinf(A) .* p);
    
    [x,N] = MetJacobiR(A,a,epsilon,sigmaOptim);
    
end 