function img = ndvi(r, nir)
    [F, C] = size(r);
    img = zeros(F, C);
    for f = 1:F
        for c = 1:C
            img(f, c) = ((double(nir(f, c))-double(r(f, c))))/(double(nir(f, c))+double(r(f, c)));
            img(f, c) = ((img(f,c)+1)/2)*254+1;
        end
    end
    img = uint8(img);
    imshow(img);
end