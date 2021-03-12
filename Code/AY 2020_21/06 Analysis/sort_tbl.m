clear;

weather = readtable("weather.xlsx");

weather.datef = c2date(weather.date);

w1 = sortrows(weather,{'wdsp'},{'descend'});
w2 = sortrows(weather,{'temp'},{'ascend'});
w3 = sortrows(weather,{'temp'},{'descend'});