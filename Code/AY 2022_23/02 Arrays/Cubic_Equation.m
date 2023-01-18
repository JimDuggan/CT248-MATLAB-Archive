clear;

x = -50:.1:50;
a = 10; b= 2; c = 4; d = 100;

y = a*x.^3 + b*x.^2 + c*x + d;

plot(x,y,'-o');

