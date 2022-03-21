clear;
a17 = readtable("aimsir17.csv");

a17_c = a17(~isnan(a17.rain),:);

[G, station] = findgroups(a17_c.station);

TotalRain = splitapply(@sum,a17_c.rain,G);

res = table(station, TotalRain);
res = sortrows(res,'TotalRain','descend');