clear;
a17 = readtable("aimsir17.csv");

a17_c = a17(~isnan(a17.rain),:);

[G, station, month] = findgroups(a17_c.station, a17_c.month);

TotalRain = splitapply(@sum,a17_c.rain,G);

res = table(station, month, TotalRain);

res1 = sortrows(res,'TotalRain','descend');
res2 = sortrows(res,'TotalRain','ascend');

p=gscatter(res.month,res.TotalRain,res.station);
set(p, 'linestyle', '-');
xlim([1 12]);
