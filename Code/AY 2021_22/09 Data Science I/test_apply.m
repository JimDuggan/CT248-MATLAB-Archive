clear;

d = readtable("weather.xlsx");

q1 = d.station=="DUBLIN AIRPORT" & ...
     d.month==1;

 % filter operation
d1 = d(q1,:);

% summarise
G = findgroups(d1.day);

da_sum = splitapply(@sum,d1.rain,G);

G2 = findgroups(d.station,d.day);

da_sum2 = splitapply(@sum,d.rain,G2);





d1.Cold = d1.temp < 6;

temp = d1.temp;