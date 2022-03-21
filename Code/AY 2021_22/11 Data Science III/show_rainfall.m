clear;
a17 = readtable("aimsir17.csv");

% clean rain data
a17_c = a17(~isnan(a17.rain),:);


[G1, station] = findgroups(a17_c.station);
[G2, month] = findgroups(a17_c.month);

TotalRain = splitapply(@sum,a17_c.rain,G1);

res = table(station, TotalRain);
res = sortrows(res,'TotalRain','descend');

TotalRain2 = splitapply(@sum,a17_c.rain,G2);

res2 = table(month, TotalRain2);
res2 = sortrows(res2,'TotalRain2','descend');

