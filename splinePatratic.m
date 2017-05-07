function [ y ] = splinePatratic(f, fDerivata, a, b, n, xp)
%splinePatratic 

    x = zeros(1,n);
    x(1) = a;
    h = (b - a)/n;
    
    for i = 2:n + 1
        x(i) = x(i-1) + h;
    end

    a = zeros(1,n);
    b = zeros(1,n);
    c = zeros(1,n);
    
    b(1) = fDerivata(x(1));
    for j = 1:n
        a(j) = f(x(j));
        
        if j <= n -1
            b(j+1) = -b(j) + (2/h)*(f(x(j+1)) - f(x(j)));
        end
        
        c(j) = (1/h^2) * (f(x(j+1)) - f(x(j))) - h*b(j);
    end
    
    y = 0;
    for j = 1:n 
        if (xp >= x(j)) && (xp <= x(j+1))
            y = a(j) + b(j) * (xp - x(j)) + c(j) * (xp - x(j))^2;
        end
    end

end

