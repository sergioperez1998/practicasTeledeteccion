%%%%%%%%%%%%&PRIMERA PARTE%%%%%%%%%%
a = 5
b = a ^ 2
x = 0:1:9
y = x .^ 2
z = x * 2
c = 10:2:20
d = c - 1
clear
%%%%%%%%%%%%%SEGUNDA PARTE%%%%%%%%%%
sin (pi / 4)
x = 0:0.01:2 * pi
y = sin (x)
figure('Name','Funcion X');
plot (x)
title("Funci�n X");
figure('Name','Funcion Y');
plot (y)
title("Funci�n Y");
figure('Name','Funci�n X vs Y');
plot (x, y)
title("Funci�n X vs Y");
z = cos (x)
figure('Name','Funci�n X vs Y vs Z');
plot (x, y, 'r', x, z, 'g')
title("Funci�n X vs Y vs Z");