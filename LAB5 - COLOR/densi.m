function img2 = densi(r, nir)
    GRIS = [128, 128, 128];
    AZUL = [0, 0, 255];
    ROJO = [255, 0, 0];
    VERDE = [0, 255, 0];
    AMARILLO = [255, 255, 0];
    iv = ndvi(r, nir);
    [F, C] = size (iv);
    img2 = uint8(zeros(F, C, 3));
    for f = 1:F
        for c = 1:C
            nd = iv(f, c);
            if nd > 0
                if nd < 128
                    ndp = GRIS;
                else if nd < 144
                        ndp = AZUL;
                else if nd < 160
                        ndp = VERDE;
                else if nd < 176
                        ndp = AMARILLO;
                    else
                        ndp = ROJO;
                    end
                    end
                    end
                end
                img2(f, c, :) = ndp;
            end
        end
    end
    imshow(img2);
end