function data=calc_2o (wn_2,coef)
    %la variable data tiene las sigte información=[ezeta;teta;wn;A1;A2;P1;P2];
    wn=sqrt(wn_2);
    ezeta=coef/(2*wn);
    A1=-(0.5) +ezeta/(2*sqrt(ezeta*ezeta-1));
    A2=-(0.5) -ezeta/(2*sqrt(ezeta*ezeta-1));
    P1=-ezeta*wn +wn*sqrt(ezeta*ezeta-1);
    P2=-ezeta*wn -wn*sqrt(ezeta*ezeta-1); 
    teta=0;
    wd=0;
    fprintf('\n')
    if ezeta==1
        fprintf('criticamente amortiguado\n');
        display(ezeta);display(A1);display(A2);display(P1);display(P2);
    elseif ezeta<1
        fprintf('sub-amortiguado\n');
        teta=atan(sqrt(1-ezeta*ezeta)/ezeta);
        wd=wn*sqrt(1-ezeta*ezeta);    
    else %ezeta >1
        fprintf('sobre-amortiguado\n');
        display(ezeta);display(A1);display(A2);display(P1);display(P2);
    end
    display(ezeta);display(teta);display(wd);display(A1);display(A2);display(P1);display(P2);
    data=[ezeta;teta;wd;A1;A2;P1;P2];
end