function ts=calc_ts(data)
     ezeta=data(1);
%     teta=data(2);
     wd=data(3);
%     A1=data(4);
%     A2=data(5);
%     P1=data(6);
%     P2=data(7);
    wn=wd/sqrt(1-ezeta*ezeta);
    ts=4/(ezeta*wn);
end