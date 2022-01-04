Kin=10; N=10;   n=1/100;    Ka=50;  A=50;
Kout=50;Ra=10;  Jm=0.005;   JL=10;  Ki=10;
Kb=0.0706;

num=Kin*N*n*Ka;
temp=Ra*(Jm+n*n*JL)/Ki;
den=conv([1 0],conv([A Kout],[temp Kb]));

num=num/0.3;
den=conv(den,1/0.3);
tf(num,den)