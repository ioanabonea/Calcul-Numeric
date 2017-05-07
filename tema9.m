function tema9()

%     Exercitiul 1
%     a) 
%     b)
    a = -3; 
    b = 3;
    x = linspace(a,b);
    f = @(x)x.^3 - x.^2 - 4*x + 4;
    fder = @(x)3*x.^2 - 2*x - 4;
    fder2 = @(x)6*x -2;
    
    n1 = 4;
    n2 = 6;
    n3 = 8;
    h1 = (b-a)/n1;
    h2 = (b-a)/n2;
    h3 = (b-a)/n3;
    
    rez1 = zeros(1,size(x,2));
    rez2 = zeros(1,size(x,2));
    rez3 = zeros(1,size(x,2));
    
    for i = 1:size(x,2)
        rez1(i) = MetRichardson(f, x(i), h1, n1, @phi1);
        rez2(i) = MetRichardson(f, x(i), h2, n2, @phi1);
        rez3(i) = MetRichardson(f, x(i), h3, n3, @phi1);
    end
    
    
    figure;

    plot(x,fder(x),'-.g*');
    hold on
    d1 = plot(x,rez1,'blue');
    set(d1,'linewidth',2); % default value is 0.5
    title('MetRichardson n = 4 derivata 1');
    hold off
    
    figure;

    plot(x,fder(x),'-.g*');
    hold on
    d2 = plot(x,rez2,'blue');
    set(d2,'linewidth',2); 
    title('MetRichardson n = 6 derivata 1');
    hold off
    
    figure;

    plot(x,fder(x),'-.g*');
    hold on
    d3 = plot(x,rez2,'blue');
    set(d3,'linewidth',2); 
    title('MetRichardson n = 8 derivata 1');
    hold off
    
%     c)

    error1 = abs(fder(x) - rez1);
    error2 = abs(fder(x) - rez2);
    error3 = abs(fder(x) - rez3);
    
    
    figure;
    plot(x,error1,'blue');
    title('MetRichardson eroare 1');
    figure;
    plot(x,error2,'green');
    title('MetRichardson eroare 2');
    figure;
    plot(x,error3,'red');
    title('MetRichardson eroare 3');
%     d)
    rezder2_1 = zeros(1,size(x,2));
    rezder2_2 = zeros(1,size(x,2));
    rezder2_3 = zeros(1,size(x,2));
    
    for i = 1:size(x,2)
        rezder2_1(i) = MetRichardson(f, x(i), h1, n1, @phi2);
        rezder2_2(i) = MetRichardson(f, x(i), h2, n2, @phi2);
        rezder2_3(i) = MetRichardson(f, x(i), h3, n3, @phi2);
    end
    
        figure;

    plot(x,fder2(x),'-.r*');
    hold on
    d1 = plot(x,rezder2_1,'blue');
    set(d1,'linewidth',2);
    title('MetRichardson n = 4 derivata 2');
    hold off
    
    figure;

    plot(x,fder2(x),'-.r*');
    hold on
    d2 = plot(x,rezder2_2,'blue');
    set(d2,'linewidth',2); 
    title('MetRichardson n = 6 derivata 2');
    hold off
    
    figure;

    plot(x,fder2(x),'-.r*');
    hold on
    d3 = plot(x,rezder2_3,'blue');
    set(d3,'linewidth',2); 
    title('MetRichardson n = 8 derivata 2');
    hold off
    
%     Exercitiul 3

    m = 100;
    
    intDr = Integrare(f,a,b,m,'dreptunghi')
    intTr = Integrare(f,a,b,m,'trapez')
    intSimp = Integrare(f,a,b,m,'Simpson')
    intNew = Integrare(f,a,b,m,'Newton')
    
    valIntegrala = integral(f,a,b)
    
    absErrDr = abs(valIntegrala - intDr)
    absErrTr = abs(valIntegrala - intTr)
    absErrSimp = abs(valIntegrala - intSimp)
    absErrNew = abs(valIntegrala - intNew)
    
    

end