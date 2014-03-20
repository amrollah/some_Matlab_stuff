close all;
clc;

% Prepare image  
%filename=input('insert file name: '); 
filename = 'original.jpg';
f = imread(filename);
f = rgb2gray(f);
f = ind2gray(f,gray(256));  
% Compute Fourier Transform  
F = fft2(f,256,256);  
F = fftshift(F); % Center FFT  
% Measure the minimum and maximum value of the transform amplitude 
%      min(min(abs(F))) %   0  
%      max(max(abs(F))) % 100  
figure;
subplot(1,2,1);
imshow(f);
subplot(1,2,2);
imshow(log(1+abs(F)),[]); colormap(jet); colorbar

for i=15:15:90
    t = imrotate(f, i);
    T = fft2(t,256,256);  
    T = fftshift(T); % Center FFT  
    % Measure the minimum and maximum value of the transform amplitude 
    %      min(min(abs(F))) %   0  
    %      max(max(abs(F))) % 100  
    figure;
    subplot(1,2,1);
    imshow(t);
    subplot(1,2,2);
    imshow(log(1+abs(T)),[]); colormap(jet); colorbar
end
