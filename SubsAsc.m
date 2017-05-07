function [x] = SubsAsc(A,b)

    x = zeros(1,size(A,1));
    x(1) = b(1)/A(1,1);
    
    for k = 2:size(A,1)
        s = 0;
        for j = 1:k-1
            s = s + A(k,j) * x(j);
        end
        x(k) = (1/A(k,k))*(b(k)-s);
    end
end