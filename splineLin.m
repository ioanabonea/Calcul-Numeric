function [y] = splineLin( f, a, b, n, xp )

%splineLine 

    x = zeros(1,n);
    x(1) = a;
    h = (b - a)/n;
    
    for i = 2:n + 1
        x(i) = x(i-1) + h;
    end

    a = zeros(1,n);
    b = zeros(1,n);
    
    for j = 1:n
        a(j) = f(x(j));
        b(j) = (f(x(j+1)) - f(x(j)))/(x(j+1) - x(j));
    end
    
    for j = 1:n 
        if (xp >= x(j)) && (xp <= x(j+1))
            y = a(j) + b(j) * (xp - x(j));
            break;
        end
    end
end



