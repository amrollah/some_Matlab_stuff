fin = '../original.avi';    
mov_in = aviread(fin,30); 
im_in1 = frame2im(mov_in);   
mov_in = aviread(fin,32); 
im_in2 = frame2im(mov_in);
s = size(im_in1);
mv_x(1:s(1)/16, 1:s(2)/16) = 0;
mv_y(1:s(1)/16, 1:s(2)/16) = 0;
ci = 0;
for i=1:16:s(1)
    cj = 0;
    ci = ci + 1;
    for j=1:16:s(2)
        cj = cj + 1;
        Bk_location(1) = i;
        Bk_location(2) = j;
        Bk_size(1) = 16;
        Bk_size(2) = 16;
        S_start(1) = max(1, i - 16);
        S_start(2) = max(1, j - 16);
        S_end(1) = min(s(1)-16, i + 16);
        S_end(2) = min(s(2)-16, j + 16);
        [mv_x(ci, cj), mv_y(ci, cj)] = EBLK(im_in1, im_in2, Bk_size, Bk_location, S_start, S_end);
    end 
end
quiver(1:16:s(2), floor((s(1)-1)/16)*16+1:-16:1, mv_x, mv_y);
