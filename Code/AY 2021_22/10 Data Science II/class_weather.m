% calculate the total rainfall for both stations and 
% plot on the same graph
% repeat for the following monthly values comparing both stations
%   - average temperature
%   - Maximum wind speed
%   - maximum temperature
%   - minimum temperature

weather = readtable("weather.xlsx");

weather.datef = c2date(weather.date);


