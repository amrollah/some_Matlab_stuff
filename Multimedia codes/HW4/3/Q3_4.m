fin = '../original.avi';    
mov_in = aviread(fin,30); 
im_in1 = frame2im(mov_in);   
mov_in = aviread(fin,32); 
im_in2 = frame2im(mov_in);
for i=5:5:20
    encode( im_in1, im_in2, i);
end