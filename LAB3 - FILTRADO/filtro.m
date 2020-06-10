function im2=filtro(im, cf)
    [F,C] = size(im);
    im2= uint8(zeros(F,C));
    for f = 2:F-1
        for c = 2:C-1
            en = double(im(f-1:f+1, c-1:c+1));
            ndp = sum(sum(en .* cf));
            im2(f,c) = ndp;
        end
    end
end