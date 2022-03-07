% Script to run the model
clear;

[t,y] = ode45(@new_variant, [1 30], 1, odeset,0.10);

plot(t, y,'-ob');
grid on;
hold on;

[t,y] = ode45(@new_variant, [1 30], 1, odeset,0.20);
plot(t, y,'-or');
hold on;

[t,y] = ode45(@new_variant, [1 30], 1, odeset,0.30);
plot(t, y,'-ob');
hold on;

[t,y] = ode45(@new_variant, [1 30], 1, odeset,0.3466);
plot(t, y,'-og');

