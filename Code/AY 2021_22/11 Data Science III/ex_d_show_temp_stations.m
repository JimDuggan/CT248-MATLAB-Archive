clear;
a17 = readtable("aimsir17.csv");

a17_c = a17(~isnan(a17.temp),:);

[G, station] = findgroups(a17_c.station);

MeanTemp = splitapply(@mean,a17_c.temp,G);

res = table(station, MeanTemp);
res = sortrows(res,'MeanTemp','descend');