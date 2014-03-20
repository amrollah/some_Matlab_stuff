function [y, t] = beat_note_generator()
    t = 0:0.005:5;
    A = 1;
    B = 1;
    f_c = 3000;
    f_delta = 250;
    y = A * ( cos(2*pi*t*(f_c-f_delta)) ) + B * ( cos(2*pi*t*(f_c+f_delta)) );
end