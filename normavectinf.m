function [max] = normavectinf(vector)

    m = abs(vector(1));
    for i = 2:length(vector)
        if abs(vector(i))> m 
            m = abs(vector(i));
        end
    end
    max = m;
end