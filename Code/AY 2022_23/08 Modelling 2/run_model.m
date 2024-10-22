% (1) create an m-file model for dp/dt=rP
% (2) debug the model function, see the values of t and x
% (3) Call the function and vary the growth fraction
% (4) Call it multiple times and store the results
% (5) Show the analytical results fpr thos model

clear;

[t, y] = ode45(@exp_growth,1960:2010,3e9,odeset,0.01);

plot(t,y);

