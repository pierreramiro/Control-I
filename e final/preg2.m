clear; close all
s=tf('s');

Gp=1/s/(s+2);%establecemos la FT de la planta
Gc=2*(s+4);%establecemos el controlador PD
step(feedback(Gp*Gc,1,-1));%vemos respuesta ante escalon
figure
margin(Gp*Gc)%analizamos el MF