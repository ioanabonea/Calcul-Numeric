function [norma] = normaDoiMatrice(matrice)

    M = matrice' * matrice;
    valoriProprii = eigs(M);
    norma = max(sqrt(valoriProprii));
end