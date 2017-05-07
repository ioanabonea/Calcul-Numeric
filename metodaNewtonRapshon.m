function [aproxSol, nrFinPasi] = metodaNewtonRapshon( functia,functiaDeriv,x0,epsilon)

    ok = 0;
    nrPasi = 0;
    x1 = double(x0);
    
    while ok == 0
        x1 = x0 - (functia(x0)/functiaDeriv(x0));
        if abs(x1 - x0) < epsilon
            ok = 1;
        end
        
        x0 = x1;
        nrPasi = nrPasi + 1;
    end
    
    aproxSol = x1;
    nrFinPasi = nrPasi;
end