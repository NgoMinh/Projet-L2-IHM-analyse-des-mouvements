function ChangementEtatVisible(obj,event)
Liste_Fichier=getappdata(gcbf,'liste_fichier');
Nb_Fichier_Charger=getappdata(gcbf,'nb_fichier_charger');

for j=1:Nb_Fichier_Charger
    for i=1:length(Liste_Fichier(j,1).Liste_Marqueur)
        if strcmp(get(Liste_Fichier(j,1).Menu_Affiche_Mq(i),'Checked'),'on')
            Liste_Fichier(j,1).Liste_Marqueur(i,1).Visible='on';
        else
            Liste_Fichier(j,1).Liste_Marqueur(i,1).Visible='off';
        end
    end
end
setappdata(gcbf,'liste_fichier',Liste_Fichier);
end

