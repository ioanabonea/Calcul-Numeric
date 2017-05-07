function [aproxSol,nrPasi] = metodaFalseiPozitii(functie,st,dr,epsilon)
    
    nrP = 0;
    ok = 0;
    
    aprec = double(st);
    acrt = double(st);
    bprec = double(dr);
    bcrt = double(dr);
    cprec = (dr*functie(st)+st*functie(dr))/(functie(st)-functie(dr));
    ccrt = 0;
    
    while ok == 0
        if functie(cprec) == 0
            acrt = aprec;
            bcrt = bprec;
            ccrt = cprec;
        elseif functie(aprec)*functie(cprec)<0
            acrt = aprec;
            bcrt = cprec;
            ccrt = (bcrt*functie(acrt)-acrt*functie(bcrt))/(functie(acrt)-functie(bcrt));
        elseif functie(aprec)*functie(cprec)>0
            acrt = cprec;
            bcrt = bprec;
            ccrt = (bcrt*functie(acrt)-acrt*functie(bcrt))/(functie(acrt)-functie(bcrt));
        end
        
        if abs(ccrt - cprec) < epsilon 
            ok = 1;
        end
        
        aprec = acrt;
        bprec = bcrt;
        cprec = ccrt;
        
        nrP = nrP + 1;
    end
    
    aproxSol = ccrt;
    nrPasi = nrP;
end