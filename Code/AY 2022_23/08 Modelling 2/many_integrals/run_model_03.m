% Customer model, growth and exponential decay
clear;

f3 = @(t,x,beta,alpha)[beta*x(1) - alpha*x(1);
                                    alpha*x(1)];

[t,y] = ode45(f2,0:20,[1000 0],odeset,0.10,0.15);

plot(t,y(:,1));




