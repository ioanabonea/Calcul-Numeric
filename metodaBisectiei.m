function [c_final] = metodaBisectiei(functie,stanga,dreapta,nrPasi)

    a_prec = double(stanga);
    b_prec = double(dreapta);
    c_prec = double((stanga+dreapta)/2);
    
    nrPasiCrt = 1;
    
    while nrPasiCrt <= nrPasi
        if functie(a_prec)*functie(c_prec)<0
                b_prec = c_prec;
                c_prec = (a_prec+b_prec)/2;
        elseif functie(a_prec)*functie(c_prec)>0
            a_prec = c_prec;
            c_prec = (a_prec+b_prec)/2;
        end
        nrPasiCrt = nrPasiCrt + 1;
    end
    
    c_final = c_prec;
end