function y = mu_law( x )
    mu = 255;
    y = ( log(1 + mu*abs(x)) / log(1 + mu) ) .* sign(x);
end
