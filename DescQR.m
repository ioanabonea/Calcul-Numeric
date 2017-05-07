function [x, Q, R] = DescQR(A,b)

    n = size(A,1);
    R = zeros(size(A));
    Q = zeros(size(A));

    for i=1:n
        Q(:,i) = A(:,i);
        for j=1:i-1
            R(j,i) = (Q(:,j)')*Q(:,i);
            Q(:,i) = Q(:,i)-R(j,i)*Q(:,j);
        end
        R(i,i) = norm(Q(:,i),2);
        if R(i,i) == 0
            break;
        end
        Q(:,i)=Q(:,i)/R(i,i);
    end
    
    y = Q'*b;
    x = SubsAsc(R,y);
end