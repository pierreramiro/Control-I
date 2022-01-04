s=tf('s');
den=(s+1)*(s+4)*(s+16);
sys=1/den;
step(sys);

T=1.748;
L=0.152;

P=T/L;
PI=0.9*P*(1+1/(L*s/0.3));
PID=1.2*P*(1+1/(2*L*s)+0.5*L*s);

sys=feedback(1,sys*PID,-1);
step(sys,0:0.01:20)
grid
title('Respuesta a perturbación escalón, Controlador PID')
