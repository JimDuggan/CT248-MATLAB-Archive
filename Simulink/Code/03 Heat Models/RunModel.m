clear;

params = 0:.1:1;

for i = params
    p_str = sprintf('%.2f',i);
    
    set_param('Room/K','Value',p_str);
    simOut = sim('Room');
    
    plot(simOut.RoomTemperature.Time,...
         simOut.RoomTemperature.Data)
    hold on;
end

hold off;