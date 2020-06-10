function img2 = seudo(img1)
    [F, C] = size(img1);
    img2 = uint8(zeros(F, C, 3));
    for f = 1:F
        for c = 1:C
            nd = img1(f, c);
            if nd > 0
                if nd < 128
                    ndp = [0, 0, 255];
                else
                    ndp = [255, 0, 0];
                end
                img2(f, c, :) = ndp;
            end
        end
    end
    imshow(img2)
end