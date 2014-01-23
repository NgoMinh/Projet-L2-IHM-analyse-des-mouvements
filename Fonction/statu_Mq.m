function statu_Mq(obj,event)
if strcmp(get(gcbo, 'Checked'),'on')
    set(gcbo, 'Checked', 'off');
else
    set(gcbo, 'Checked', 'on');
end
ChangementEtatVisible;
AfficheMq;
end

