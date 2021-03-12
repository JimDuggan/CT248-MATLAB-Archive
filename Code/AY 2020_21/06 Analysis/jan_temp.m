clear;

weather = readtable("weather.xlsx");

weather.datef = c2date(weather.date);

q1 = weather.station=="MACE HEAD" & ...
     weather.month==1;
 
q2 = weather.station=="DUBLIN AIRPORT" & ...
     weather.month==1;

m_h = weather(q1,:);
d_a = weather(q2,:);


plot(m_h.datef,m_h.temp,"r");
hold on;
plot(d_a.datef,d_a.temp,"b");

legend('Mace Head','Dublin Airport');
