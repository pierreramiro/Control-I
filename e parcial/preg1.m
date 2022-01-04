Ra=1;
La=0.5;
J=0.01;
f=0.1;
Kt=0.01;
Kb=0.01;
s=tf('s');
sys=Kt/(s*((Ra+s*La)*((J+0.12)*s+f+0.5)+Kb*Kt));