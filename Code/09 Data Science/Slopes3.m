b0 = 100;

b1 = 0.75;

x = 0:10;

y = b0 + b1 .* x;

plot(x,y);

hold on;

b0 = 80;

y = b0 + b1 .* x;

plot(x,y);