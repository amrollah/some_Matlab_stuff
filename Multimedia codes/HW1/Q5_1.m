function y = Q5_1( x, a, b, N )
    t1 = (x - a) / (b - a);
    t2 = t1 * (2^N - 1);
    t3 = floor(t2);
    y = t3 * ( (b - a) / (2^N - 1) ) + a;
end
