clear; close all
s=tf('s');

poly=[1 25 256 281];%establecemos el polinomio del LGR
roots(poly)         %hallamos las raices para trazar el LGR
Gp=25/(s*(s^2+25*s+256)+256);
rlocus(Gp)% analizamos el LGR sin controlador
sgrid(0.707,[])
Gc=5.4687*(s+5)*(s+9.1823)/s;%establecemos la FT del controlador
figure
step(feedback(Gp*Gc,1,-1));%analizamos respuesta ante escalon
figure
rlocus(Gp*Gc)   %vemos el LGR de la funcion a lazo abierto 
                %para verificar que se obtuve el LGR deseado
sgrid(0.707,[])
figure
margin(Gp*Gc) %analizamos el MF del sistema