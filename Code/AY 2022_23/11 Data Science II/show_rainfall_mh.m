clear;
a17 = readtable("weather.xlsx");

% clean rain data
a17_c = a17(~isnan(a17.rain),:);

% convert to string (station name)
a17_c.station = string(a17_c.station);



% extract MACE HEad
a17_mh = a17_c(a17_c.station == "MACE HEAD" & a17_c.month==1,:);

[G, day] = findgroups(a17_mh.day);

TotalRain = splitapply(@sum,a17_mh.rain,G);
MaxTemp = splitapply(@max,a17_mh.temp,G);
MinTemp = splitapply(@min,a17_mh.temp,G);

res = table(day, TotalRain,MaxTemp,MinTemp);
