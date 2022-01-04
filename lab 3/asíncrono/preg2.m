s=tf('s');
G=1/(s*s);
H=1/(0.1*s+1);
GH=G*H;
rlocus(GH);sgrid(0.5,[]);