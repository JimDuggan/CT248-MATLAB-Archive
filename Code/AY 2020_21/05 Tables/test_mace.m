clear;

d = readtable("weather.xlsx");


q1 = d.station=="MACE HEAD" & ...
     d.month==1 & ...
     d.day==1;
 
 q2 = d.station=="DUBLIN AIRPORT" & ...
     d.month==1 & ...
     d.day==1;

d1 = d(q1,:);
d2 = d(q2,:);


d1.Cold = d1.temp < 6;

temp = d1.temp;

plot(d1.hour,d1.temp);
hold on;
plot(d2.hour,d2.temp);
