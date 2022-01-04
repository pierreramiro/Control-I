s=tf('s');
den=(s+1)*(s+4)*(s+16);
syms k eps
Gs=1/den;
poly=Gs.den{1}+[0 0 0 k];
disp(poly)
temp=routh(poly,eps);
simplify(temp)

poly=Gs.den{1}+[0 0 0 1700];
temp=roots(poly);
temp=imag(temp(2));
Tcr=2*pi/temp;
Kcr=1700;

sys=feedback(Gs*Kcr,1,-1);
step(sys,0:0.01:8)


P=0.5*Kcr;
PI=0.45*Kcr*(1+1/(Tcr*s/1.2));
PD=0.5*Kcr*(1+Tcr*s/8);
PID=0.6*Kcr*(1 + 1/(0.5*Tcr*s) + Tcr*s/8);

sys=feedback(1,Gs*PID,-1);%ojo Entrada igualada a cero y pertubacion no nula
step(sys,0:0.01:5)
grid
title('Respuesta a perturbación escalón, Controlador PID')
