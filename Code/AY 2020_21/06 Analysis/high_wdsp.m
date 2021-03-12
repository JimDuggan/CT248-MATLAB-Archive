clear;

weather = readtable("weather.xlsx");

weather.datef = c2date(weather.date);

q1 = weather.wdsp == max(weather.wdsp);

h_wdsp = weather(q1,:);