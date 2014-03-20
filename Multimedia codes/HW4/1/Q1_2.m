close all
clc

[ Y, Cb, Cr ] = RGB2YCbCr( 'lena.bmp' );

Y1 = imresize(Y, 0.5, 'Antialiasing', false);
Cb1 = imresize(Cb, 0.5, 'Antialiasing', false);
Cr1 = imresize(Cr, 0.5, 'Antialiasing', false);

Y2 = imresize(Y1, 2, 'bilinear');
Cb2 = imresize(Cb1, 2, 'bilinear');
Cr2 = imresize(Cr1, 2, 'bilinear');

imwrite(Y2, 'Q1_2_Y.bmp', 'bmp');
imwrite(Cb2, 'Q1_2_Cb.bmp', 'bmp');
imwrite(Cr2, 'Q1_2_Cr.bmp', 'bmp');