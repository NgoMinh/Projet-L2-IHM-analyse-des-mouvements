function SegmentSuivant(obj,event)
Curseur_Debut=getappdata(gcbf,'curseur_debut');
Curseur_Fin=getappdata(gcbf,'curseur_fin');
Liste_Fichier=getappdata(gcbf,'liste_fichier');
XlimMaxi=length(Liste_Fichier(1,1).Tab_Temps{1})/100;
Delta{1}=Curseur_Fin{1}-Curseur_Debut{1};
Id_Curseur_Debut=findobj('type','line','linewidth',2,'color','b');
Curseur_Debut_Suivant=Curseur_Fin{1};
if [XlimMaxi XlimMaxi]>(Curseur_Fin{1}+Delta{1})
    Curseur_Fin_Suivant=Curseur_Fin{1}+Delta{1};
else
    Curseur_Fin_Suivant=[XlimMaxi XlimMaxi];
    Curseur_Debut_Suivant=Curseur_Fin_Suivant-Delta{1};
end
set(Id_Curseur_Debut,'xdata',Curseur_Debut_Suivant);
set(findobj('type','line','linewidth',2,'color',[0 .5 0]),'xdata',Curseur_Fin_Suivant)
Curseur_Debut=get(findobj('type','line','linewidth',2,'color','b'),'xdata');
Curseur_Fin=get(findobj('type','line','linewidth',2,'color',[0 .5 0]),'xdata');
setappdata(gcbf,'curseur_debut',Curseur_Debut);
setappdata(gcbf,'curseur_fin',Curseur_Fin);
end

