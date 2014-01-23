function [Liste_Marqueur_Charger]=CreationTabMarqueur(TabDonnee)
C_Donnee=2;
for C_TabMarqueur=1:22
    Liste_Marqueur_Charger(C_TabMarqueur,1).nom=strcat('Marqueur N°',num2str(C_TabMarqueur));
    Liste_Marqueur_Charger(C_TabMarqueur,1).X=TabDonnee{C_Donnee};
    C_Donnee=C_Donnee+1;
    Liste_Marqueur_Charger(C_TabMarqueur,1).Y=TabDonnee{C_Donnee};
    C_Donnee=C_Donnee+1;
    Liste_Marqueur_Charger(C_TabMarqueur,1).Z=TabDonnee{C_Donnee};
    C_Donnee=C_Donnee+1;
    Liste_Marqueur_Charger(C_TabMarqueur,1).Visible='off';
end
end

