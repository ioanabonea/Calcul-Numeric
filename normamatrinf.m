function [max] = normamatrinf(matrice)

    m = matrice(1,1);
    [l,c] = size(matrice);
    for i = 1:l
        s = 0;
        for j = 1:c
            s = s + matrice(i,j);
        end
        if s > m
            m = s;
        end
    end
    max = m;
end