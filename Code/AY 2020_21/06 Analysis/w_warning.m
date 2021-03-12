clear;

weather = readtable("weather.xlsx");

weather.datef = c2date(weather.date);

weather.warning = weather.temp <= 4.0;

w1 = weather(1:10,{'station','datef','temp','warning'});

histogram(weather.warning);

w_all = sum(weather.warning == 1);

w_da = sum(weather.warning == 1 & weather.station == "DUBLIN AIRPORT");

w_mh = sum(weather.warning == 1 & weather.station == "MACE HEAD");


da = weather(weather.station =="DUBLIN AIRPORT",:);
mh = weather(weather.station =="MACE HEAD",:);

subplot(1,2,1);
histogram(da.warning)
title("Dublin Airport");
ylim([0 10000]);
subplot(1,2,2);
histogram(mh.warning)
title("Mace Head");
ylim([0 10000]);





