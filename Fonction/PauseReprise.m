function PauseReprise(obj,event)
FlagStop=~getappdata(gcbf,'flag_stop');
setappdata(gcbf,'flag_stop',FlagStop);
if FlagStop==true
    set(obj,'String','Pause')
    Curseur_Fin=getappdata(gcbf,'curseur_fin');
    VitesseLecture=getappdata(gcbf,'vitesse_lecture');
    pos = get(findobj('tag','anim'),'xdata');
    Debut=pos{1}(1);
    Debut=Debut*100;
    Debut=round(Debut);
    if Debut==0
        Debut=1;
    end
    Fin=Curseur_Fin{1}(1);
    Fin=Fin*100;
    Fin=round(Fin);
    
    
    set(findobj('tag','boutonpause'),'String','Pause');
    for i=Debut:VitesseLecture:Fin
        Arret=getappdata(gcbf,'flag_stop');
        if Arret~=true
            break
        end
        delete(findobj('tag','anim'));
        Affichage3DJambes(i);
        AfficheCurseur(i);
        set(gca,'xlimmode','manu')
        pause(0.01);
        if i==Fin-1
            delete(findobj('tag','anim'));
            break
        end
    end
else
    set(obj,'String','Reprise')
end
end

