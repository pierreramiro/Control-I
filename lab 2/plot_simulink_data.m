function plot_simulink_data(data)
    t=data.tout;
    values=data.simout;
    for i=1:length(values(1,:))
        plot(t,values(:,i));
        hold on
    end
    grid
    title('Data Simulink')
    xlabel('Tiempo [s]')
    hold off
end