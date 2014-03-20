function [y]=mask(x, L); 
mask_v=[0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;]; 
if (L > 0)
    mask_v(1, 1) = 1;
if (L > 1)
    mask_v(1, 2) = 1;
if (L > 2)
    mask_v(2, 1) = 1;
if (L > 3)
    mask_v(3, 1) = 1;
if (L > 4)
    mask_v(2, 2) = 1;
if (L > 5)
    mask_v(1, 3) = 1;
if (L > 6)
    mask_v(1, 4) = 1;
if (L > 7)
    mask_v(2, 3) = 1;
if (L > 8)
    mask_v(3, 2) = 1;
if (L > 9)
    mask_v(4, 1) = 1;
if (L > 10)
    mask_v(5, 1) = 1;
if (L > 11)
    mask_v(4, 2) = 1;
if (L > 12)
    mask_v(3, 3) = 1;
if (L > 13)
    mask_v(2, 4) = 1;
if (L > 14)
    mask_v(1, 5) = 1;
if (L > 15)
    mask_v(1, 6) = 1;
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
y=mask_v.*x; 
end