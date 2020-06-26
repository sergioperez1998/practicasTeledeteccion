function c = corte(img, porcentaje)
   histograma=histo(img);
   total=sum(sum(img));
   percentil = total * (porcentaje /100);
   corte = ceil(percentil);
   suma=0;
   for h = 1:length(histograma)
       suma=double(suma)+double(histograma(h));
       if suma >= corte
           m=h;
           break
       end
   end
   suma=0;
   for h = length(histograma):-1:1
       suma=double(suma)+double(histograma(h));
       if suma>= corte
           M=h;
           break
       end
   end
   imshow(img)
   figure(2)
   c=expan(img,m,M);
end