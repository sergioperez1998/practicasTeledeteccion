%Ejercicio 4.2, R=2 siempre.
function img2 = amplia(img1)
    [F, C] = size(img1);
    F2 = F*2;
    C2 = C*2;
    img2 = zeros(F2, C2);
    img2(1:2:F2, 1:2:C2) = img1;
    for f = 1:2:F2
        for c = 2:2:(C2-1)
            nd1 = img2(f, c-1);
            nd2 = img2(f, c+1);
            ndp = (nd1+nd2)/2;
            img2(f,c) = ndp;
        end
    end
    for f = 2:2:(F2-1)
       f1 = img2(f-1, :);
       f2 = img2(f+1, :);
       fnd = (f1+f2)/2;
       img2(f, :) = fnd;
    end
    imshow(img1);
    figure(2)
    img2 = uint8(img2);
    imshow(img2);
end
    