function [aproxSol, nrPasi] = metodaSecantei(functie,x0,x1,epsilon)
    
    ok = 0;
    nrP = 0;
    
    xn2 = x0; % Xn-2
    xn1 = x1; % Xn-1
    xn = 0;   % Xn
    
    while ok == 0
        xn = (xn1 * functie(xn2) - xn2 * functie(xn1))/(functie(xn2) - functie(xn1));
        
        if abs(xn- xn1) < epsilon
            ok = 1;
        end

        xn2 = xn1;
        xn1 = xn;
        nrP = nrP + 1;
    end
    
    aproxSol = xn;
    nrPasi = nrP;
end