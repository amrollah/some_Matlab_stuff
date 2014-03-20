function [ Y, Cb, Cr ] = RGB2YCbCr( filename )
   
    x = imread(filename);

    R = x(:,:,1);
    G = x(:,:,2);
    B = x(:,:,3);

    Y = 0.257*R + 0.504*G + 0.098*B + 16;
    Cb = -0.148*R - 0.0291*G + 0.439*B + 128;
    Cr = 0.439*R - 0.368*G - 0.071*B + 128;
end
