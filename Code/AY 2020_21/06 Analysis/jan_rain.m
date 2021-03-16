clear;

weather = readtable("weather.xlsx");

weather.datef = c2date(weather.date);

q1 = weather.station=="MACE HEAD" & ...
     weather.month==1;
 

m_h = weather(q1,:);

plot(m_h.datef,m_h.rain,"r");
xtickformat('MM:dd hh')

