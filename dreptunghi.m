function d = dreptunghi(f,a,b,m)

    x = linspace(a,b,2*m+1);
    h = (b - a)/(2 * m);
    sum = 0;
    
    for k = 1:m
        sum = sum + f(x(2*k));
    end
    
    d = 2 * h * sum;
    
end