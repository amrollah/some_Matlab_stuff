close all;
clc;

% Prepare image  
%filename=input('insert file name: '); 
filename = 'Original.jpg';
f = imread(filename);  
f = rgb2gray(f);
f = ind2gray(f,gray(256));  
imshow(f)  
% Compute Fourier Transform  
F = fft2(f,256,256);  
%F = fftshift(F); % Center FFT  
% Measure the minimum and maximum value of the transform amplitude 
%      min(min(abs(F))) %   0  
%      max(max(abs(F))) % 100  
figure,imshow(abs(F),[]); colormap(jet); colorbar  
figure,imshow(log(1+abs(F)),[]); colormap(jet); colorbar  

% Look at the phases  
figure, imshow(angle(F),[-pi,pi]); colormap(jet); colorbar  