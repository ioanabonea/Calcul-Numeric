function [x] = SubsDesc(A,b)
    
    n = size(b,1);
    x = zeros(1,n);
    
    for k = n:-1:1
        suma = 0;
        for j = k+1:n
            suma = suma + A(k,j) * x(j);
        end
        x(k) = (1/A(k,k)) * (b(k)-suma);
    end
    
end