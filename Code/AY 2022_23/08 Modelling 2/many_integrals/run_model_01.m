% Customer model, exponential decay 1 stock
clear;

f1 = @(t,x,alpha)[-alpha*x(1)];

[t,y] = ode45(f1,0:20,1000,odeset,0.10);

plot(t,y);





