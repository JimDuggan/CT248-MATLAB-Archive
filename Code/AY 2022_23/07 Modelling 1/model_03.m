% build a model of dy/dt = 2t
% use ode45
% Add two more equations dv/dt=3t, dw/dt=5t
clear;
m3 = @(t,x)[2*t;3*t]

[t,y] = ode45(m3,0:10,[0,0]);


