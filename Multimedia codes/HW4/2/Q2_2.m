close all
clc

fin = '../original.avi'; 
fout = 'q2_2.avi'; 
fileinfo = aviinfo(fin); 
nframes = fileinfo.NumFrames; 
aviobj = avifile(fout, 'compression', 'none', 'fps',fileinfo.FramesPerSecond); 
for i = 1:nframes 
%Read frames from input video 
mov_in = aviread(fin,i); 
im_in = frame2im(mov_in); 
%Do processing on each frame of the video 
%In this example - scaling 
[ht wd ch] = size(im_in); 
im_out = imresize(im_in, [240 320], 'bilinear'); 
%Write frames to output video 
frm = im2frame(im_out, gray(256)); 
aviobj = addframe(aviobj,frm); 
end; 
nframes %Just to display frame number 
%Don't forget to close output file 
aviobj = close(aviobj); 
return;