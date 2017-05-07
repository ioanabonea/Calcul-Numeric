function [x, L, U] = DescLU(A, b)

    L = zeros(size(A));
    U = zeros(size(A));
    n = size(A,1);
    
    ok = 1;
    
    for i = 1:size(A,1)
        if det(A(1:i,1:i,1)) == 0
            ok =0;
        end
    end
    
    U(1,1:n) = A(1,1:n);
    L(1:n,1) = A(1:n,1)/U(1,1);

    if ok == 1
        for k = 2:n
            for j = k:n
                U(k,j) = A(k,j) - sum(L(k,1:k-1)*U(1:k-1,j));
            end 
            
            for i = k:n
                L(i,k) = (1/U(k,k)) * (A(i,k) - sum(L(i,1:k-1)*U(1:k-1,k)));
            end
        end
        
        y = SubsAsc(L,b);
        x = SubsDesc(U,y);
        
    else 
        disp('Determinantii de colt sunt nuli');
    end

end