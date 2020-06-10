function img = falso(r, g, b, nir)
    img = r;
    img(:, :, 2) = g;
    img(:, :, 3) = b;
    figure(1);
    imshow(img);
    img(:, :, 1) = nir;
    figure(2);
    imshow(img);
end