function ImportationDeDonnee(~,~)
Liste_Fichier=getappdata(gcbf,'liste_fichier');
Nb_Fichier_Charger=getappdata(gcbf,'nb_fichier_charger');

[FileName,PathName] = uigetfile('*.txt','sélection du fichier de donnée');
if FileName

Nb_Fichier_Charger=Nb_Fichier_Charger+1;
Liste_Fichier(Nb_Fichier_Charger,1).Nom_Fichier = FileName;
NomFichier=fullfile(PathName,FileName);

fmt=repmat('%f ',1,89);
[TabIni{1:89}]=textread(NomFichier,fmt,'headerlines',5);
TabDonnee{1}(1)=0;
TabDonnee=CreationTabDonnee(TabIni);
Tab_Temps_Charger=CreationTabTemps(TabDonnee);
Liste_Marqueur_Charger=CreationTabMarqueur(TabDonnee);

Liste_Fichier(Nb_Fichier_Charger,1).Tab_Temps=Tab_Temps_Charger;
Liste_Fichier(Nb_Fichier_Charger,1).Liste_Marqueur=Liste_Marqueur_Charger;

CreationCurseur;
setappdata(gcbf,'nb_fichier_charger',Nb_Fichier_Charger);
setappdata(gcbf,'liste_fichier',Liste_Fichier);
CreationSousMenuMarqueur(Nb_Fichier_Charger);
Affichage3DJambes(1);
end
end

