function Lecture (~,~)
FlagLecture=~getappdata(gcbf,'flag_lecture');
setappdata(gcbf,'flag_lecture',FlagLecture);
if FlagLecture~=true
    Lecture1;
else
    Lecture2;
end
end

