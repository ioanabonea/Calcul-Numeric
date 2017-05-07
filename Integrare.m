function I = Integrare(f, a, b, m, metoda)

    if strcmp(metoda,'dreptunghi') == 1
        I = dreptunghi(f,a,b,m);
        elseif strcmp(metoda,'trapez') == 1
            I =  trapez(f,a,b,m);
            elseif strcmp(metoda,'Simpson') == 1
                I =  Simpson(f,a,b,m);
                elseif strcmp(metoda,'Newton') == 1
                    I =  Newton(f,a,b,m);
     end
    
end