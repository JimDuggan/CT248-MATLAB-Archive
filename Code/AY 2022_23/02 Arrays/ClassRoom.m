clear;
% Generate the following plot for a 
% quadratic equation. a = 2 , b = 20, 
% c = -100. 

a = 2;
b = 20;
c = -100;

% Define the input vector
x = -50:.5:50;

y = a*x.^2 + b*x + c;

plot(x,y);
% hold on;

