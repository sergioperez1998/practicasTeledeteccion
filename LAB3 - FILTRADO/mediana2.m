function im2 = mediana(im1)
%im1 = im1(:,:,b); %Se indica la banda a extraer para que sea monobanda
[F, C] = size(im1);
im2 = uint8(zeros(F, C));
for f = 2:F-1 %Los bordes de la imagen no se tienen en cuenta, así que se excluyen
    for c = 2:C-1
        en = double(im1(f-1:f+1, c-1:c+1));
        maximo = max(en(:));
        minimo = min(en(:));
        ndp = median(reshape(en, 1, 9));
        if ndp - minimo >= 50 || maximo - ndp >= 50
           im2(f, c) = ndp;  
        else
           im2(f, c) = im1(f, c);
        end
    end
end
imshow(im1);
figure(2)
imshow(im2);