syms EPS;
k=-9999999999;
den=[1 k 1 1 1];
sol=routh(den,EPS);
simplify(sol);
display (sol)