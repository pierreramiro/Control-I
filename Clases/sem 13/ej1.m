clear; close all
s=tf('s');
sys=tf([1000],[1 10 0]);
%error velocidad 1/1000
%sobreimpulso menor a 10%
syms ezeta
X_max= 1/exp(ezeta*pi/sqrt(1-ezeta*ezeta));
temp=eval(solve(X_max==0.1,ezeta));
ezeta=abs(temp(1));
rlocus(sys);
sgrid(ezeta,[])
figure
rlocus(sys*(16+s));
sgrid(ezeta,[])
