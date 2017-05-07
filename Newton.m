function n = Newton(f,a,b,m)

    x = linspace(a,b,m+1);
    h = (b - a)/m;
    sum = 0;
            
    for k=1:m
        sum = sum + f(x(k+1)) + 3 * f((2*x(k+1) + x(k))/3) + 3 * f((x(k+1) + 2*x(k))/3) + f(x(k));
    end
    n = h/8 * sum;
end