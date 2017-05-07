function [x] = GaussPivPart(A, b)

    AExtins = [A,b];
    n = size(AExtins,1);
    
    for k = 1:n-1
        max = realmin('double');
        poz = 0;
        for p = k:n
            if abs(AExtins(p,k)) > max  
                max = abs(AExtins(p,k));
                poz = p;
            end
        end
        
        aux = AExtins(poz,:);
        AExtins(k,:) = AExtins(poz,:);
        AExtins(poz,:) = aux;
        
        
        for l = k+1:n
            mk = AExtins(l,k)/AExtins(k,k);
            for j = k:n+1
                AExtins(l,j) = AExtins(l,j) - mk*AExtins(k,j);
            end
        end
    end
    
    if AExtins(n,n) == 0
        disp('Sistem incompatibil');
    end
    
    x = SubsDesc(A,b);
end