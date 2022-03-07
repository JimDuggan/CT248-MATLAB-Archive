clear;

global beta;
global gamma;

time_span = [1 40];
beta  = 1;
gamma = 0.5;

[t, y] = ode45(@sir_model, ...
               time_span, ...
               [9999 1 0]);

plot(t, y(:,2),'-ob');
hold on;

beta = 2; 
[t, y] = ode45(@sir_model, ...
               time_span, ...
               [9999 1 0]);

plot(t, y(:,2),'-or');
hold on;

beta =4; 
[t, y] = ode45(@sir_model, ...
               time_span, ...
               [9999 1 0]);

plot(t, y(:,2),'-og');







