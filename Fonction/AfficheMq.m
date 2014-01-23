function AfficheMq(obj,event)
Liste_Fichier=getappdata(gcbf,'liste_fichier');
Hgraph2D_1=getappdata(gcbf,'graph2D_1');
Hgraph2D_2=getappdata(gcbf,'graph2D_2');
Hgraph2D_3=getappdata(gcbf,'graph2D_3');
Nb_Fichier_Charger=getappdata(gcbf,'nb_fichier_charger');
couleurs = hsv(length(Liste_Fichier(1,1).Liste_Marqueur));
for j=1:Nb_Fichier_Charger
    
    for i=1:length(Liste_Fichier(j,1).Liste_Marqueur)
        if strcmp(Liste_Fichier(j,1).Liste_Marqueur(i,1).Visible,'on')
            
            line(Liste_Fichier(j,1).Tab_Temps{1},Liste_Fichier(j,1).Liste_Marqueur(i,1).X,...
                'parent',Hgraph2D_1,...
                'tag',strcat(Liste_Fichier(j,1).Liste_Marqueur(i,1).nom,'_X_',num2str(j)),...
                'color',couleurs(i,:));
            line(Liste_Fichier(j,1).Tab_Temps{1},Liste_Fichier(j,1).Liste_Marqueur(i,1).Y,...
                'parent',Hgraph2D_2,...
                'tag',strcat(Liste_Fichier(j,1).Liste_Marqueur(i,1).nom,'_Y_',num2str(j)),...
                'color',couleurs(i,:));
            line(Liste_Fichier(j,1).Tab_Temps{1},Liste_Fichier(j,1).Liste_Marqueur(i,1).Z,...
                'parent',Hgraph2D_3,...
                'tag',strcat(Liste_Fichier(j,1).Liste_Marqueur(i,1).nom,'_Z_',num2str(j)),...
                'color',couleurs(i,:));
        else
            delete(findobj('tag',strcat(Liste_Fichier(j,1).Liste_Marqueur(i,1).nom,'_X_',num2str(j))));
            delete(findobj('tag',strcat(Liste_Fichier(j,1).Liste_Marqueur(i,1).nom,'_Y_',num2str(j))));
            delete(findobj('tag',strcat(Liste_Fichier(j,1).Liste_Marqueur(i,1).nom,'_Z_',num2str(j))));
        end
    end
end
CreationCurseur;
setappdata(gcbf,'liste_fichier',Liste_Fichier);
end

