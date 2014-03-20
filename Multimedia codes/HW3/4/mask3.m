function [y]=mask3(x); 
mask=[0 0 0 0 0 0 0 0;
      0 0 0 0 0 0 0 0;
      0 0 0 0 0 0 0 0;
      0 0 0 0 0 0 0 0;
      0 0 0 0 0 0 0 0;
      0 0 0 0 0 0 0 0;
      0 0 0 0 0 0 0 0;
      0 0 0 0 0 0 0 0;]; 
L = 15; % must be set!
if (L > 0)
    mask(1, 1) = 1;
if (L > 1)
    mask(1, 2) = 1;
if (L > 2)
    mask(2, 1) = 1;
if (L > 3)
    mask(3, 1) = 1;
if (L > 4)
    mask(2, 2) = 1;
if (L > 5)
    mask(1, 3) = 1;
if (L > 6)
    mask(1, 4) = 1;
if (L > 7)
    mask(2, 3) = 1;
if (L > 8)
    mask(3, 2) = 1;
if (L > 9)
    mask(4, 1) = 1;
if (L > 10)
    mask(5, 1) = 1;
if (L > 11)
    mask(4, 2) = 1;
if (L > 12)
    mask(3, 3) = 1;
if (L > 13)
    mask(2, 4) = 1;
if (L > 14)
    mask(1, 5) = 1;
if (L > 15)
    mask(1, 6) = 1;
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
y=mask.*x; 
end