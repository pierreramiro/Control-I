s=tf('s');
GH=(s+1)/(s*(s+3)*(s*s +6*s+64));
rlocus(GH);sgrid(0.707,[]);
%rltool(GH);
Gs=feedback(GH,1,-1);
step(Gs);
