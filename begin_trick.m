
function begin_trick()
global ha alphabets

% Defining 26 alphabets
alphabets_col = {'a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' ...
             'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' ...
             'q' 'r' 's' 't' 'u' 'v' 'w' 'x' ...
             'y' 'z'};
numbers_alphabets = 26;

% selecting 21 alphabets
for i = 1 : 7
    for j = 1 : 3
        r = ceil(numbers_alphabets .* rand)
        alphabets{i,j} = alphabets_col{r};

        
        alphabets_col(r) = [];
        
        
        numbers_alphabets = numbers_alphabets - 1;
    end
end

% Display alphabets and first instructions
showalphabets;
intr_disp(1);  

str = '';
set(ha(29),'String',str);

% Hide button
set(ha(25),'Visible','off');

% Make the radio-buttons available
set(ha(26),'Visible','on')
set(ha(27),'Visible','on')
set(ha(28),'Visible','on')
