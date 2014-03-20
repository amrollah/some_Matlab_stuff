close all;
clc;

A = imread('original.jpg');
B = imresize(A, 0.5, 'Antialiasing', false);

tic
C1 = imresize(B, 2, 'nearest');
toc
imwrite(C1, 'Resized-nearest-false.jpg', 'jpg');
imwrite(abs(C1 - A), 'Diff-nearest-false.jpg', 'jpg');


tic
C2 = imresize(B, 2, 'bilinear');
toc
imwrite(C2, 'Resized-bilinear-false.jpg', 'jpg');
imwrite(abs(C2 - A), 'Diff-bilinear-false.jpg', 'jpg');


tic
C3 = imresize(B, 2, 'bicubic');
toc
imwrite(C3, 'Resized-bicubic-false.jpg', 'jpg');
imwrite(abs(C3 - A), 'Diff-bicubic-false.jpg', 'jpg');
