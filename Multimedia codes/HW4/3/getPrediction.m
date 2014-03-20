function [ Img3, ImgErr ] = getPrediction( im_in1, im_in2 )
s = size(im_in1);
Comp_img(1:s(1), 1:s(2)) = 0;
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
        [t_x, t_y] = EBLK(im_in1, im_in2, Bk_size, Bk_location, S_start, S_end);
        Comp_img(i:i+15, j:j+15) = im_in1(i-t_x:i-t_x+15, j-t_y:j-t_y+15);
    end 
end
Img3 = uint8(Comp_img);
ImgErr = int16(im_in2) -int16(Img3);
end
