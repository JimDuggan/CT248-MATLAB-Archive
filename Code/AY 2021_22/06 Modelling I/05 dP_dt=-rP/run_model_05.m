tspan = 0:.5:20;
init_c = 100;

[t,y] = ode45(@model_05, tspan, init_c,odeset,0.05);
 
plot(t, y,'-ob');
hold on;

[t,y] = ode45(@model_05, tspan, init_c,odeset,0.20);
grid on;
plot(t, y,'-or');

hold on;

[t,y] = ode45(@model_05, tspan, init_c,odeset,0.10);

plot(t, y,'-og');






