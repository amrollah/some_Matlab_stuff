close all
clc

filename = 'original.jpg';
f=imread(filename); 
t= rgb2gray(f);
imshow(t); 
figure,imhist(t); 
ylim('auto'); 
g=histeq(t,256);  
imwrite(g, 'Q2_2.jpg', 'jpg');
figure,imshow(g); 
figure,imhist(g); 
ylim('auto'); 