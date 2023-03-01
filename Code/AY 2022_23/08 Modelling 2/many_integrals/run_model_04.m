% Customer model, growth, exponential decay and count new customers
clear;

f4 = @(t,x,beta,alpha)[beta*x(1) - alpha*x(1);
                                    alpha*x(1);
                                    beta*x(1)];

[t,y] = ode45(f4,0:20,[1000 0 0],odeset,0.10,0.15);

plot(t,y(:,1));

