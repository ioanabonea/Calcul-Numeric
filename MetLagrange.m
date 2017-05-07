function [polinom, y] =MetLagrange(f,a,b,n,xp)

  L=ones(n,1);

  noduri = zeros(1,n+1);
  noduri(1) = a;
  
  for i = 2:n+1
      h = (b-a)/n;
      noduri(i) = noduri(i-1) + h;
  end
  
  x = noduri;
  
  for i=1:n
    for j=1:n
      if(j ~= i)
        L(i) = L(i).*(xp-x(j))/(x(i)-x(j));
      end
    end
  end

   y=0;
   for i=1:n
      y=y+f(x(i))*L(i);
   end
   
 polinom = [num2str(0)];
 for i = 1:n
   polinom = [polinom '+' num2str(L(i)) '*' num2str(f(x(i)))];
   
 end
 
 polinom = inline(polinom,'x');
  

end

function [ noduri ] = detNoduriInt( a, b, n )

    
end

% If you have a set of N points on a cartesian plane, there 
% will always exist an N-1th order polynomial 
% which passes through all the points. 

    