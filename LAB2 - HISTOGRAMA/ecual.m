function img2 = ecual(img)
    histograma=histo(img);
    hitogramaAcu = zeros(1,255);
    ac = 0;
    for h = 1:255
        ac = ac + histograma(h);
        histogramaAcu(h) = ac;
    end
    [F,C] = size(img);
    pValidos = 0;
    for f = 1:F
        for c = 1:C
            nd = img(f,c);
            if nd>0
                pValidos = pValidos + 1;
            end
        end
    end
    PE = 255 / pValidos;
    im2=uint8(zeros(F,C));
    for f = 1:F
        for c = 1:C
            nd = img(f,c);
            if nd == 0
                nuevoNd = 0;
            else
                nuevoNd = histogramaAcu(nd) * PE;
            end
            im2(f,c) = nuevoNd;
        end
    end
    imshow(img)
    figure(2)
    imshow(im2)
    
    
    
