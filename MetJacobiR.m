function [x,N] = MetJacobiR(A,a,epsilon,sigma)

    D = diag(A) .* eye(size(A,1));
    B = eye(size(A,1)) - sigma.*D^(-1)*A;
    b = sigma.*D^(-1) * a;
    
    x = zeros(1,size(A,1));
    x = [x; B .* x(1,:) + b];

    k = 2;
    while normamatrinf(x(k,:) - x(k-1,:)) > epsilon  
          x = [x; B .* x(k-1,:) + b];
          k = k + 1;
    end
    
    
    x = x(end:end,:);
    N = k;
end