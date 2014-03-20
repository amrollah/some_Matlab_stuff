close all;
clc;

x = imread('original.tif');

for bit=[8, 12]
    for quality = 0:25:100
        mode = 'Lossy';
        name = ['Q4_1_', int2str(bit), 'bits_', mode, '_', int2str(quality), 'quality.jpg'];
        imwrite(x, name, 'jpg', 'Bitdepth', bit, 'Mode', mode, 'Quality', quality);
        y = imread(name);
        %figure('name',name); imshow(y);
        display(name);
        display(mean(mean((double(x) - double(y)).^2,2),1));
        mode = 'Lossless';
        name = ['Q4_1_', int2str(bit), 'bits_', mode, '_', int2str(quality), 'quality.jpg'];
        imwrite(x, name, 'jpg', 'Bitdepth', bit, 'Mode', mode, 'Quality', quality);
        y2 = imread(name);
        display(name);
        %figure('name',name); imshow(y2);
        display(mean(mean((double(x) - double(y2)).^2,2),1));
    end
end
