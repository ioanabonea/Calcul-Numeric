function tema4()

    % Exercitiul 4
    
    A1 = [1 2 4; 3 8 14; 2 6 13];
    A2 = [4 2 2; 2 10 4; 2 4 6];
    A3 = [0 4 5; -1 -2 -3; 0 0 1];
    b = [1; 1; 1];
    
    % subpunctul a
 
    subsAsc = SubsAsc(A1,b)
    
    % subpunctul b
    
    [x, L, U] = DescLU(A1,b)
    
    % subpunctul c
    
    [x, L] = DescCholesky(A2,b)
    
    % subpunctul d
    
    [x, Q, R] = DescQR(A3,b)

end