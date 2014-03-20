function [] = encode( Img1, Img2, n)
    [Img3, ImgErr] = getPrediction(Img1, Img2);
    y = blkproc(ImgErr, [8,8], 'dct2');
    yy = blkproc(y, [8,8], 'mask', n);
    yq = blkproc(yy, [8,8], 'idct2');
    yq = int16(yq)+int16(Img3);
    figure;
    imshow(uint8(yq));
    imwrite(uint8(yq), ['Q3_4_', int2str(n), '.jpg']);
end
