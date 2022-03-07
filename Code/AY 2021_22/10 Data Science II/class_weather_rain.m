% calculate the total rainfall for both stations and 
% plot on the same graph
% repeat for the following monthly values comparing both stations
%   - average temperature
%   - Maximum wind speed
%   - maximum temperature
%   - minimum temperature

weather = readtable("weather.xlsx");
weather.datef = c2date(weather.date);

% filtering out mace head from the data set
q1  = weather.station == "MACE HEAD";
m_h = weather(q1,:);

% we want to get the monthly rainfall totals for mace head
[G1, months] = findgroups(m_h.month);

total_rainfall = splitapply(@sum, m_h.rain, G1);


% filtering out Dublin Airport from the DA data set
q2  = weather.station == "DUBLIN AIRPORT";
d_a = weather(q2,:);

% we want to get the monthly rainfall totals for DA
G2 = findgroups(d_a.month);

total_rainfall2 = splitapply(@sum, d_a.rain, G2);

subplot(3,1,1);
plot(months,total_rainfall,"or-");
xlim([1 12]);
grid;
title("Total Monthly Rainfall");
hold on;
plot(months,total_rainfall2,"ob-");

subplot(3,1,2);
plot(m_h.datef,m_h.rain,"r");
title("Hourly rainfall - Mace Head");


subplot(3,1,3);
title("Hourly rainfall - Dublin Airport");
hold on;
plot(d_a.datef,d_a.rain);













