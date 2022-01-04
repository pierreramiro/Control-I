clear;close all
s=tf('s');
sys=1/(s*s +2*s);
Kp=3.344;
Td=0.0485;
Gc=Kp*(1+Td*s);

step(feedback(Gc*sys,1,-1),10)


% rlocus(sys*Gc)
% 
% syms ezeta
% X_max= 1/exp(ezeta*pi/sqrt(1-ezeta*ezeta));
% temp=eval(solve(X_max==0.1,ezeta));
% ezeta=abs(temp(1));
% sgrid(ezeta,[])
%rltool(sys)