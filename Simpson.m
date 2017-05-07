function s = Simpson(f,a,b,m)

    x = linspace(a,b,2*m+1);
    h = (b - a)/(2 * m);
    sum = 0;
    sum2 = 0;
    
    for k = 1:m
        sum = sum + f(x(2 * k));
    end
    
    for k = 1:m-1
        sum2 = sum2 + f(x(2 * k + 1));
    end
    
    s = h/3 * ( f(x(1)) + 4 * sum + 2 * sum2 + f(x(2*m+1)));
end