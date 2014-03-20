fin = '../original.avi';    
mov_in = aviread(fin,30); 
im_in1 = frame2im(mov_in);   
mov_in = aviread(fin,32); 
im_in2 = frame2im(mov_in);
imwrite(im_in1, 'frame1.jpg', 'jpg');
imwrite(im_in2, 'frame2.jpg', 'jpg');

Bk_location(1) = 50;
Bk_location(2) = 50;
Bk_size(1) = 16;
Bk_size(2) = 16;
S_start(1) = 34;
S_start(2) = 34;
S_end(1) = 66;
S_end(2) = 66;
[mv_x, mv_y] = EBLK(im_in1, im_in2, Bk_size, Bk_location, S_start, S_end)