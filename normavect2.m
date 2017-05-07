function [suma] = normavect2(vector)

    s = 0;
    for i = 1:length(vector)
        s = s + vector(i)^2;
    end
    suma = sqrt(s);
end