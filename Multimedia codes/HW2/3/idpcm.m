function out = idpcm( dif, first )
    size_arr = size(dif);
    n = size_arr(1) + 1;
    x_p = 1:1:n;
    x_p(1) = first;
    for i = 2:1:n
        x_p(i) = x_p(i-1) + dif(i-1);
    end
    out = x_p';
end
