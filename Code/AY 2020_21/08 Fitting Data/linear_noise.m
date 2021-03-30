x = 0:.01:100;
b = 5;
a = 1.5;

y = a.*x + b;

plot(x,y,"o-");
grid;
hold on;

rng(100);
residuals = normrnd(0,3,1,length(x));

y = a.*x + b + residuals;

plot(x,y,"or");
grid;