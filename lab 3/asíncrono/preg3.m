a=2;k2=17/60;
s=tf('s');
G=(120)/((s+8)*(s+a)*s);
H=s*(s+a)/2*3/20+k2*s;
GH=G*H;
rltool(GH);