function ClicCurseur(obj,event)
set(gcf,'windowbuttonmotionfcn',{@MvtCurseur},  ...
    'windowbuttonupfcn',@RelachCurseur);
end

