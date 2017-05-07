function [x,N] = MetGaussSiedelR(A,a,epsilon,sigma)

    x = zeros(2,size(A,1));
    N = 100;
    
    for k = 2:N
       rez = [];
       for i = 1:size(A,1)
           suma1 = 0;
           suma2 = 0;
           
           for j = 1:i-1
            suma1 = suma1 + A(i,j) * x(k,j);
           end
           
           for j = i+1:size(A,1)
            suma2 = suma2 + A(i,j) * x(k-1,j);
           end
           
           rez= [rez (1/A(i,i)) .* ( -sigma * suma1 + A(i,i) * (1 - sigma) * x(k-1,i) -sigma * suma2 + sigma^a(i))];
       end
       x = [x; rez];
    end
    
    x = x(end:end,:);
    N = k;
end