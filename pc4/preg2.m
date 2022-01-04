clear;close all
s=tf('s');
sys=44.4/(0.015*s+1)/100/s;
Gc=4.3694;
rlocus(Gc*sys)
% Kp=3.344;
% Td=0.0485;
% Gc=Kp*(1+Td*s);