% Customer model, exponential decay extra stock (total lost)
clear;

f2 = @(t,x,alpha)[-alpha*x(1);
                            alpha*x(1)];

[t,y] = ode45(f2,0:20,[1000 0],odeset,0.10);

plot(t,y);





