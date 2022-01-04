clear,close all;
s=tf('s');
sys=56.7/s*(-0.0139*0.232+0.0203*(s+0.313))/((s+0.426)*(s+0.313)+0.0139*56.71);
step(0.2*sys);
figure
step(feedback(2.5*sys,1,-1)*0.2);
title("Respuesta ángulo elevador = 0.2 del sistema realimentado");
rlocus(sys)
Gc=5*(2.25+s);
ltiview(feedback(Gc*sys,1,-1))
step(feedback(Gc*sys,1,-1)*0.2);

