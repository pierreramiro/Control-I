function [fdt,kp,tau]=Opamp_sys(R1,R2,C)
    arguments
        R1=1
        R2=1
        C=0
    end
    kp=-R2/R1;
    tau=C*R2;
    fdt=tf(kp,[tau 1]);
end