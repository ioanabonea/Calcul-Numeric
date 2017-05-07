function phi = phi2(f,x,h)
    phi =  (f(x+h) - 2*f(x) + f(x-h))/(h^2);
end