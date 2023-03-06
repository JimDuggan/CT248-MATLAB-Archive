% Code to create an output data structure in advance
clear;

% define dP/dt = rP, exponential growth (or decline)
f = @(t,x,r) r*x(1);

% define number of scenarios
N_Scenarios = 50;

% define the parameter that will be varied
runs = linspace(.07,.50,N_Scenarios);

% define the time vector
time_vec = 0:10;

% Create the output array in advance and initialise
y_out = zeros(length(time_vec),N_Scenarios);

% Create the initial vectors and initialise (100)
init_vec = 100;

% run the model N_Scenario times
for i = 1:N_Scenarios
    [t,y] = ode45(f,                ...
                         time_vec,   ...
                         init_vec,     ...
                         odeset,      ...
                         runs(i));

    % store the result in column i
    y_out(:,i) = y;
end

% Plot the results
plot(t,y_out);





