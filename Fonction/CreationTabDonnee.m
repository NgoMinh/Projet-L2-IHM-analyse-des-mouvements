function [TabDonnee]=CreationTabDonnee(TabIni)
L_TabDonnee=1;
C_TabDonnee=1;
for C_TabIni=1:89
    if C_TabIni==1
        for L_TabIni=1:length(TabIni{1})-3
            if mod(L_TabIni,4)==1
                TabDonnee{C_TabDonnee}(L_TabDonnee)=TabIni{C_TabIni}(L_TabIni);
                L_TabDonnee=L_TabDonnee+1;
            end
        end
    else
        if mod(C_TabIni-1,4)~=0
            C_TabDonnee=C_TabDonnee+1;
            L_TabDonnee=1;
            for L_TabIni=1:length(TabIni{1})-3
                if mod(L_TabIni,4)==1
                    TabDonnee{C_TabDonnee}(L_TabDonnee)=TabIni{C_TabIni}(L_TabIni);
                    L_TabDonnee=L_TabDonnee+1;
                end
            end
        end
    end
end
end

