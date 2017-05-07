function [x] = MetJacobiDDL(A,a,epsilon)

    D = diag(A) .* eye(size(A,1));
    B = eye(size(A,1)) - D^(-1)*A;
    b = D^(-1) * a;
    q = normamatrinf(B); 
    x = zeros(1,size(A,1));
    x = [x; B .* x(1,:) + b];
    
    ok = 1;
    for i = 1:size(A,1)
        if A(i,i) <= sum(A(i,:))
            ok = 0;
        end
    end
    
    if ok == 0
        disp('Metoda nu e dominanta pe linii');
    else
        k = 1;
        while (((q^k)/(1 - q)) * normamatrinf(x(2,:) - x(1,:))) > epsilon  
                x = [x; B .* x(k,:) + b];
                k = k + 1;
        end
    end
    
    x = x(end:end,:);
end