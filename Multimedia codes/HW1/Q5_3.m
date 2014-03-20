im=imread('test.jpg'); 
imgray=rgb2gray(im); 
imgray=double(imgray);
for N = [3, 4, 5, 6]
    imQuant=Q5_1(imgray,0,255,N);
    subplot(2, 2, N - 2);
    imshow(uint8(imQuant));
    title(['Image with N = ', num2str(N)]);
end