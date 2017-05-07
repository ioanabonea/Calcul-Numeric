function polNDD = MetNDD(f,a,b,n)

    Q = zeros(n+1,n+1);
    
    noduri = zeros(1,n+1);
    noduri(1) = a;
    
    for i = 2:n+1
        h = (b-a)/n;
        noduri(i) = noduri(i-1) + h;  % noduri = x
    end
    
    for i = 1:n+1
        Q(i,1) = f(noduri(i));
    end
    
    for i = 2:n+1
        for j = i:n+1
            Q(j,i) = (Q(j,i-1) - Q(j-1,i-1))/(noduri(j) - noduri(j-i+1));
        end
    end
    
    
    polNDD = [];
    for k = 2:n+1
        polNDD = [polNDD '+' num2str(Q(k,k))];
        for i = 1:k
        polNDD = [polNDD '.*(x-' num2str(noduri(i)) ')'];
        end
    end
    
    polNDD = [num2str(Q(1,1)) polNDD];
    y = inline(polNDD,'x');
end