function [fdt,tau]=RC_sys_1o(R,C)
    arguments
        R=1
        C=1
    end
    tau=R*C;
    fdt=tf(1,[tau 1]);    
end