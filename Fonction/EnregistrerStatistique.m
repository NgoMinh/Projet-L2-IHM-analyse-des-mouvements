function EnregistrerStatistique(obj,event)
Liste_Fichier=getappdata(gcbf,'liste_fichier');
Nb_Fichier_Charger=getappdata(gcbf,'nb_fichier_charger');
Curseur_Debut=getappdata(gcbf,'curseur_debut');
Curseur_Fin=getappdata(gcbf,'curseur_fin');


i=1;
filename=sprintf('statistique_%d.txt',i);
while exist(filename,'file')==2
    i=i+1;
    filename=sprintf('statistique_%d.txt',i);
end

Debut=Curseur_Debut{1}(1);
Debut=Debut*100;
Debut=round(Debut);
if Debut==0
    Debut=1;
end
Fin=Curseur_Fin{1}(1);
Fin=Fin*100;
Fin=round(Fin);

FileID=fopen(filename,'w');
fprintf(FileID,'Statistique : \n');
for j=1:Nb_Fichier_Charger
    fprintf(FileID,'%s \n',Liste_Fichier(j,1).Nom_Fichier);
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
            nom=sprintf(strcat(nom,' : ','\n'));
            maxi=sprintf(strcat('Max X :',max_X,'\t','Max Y :',max_Y,'\t','Max Z :',max_Z,'\n'));
            mini=sprintf(strcat('Min X :',min_X,'\t','Min Y :',min_Y,'\t','Min Z :',min_Z,'\n'));
            limite=sprintf(strcat('-------------------------------------','\n'));
            fprintf(FileID,'%s',nom);
            fprintf(FileID,'%s',maxi);
            fprintf(FileID,'%s',mini);
            fprintf(FileID,'%s',limite);
        end
    end
end
fclose(FileID);
end

