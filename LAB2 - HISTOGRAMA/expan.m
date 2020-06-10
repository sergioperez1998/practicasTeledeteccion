function im2 = expan(im1, m, M)
    [F,C] = size(im1);
    im2=uint8(zeros(F,C));
    for f = 1:F
        for c = 1:C
            nd = im1(f,c);
            if nd>0
                ndp=(nd-m)*(254/(M-m))+1;
                im2(f,c) = ndp;
            end
        end
    end
    imshow(im2)


end