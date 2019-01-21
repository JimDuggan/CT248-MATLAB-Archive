% quadratic equation
clear;

a = 2; b = 20; c = -100;

x = -50:.5:50;

y = a*x.^2 + b* x + c;

plot(x,y)