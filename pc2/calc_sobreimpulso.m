function X=calc_sobreimpulso(data,n)
    arguments
        data=0.7
        n=1
    end
    ezeta=data(1);
%     teta=data(2);
%     wd=data(3);
%     A1=data(4);
%     A2=data(5);
%     P1=data(6);
%     P2=data(7);
    
    X=exp(-ezeta*pi*n/sqrt(1-ezeta*ezeta));
end