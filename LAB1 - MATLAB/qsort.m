function y = qsort (x)
    longitud=length(x);
    if longitud <= 1
        y = x;
    else
        x1=[];
        x2=[];
        for i=1:longitud-1
        
            if x(i) < x(longitud)
                x1=[x1 x(i)];
            else
                x2=[x2 x(i)];
            end
        end
    y=[qsort(x1) x(longitud) qsort(x2)];
    end
end