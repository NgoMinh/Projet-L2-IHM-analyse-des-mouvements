function CreationCurseur(obj,event)
Hgraph2D_1=getappdata(gcbf,'graph2D_1');
Hgraph2D_2=getappdata(gcbf,'graph2D_2');
Hgraph2D_3=getappdata(gcbf,'graph2D_3');
delete(findobj('tag','curseur'));
x_1 = xlim(Hgraph2D_1);
y_1 = ylim(Hgraph2D_1);
x_2 = xlim(Hgraph2D_2);
y_2 = ylim(Hgraph2D_2);
x_3 = xlim(Hgraph2D_3);
y_3 = ylim(Hgraph2D_3);

line([x_1;x_1],[y_1(:) y_1(:)],'linewidth',2,'buttondownfcn',@ClicCurseur,'parent',Hgraph2D_1,'tag','curseur');
line([x_2;x_2],[y_2(:) y_2(:)],'linewidth',2,'buttondownfcn',@ClicCurseur,'parent',Hgraph2D_2,'tag','curseur');
line([x_3;x_3],[y_3(:) y_3(:)],'linewidth',2,'buttondownfcn',@ClicCurseur,'parent',Hgraph2D_3,'tag','curseur');
Curseur_Debut{1}(1) = 0.01;
Curseur_Fin = get(findobj('type','line','linewidth',2,'color',[0 .5 0]),'xdata');
setappdata(gcbf,'curseur_debut',Curseur_Debut);
setappdata(gcbf,'curseur_fin',Curseur_Fin);
end

