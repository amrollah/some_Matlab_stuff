close all;
clc;

A = imread('original.jpg');
B = imresize(A, 0.5, 'Antialiasing', true);

C1 = imresize(B, 2, 'nearest');
imwrite(C1, 'Resized-nearest-true.jpg', 'jpg');
imwrite(abs(C1 - A), 'Diff-nearest-true.jpg', 'jpg');


C2 = imresize(B, 2, 'bilinear');
imwrite(C2, 'Resized-bilinear-true.jpg', 'jpg');
imwrite(abs(C2 - A), 'Diff-bilinear-true.jpg', 'jpg');

C3 = imresize(B, 2, 'bicubic');
imwrite(C3, 'Resized-bicubic-true.jpg', 'jpg');
imwrite(abs(C3 - A), 'Diff-bicubic-true.jpg', 'jpg');