function c = corte(img, porcentaje)
   suma=sum(sum(img));
   percentil = suma * (porcentaje /100);
   corte = ceil(percentil);
   histograma=histo(img);
   suma=0;
   m=0;
   M=0;
   for h = 1:255
       suma=double(suma)+double(histograma(h));
       if suma>= corte
           m=h;
           break
       end
   end
   suma=0;
   for h = 255:-1:1
       suma=double(suma)+double(histograma(h));
       if suma>= corte
           M=h;
           break
       end
   end
   imshow(img)
   figure(2)
   c=expan(img,M,m);
end