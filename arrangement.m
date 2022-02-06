function arrangement(c)
global alphabets

switch c
    case 1
        arrange = {alphabets{:,3} alphabets{:,1} alphabets{:,2}};
    case 2
        arrange = {alphabets{:,3} alphabets{:,2} alphabets{:,1}};
    otherwise
        arrange = {alphabets{:,2} alphabets{:,3} alphabets{:,1}};
end


ll = 1;
for i = 1 : 7
    for j = 1 : 3
        alphabets{i,j} = arrange{ll};
        ll = ll + 1;
    end
end
