function intr_disp(i)
global ha

switch i
    case 1
        str = {'Step 1: ';
               '';
               'Think about an alphabet in your head and choose the column where it lies'};
        set(ha(24),'String',str);
    case 2
        str = {'Step 2: ';
               '';
               'Great!.';
               '';
               'Which column was it? Can you choose one more time?'};
        set(ha(24),'String',str);
    case 3
        str = {'Hard to predict!';
               '';
               'One last time, please choose.'};
        set(ha(24),'String',str);
    case 4
        str = 'Thank you for your time.';
        set(ha(24),'String',str);
        str = {'Finally, I got you. ';
               'Is this your alphabet?'};
        set(ha(29),'String',str);
end
    