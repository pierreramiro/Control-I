clear; close all;
s=tf('s');
sys=1/(s*(s+1)*(s+5));
syms epsilon Kp
poly=sys.den{1}+[0 0 0 Kp];%hallamos el polinomio de RH
temp=routh(poly,epsilon);
simplify(temp)%obtenemos el arreglo de RH
Kcr=eval(solve(ans(3,1)==0));%resolvemos la ecuación para hallar el Kcr
display(Kcr)
step(feedback(Kcr*sys,1,-1))%vemos la respuesta oscilatoria
wn=rlocus(sys,Kcr);%obtenemos los polos para Kcr usando la función de rlocus
wn=imag(wn(2));
Pcr=2*pi/wn;%hallamos el Pcr
display(Pcr)
Gc=0.075*Kcr*Pcr*(s+4/Pcr)*(s+4/Pcr)/s;%obtenemos el controlador
display(Gc)
step(feedback(Gc*sys,1,-1))
Gc_2=8*(s+0.5)^2/s;
step(feedback(Gc_2*sys,1,-1))
