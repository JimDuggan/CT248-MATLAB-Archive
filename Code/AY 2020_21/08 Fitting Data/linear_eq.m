x = 0:10;
b = 5;
a = 1.5;

y = a.*x + b;

plot(x,y,"o-");
ylim([0,30]);
grid;