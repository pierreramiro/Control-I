s=tf('s');
Gp=1/((s+1)*(s+2)*(s+3));Gl=1/(s+2);
syms k EPS;
poly=k*Gp.num{1}+Gp.den{1};
temp=routh(poly,EPS);
simplify(temp)
%%
K=60;
sys_1=feedback(K*Gp,1,-1);
temp=feedback(1,K*Gp,-1);
sys_2=temp*Gl;
step(sys_1,30);grid;hold on;step(sys_2,30);
legend("respuesta ante R(s)",'respuesta ante L(s)');

