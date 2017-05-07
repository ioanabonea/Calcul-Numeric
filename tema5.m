function tema5()

    A1 = [0.2 0.01 0; 0 1 0.04; 0 0.02 1];
    A2 = [4 1 2; 0 3 1; 2 4 8];
    A3 = [4 2 2; 2 10 4; 2 4 6];
    a1 = [1.5; 2; 2.5;];
    a2 = [1; 2; 3];
    a3 = [3; 2; 1];
    epsilon = 10^(-5);
    sigma = 0.1;
    p = 10;

    [x] = MetJacobi(A1,a1,epsilon)
    [x] = MetJacobiDDL(A2,a2,epsilon)
    [x,N] = MetJacobiR(A3,a3,epsilon,sigma)
    [x,N] = MetJacobiRO(A3,a3,epsilon,p)
    [x,N] = MetGaussSiedelR(A3,a3,epsilon,sigma)
    [x,N] = MetGaussSiedelRO(A3,a3,epsilon,p)
    
end