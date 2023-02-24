% A simple calculus model of dy/dt = 10

% this will change depending on the model
m1 = @(t,x)10; 

[t,y] = ode45(m1,1:500,100);








