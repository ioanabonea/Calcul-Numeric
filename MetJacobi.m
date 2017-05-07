function [x] = MetJacobi(A,a,epsilon)

    q = normamatrinf(eye(size(A,1)) - A);
    
    x = zeros(1,size(A,1));
    B = eye(size(A,1)) - A;
    x = [x; B .* x(1,:) + a];
    
    if q >= 1
        disp('Metoda Jacobi nu asigura convergenta');
    else
        k = 1;
        while (((q^k)/(1 - q)) * normamatrinf(x(2,:) - x(1,:))) > epsilon  
                x = [x; B .* x(k,:) + a];
                k = k + 1;
        end
    end
    
    x = x(end:end,:);
end