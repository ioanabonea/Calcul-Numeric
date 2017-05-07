function [x] = GaussFaraPiv(A,b)

    AExtins = [A,b];
    n = size(AExtins,1);
    
    for k = 1:n-1
        for p = k:n
            if AExtins(p,k) ~= 0 
                aux = AExtins(k,:);
                AExtins(k,:) = AExtins(p,:);
                AExtins(p,:) = aux;
                break;
            end
        end
        
        
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