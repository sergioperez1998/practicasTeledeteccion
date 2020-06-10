function im2 =filtroMediana(im)
    [F,C] = size(im);
    im2= uint8(zeros(F,C));
    for f = 2:F-1
       for c = 2:C-1
            en = double(im(f-1:f+1, c-1:c+1));
            %Lo mismo de la funcion anterior excepto que el ndp seria la
            %formula de la mediana
            ndp = median(reshape(en,1,9));
            %Aqui estaria la decision del error de moteado, si es mayor a
            %tal valor se aplica a im2 si no se deja con el mismo valor.
            im2(f,c) = ndp;
       end
    end
    imshow(im)
    figure(2)
    imshow(im2)
end

% La funcion reshape(x,3,2), deforma la matriz, de forma que leeria por
% columnas obteniendo 3 filas y 2 columnas
%a = [1 2 3; 4 5 6; 7 8 9;]
%reshape(a,1,6) --> se quedaria una sola fila y 6 columnas y a esto hacer
%la mediana.
%Al aplicar la mediana, se elimina el error de moteado, al aplicar esta lo
%se emborrona la imagen por lo que lo ideal es aplicar el filtro de media
%pero solo aplicarlo si el pixel del medio tiene error de moteado, si se
%aplica a todos los pixeles se enturvia la imagen. Habrá que decidir si se
%aplica al entorno o no.