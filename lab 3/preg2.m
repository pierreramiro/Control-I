syms K EPS
G=tf([0.4 2],conv([3 1],[1 1]));
H=0.5;
GH=G*H;
rlocus(GH)
grid

pol=conv([3 1],[1 1])+[0 0.2*K K];
routh(pol,EPS)