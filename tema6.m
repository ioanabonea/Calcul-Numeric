function tema6()
    
    %Exercitiul 1
    A1 = [4 1; 1 3];
    b1 = [1; 2];

    x1 = GradConj(A1,b1)
   
    %Exercitiul 2
        
    A2 = [1 0 0; 0 -1 1; 0 1 -1];
    epsilon = 10^(-5);

    lambda = MetRot(A2,epsilon)
    
    %Exercitiul 4
        
    n = 20;
    A4 = zeros(n,n);
    b4 = zeros(n,1);
        
    for i = 1:n
        A4(i,i) = 2;
        b4(i,1) = i;
    end
        
    for i = 1:n-1
        A4(i,i+1) = 1;
        A4(i+1,i) = 1;
    end

    [x4, N] = MetGradConj2(A4,b4,epsilon)
end