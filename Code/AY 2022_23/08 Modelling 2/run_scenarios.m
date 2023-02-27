% (1) create an m-file model for dp/dt=rP
% (2) debug the model function, see the values of t and x
% (3) Call the function and vary the growth fraction
% (4) Call it multiple times and store the results
% (5) Show the analytical results fpr thos model

clear;

START_GR = 0;
END_GR     = 0.03;
N_RUNS     = 20;

g_v = linspace(START_GR, END_GR, N_RUNS);

y_all = [];

for i = g_v
    fprintf("Running model for r = %f\n",i);
    [t, y] = ode45(@exp_growth,1960:2100,3e9,odeset,i);
    y_all = [y_all y];
end

plot(t,y_all);

