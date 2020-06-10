function im2 =filtroMedianaMejorado(im)
    [F,C] = size(im);
    im2= uint8(zeros(F,C));
    for f = 2:F-1
       for c = 2:C-1
            en = double(im(f-1:f+1, c-1:c+1));
            m = min(min(en));
            M = max(max(en));
            nd = im(f,c);
            if nd == m || nd == M
                ndp = median(reshape(en,1,9));
            else
                ndp = nd;
            end
            im2(f,c) = ndp;
       end
    end
    imshow(im)
    figure(2)
    imshow(im2)
end