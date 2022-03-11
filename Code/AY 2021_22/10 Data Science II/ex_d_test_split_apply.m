clear;

f = @(v)[sum(v) min(v) max(v)];

weather = readtable("weather.xlsx");


[G,station, month] = findgroups(weather.station, weather.month);

total_rain = splitapply(@sum,weather.rain,G);

summ1 = table(station,month,total_rain);

rainfall = splitapply(f,weather.rain,G);

summ2 = table(station,month,rainfall);




