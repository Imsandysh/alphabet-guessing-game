
function cont(hObject,handles,c)
global ha alphabets

handles.t = handles.t + 1;
% resetting the radio button
set(hObject,'Value',0);


% arranging alphabets
arrangement(c);
if handles.t < 4   
     showalphabets();
     intr_disp(handles.t);
else
    %tricking
    intr_disp(4);
    axes(ha(22));
    A=alphabets{4,2}
    [bg] = imread(strcat(alphabets{4,2},'.jpg'));
    image(bg);
    axis off;
    
    
    set(ha(25),'Visible','on')
    
    
    set(ha(26),'Visible','off')
    set(ha(27),'Visible','off')
    set(ha(28),'Visible','off')
end

guidata(hObject,handles);