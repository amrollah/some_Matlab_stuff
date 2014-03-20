function [y]=mask4(x) 
T = 54; % we can change it from 1 to 256!!!
y = x;
for i=1:8
    for j=1:8
        if (y(i,j)<T)
            y(i,j) = 0;
        end
    end
end
end