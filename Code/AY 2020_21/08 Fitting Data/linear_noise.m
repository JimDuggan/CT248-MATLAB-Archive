x = 0:10;
b = 5;
a = 1.5;

y = a.*x + b;

plot(x,y,"o-");
ylim([0,30]);
grid;
hold on;

rng(100);
residuals = normrnd(0,1,1,length(x));

y = a.*x + b + residuals;

plot(x,y,"or");
ylim([0,30]);
grid;