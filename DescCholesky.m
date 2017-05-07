function [x, L] = DescCholesky(A,b)

    ok = 1;
    n = size(A,1);
    if A ~= A'
        disp('Matricea nu e simetrica');
        ok =0;
    end
    
    for i = 1:n
        if det(A(1:i,1:i,1)) < 0
            ok =0;
        end
    end
    
    if ok == 1
        L = zeros(size(A));
        L(1,1) = sqrt(A(1,1));
        L(:,1) = (1/L(1,1)) .* A(:,1); 
   
        for k = 2:n
            
            suma = sum(L(k,1:k-1).^2);
            L(k,k) = sqrt(A(k,k) - suma);
            
            for i = k:n

                suma2 = sum (L(i,1:k-1).*L(k,1:k-1));
                L(i,k) = (1/L(k,k)) .* (A(i,k) - suma2);
            end 
        end
        
        y = SubsAsc(L,b);
        x = SubsDesc(L',y);
        
    else
        disp('Matricea nu e pozitiv definita');
    end

end