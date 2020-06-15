function img2 = isodata(img1, Cat)
    [F, C, B] = size(img1);
    img2 = uint8(zeros(F, C, B));
    colores = cell(1, Cat);
    for c = 1:Cat
        colores{c, B} = [randi(255)];
    end
    %Colocamos los centroides (puntos intermedios que determinan a que
    %categoria va cada pixel)
    b = 0;
    c = 0;
    centroides = cell(1, Cat);
    while b < Cat
        while c < Cat
            y = round(rand * F);
            x = round(rand * C);
            if y ~= 0 && x ~= 0
                c = c + 1;
            end
            for banda = 1:B
                centroides{c} = double(img1(y, x, banda));
            end
            if prod(centroides{c}) > 0
                b = b + 1;
            end
        end
    end
    
%     b = 0;
%     bandas = zeros(1, B);
%     distancias = zeros(1, Cat);
%     grupos = cell(1, Cat);
%     temp = cell(1, Cat);
%     while b == 0
%         for f = 1:F
%             for c = 1:C
%                 for banda = 1:B
%                     bandas(banda) = img1(f, c, banda);
%                 end
%                 nd = double(bandas);
%                 if prod(nd) > 0
%                     for l = 1:length(centroides)
%                         distancias(l) = norm(nd - centroides{l});
%                     end
%                     distanciaMenor = min(distancias);
%                     categoria = find(distancias == distanciaMenor, 1, 'last');
%                     img2(f, c, :) = colores{categoria};
%                     grupos{categoria} = {grupos{categoria} ; nd};
%                 end
%             end
%         end
%         for l = 1:length(centroides)
%             centroides{l} = mean(centroides{l});
%         end
%         if cellfun(@isequal, grupos, temp)
%             b = 1;
%         end
%         temp = grupos;
%         imshow(img2);
%     end
    bandas = zeros(1, B);
    distancias = zeros(1, Cat);
    grupos = cell(1, Cat);
    for n = 1:10
        iteracion = iteracion + 1;
        for f = 1:F
            for c = 1:C
                for banda = 1:B
                    bandas(banda) = img1(f, c, banda);
                end
                nd = double(bandas);
                if prod(nd) > 0
                    for l = 1:length(centroides)
                        distancias(l) = norm(nd - centroides{l});
                    end
                    distanciaMenor = min(distancias);
                    categoria = find(distancias == distanciaMenor, 1, 'last');
                    img2(f, c, :) = colores{categoria};
                    grupos{categoria} = {grupos{categoria} ; nd};
                end
            end
        end
        for l = 1:length(centroides)
            centroides{l} = mean(centroides{l});
        end
        imshow(img2);
    end
end