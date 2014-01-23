function ZoomMiniMaxi(obj,event)
Curseur_Debut=getappdata(gcbf,'curseur_debut');
Curseur_Fin=getappdata(gcbf,'curseur_fin');
Hgraph2D_1=getappdata(gcbf,'graph2D_1');
Hgraph2D_2=getappdata(gcbf,'graph2D_2');
Hgraph2D_3=getappdata(gcbf,'graph2D_3');
ZoomStatut=~getappdata(gcbf,'zoomstatut');
Liste_Fichier=getappdata(gcbf,'liste_fichier');
setappdata(gcbf,'zoomstatut',ZoomStatut);
MaxDeZoom=length(Liste_Fichier(1,1).Tab_Temps{1})/100;
if ZoomStatut==1
    set(obj,'string','dezoom');
    Debut=Curseur_Debut{1}(1);
    Fin=Curseur_Fin{1}(1);
    xlim(Hgraph2D_1,[Debut Fin]);
    xlim(Hgraph2D_2,[Debut Fin]);
    xlim(Hgraph2D_3,[Debut Fin]);
else
    set(obj,'string','zoom');
    xlim(Hgraph2D_1,[0 MaxDeZoom]);
    xlim(Hgraph2D_2,[0 MaxDeZoom]);
    xlim(Hgraph2D_3,[0 MaxDeZoom]);
end
end

