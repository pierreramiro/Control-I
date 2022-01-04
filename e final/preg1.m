clear; close all
s=tf('s');
Gp=27.2/(s^2+s+3);%escribimos la Ft de la planta
T=0.0161;
alfa=5.8284;
Gc=10*(alfa*T*s+1)/(T*s+1);%obtenemos el compensador
margin(Gc*Gp)%analizamos el MF
figure
step(feedback(Gp*Gc,1,-1));%vemos su respuesta ante escalon