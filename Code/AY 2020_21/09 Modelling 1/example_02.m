% dy/dt = 2t
f = @(t, x) 2*t;

[t,y] = ode45(f, [0 100], 0);
 
plot(t, y,'-ob');

[t,y] = ode45(@ode_test, [0 100], 0);

hold on;
plot(t, y,'-or');

