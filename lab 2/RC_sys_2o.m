function [fdt,wn,dzeta]=RC_sys_2o(R1,C1,R2,C2)
    arguments
        R1=1
        C1=1
        R2=1
        C2=1     
    end
    wn_2=1/(R1*C1*R2*C2);
    wn=sqrt(wn_2);
    dzeta=wn*(R1*C1+R2*C2+R1*C2)/2;
    fdt=tf(wn_2,[1 2*dzeta*wn wn_2]);
end