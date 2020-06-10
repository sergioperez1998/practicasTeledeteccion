%Ejercicio 4.1
function img2 = diezmado(img1, R)
    [F, C] = size(img1);
    if R == 0.5
        img2 = img1(1:2:F, 1:2:C);
    end
    if R == 0.67
        img2 = img1(1:3:F, 1:3:C);
    end
    if R == 0.75
        img2 = img1(1:4:F, 1:4:C);
    end
    imshow(img2);
end
    
