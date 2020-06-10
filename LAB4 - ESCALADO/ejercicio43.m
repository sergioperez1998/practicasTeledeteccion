function IMG1 = ejercicio43(img1)
    IMG1 = fft2(img1);
    mesh(abs(IMG1));
    axis([0 300 0 300 0 10^6])
    figure(2);
    mesh(unwrap(angle(IMG1)));
end