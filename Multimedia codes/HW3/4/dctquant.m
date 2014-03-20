function dctquant(FileName,dx,dy); 
% usage : dctquant('h:\el593\exp10\lena.img',256,256); (WYT: please verify) 
% Note, dctquant calls subfunctions mask2() 
Img=fread(fopen(FileName),[dx,dy]); 
colormap(gray(256)); 
image(Img'); 
set(gca,'XTick',[],'YTick',[]); 
title('Original Image'); 
truesize; 
drawnow 
y=blkproc(Img,[8 8],'dct2'); 
yy=blkproc(y,[8 8],'mask2'); 
yq=blkproc(yy,[8,8],'idct2'); 
figure; 
colormap(gray(256)); 
image(yq'); 
set(gca,'XTick',[],'YTick',[]); 
title('Quantized Image'); 
truesize; 
drawnow; 
end