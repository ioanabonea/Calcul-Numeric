function tema1()

    % Exercitiul 2
    
    functie = @(x)x.^3-7.*x.^2+14.*x-6;
    
    % subpunctul a
    x = 0:0.001:4;
    y = functie(x);
    hold on
    plot(x,y)
    
    
    % subpunctul b
    
    nrPasi = 100;
    % intervalul 1
    st = 0;
    dr = 1;
    [sol1] = metodaBisectiei(functie,st,dr,nrPasi)
    
    % intervalul 2
    st = 1;
    dr = 3.2;
    [sol2] = metodaBisectiei(functie,st,dr,nrPasi)
    
    % intervalul 3
    st = 3.2;
    dr = 4;
    [sol3] = metodaBisectiei(functie,st,dr,nrPasi)
    
    plot(sol3,functie(sol3),'*');
    hold off
    
    % Exercitiul 3
    
    % subpunctul a
    
    functia1 = @(xx)exp(1).^xx - 2;
    functia2 = @(xx)cos(exp(1).^xx - 2);
    
    xx = 0:0.001:10;
    y1 = functia1(xx);
    y2 = functia2(xx);
    
    plot(xx,y1,'r')
    hold on
    plot(xx,y2,'b')
    hold off
    
    % subpunctul b
    epsilon = 10^(-5);
    a = 0.5;
    b = 1.5;
    
    functia3 = @(xxx)cos(exp(1).^xxx - 2) - exp(1).^xxx + 2;
    [c_solfin, nrPasiFin] = metodaBisectieiEps(functia3, a, b, epsilon)
    
    % Exercitiul 4
    c = 0;
    d = 5;
    functia4 = @(xxxx)xxxx - sqrt(3);
    [c_solfin4, nrPasiFin4] = metodaBisectieiEps(functia4, c, d, epsilon)
    
    % Exercitiul 7
    
    functiaNR = @(var)cos(exp(1).^var - 2) - exp(1).^var + 2;
    functieNRDeriv = @(var2)-exp(1).^var2-exp(1).^var2*sin(exp(1).^var2-2);
    x0 = 1;
    
    
    [solNR,pasiNR] = metodaNewtonRapshon( functiaNR, functieNRDeriv,x0,epsilon) %face 3 pasi si bi 16 nice
    [solBi,pasiBi] = metodaBisectieiEps(functiaNR,a,b,epsilon) % sol 1.0076
    
end