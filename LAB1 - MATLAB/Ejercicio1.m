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
title("Función X");
figure('Name','Funcion Y');
plot (y)
title("Función Y");
figure('Name','Función X vs Y');
plot (x, y)
title("Función X vs Y");
z = cos (x)
figure('Name','Función X vs Y vs Z');
plot (x, y, 'r', x, z, 'g')
title("Función X vs Y vs Z");