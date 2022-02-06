function showalphabets()
global ha alphabets

% Taking one jpg files for each axes.
for i = 1 : 21
    axes(ha(i));
    [bg] = imread(strcat(alphabets{i},'.jpg'));
    image(bg);
    axis off;
end


axes(ha(22));
[bg] = imread('Capture.jpg');
image(bg);
axis off;