clear;

weather = readtable("weather.xlsx");

weather.datef = c2date(weather.date);

q1 = weather.station=="MACE HEAD" & ...
     weather.month==1;
 

m_h = weather(q1,:);

[G,Day] = findgroups(m_h.day);

total_rain = splitapply(@sum,m_h.rain,G);
min_temp   = splitapply(@min,m_h.temp,G);
max_temp   = splitapply(@max,m_h.temp,G);

results = table(Day,total_rain);
