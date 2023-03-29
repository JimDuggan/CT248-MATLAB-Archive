% (b) build an anonymous function to model the following
% set of differential equations that model the consumer
% adoption of a product and their discarding of the product
% Assume the parameters a and b are inputs to the function
% explain the role of each parameter in teh anonymous function

% dP/dt = - aP
% dA/dt = aP - bA
% dD/dt =  bA

f = @(t,x,a,b)[-a*x(1);
                a*x(1)-b*x(2);
                b*x(2)]


% Run the model for 100 time units where the initial
% values are 10000 0 0 and a = 0.10 abd b = 0.05

a = 0.10;
b = 0.05;
[t, y] = ode45(f,[1 100], [10000 0 0], odeset,a, b); 

plot(t,y);


