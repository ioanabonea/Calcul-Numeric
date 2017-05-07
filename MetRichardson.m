function [df] = MetRichardson(f, x, h, n,phi)

    Q = zeros(n);
    
    for i = 1:n
        Q(i,1) = phi (f,x,h/2^(i-1));
    end
    
    for j = 2:n
        for i = j:n
            Q(i,j) = Q(i,j-1) + 1/(2^(j-1)-1)*(Q(i,j-1) - Q(i-1,j-1));
        end
    end
    
    df =  Q(n,n);
end

