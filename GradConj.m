function [x] = GradConj(A, b)

    x = zeros(size(A,1),1);
    r = zeros(size(A,1),1);
    v = zeros(size(A,1),1);
    alpha = zeros(size(A,1),1);
    beta = zeros(size(A,1),1);
    r(:,1) = b - A*x(:,1);
    v(:,1) = r(:,1);
    for k = 1 : size(A,1) - 1
        
        alpha(:,k) = (r(:,k).*v(:,k))./(v(:,k).*(A*v(:,k)));
        x(:,k+1) = x(:,k) + (alpha(:,k).*v(:,k));
        r(:,k+1) = b - A*x(:,k+1);
        beta(:,k) = (r(:,k+1).*(A*v(:,k)))./((A*v(:,k)).*v(:,k));
        v(:,k+1) = beta(:,k).*v(:,k) - r(:,k+1);
    end
    x = x(:,size(A,1));
    
end