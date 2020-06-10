%Ejercicio 4.4, R es una variable indeterminada
function img2 = ampliafft(img1, R)
    [F, C] = size(img1);
    FP = F * R;
    CP = C * R;
    IMG1 = fft2(img1);
    IMG2 = zeros(FP, CP);
    IMG2(1:(F/2), 1:(C/2)) = IMG1(1:(F/2), 1:(C/2));
    %Copiar img1 en los otros cuadrantes
    IMG2(FP-(F/2):FP, 1:(C/2)) = IMG1((F/2):F, 1:(C/2));
    IMG2(1:(F/2), CP-(C/2):CP) = IMG1(1:(F/2), (C/2):C);
    IMG2(FP-(F/2):FP, CP-(C/2):CP) = IMG1((F/2):F, (C/2):C);
    %Volver al dominio del espacio (ifft2) obteniendo ahora img2
    %Amplificar img2
    img2 = real(ifft2(IMG2))*((FP*CP)/(F*C));
    %Hacer cast uint8
    img2 = uint8(img2);
    %Pinta la imagen en pantalla
    imshow(img2);
end