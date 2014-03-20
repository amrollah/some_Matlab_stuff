close all
clc

filename='original.jpg';
f=imread(filename); 
f= rgb2gray(f);
f=ind2gray(f,gray(256));  
f1=filter2(fspecial('unsharp'),f);  
f2=filter2(fspecial('average'),f);  
f3=filter2(fspecial('disk'),f);  
f4=filter2(fspecial('gaussian'),f);  
f5=filter2(fspecial('laplacian'),f);  
f6=filter2(fspecial('log'),f);  
f7=filter2(fspecial('motion'),f);  
f8=filter2(fspecial('prewitt'),f);  
f9=filter2(fspecial('sobel'),f);  
figure; imshow(f);  
figure; imshow(f1); 
figure; imshow(f2); 
figure; imshow(f3); 
figure; imshow(f4); 
figure; imshow(f5); 
figure; imshow(f6); 
figure; imshow(f7); 
figure; imshow(f8); 
figure; imshow(f9); 