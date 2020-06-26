function im2=filtro(im, cf)
    [Fila,Columna] = size(cf);
    sumatorio = sum(sum(cf));
    cfN = cf;
    for fila = 1:Fila
        for columna = 1:Columna
            cfN(fila,columna) = double(cf(fila,columna)/sumatorio);
        end
    end
    [F,C] = size(im);
    im2= uint8(zeros(F,C));
    for f = 2:F-1
        for c = 2:C-1
            en = double(im(f-1:f+1, c-1:c+1));
            ndp = sum(sum(en .* cfN));
            im2(f,c) = ndp;
        end
    end
    imshow(im2)
end