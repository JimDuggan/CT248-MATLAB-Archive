clear;
a17 = readtable("aimsir17.csv");

a17_c = a17(~isnan(a17.rain),:);

[G, station, DayNumber] = findgroups(a17_c.station, a17_c.DayNumber);

TotalRain = splitapply(@sum,a17_c.rain,G);

res = table(station, DayNumber, TotalRain);

boxplot(res.TotalRain,res.station);


