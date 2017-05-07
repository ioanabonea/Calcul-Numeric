function tema2()
    
    % Exercitiul 1
    functia1 = @(x)cos(exp(1).^x - 2) - exp(1).^x + 2;
    epsilon = 10^(-5);
    x0 = 0.5;
    x1 = 1.5;
    
    [solAprox1,nrPasi1] = metodaSecantei(functia1,x0,x1,epsilon)
    
    % Exercitiul 2
    
    [solAprox2,nrPasi2] = metodaFalseiPozitii(functia1,x0,x1,epsilon)
    
    % Exercitiul 3
    
    functia2 = @(xx)xx.^3-7.*xx.^2+14.*xx-6;
    functiaDer2 = @(yy)3.*yy.^2-14.*yy-6;
    c = 1;
    a = 0.5;
    b = 1.5;
    [solRN, nrPasiRN] = metodaNewtonRapshon( functia2,functiaDer2,c,epsilon)
    [solSec,nrPasiSec] = metodaSecantei(functia2,a,b,epsilon)
    [solFalsP,nrPasiFalsP] = metodaFalseiPozitii(functia2,a,b,epsilon)
    
    % Exercitiul 4
    
    vec = [1 2 3 4 5 6 7 8 9];
    mat = [1 2 3; 4 5 6; 7 8 9];
    
    normaVect1 = normavect1(vec)
    normaVect2 = normavect2(vec)
    normaVectInf = normavectinf(vec)
    normaMatrInf = normamatrinf(mat)
end