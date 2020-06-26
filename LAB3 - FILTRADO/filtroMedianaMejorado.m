function im2 =filtroMedianaMejorado(im)
    [F,C] = size(im);
    im2= uint8(zeros(F,C));
    for f = 2:F-1
       for c = 2:C-1
            en = double(im(f-1:f+1, c-1:c+1));
            m = min(min(en));
            M = max(max(en));
            nd = median(reshape(en,1,9));
            if nd - m >= 40 || M - nd >= 40
                im2(f,c) = nd;
            else
                im2(f,c) = im(f,c);
            end
       end
    end
    imshow(im)
    figure(2)
    imshow(im2)
end