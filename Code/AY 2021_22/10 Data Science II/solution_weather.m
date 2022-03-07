% calculate the total rainfall for both stations and 
% plot on the same graph

weather = readtable("weather.xlsx");

weather.datef = c2date(weather.date);

q1 = weather.station=="MACE HEAD";
m_h = weather(q1,:);

[G1,months] = findgroups(m_h.month);

total_rain_mh = splitapply(@sum,m_h.rain,G1);

q2 = weather.station=="DUBLIN AIRPORT";
 

d_a = weather(q2,:);

G2 = findgroups(d_a.month);

total_rain_da = splitapply(@sum,d_a.rain,G2);

plot(months,total_rain_mh,"or-");
xlim([1 12]);
grid;
hold on;
plot(months,total_rain_da,"ob-");




