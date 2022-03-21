a17 = readtable("aimsir17.csv");

plot(a17.DayNumber,a17.temp,"+b");

s_a17 = a17(a17.station=="DUBLIN AIRPORT" | a17.station=="MACE HEAD" ,:);

gscatter(s_a17.DayNumber,s_a17.temp,s_a17.station);

storm = a17((a17.station=="VALENTIA OBSERVATORY" | ...
                      a17.station=="ROCHES POINT") & ...
                      a17.month==10 & ...
                      a17.day==16,:);

subplot(1,2,1);
p = gscatter(storm.hour,storm.msl,storm.station);
grid on;
set(p, 'linestyle', '-');
xlim([0 23]);
title("Atmospheric Pressure (hPa)");
subplot(1,2,2);
p = gscatter(storm.hour,storm.wdsp,storm.station);
grid on;
xlim([0 23]);
set(p, 'linestyle', '-');
title("Mean Windspeed (knots)");

