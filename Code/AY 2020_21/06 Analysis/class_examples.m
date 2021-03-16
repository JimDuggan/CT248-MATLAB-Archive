clear;

weather = readtable("weather.xlsx");

weather.datef = c2date(weather.date);


% Wind speed for two stations in October as a time series

q1 = weather.station=="MACE HEAD" & ...
     weather.month==10;
 
q2 = weather.station=="DUBLIN AIRPORT" & ...
     weather.month==10;
 
m_h = weather(q1,:);
d_a = weather(q2,:);


plot(m_h.datef,m_h.wdsp,"r");
hold on;
plot(d_a.datef,d_a.wdsp,"b");

legend('Mace Head','Dublin Airport');
hold off;


% maximum windspeed for Mace Head in October

q3 = m_h.wdsp == max(m_h.wdsp);



% MSL in october

plot(m_h.datef,m_h.msl,"r");
hold on;
plot(d_a.datef,d_a.msl,"b");

legend('Mace Head','Dublin Airport');
hold off;

% Number of hours of 0 rainfall for the year.

