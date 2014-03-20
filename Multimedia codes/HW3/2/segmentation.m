function out = segmentation( fileName , threshold)
    x = imread(fileName);
    x = rgb2gray(x);
    x = double(x) / 256;
    n = size(x);
    out = x;
    for i = 1:n(1)
        for j = 1:n(2)
            if (out(i, j) > threshold)
                out(i, j) = 1;
            else
                out(i, j) = 0;
            end
        end
    end
    imshow(out);
end
