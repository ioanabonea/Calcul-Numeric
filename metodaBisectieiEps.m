function [c_solfin, nrPasiFin] = metodaBisectieiEps(functie, st, dr, epsilon)

    nrPasi = 0;
    ok = 0;
    
    aprec = double(st);
    acrt = double(st);
    bprec = double(dr);
    bcrt = double(dr);
    cprec = double((acrt + bcrt)/2);
    ccrt = double((acrt + bcrt)/2);
    
    while ok == 0
        if functie(cprec) == 0
            acrt = aprec;
            bcrt = bprec;
            ccrt = cprec;
        elseif functie(aprec)*functie(cprec)<0
            acrt = aprec;
            bcrt = cprec;
            ccrt = (acrt + bcrt)/2;
        elseif functie(aprec)*functie(cprec)>0
            acrt = cprec;
            bcrt = bprec;
            ccrt = (acrt + bcrt)/2;
        end
        
        if abs(ccrt - cprec) < epsilon || abs(functie(ccrt)) < epsilon
            ok = 1;
        end
        
        aprec = acrt;
        bprec = bcrt;
        cprec = ccrt;
        
        nrPasi = nrPasi + 1;
    end
    c_solfin = ccrt;
    nrPasiFin = nrPasi;
end