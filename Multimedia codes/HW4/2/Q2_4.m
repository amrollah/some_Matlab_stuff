close all
clc

fin = 'foreman.avi'; 
fout = 'q2_4.avi'; 
fileinfo = aviinfo(fin); 
nframes = fileinfo.NumFrames; 
aviobj = avifile(fout, 'compression', 'none', 'fps',fileinfo.FramesPerSecond); 
for i = 1:50 
%Read frames from input video 
mov_in = aviread(fin,i); 
aviobj = addframe(aviobj,mov_in); 
end; 
x = imread('../lena.bmp');
x1 = imresize(x, [fileinfo.Height fileinfo.Width]);
f1 = im2frame(x1(:,:,1), gray(256));
f2 = im2frame(x1(:,:,2), gray(256));
f3 = im2frame(x1(:,:,3), gray(256));
for i = 1:15
    aviobj = addframe(aviobj,f1);
end
for i = 1:15
    aviobj = addframe(aviobj,f2);
end
for i = 1:15
    aviobj = addframe(aviobj,f3);
end
aviobj = close(aviobj); 
return;