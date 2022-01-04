function fdt=RLC_sys(R,L,C)
    arguments
        R=1
        L=1
        C=1
    end
fdt=tf([C 0],[L*C R*C 1]);