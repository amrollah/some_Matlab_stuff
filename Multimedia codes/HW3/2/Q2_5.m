close all
clc

f=imread('rice.png'); 
t=input('insert type of noise(salt & pepper,speckle,gaussian): ' ); 
f1=imnoise(f,t);  
fil=input('insert type of filter(mean, median,adaptive): ' ); 
switch fil 
    case 'mean' 
        %you can use lines 9 & 10 or line 11 for your filter! 
        w=(1/9)*ones(3); 
        f2=imfilter(f1,w, 'conv','replicate'); 
        %f2 = filter2(fspecial('average',3),f1)/255; 
    case 'median' 
        f2=medfilt2(f1,[3 3]);  
    case 'adaptive' 
        f2=wiener2(f1,[3 3]);  
end 
  
figure; imshow(f);  
figure; imshow(f1);  
figure; imshow(f2);  