clear;

weather = readtable("weather.xlsx");

weather.datef = c2date(weather.date);

q1 = weather.station=="MACE HEAD" & ...
     weather.month==1;
 

m_h = weather(q1,:);


total_rain = summarise(m_h,"day","rain",@sum);

day = unique(m_h.day);

s_table = table(day,total_rain);

