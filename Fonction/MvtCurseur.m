function MvtCurseur(obj,event)
Liste_Fichier=getappdata(gcbf,'liste_fichier');
set(obj,'pointer','fleur');
pos = get(gca,'currentpoint');
Id_Curseur_Debut=findobj('type','line','linewidth',2,'color','b');
Maxi=get(findobj('type','line','linewidth',2,'color',[0 .5 0]),'xdata');
Mini=get(findobj('type','line','linewidth',2,'color','b'),'xdata');
XlimMaxi=length(Liste_Fichier(1,1).Tab_Temps{1})/100;
if gco==Id_Curseur_Debut(1)||gco==Id_Curseur_Debut(2)||gco==Id_Curseur_Debut(3)
    if [pos(1);pos(1)]>0
        if [pos(1);pos(1)]<Maxi{1}(1)
            set(findobj('type','line','linewidth',2,'color','b'),'xdata',[pos(1);pos(1)])
        else
            set(findobj('type','line','linewidth',2,'color','b'),'xdata',Maxi{1}-0.2)
        end
    else
        set(findobj('type','line','linewidth',2,'color','b'),'xdata',[0;0])
    end
else
    if [pos(1);pos(1)]>Mini{1}(1)
        if [pos(1);pos(1)]<XlimMaxi
            set(findobj('type','line','linewidth',2,'color',[0 .5 0]),'xdata',[pos(1);pos(1)])
        else
            set(findobj('type','line','linewidth',2,'color',[0 .5 0]),'xdata',[XlimMaxi;XlimMaxi])
        end
    else
        set(findobj('type','line','linewidth',2,'color',[0 .5 0]),'xdata',Mini{1}+0.2)
    end
end
Curseur_Debut = get(findobj('type','line','linewidth',2,'color','b'),'xdata');

Curseur_Fin = get(findobj('type','line','linewidth',2,'color',[0 .5 0]),'xdata');

setappdata(gcbf,'curseur_debut',Curseur_Debut);
setappdata(gcbf,'curseur_fin',Curseur_Fin);
end

