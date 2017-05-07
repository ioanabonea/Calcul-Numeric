function [x] = GaussPivTot(A,b)

    AExtins = [A,b];
    n = size(AExtins,1);
    
    for k = 1:n-1
        max = realmin('double');
        poz1 = 0;
        poz2 = 0;
        for i = k:n
            for j = k:n
                if abs(AExtins(i,j)) > max  
                    max = abs(AExtins(i,j));
                    poz1 = i;
                    poz2 = j;
                end
            end
        end
        
        aux1 = AExtins(poz1,:);
        AExtins(k,:) = AExtins(poz1,:);
        AExtins(poz1,:) = aux1;
        
        
        aux2 = AExtins(:,poz2);
        AExtins(:,k) = AExtins(:,poz2);
        AExtins(:,poz2) = aux2;
        
        
        for l = k+1:n
            mk = AExtins(l,k)/AExtins(k,k);
            for i = k+1:n
                for j = k+1:n
                    AExtins(i,j) = AExtins(i,j) - mk*AExtins(k,j);
                end
            end
        end
    end
    
    if AExtins(n,n) == 0
        disp('Sistem incompatibil');
    end
    
    x = SubsDesc(A,b);

end