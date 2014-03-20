close all
clc

[ Y, Cb, Cr ] = RGB2YCbCr( 'lena.bmp' );

figure;
imshow(Y);
figure;
imshow(Cb);
figure;
imshow(Cr);

imwrite(Y, 'Q1_1_Y.bmp', 'bmp');
imwrite(Cb, 'Q1_1_Cb.bmp', 'bmp');
imwrite(Cr, 'Q1_1_Cr.bmp', 'bmp');