[t,y] = ode45(@thermostat_model, [0 24], 20);

plot(t, y,'-o');
