% dy/dt = 10t
% y0 = 1000
% time from 0 to 1000
% predict the value of y

% dx/dt = r*x

f1 = @(t,x) 10*t;

[t, y] = ode45(f1,[0 100],1000);

plot(t,y,"o-");






