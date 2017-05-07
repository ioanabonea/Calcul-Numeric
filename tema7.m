function tema7()

    functie = @(x)exp(2*x);
    a = -1;
    b = 1;
    n = 3;
    x = -1:0.5:1;

    polinomNaiva = MetNaiva(functie,a, b, n, x);
    [polinomLagrange, y] = MetLagrange (functie,a, b, n, 0.5)
    polinomNDD = MetNDD(functie,a,b,n);



    f= @(x)exp(2*x);
    x = [-1:0.01:1];
    plot(x,f(x), 'blue');
    size(x);
    for i = 1:length(x)
        [polinom,y(i)] = MetLagrange(f,-1,1,5,x(i));
        P(i) = abs(y(i) - f(x(i)));
    end
    hold on
    plot(x,y,'color','red');
    plot(x,P,'color','green');
    end