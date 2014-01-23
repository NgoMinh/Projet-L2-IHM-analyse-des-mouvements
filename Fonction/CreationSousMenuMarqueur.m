function CreationSousMenuMarqueur(Nb_Fichier_Charger)
Menu_Mq=getappdata(gcbf,'menu_mq');
Liste_Fichier=getappdata(gcbf,'liste_fichier');
Menu_Fichier( Nb_Fichier_Charger ) = uimenu( Menu_Mq ,...
    'label',Liste_Fichier( Nb_Fichier_Charger,1 ).Nom_Fichier);

for i=1:length(Liste_Fichier( Nb_Fichier_Charger,1 ).Liste_Marqueur)
    Menu_Fichier_Marqueur(i)=uimenu(Menu_Fichier(Nb_Fichier_Charger),...
        'label',Liste_Fichier(Nb_Fichier_Charger,1).Liste_Marqueur(i,1).nom,...
        'tag',Liste_Fichier(Nb_Fichier_Charger,1).Liste_Marqueur(i,1).nom,...
        'callback',@statu_Mq);
    Liste_Fichier(Nb_Fichier_Charger,1).Menu_Affiche_Mq=Menu_Fichier_Marqueur;
end

setappdata(gcbf,'liste_fichier',Liste_Fichier);
end

