p=[1 3  3];
routh(p,EPS)

s=tf('s');
G=2/(3*s+1)/(s+1);
H=0.5;
sys_ol=G*H;
rlocus(sys_ol);

axis([-1.2 0.2 -1.8 1.8])
axis('equal')
dseta=0.707;
wn=1.33;
sgrid(dseta,wn);

polos=rlocus(sys_ol,1.68);
display(polos)

%rlocfind(sys_ol)
close all

rltool(sys_ol)%GUI que permite agregar compensadores al sistema


