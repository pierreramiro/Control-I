J=1;    %inercia
Kt=1;   %ctte torque-corriente
n=1;    %relaci'on transformacion engranajes
Ra=1;   %Resistencia armadura
R=1;    %Radio engranaje
fn=1;   %Fuerza a aplicar
B=1;    %coeficient rozamiento viscoso
Ke=1;   %ctte torque electromotriz ke*wg

Cte_E=Kt*n/Ra;
Ctte=n*n*R*fn;
Cte_wa=Kt*Ke/Ra+B;

%J*s*wa = cte_E*E - ctte - cte_wa*wa

%revisar transformada de una ctte
