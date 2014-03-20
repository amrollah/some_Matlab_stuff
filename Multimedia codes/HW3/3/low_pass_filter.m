function [ out ] = low_pass_filter( in, bound )
    out = in;
    a = size(in);
    x = a(1);
    y = a(2);
    for i=1:x
        for j=1:y
            if (abs(in(i,j)) > bound)
                out(i, j) = 0;
            end
        end
    end

end
