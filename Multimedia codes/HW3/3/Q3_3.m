close all;
clc;

filename = 'Original.jpg';
f = imread(filename); 
f = rgb2gray(f);
%f = ind2gray(f,gray(256));  
figure, imshow(f);
F = fft2(f);  
F = fftshift(F);
figure, imshow(uint8(abs(ifft2(F))));

for i=[1000,10000,100000, 1000000, 10000000,20000000]
    figure, imshow(uint8(abs(ifft2(low_pass_filter(F, i)))));
    imwrite(uint8(abs(ifft2(low_pass_filter(F, i)))), ['Q3_3_',int2str(i), '.jpg'], 'jpg')
end