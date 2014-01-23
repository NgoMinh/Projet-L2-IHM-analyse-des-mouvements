function AfficheStatistique(obj,event)
Liste_Fichier=getappdata(gcbf,'liste_fichier');
Nb_Fichier_Charger=getappdata(gcbf,'nb_fichier_charger');
Curseur_Debut=getappdata(gcbf,'curseur_debut');
Curseur_Fin=getappdata(gcbf,'curseur_fin');
Fenetre_Statistique = figure('Units','normalized',...
    'Position',[0.01 0.05 0.2 0.9],...
    'menubar','none',...
    'doublebuffer','on');
str_stat='Statistique : ';

Debut=Curseur_Debut{1}(1);
Debut=Debut*100;
Debut=round(Debut);
if Debut==0
    Debut=1;
end
Fin=Curseur_Fin{1}(1);
Fin=Fin*100;
Fin=round(Fin);


for j=1:Nb_Fichier_Charger
    str_stat=strcat(str_stat,'\n',Liste_Fichier(j,1).Nom_Fichier);
    for i=1:length(Liste_Fichier(j,1).Liste_Marqueur)
        if strcmp(Liste_Fichier(j,1).Liste_Marqueur(i,1).Visible,'on')
            nom=Liste_Fichier(j,1).Liste_Marqueur(i,1).nom;
            if Fin<length(Liste_Fichier(j,1).Liste_Marqueur(i,1).X)
                max_X=num2str(max(Liste_Fichier(j,1).Liste_Marqueur(i,1).X(Debut:Fin)));
                min_X=num2str(min(Liste_Fichier(j,1).Liste_Marqueur(i,1).X(Debut:Fin)));
                max_Y=num2str(max(Liste_Fichier(j,1).Liste_Marqueur(i,1).Y(Debut:Fin)));
                min_Y=num2str(min(Liste_Fichier(j,1).Liste_Marqueur(i,1).Y(Debut:Fin)));
                max_Z=num2str(max(Liste_Fichier(j,1).Liste_Marqueur(i,1).Z(Debut:Fin)));
                min_Z=num2str(min(Liste_Fichier(j,1).Liste_Marqueur(i,1).Z(Debut:Fin)));
            else
                Fin=length(Liste_Fichier(j,1).Liste_Marqueur(i,1).X);
                max_X=num2str(max(Liste_Fichier(j,1).Liste_Marqueur(i,1).X(Debut:Fin)));
                min_X=num2str(min(Liste_Fichier(j,1).Liste_Marqueur(i,1).X(Debut:Fin)));
                max_Y=num2str(max(Liste_Fichier(j,1).Liste_Marqueur(i,1).Y(Debut:Fin)));
                min_Y=num2str(min(Liste_Fichier(j,1).Liste_Marqueur(i,1).Y(Debut:Fin)));
                max_Z=num2str(max(Liste_Fichier(j,1).Liste_Marqueur(i,1).Z(Debut:Fin)));
                min_Z=num2str(min(Liste_Fichier(j,1).Liste_Marqueur(i,1).Z(Debut:Fin)));
            end
            str_stat=strcat(str_stat,'\n',nom,' : ',...
                ' Max X:',max_X,'\t',' Max Y:',max_Y,'\t',' Max Z:',max_Z,'\n',...
                ' Min X:',min_X,'\t',' Min Y:',min_Y,'\t',' Min Z:',min_Z,'\n');
        end
    end
end
str_stat=sprintf(str_stat);
Statistique = uicontrol('style','text',...
    'units','normalized',...
    'parent',Fenetre_Statistique,...
    'position',[0.01 0.01 0.98 0.98],...
    'string',str_stat);
end

