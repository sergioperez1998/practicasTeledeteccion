function img2 = cortehsv(img1)
    img2 = rgb2hsv(img1);
    img2 = uint8(img2 .* 255);
    S = img2(:, :, 2);
    [F, C] = size(S);
    for f = 1:F
        for c = 1:C
            nd = S(f, c);
            if nd < 20
                img2(f, c, 2) = 1;
            else if nd > 30
                    img2(f, c, 2) = 255;
                end
            end
        end
    end
    img2 = double(img2) ./ 255;
    img2 = hsv2rgb(img2);
    img2 = uint8(img2 .* 255);
    imshow(img2);
end