function tema3()

    % Exercitiul 2
    
    % subpunctul a
    A = [ 1 -3 3; 3 -5 3; 6 -6 4];
    norma2 = normaDoiMatrice(A)
    
    % subpunctul b
    numarConditionare = normaDoiMatrice(A) * normaDoiMatrice(A^(-1))
    
    % Exercitiul 3
    
    % subpunctul a
    
    M = [10 7 8 7; 7 5 6 5; 8 6 10 9; 7 5 9 10];
    b = [32; 23; 33; 31];
    
    x = inv(M) * b
        
    % subpunctul b
    
    bPerturbat = [32.1; 22.9; 33.1; 30.9];
    xBPerturbat = inv(M) * bPerturbat
    
    % subpunctul c
    
    Mperturbat = [10 7 8.1 7.2; 7.08 5.04 6 5; 8 5.98 9.89 9; 6.99 4.99 9 9.98];
    xMPerturbat = inv(Mperturbat) * b
    
    % la ambele se observa ca desi diferentele de valori nu sunt foarte
    % mari in matricea termenilor liberi, respectiv in matricea sistemului
    % valorile solutiei difera foarte mult
    
    % subpunctul d
    
    marimeUnu = normamatrinf(xBPerturbat) * normamatrinf(x)
    
    kInf = normamatrinf(M) * normamatrinf(M^(-1));
    marimeDoi = kInf * (normamatrinf(bPerturbat) * normamatrinf(b))
    
    % subpunctul e
    
    N =  M' * M;
    numarConditionare2 = sqrt(max(eigs(N))/min(eigs(N)))
    
    % Exercitiul 5
    
    MatSis = [0 1 -2; 1 -1 1; 1 0 -1];
    TermLib = [4; 6; 2];
    
    solutiiSis = SubsDesc(MatSis,TermLib)
    
    % Exercitiul 6
    
    solGaussFaraPivot = GaussFaraPiv( MatSis,TermLib)
    
    solGaussPivPart = GaussPivPart(MatSis,TermLib)
    
    solGaussPivTot = GaussPivTot(MatSis,TermLib)
    
    
end