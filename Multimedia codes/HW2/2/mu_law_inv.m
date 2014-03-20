function x = mu_law_inv( y )
    mu = 255;
    x = sign(y) .* ( ( (mu+1).^(abs(y)) - 1 ) / mu );
end
