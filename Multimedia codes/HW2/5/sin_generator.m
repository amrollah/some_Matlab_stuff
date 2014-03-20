function [y,t] = sin_generator( Fc, Fs, N )
    t = 0:1/Fs:(N-1)/Fs;
    t = t';
    y = sin(2*pi*Fc*t);
end
