function [dif, err] = dpcm(infilename, n)
    [x,Fs,N] = wavread(infilename,'native');
    diff_b_q = diff(x);
    dif = 2^(n-1) * diff_b_q / 2^(N-1);
    err = diff_b_q - dif;
end
