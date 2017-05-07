function t = trapez(f,a,b,m)

    x = linspace(a,b,m+1);
    h = (b - a)/m;
    sum = 0;
    
    for k = 2:m
        sum = sum + f(x(k));
    end
    
    t = h/2 * ( f(x(1)) + 2 * sum + f(x(m+1)));
end