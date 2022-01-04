G1=tf(2,[1 1]);
G2=tf([4 1],[1 0]);
G3=tf(1.5,[3 1]);
H1=tf(1,[0.1 1]);
H2=tf(5,[0.2 1]);
Cs_Rs=series(G1,feedback(series(G2,G3),series(H2,H1),-1));

J=0.01;    %inercia
b=0.1;    %coeficient rozamiento viscoso
K=0.01;   %ctte torque-corriente
R=1;   %Resistencia armadura
L=0.5;    %inductancia

num=K;
den=conv([L R],[J b]);den(1,end)=den(1,end)+K*K;
fdt=tf(num,den);