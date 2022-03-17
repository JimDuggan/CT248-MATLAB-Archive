clear;
a17 = readtable("aimsir17.csv");
subplot(1,3,1);
boxplot(a17.temp,a17.hour);
subplot(1,3,2);
boxplot(a17.temp,a17.month);
subplot(1,3,3);
boxplot(a17.temp,a17.station);