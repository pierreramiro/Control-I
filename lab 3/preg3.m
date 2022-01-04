syms K EPS
s=tf('s');
p=conv(conv([1 0],[1 -1]),[1 6])+[0 0 K K];
sol=routh(p,EPS);
simplify(sol)
