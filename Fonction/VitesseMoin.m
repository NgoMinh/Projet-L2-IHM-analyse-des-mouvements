function VitesseMoin(obj,event)
VitesseLecture=getappdata(gcbf,'vitesse_lecture');
IndicVitesse=getappdata(gcbf,'indic_vitesse');
if(VitesseLecture>1)
    VitesseLecture=VitesseLecture/2;
end
set(IndicVitesse,'string',strcat('vitesse  :  x',num2str(VitesseLecture)));
setappdata(gcf,'indic_vitesse',IndicVitesse);
setappdata(gcf,'vitesse_lecture',VitesseLecture)
end

