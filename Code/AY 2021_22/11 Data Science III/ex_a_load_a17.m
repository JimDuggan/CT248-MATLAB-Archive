clear;
a17 = readtable("aimsir17.csv");
subplot(1,3,1);
boxplot(a17.temp,a17.hour);
subplot(1,3,2);
boxplot(a17.temp,a17.month);
subplot(1,3,3);
boxplot(a17.temp,a17.station);

% clean rain data
a17_c = a17(~isnan(a17.rain),:);


[G, station, month] = findgroups(a17_c.station,a17_c.month);

TotalRain = splitapply(@sum,a17_c.rain,G);

res = table(station, month, TotalRain);
