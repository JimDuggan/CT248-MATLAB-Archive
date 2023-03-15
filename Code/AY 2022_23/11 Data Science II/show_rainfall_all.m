clear;
a17 = readtable("weather.xlsx");

% clean rain data
a17_c = a17(~isnan(a17.rain),:);

% convert to string (station name)
a17_c.station = string(a17_c.station);

% Generate groups
[G,station,month] = findgroups(a17_c.station,a17_c.month);

TotalRain = splitapply(@sum,a17_c.rain,G);

res = table(month, station,TotalRain);
res = sortrows(res,'TotalRain','ascend');

