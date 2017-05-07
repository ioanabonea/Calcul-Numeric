function [suma] = normavect1(vector)

    s = 0;
    for i = 1:length(vector)
        s = s + abs(vector(i));
    end
    suma = s;
end