function tema8()

    a = -1;
    b = 1;
    n = 4;
    x = 1;
    functie = @(x)exp(2*x);
    functieDerivata = @(x) 2*exp(2*x);
    rezFunctie = functie(a:0.1:b);
    j=1;
    for i= a:0.1:b
        rezLin(j)=splineLin(functie, a, b, n, i);
        rezPatr(j)=splinePatratic(functie,functieDerivata,a,b,n,i);
        rezCubic(j)=splineCubic(functie,functieDerivata,a,b,n,i);
        j=j+1;
    end
    
    abscisa = [1 2 3];
    ordonata = [2 3 5];
    S = spline(abscisa,ordonata);
    coefi = S.coefs(1,:) 

    figure;

    plot(rezFunctie,'red');
    hold on
    plot(rezLin,'blue');
    title('Spline Liniara');
    hold off

    figure;
    plot(rezFunctie,'red');
    hold on
    plot(rezPatr,'green');
    title('Spline Patratica');
    hold off

    figure;
    plot(rezFunctie,'blue');
    hold on
    plot(rezCubic,'black');
    title('Spline Cubica');
    hold off
end