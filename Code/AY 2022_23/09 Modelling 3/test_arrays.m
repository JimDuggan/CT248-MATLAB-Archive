% Code to create an output data structure in advance
clear;
f = @(t,x,r) r*x(1);

N_States = 5;
runs = linspace(.07,.20,N_States);
time_vec = 0:10;
% Create the output array in advance and initialise
y_out = zeros(length(time_vec),N_States);
init_vec = zeros(1,N_States);
init_vec = 100;

for i = 1:N_States
    [t,y] = ode45(f,time_vec,init_vec,odeset,runs(i));
    y_out(:,i) = y;
end

plot(t,y_out);





